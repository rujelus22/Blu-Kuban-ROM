.class public abstract Lcom/swype/android/voice/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# static fields
.field private static final ANDROID_SPEECH_RECOGNIZER:Ljava/lang/String; = "android.speech.SpeechRecognizer"

.field private static final GOOGLE_SPEECH_MANAGER:Ljava/lang/String; = "com.swype.android.voice.GoogleSpeechManager"


# instance fields
.field protected final ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

.field protected isRunning:Z


# direct methods
.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter "ime"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/swype/android/voice/VoiceManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    .line 70
    return-void
.end method

.method private static createGoogleVoiceManager(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/voice/VoiceManager;
    .registers 6
    .parameter

    .prologue
    .line 53
    :try_start_0
    const-string v1, "android.speech.SpeechRecognizer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 54
    const-string v1, "com.swype.android.voice.GoogleSpeechManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 56
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/swype/android/inputmethod/SwypeInputMethod;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 58
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/swype/android/voice/VoiceManager;

    move-object p0, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-object v1, p0

    .line 64
    :goto_2c
    return-object v1

    :catch_2d
    move-exception v1

    new-instance v1, Lcom/swype/android/voice/VoiceActivityManager;

    invoke-direct {v1, p0}, Lcom/swype/android/voice/VoiceActivityManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    goto :goto_2c
.end method

.method public static createVoiceManager(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/voice/VoiceManager;
    .registers 3
    .parameter "ime"

    .prologue
    .line 21
    sget v0, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-static {p0}, Lcom/swype/android/voice/VLingoSpeechManager;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23
    new-instance v0, Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-direct {v0, p0}, Lcom/swype/android/voice/VLingoSpeechManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 29
    :goto_10
    return-object v0

    .line 25
    :cond_11
    sget v0, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 26
    invoke-static {p0}, Lcom/swype/android/voice/VoiceManager;->createGoogleVoiceManager(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/voice/VoiceManager;

    move-result-object v0

    goto :goto_10

    .line 29
    :cond_1b
    new-instance v0, Lcom/swype/android/voice/VoiceManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swype/android/voice/VoiceManager$1;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    goto :goto_10
.end method


# virtual methods
.method public abstract isAvailable()Z
.end method

.method public isViewShowing()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateView()V
.end method

.method public abstract startListening()V
.end method
