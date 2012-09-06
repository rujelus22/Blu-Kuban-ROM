.class Lcom/google/tts/TextToSpeechBeta$3;
.super Ljava/lang/Object;
.source "TextToSpeechBeta.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


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
    iput-object p1, p0, Lcom/google/tts/TextToSpeechBeta$3;->this$0:Lcom/google/tts/TextToSpeechBeta;

    iput-object p2, p0, Lcom/google/tts/TextToSpeechBeta$3;->val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "utteranceId"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/tts/TextToSpeechBeta$3;->val$listener:Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Lcom/google/tts/TextToSpeechBeta$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 1431
    return-void
.end method
