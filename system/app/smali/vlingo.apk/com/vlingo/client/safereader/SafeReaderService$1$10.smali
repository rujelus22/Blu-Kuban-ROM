.class Lcom/vlingo/client/safereader/SafeReaderService$1$10;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->cancelReadback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$clearQueued:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$10;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-boolean p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$10;->val$clearQueued:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$10;->val$clearQueued:Z

    if-eqz v0, :cond_d

    .line 232
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$10;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->clearQueue()V

    .line 233
    :cond_d
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$10;->val$clearQueued:Z

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->cancelTTS(Z)V

    .line 234
    return-void
.end method
