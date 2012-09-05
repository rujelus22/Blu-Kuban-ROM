.class Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;
.super Ljava/lang/Object;
.source "WiMAXLineTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)V
    .registers 2
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 885
    const-string v0, "WLT MSG"

    const-string v1, "Thread Start >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_7
    sget-boolean v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->m_ret:Z

    if-eqz v0, :cond_31

    .line 887
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v0, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v1, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    monitor-enter v1

    .line 888
    :try_start_12
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v0, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mWiMAXNative:Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;

    sget-object v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXNative;->qCTMsg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    .line 889
    iget-object v0, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    iget-object v0, v0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest$2;->this$0:Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;

    #getter for: Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->doUpdateGUI:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;->access$100(Lcom/samsung/wimax/wimaxlinetest/WiMAXLineTest;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    :cond_2c
    monitor-exit v1

    goto :goto_7

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw v0

    .line 893
    :cond_31
    const-string v0, "WLT MSG"

    const-string v1, "Thread stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method
