.class Lcom/google/tts/MakeBagel$1;
.super Ljava/lang/Object;
.source "MakeBagel.java"

# interfaces
.implements Lcom/google/tts/TTS$SpeechCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tts/MakeBagel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/MakeBagel;


# direct methods
.method constructor <init>(Lcom/google/tts/MakeBagel;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/MakeBagel$1;->this$0:Lcom/google/tts/MakeBagel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeechCompleted()V
    .registers 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/tts/MakeBagel$1;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$0(Lcom/google/tts/MakeBagel;)Lcom/google/tts/TTS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tts/TTS;->shutdown()V

    .line 21
    iget-object v0, p0, Lcom/google/tts/MakeBagel$1;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->self:Lcom/google/tts/MakeBagel;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$1(Lcom/google/tts/MakeBagel;)Lcom/google/tts/MakeBagel;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/tts/MakeBagel;->setResult(I)V

    .line 22
    iget-object v0, p0, Lcom/google/tts/MakeBagel$1;->this$0:Lcom/google/tts/MakeBagel;

    invoke-virtual {v0}, Lcom/google/tts/MakeBagel;->finish()V

    .line 23
    return-void
.end method
