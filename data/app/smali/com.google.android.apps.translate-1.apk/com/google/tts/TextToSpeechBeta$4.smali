.class Lcom/google/tts/TextToSpeechBeta$4;
.super Lcom/google/tts/ITtsCallbackBeta$Stub;
.source "TextToSpeechBeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TextToSpeechBeta;->setOnUtteranceCompletedListener(Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/TextToSpeechBeta;

.field private final synthetic val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;


# direct methods
.method constructor <init>(Lcom/google/tts/TextToSpeechBeta;Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TextToSpeechBeta$4;->this$0:Lcom/google/tts/TextToSpeechBeta;

    iput-object p2, p0, Lcom/google/tts/TextToSpeechBeta$4;->val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;

    .line 1440
    invoke-direct {p0}, Lcom/google/tts/ITtsCallbackBeta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public utteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "utteranceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta$4;->val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;

    if-eqz v0, :cond_9

    .line 1443
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta$4;->val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 1445
    :cond_9
    return-void
.end method
