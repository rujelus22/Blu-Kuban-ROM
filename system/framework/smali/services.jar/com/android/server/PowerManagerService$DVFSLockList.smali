.class Lcom/android/server/PowerManagerService$DVFSLockList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$DVFSLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 3885
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3885
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V
    .registers 4
    .parameter "wl"

    .prologue
    .line 3889
    iget-object v1, p1, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 3890
    .local v0, index:I
    if-gez v0, :cond_b

    .line 3891
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->add(Ljava/lang/Object;)Z

    .line 3893
    :cond_b
    return-void
.end method

.method dumpDVFSLockList()V
    .registers 11

    .prologue
    .line 4001
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;

    move-result-object v3

    monitor-enter v3

    .line 4002
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 4003
    .local v0, N:I
    if-nez v0, :cond_f

    .line 4004
    monitor-exit v3

    .line 4029
    :goto_e
    return-void

    .line 4007
    :cond_f
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MAX_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_7a

    .line 4009
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_77

    .line 4010
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 4014
    :cond_7a
    const-string v2, "PowerManagerService"

    const-string v4, "dumpDVFSLockList : DVFS_MIN_LIMIT"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    const/4 v1, 0x0

    :goto_82
    if-ge v1, v0, :cond_e5

    .line 4016
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e2

    .line 4017
    const-string v4, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  frequency : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  elapsed time : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-wide v8, v2, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    :cond_e2
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    .line 4022
    :cond_e5
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_111

    .line 4023
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMaxLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_111
    iget-object v2, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    if-eqz v2, :cond_13d

    .line 4026
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpDVFSLockList : mCurrentDVFSMinLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$DVFSLockList;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8100(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    :cond_13d
    monitor-exit v3

    goto/16 :goto_e

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_140
    move-exception v2

    monitor-exit v3
    :try_end_142
    .catchall {:try_start_7 .. :try_end_142} :catchall_140

    throw v2
.end method

.method getIndex(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 3908
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 3909
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$DVFSLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_12

    .line 3913
    .end local v1           #i:I
    :goto_11
    return v1

    .line 3908
    .restart local v1       #i:I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3913
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .registers 9

    .prologue
    .line 3917
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 3918
    .local v0, N:I
    const/4 v3, -0x1

    .line 3919
    .local v3, indexMaxFrequency:I
    const/4 v4, -0x1

    .line 3923
    .local v4, maxFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 3924
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 3925
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 3929
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 3930
    move v4, v1

    .line 3931
    move v3, v2

    .line 3923
    .end local v1           #frequency:I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3934
    .restart local v1       #frequency:I
    :cond_24
    if-le v1, v4, :cond_21

    .line 3935
    move v4, v1

    .line 3936
    move v3, v2

    goto :goto_21

    .line 3942
    .end local v1           #frequency:I
    :cond_29
    if-ltz v3, :cond_32

    .line 3943
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 3955
    .local v5, maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_31
    return-object v5

    .line 3949
    .end local v5           #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_32
    const/4 v5, 0x0

    .restart local v5       #maxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_31
.end method

.method getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;
    .registers 9

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v0

    .line 3960
    .local v0, N:I
    const/4 v3, -0x1

    .line 3961
    .local v3, indexMinFrequency:I
    const/4 v4, -0x1

    .line 3965
    .local v4, minFrequency:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_29

    .line 3966
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v6, v6, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_21

    .line 3967
    invoke-virtual {p0, v2}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$DVFSLock;

    iget v1, v6, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    .line 3971
    .local v1, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_24

    .line 3972
    move v4, v1

    .line 3973
    move v3, v2

    .line 3965
    .end local v1           #frequency:I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3976
    .restart local v1       #frequency:I
    :cond_24
    if-ge v1, v4, :cond_21

    .line 3977
    move v4, v1

    .line 3978
    move v3, v2

    goto :goto_21

    .line 3984
    .end local v1           #frequency:I
    :cond_29
    if-ltz v3, :cond_32

    .line 3985
    invoke-virtual {p0, v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 3997
    .local v5, minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :goto_31
    return-object v5

    .line 3991
    .end local v5           #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_32
    const/4 v5, 0x0

    .restart local v5       #minOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_31
.end method

.method removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;
    .registers 4
    .parameter "binder"

    .prologue
    .line 3897
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 3898
    .local v0, index:I
    if-ltz v0, :cond_d

    .line 3899
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 3901
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
