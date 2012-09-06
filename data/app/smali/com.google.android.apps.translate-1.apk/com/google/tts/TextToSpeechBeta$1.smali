.class Lcom/google/tts/TextToSpeechBeta$1;
.super Ljava/lang/Object;
.source "TextToSpeechBeta.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/TextToSpeechBeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 4
    .parameter "status"

    .prologue
    .line 502
    sget-boolean v0, Lcom/google/tts/TextToSpeechBeta;->ttsBetaInstalled:Z

    if-nez v0, :cond_12

    .line 503
    invoke-static {}, Lcom/google/tts/TextToSpeechBeta;->access$0()Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 504
    invoke-static {}, Lcom/google/tts/TextToSpeechBeta;->access$0()Lcom/google/tts/TextToSpeechBeta$OnInitListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/google/tts/TextToSpeechBeta$OnInitListener;->onInit(II)V

    .line 507
    :cond_12
    return-void
.end method
