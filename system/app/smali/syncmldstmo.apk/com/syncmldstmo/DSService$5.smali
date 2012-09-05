.class Lcom/syncmldstmo/DSService$5;
.super Ljava/lang/Object;
.source "DSService.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/DSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/DSService;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/DSService;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/syncmldstmo/DSService$5;->this$0:Lcom/syncmldstmo/DSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 4
    .parameter "which"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/syncmldstmo/DSService$5;->this$0:Lcom/syncmldstmo/DSService;

    #getter for: Lcom/syncmldstmo/DSService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/syncmldstmo/DSService;->access$100(Lcom/syncmldstmo/DSService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/syncmldstmo/DSService$5$1;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/DSService$5$1;-><init>(Lcom/syncmldstmo/DSService$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    return-void
.end method
