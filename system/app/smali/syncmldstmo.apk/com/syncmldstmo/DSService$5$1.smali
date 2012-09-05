.class Lcom/syncmldstmo/DSService$5$1;
.super Ljava/lang/Object;
.source "DSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/DSService$5;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syncmldstmo/DSService$5;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/DSService$5;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/syncmldstmo/DSService$5$1;->this$1:Lcom/syncmldstmo/DSService$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 558
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_c

    .line 559
    const/4 v0, 0x1

    const-string v1, "SyncStatusObserver is run!"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 560
    :cond_c
    iget-object v0, p0, Lcom/syncmldstmo/DSService$5$1;->this$1:Lcom/syncmldstmo/DSService$5;

    iget-object v0, v0, Lcom/syncmldstmo/DSService$5;->this$0:Lcom/syncmldstmo/DSService;

    invoke-virtual {v0}, Lcom/syncmldstmo/DSService;->onSyncStateUpdated()V

    .line 561
    return-void
.end method
