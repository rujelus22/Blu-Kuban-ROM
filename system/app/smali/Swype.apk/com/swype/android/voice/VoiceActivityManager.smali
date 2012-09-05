.class public Lcom/swype/android/voice/VoiceActivityManager;
.super Lcom/swype/android/voice/VoiceManager;
.source "VoiceActivityManager.java"


# static fields
.field public static RECOGNITION_CONTEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    sput-object v0, Lcom/swype/android/voice/VoiceActivityManager;->RECOGNITION_CONTEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter "ime"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/swype/android/voice/VoiceManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 26
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 4

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public onCreateView()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method

.method public startListening()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/swype/android/jni/SwypeCore;->getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v3

    .line 50
    iget-object v4, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move v5, v7

    .line 51
    :goto_32
    iget-object v6, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_44

    .line 52
    iget-object v6, v3, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Lcom/swype/android/jni/SwypeCore;->getLanguageCodeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 56
    :cond_44
    iget-object v0, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 57
    iget-object v3, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 58
    new-instance v5, Lcom/swype/android/voice/FieldContext;

    invoke-direct {v5, v0, v3, v2, v4}, Lcom/swype/android/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/swype/android/voice/VoiceActivityManager;->RECOGNITION_CONTEXT:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/swype/android/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    const-class v3, Lcom/swype/android/voice/VoiceResultActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v2, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    const/high16 v3, 0x4000

    invoke-static {v2, v7, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 67
    const-string v2, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :try_start_7e
    iget-object v0, p0, Lcom/swype/android/voice/VoiceActivityManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V
    :try_end_83
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7e .. :try_end_83} :catch_84

    .line 75
    :goto_83
    return-void

    :catch_84
    move-exception v0

    goto :goto_83
.end method
