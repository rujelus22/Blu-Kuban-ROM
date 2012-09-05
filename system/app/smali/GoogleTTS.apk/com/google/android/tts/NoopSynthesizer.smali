.class public Lcom/google/android/tts/NoopSynthesizer;
.super Ljava/lang/Object;
.source "NoopSynthesizer.java"

# interfaces
.implements Lcom/google/android/tts/Synthesizer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "language"
    .parameter "country"

    .prologue
    .line 35
    const/4 v0, -0x2

    return v0
.end method

.method public onClose()V
    .registers 1

    .prologue
    .line 16
    return-void
.end method

.method public onInit()V
    .registers 1

    .prologue
    .line 12
    return-void
.end method

.method public onLoadLanguage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "language"
    .parameter "country"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onLoadLanguage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSynthesize(Lcom/google/android/tts/GoogleTtsRequest;Landroid/speech/tts/SynthesisCallback;)V
    .registers 5
    .parameter "request"
    .parameter "callback"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to NoopSynth#onSynthesize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
