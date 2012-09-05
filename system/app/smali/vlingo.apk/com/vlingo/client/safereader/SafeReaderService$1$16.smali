.class Lcom/vlingo/client/safereader/SafeReaderService$1$16;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/vlingo/client/core/tts/ITTSListener;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Lcom/vlingo/client/core/tts/ITTSListener;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$16;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-object p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$16;->val$listener:Lcom/vlingo/client/core/tts/ITTSListener;

    iput p3, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$16;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 382
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$16;->val$listener:Lcom/vlingo/client/core/tts/ITTSListener;

    iget v2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$16;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->addRemoteListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V

    .line 383
    return-void
.end method
