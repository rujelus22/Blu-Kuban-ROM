.class final Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;
.super Landroid/database/ContentObserver;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CursorFragmentObserver"
.end annotation


# instance fields
.field mLogTag:Ljava/lang/String;

.field mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/AsyncCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/music/AsyncCursor;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/music/AsyncCursor;->access$000()Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mOwner:Ljava/lang/ref/WeakReference;

    .line 96
    const-string v0, "AsyncCursor"

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mLogTag:Ljava/lang/String;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/AsyncCursor;Lcom/google/android/music/AsyncCursor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;-><init>(Lcom/google/android/music/AsyncCursor;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor;

    .line 102
    .local v0, owner:Lcom/google/android/music/AsyncCursor;
    if-nez v0, :cond_12

    .line 103
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;->mLogTag:Ljava/lang/String;

    const-string v2, "Cursor disappeared"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_11
    return-void

    .line 106
    :cond_12
    monitor-enter v0

    .line 107
    :try_start_13
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_1c

    const-string v1, "onChange received on cursor"

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 108
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 109
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 110
    const/4 v1, 0x3

    #calls: Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(I)V
    invoke-static {v0, v1}, Lcom/google/android/music/AsyncCursor;->access$100(Lcom/google/android/music/AsyncCursor;I)V

    .line 111
    monitor-exit v0

    goto :goto_11

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    throw v1
.end method
