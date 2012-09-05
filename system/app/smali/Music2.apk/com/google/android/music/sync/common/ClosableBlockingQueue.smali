.class public Lcom/google/android/music/sync/common/ClosableBlockingQueue;
.super Ljava/lang/Object;
.source "ClosableBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private volatile mIsClosed:Z

.field private final mNotEmpty:Ljava/util/concurrent/locks/Condition;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 52
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    .line 50
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotFull:Ljava/util/concurrent/locks/Condition;

    .line 53
    iput p1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mCapacity:I

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 177
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    .line 181
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_13

    .line 183
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 185
    return-void

    .line 183
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public kill()V
    .registers 3

    .prologue
    .line 192
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 198
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 199
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1d

    .line 201
    iget-object v0, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    return-void

    .line 201
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 148
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_28

    .line 153
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mCapacity:I

    if-lt v1, v2, :cond_2f

    iget-boolean v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    if-nez v1, :cond_2f

    .line 154
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_20} :catch_21

    goto :goto_d

    .line 163
    :catch_21
    move-exception v0

    .line 164
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_22
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 165
    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    .line 168
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 157
    :cond_2f
    :try_start_2f
    iget-boolean v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    if-eqz v1, :cond_39

    .line 158
    new-instance v1, Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;

    invoke-direct {v1}, Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException;-><init>()V

    throw v1

    .line 160
    :cond_39
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_43} :catch_21

    .line 168
    iget-object v1, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 170
    return-void
.end method

.method public take()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1e

    .line 86
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mIsClosed:Z

    if-nez v2, :cond_25

    .line 87
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_5

    .line 98
    :catch_17
    move-exception v1

    .line 99
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_18
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 100
    throw v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1e

    .line 103
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_1e
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 90
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 91
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, e:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mNotFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_1e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_38} :catch_17

    .line 103
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :goto_3d
    return-object v0

    .line 96
    :cond_3e
    const/4 v0, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3d
.end method

.method public take(I)Ljava/util/ArrayList;
    .registers 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/google/android/music/sync/common/ClosableBlockingQueue;,"Lcom/google/android/music/sync/common/ClosableBlockingQueue<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    if-lez p1, :cond_12

    move v3, p1

    :goto_5
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, p1, :cond_11

    .line 123
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/ClosableBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_14

    .line 129
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_11
    return-object v2

    .line 121
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :cond_12
    const/4 v3, 0x1

    goto :goto_5

    .line 127
    .restart local v0       #i:I
    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    :cond_14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method
