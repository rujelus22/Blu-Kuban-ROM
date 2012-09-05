.class Lcom/samsung/wimax/DM/DM$3;
.super Ljava/lang/Object;
.source "DM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/DM/DM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/DM/DM;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/DM/DM;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 463
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "DM RECV Thread Start >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_7
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    #getter for: Lcom/samsung/wimax/DM/DM;->m_bOpenDevice:Z
    invoke-static {v0}, Lcom/samsung/wimax/DM/DM;->access$800(Lcom/samsung/wimax/DM/DM;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 466
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v0, v0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    iget-object v1, v0, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    monitor-enter v1

    .line 467
    :try_start_16
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v0, v0, Lcom/samsung/wimax/DM/DM;->mWiMAXNative:Lcom/samsung/wimax/DM/WiMAXNative;

    iget-object v0, v0, Lcom/samsung/wimax/DM/WiMAXNative;->qDMMsg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_30

    .line 468
    iget-object v0, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    iget-object v0, v0, Lcom/samsung/wimax/DM/DM;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/wimax/DM/DM$3;->this$0:Lcom/samsung/wimax/DM/DM;

    #getter for: Lcom/samsung/wimax/DM/DM;->doDMUpdateGUI:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/wimax/DM/DM;->access$900(Lcom/samsung/wimax/DM/DM;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    :cond_30
    monitor-exit v1

    goto :goto_7

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_32

    throw v0

    .line 473
    :cond_35
    const-string v0, "WiMAX_DM_APP"

    const-string v1, "DM RECV Thread stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method
