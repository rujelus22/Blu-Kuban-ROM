.class Lcom/vlingo/client/safereader/SafeReaderService$1$5;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->pause(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$component:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$5;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$5;->val$component:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$5;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->bumpMsg()V

    .line 150
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelTTS(Z)V

    .line 151
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$5;->val$component:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->pause(I)V

    .line 152
    return-void
.end method
