.class Lcom/samsung/wimax/CT/CT$1;
.super Ljava/lang/Object;
.source "CT.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/CT/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/CT/CT;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/CT/CT;)V
    .registers 2
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/samsung/wimax/CT/CT$1;->this$0:Lcom/samsung/wimax/CT/CT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 543
    const-string v0, "CT MSG"

    const-string v1, "Thread Start >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_7
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT$1;->this$0:Lcom/samsung/wimax/CT/CT;

    iget-boolean v0, v0, Lcom/samsung/wimax/CT/CT;->m_bOpenDevice:Z

    if-eqz v0, :cond_2b

    .line 545
    sget-object v1, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    monitor-enter v1

    .line 546
    :try_start_10
    sget-object v0, Lcom/samsung/wimax/CT/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    .line 548
    iget-object v0, p0, Lcom/samsung/wimax/CT/CT$1;->this$0:Lcom/samsung/wimax/CT/CT;

    iget-object v0, v0, Lcom/samsung/wimax/CT/CT;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/wimax/CT/CT$1;->this$0:Lcom/samsung/wimax/CT/CT;

    #getter for: Lcom/samsung/wimax/CT/CT;->doUpdateGUI:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/wimax/CT/CT;->access$000(Lcom/samsung/wimax/CT/CT;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    :cond_26
    monitor-exit v1

    goto :goto_7

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw v0

    .line 552
    :cond_2b
    const-string v0, "CT MSG"

    const-string v1, "Thread stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method
