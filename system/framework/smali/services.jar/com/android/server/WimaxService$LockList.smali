.class Lcom/android/server/WimaxService$LockList;
.super Ljava/lang/Object;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WimaxService$Lock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method private constructor <init>(Lcom/android/server/WimaxService;)V
    .registers 3
    .parameter

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/android/server/WimaxService$LockList;->this$0:Lcom/android/server/WimaxService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    .line 1348
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WimaxService;Lcom/android/server/WimaxService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService$LockList;-><init>(Lcom/android/server/WimaxService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WimaxService$LockList;Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WimaxService$LockList;Lcom/android/server/WimaxService$Lock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService$LockList;->addLock(Lcom/android/server/WimaxService$Lock;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WimaxService$LockList;Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/WimaxService$Lock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 1367
    iget-object v0, p1, Lcom/android/server/WimaxService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/WimaxService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    .line 1368
    iget-object v0, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1370
    :cond_d
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "pw"

    .prologue
    .line 1392
    iget-object v2, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Lock;

    .line 1393
    .local v1, l:Lcom/android/server/WimaxService$Lock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 1396
    .end local v1           #l:Lcom/android/server/WimaxService$Lock;
    :cond_1b
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 1384
    iget-object v2, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1385
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1386
    iget-object v2, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WimaxService$Lock;

    iget-object v2, v2, Lcom/android/server/WimaxService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_17

    .line 1388
    .end local v0           #i:I
    :goto_16
    return v0

    .line 1385
    .restart local v0       #i:I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1388
    :cond_1a
    const/4 v0, -0x1

    goto :goto_16
.end method

.method private declared-synchronized getStrongestLockMode()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1355
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_25

    move-result v3

    if-eqz v3, :cond_c

    .line 1363
    :goto_a
    monitor-exit p0

    return v2

    .line 1358
    :cond_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Lock;

    .line 1359
    .local v1, l:Lcom/android/server/WimaxService$Lock;
    iget v3, v1, Lcom/android/server/WimaxService$DeathRecipient;->mMode:I
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_25

    if-ne v3, v2, :cond_12

    goto :goto_a

    .line 1363
    .end local v1           #l:Lcom/android/server/WimaxService$Lock;
    :cond_23
    const/4 v2, 0x2

    goto :goto_a

    .line 1355
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized hasLocks()Z
    .registers 2

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;
    .registers 5
    .parameter "binder"

    .prologue
    .line 1373
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 1374
    .local v0, index:I
    if-ltz v0, :cond_12

    .line 1375
    iget-object v2, p0, Lcom/android/server/WimaxService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Lock;

    .line 1376
    .local v1, ret:Lcom/android/server/WimaxService$Lock;
    invoke-virtual {v1}, Lcom/android/server/WimaxService$Lock;->unlinkDeathRecipient()V

    .line 1379
    .end local v1           #ret:Lcom/android/server/WimaxService$Lock;
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
