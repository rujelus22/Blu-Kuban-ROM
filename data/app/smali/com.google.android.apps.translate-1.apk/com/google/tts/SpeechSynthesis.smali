.class public Lcom/google/tts/SpeechSynthesis;
.super Ljava/lang/Object;
.source "SpeechSynthesis.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechSynthesis"


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-string v0, "speechsynthesis"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "nativeSoLib"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/google/tts/SpeechSynthesis;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private static postNativeSpeechSynthesizedInJava(Ljava/lang/Object;II)V
    .registers 7
    .parameter "tts_ref"
    .parameter "bufferPointer"
    .parameter "bufferSize"

    .prologue
    .line 117
    const-string v1, "TTS plugin debug"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bufferPointer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tts/SpeechSynthesis;

    .line 119
    .local v0, nativeTTS:Lcom/google/tts/SpeechSynthesis;
    invoke-virtual {v0, p1, p2}, Lcom/google/tts/SpeechSynthesis;->playAudioBuffer(II)V

    .line 120
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/tts/SpeechSynthesis;->native_finalize()V

    .line 110
    return-void
.end method

.method public final native getLanguage()Ljava/lang/String;
.end method

.method public final native getRate()I
.end method

.method public final native playAudioBuffer(II)V
.end method

.method public final native setLanguage(Ljava/lang/String;)V
.end method

.method public final native setSpeechRate(I)V
.end method

.method public final native shutdown()V
.end method

.method public final native speak(Ljava/lang/String;)V
.end method

.method public final native stop()V
.end method

.method public final native synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)V
.end method
