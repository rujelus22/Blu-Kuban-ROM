.class Lcom/google/tts/TTS$1$1;
.super Lcom/google/tts/ITTSCallback$Stub;
.source "TTS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/TTS$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/tts/TTS$1;


# direct methods
.method constructor <init>(Lcom/google/tts/TTS$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/TTS$1$1;->this$1:Lcom/google/tts/TTS$1;

    .line 185
    invoke-direct {p0}, Lcom/google/tts/ITTSCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public markReached(Ljava/lang/String;)V
    .registers 3
    .parameter "mark"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/tts/TTS$1$1;->this$1:Lcom/google/tts/TTS$1;

    #getter for: Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/TTS$1;->access$0(Lcom/google/tts/TTS$1;)Lcom/google/tts/TTS;

    move-result-object v0

    #getter for: Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;
    invoke-static {v0}, Lcom/google/tts/TTS;->access$7(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$SpeechCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 188
    iget-object v0, p0, Lcom/google/tts/TTS$1$1;->this$1:Lcom/google/tts/TTS$1;

    #getter for: Lcom/google/tts/TTS$1;->this$0:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/TTS$1;->access$0(Lcom/google/tts/TTS$1;)Lcom/google/tts/TTS;

    move-result-object v0

    #getter for: Lcom/google/tts/TTS;->speechCompletedCallback:Lcom/google/tts/TTS$SpeechCompletedListener;
    invoke-static {v0}, Lcom/google/tts/TTS;->access$7(Lcom/google/tts/TTS;)Lcom/google/tts/TTS$SpeechCompletedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tts/TTS$SpeechCompletedListener;->onSpeechCompleted()V

    .line 190
    :cond_19
    return-void
.end method
