.class Lcom/vlingo/client/safereader/SafeReaderService$1$17;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->removeTTSListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$17;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$17;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 392
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$17;->val$id:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->removeRemoteListener(I)V

    .line 393
    return-void
.end method
