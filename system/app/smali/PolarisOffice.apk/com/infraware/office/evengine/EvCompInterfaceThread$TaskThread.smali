.class public Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;
.super Ljava/lang/Thread;
.source "EvCompInterfaceThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/evengine/EvCompInterfaceThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TaskThread"
.end annotation


# instance fields
.field mRun:Z

.field private mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/infraware/office/evengine/EvTaskObj;",
            ">;"
        }
    .end annotation
.end field

.field mbTimer:Z

.field private final semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/infraware/office/evengine/EvCompInterfaceThread;


# direct methods
.method constructor <init>(Lcom/infraware/office/evengine/EvCompInterfaceThread;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 23
    iput-object p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceThread;

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mbTimer:Z

    .line 16
    iput-boolean v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mRun:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method retrieveTask()Lcom/infraware/office/evengine/EvTaskObj;
    .registers 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/evengine/EvTaskObj;

    .line 37
    .local v0, obj:Lcom/infraware/office/evengine/EvTaskObj;
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 39
    return-object v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 49
    :goto_0
    iget-boolean v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mRun:Z

    if-nez v1, :cond_5

    .line 79
    return-void

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 53
    invoke-virtual {p0}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->retrieveTask()Lcom/infraware/office/evengine/EvTaskObj;

    move-result-object v0

    .line 54
    .local v0, obj:Lcom/infraware/office/evengine/EvTaskObj;
    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvTaskObj;->doTask()V

    .line 55
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.infraware.evengine.EvFinalizeObj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mRun:Z

    .line 61
    .end local v0           #obj:Lcom/infraware/office/evengine/EvTaskObj;
    :cond_2c
    iget-boolean v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mRun:Z

    if-eqz v1, :cond_45

    .line 63
    iget-boolean v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mbTimer:Z

    if-eqz v1, :cond_45

    .line 66
    :try_start_34
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 67
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->this$0:Lcom/infraware/office/evengine/EvCompInterfaceThread;

    iget-object v1, v1, Lcom/infraware/office/evengine/EvCompInterfaceThread;->Native:Lcom/infraware/office/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvNative;->ITimer()V

    .line 68
    iget-object v1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_45} :catch_4d

    .line 75
    :cond_45
    :goto_45
    const-wide/16 v1, 0x14

    :try_start_47
    invoke-static {v1, v2}, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_0

    .line 76
    :catch_4b
    move-exception v1

    goto :goto_0

    .line 69
    :catch_4d
    move-exception v1

    goto :goto_45
.end method

.method public setMbTimer(Z)V
    .registers 2
    .parameter "mbTimer"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mbTimer:Z

    .line 44
    return-void
.end method

.method setTask(Lcom/infraware/office/evengine/EvTaskObj;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 29
    iget-object v0, p0, Lcom/infraware/office/evengine/EvCompInterfaceThread$TaskThread;->mTaskObj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 32
    :goto_a
    return-void

    .line 30
    :catch_b
    move-exception v0

    goto :goto_a
.end method
