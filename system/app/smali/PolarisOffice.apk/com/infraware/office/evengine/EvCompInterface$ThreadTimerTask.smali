.class Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;
.super Ljava/util/TimerTask;
.source "EvCompInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EvCompInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadTimerTask"
.end annotation


# instance fields
.field private mbAlive:Z

.field final synthetic this$0:Lcom/infraware/office/evengine/EvCompInterface;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvCompInterface;Z)V
    .registers 3
    .parameter
    .parameter "bStart"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterface;

    .line 20
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 21
    iput-boolean p2, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterface;

    monitor-enter v1

    .line 31
    :try_start_3
    iget-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterface;

    iget v0, v0, Lcom/infraware/office/evengine/EvCompInterface;->mbSuspend:I

    if-nez v0, :cond_14

    .line 32
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/office/evengine/EvCompInterface;

    iget-object v0, v0, Lcom/infraware/office/evengine/EvCompInterface;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvNative;->ITimer()V

    .line 30
    :cond_14
    monitor-exit v1

    .line 34
    return-void

    .line 30
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method setOperationTimer(Z)V
    .registers 2
    .parameter "bStart"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/infraware/office/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    .line 26
    return-void
.end method
