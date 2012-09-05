.class Lcom/vlingo/client/safereader/SafeReaderService$1$4;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->skipCurrentlyPlayingItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$4;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$4;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v0, v0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->onSkipCurrentlyPlayingItem()V

    .line 139
    return-void
.end method
