.class Lcom/android/server/WimaxService$Lock;
.super Lcom/android/server/WimaxService$DeathRecipient;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Lock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter "lockMode"
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/server/WimaxService$Lock;->this$0:Lcom/android/server/WimaxService;

    .line 1329
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WimaxService$DeathRecipient;-><init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1330
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/server/WimaxService$Lock;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$1200(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 1334
    :try_start_7
    iget-object v0, p0, Lcom/android/server/WimaxService$Lock;->this$0:Lcom/android/server/WimaxService;

    iget-object v2, p0, Lcom/android/server/WimaxService$Lock;->mBinder:Landroid/os/IBinder;

    #calls: Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z
    invoke-static {v0, v2}, Lcom/android/server/WimaxService;->access$1300(Lcom/android/server/WimaxService;Landroid/os/IBinder;)Z

    .line 1335
    monitor-exit v1

    .line 1336
    return-void

    .line 1335
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WimaxService$Lock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService$Lock;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WimaxService$Lock;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
