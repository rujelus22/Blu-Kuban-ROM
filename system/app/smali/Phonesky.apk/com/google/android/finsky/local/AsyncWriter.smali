.class Lcom/google/android/finsky/local/AsyncWriter;
.super Ljava/lang/Object;
.source "AsyncWriter.java"

# interfaces
.implements Lcom/google/android/finsky/local/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/AsyncWriter$2;
    }
.end annotation


# instance fields
.field private volatile mDead:Z

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/finsky/local/Writer$Item;",
            ">;"
        }
    .end annotation
.end field

.field protected final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/PersistentAssetStore;)V
    .registers 4
    .parameter "persistentStore"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mDead:Z

    .line 21
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/finsky/local/AsyncWriter$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/local/AsyncWriter$1;-><init>(Lcom/google/android/finsky/local/AsyncWriter;Lcom/google/android/finsky/local/PersistentAssetStore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mThread:Ljava/lang/Thread;

    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/local/AsyncWriter;Lcom/google/android/finsky/local/PersistentAssetStore;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/finsky/local/AsyncWriter;->mainLoop(Lcom/google/android/finsky/local/PersistentAssetStore;)V

    return-void
.end method

.method private mainLoop(Lcom/google/android/finsky/local/PersistentAssetStore;)V
    .registers 8
    .parameter "persistentStore"

    .prologue
    const/4 v5, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    .local v2, keepLooping:Z
    :goto_2
    if-eqz v2, :cond_56

    .line 44
    :try_start_4
    iget-object v3, p0, Lcom/google/android/finsky/local/AsyncWriter;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/local/Writer$Item;

    .line 46
    .local v1, item:Lcom/google/android/finsky/local/Writer$Item;
    sget-object v3, Lcom/google/android/finsky/local/AsyncWriter$2;->$SwitchMap$com$google$android$finsky$local$Writer$Op:[I

    iget-object v4, v1, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    invoke-virtual {v4}, Lcom/google/android/finsky/local/Writer$Op;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    .line 52
    iget-object v3, v1, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    if-eqz v3, :cond_30

    .line 53
    iget-object v3, v1, Lcom/google/android/finsky/local/Writer$Item;->mWritable:Lcom/google/android/finsky/local/Writable;

    iget-object v4, v1, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    invoke-interface {v3, p1, v4}, Lcom/google/android/finsky/local/Writable;->write(Lcom/google/android/finsky/local/PersistentAssetStore;Lcom/google/android/finsky/local/Writer$Op;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_2

    .line 59
    .end local v1           #item:Lcom/google/android/finsky/local/Writer$Item;
    :catch_25
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 48
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #item:Lcom/google/android/finsky/local/Writer$Item;
    :pswitch_2e
    const/4 v2, 0x0

    .line 49
    goto :goto_2

    .line 55
    :cond_30
    :try_start_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncWriter asked to write with operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/finsky/local/Writer$Item;->mOperation:Lcom/google/android/finsky/local/Writer$Op;

    invoke-virtual {v4}, Lcom/google/android/finsky/local/Writer$Op;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and null writeable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_55} :catch_25

    goto :goto_2

    .line 63
    .end local v1           #item:Lcom/google/android/finsky/local/Writer$Item;
    :cond_56
    return-void

    .line 46
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public delete(Lcom/google/android/finsky/local/Writable;)V
    .registers 3
    .parameter "record"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/local/AsyncWriter;->write(Lcom/google/android/finsky/local/Writable;Z)V

    .line 81
    return-void
.end method

.method public insert(Lcom/google/android/finsky/local/Writable;)V
    .registers 3
    .parameter "record"

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/local/AsyncWriter;->write(Lcom/google/android/finsky/local/Writable;Z)V

    .line 76
    return-void
.end method

.method protected write(Lcom/google/android/finsky/local/Writable;Z)V
    .registers 6
    .parameter "record"
    .parameter "insert"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/finsky/local/AsyncWriter;->mDead:Z

    if-eqz v0, :cond_c

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t queue operations when writer is dead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/local/AsyncWriter;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/google/android/finsky/local/Writer$Item;

    if-eqz p2, :cond_1b

    sget-object v0, Lcom/google/android/finsky/local/Writer$Op;->INSERT:Lcom/google/android/finsky/local/Writer$Op;

    :goto_14
    invoke-direct {v2, v0, p1}, Lcom/google/android/finsky/local/Writer$Item;-><init>(Lcom/google/android/finsky/local/Writer$Op;Lcom/google/android/finsky/local/Writable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 71
    return-void

    .line 70
    :cond_1b
    sget-object v0, Lcom/google/android/finsky/local/Writer$Op;->DELETE:Lcom/google/android/finsky/local/Writer$Op;

    goto :goto_14
.end method
