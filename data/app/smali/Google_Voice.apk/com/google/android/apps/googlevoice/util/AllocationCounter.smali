.class public Lcom/google/android/apps/googlevoice/util/AllocationCounter;
.super Ljava/lang/Object;
.source "AllocationCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final enabled:Z

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private summaryEveryRegister:Z

.field private final things:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private toStringObjects:Z

.field private totalCounter:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;Z)V
    .registers 5
    .parameter "log"
    .parameter "enabled"

    .prologue
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    .line 40
    iput v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->totalCounter:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->typeName:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->summaryEveryRegister:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->toStringObjects:Z

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->log:Lcom/google/android/apps/common/log/GLog;

    .line 59
    iput-boolean p2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->enabled:Z

    .line 60
    return-void
.end method

.method private liveCount(Z)I
    .registers 9
    .parameter "printEachObject"

    .prologue
    .line 126
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    const/4 v2, 0x0

    .line 127
    .local v2, liveCounter:I
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    :try_start_4
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_4d

    .line 129
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, instance:Ljava/lang/Object;,"TT;"
    if-nez v1, :cond_24

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 135
    :cond_24
    iget-boolean v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->toStringObjects:Z

    if-eqz v3, :cond_4a

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 138
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 141
    .end local v1           #instance:Ljava/lang/Object;,"TT;"
    :cond_4d
    monitor-exit v4

    .line 142
    return v2

    .line 141
    .end local v0           #i:I
    :catchall_4f
    move-exception v3

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_4f

    throw v3
.end method


# virtual methods
.method public liveCount()I
    .registers 2

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->liveCount(Z)I

    move-result v0

    return v0
.end method

.method public register(Ljava/lang/Object;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    .local p1, thing:Ljava/lang/Object;,"TT;"
    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->enabled:Z

    if-nez v2, :cond_5

    .line 110
    :cond_4
    :goto_4
    return-void

    .line 88
    :cond_5
    if-eqz p1, :cond_4

    .line 92
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 94
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_10

    .line 96
    monitor-exit v3

    goto :goto_4

    .line 109
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v2

    .line 99
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->things:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->totalCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->totalCounter:I

    .line 102
    const-string v2, ""

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->typeName:Ljava/lang/String;

    .line 106
    :cond_4b
    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->summaryEveryRegister:Z

    if-eqz v2, :cond_52

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->summary()V

    .line 109
    :cond_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_27 .. :try_end_53} :catchall_24

    goto :goto_4
.end method

.method public summary()V
    .registers 6

    .prologue
    .line 147
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->enabled:Z

    if-nez v1, :cond_5

    .line 162
    :goto_4
    return-void

    .line 156
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 158
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_b
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->toStringObjects:Z

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->liveCount(Z)I

    move-result v0

    .line 160
    .local v0, liveCounter:I
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->typeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->totalCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 161
    monitor-exit v2

    goto :goto_4

    .end local v0           #liveCounter:I
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public totalCount()I
    .registers 3

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_3
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->totalCounter:I

    monitor-exit v1

    return v0

    .line 116
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public withSummaryEveryRegister()Lcom/google/android/apps/googlevoice/util/AllocationCounter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/googlevoice/util/AllocationCounter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->summaryEveryRegister:Z

    .line 68
    monitor-exit v1

    .line 69
    return-object p0

    .line 68
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public withToStringOfLiveObjectsInSummary()Lcom/google/android/apps/googlevoice/util/AllocationCounter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/googlevoice/util/AllocationCounter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/apps/googlevoice/util/AllocationCounter;,"Lcom/google/android/apps/googlevoice/util/AllocationCounter<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->toStringObjects:Z

    .line 78
    monitor-exit v1

    .line 79
    return-object p0

    .line 78
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method
