.class public Lcom/google/android/feeds/core/content/FeedCursor;
.super Landroid/database/AbstractCursor;
.source "FeedCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/content/FeedCursor$1;,
        Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;,
        Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private final mChanges:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/MatrixCursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;

.field private final mFeedResolverFactory:Lcom/google/android/feeds/core/content/FeedResolverFactory;

.field private mMaxRetryCount:I

.field private final mProjection:[Ljava/lang/String;

.field private mRequestHandler:Landroid/os/Handler;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mUid:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic access$100(Lcom/google/android/feeds/core/content/FeedCursor;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/feeds/core/content/FeedCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/feeds/core/content/FeedCursor;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/feeds/core/content/FeedCursor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mClosed:Z

    return p1
.end method

.method private applyChange(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 456
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_56

    .line 476
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected message type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 458
    :pswitch_22
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/feeds/core/provider/FeedStatus;

    .line 459
    .local v4, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    iget-object v5, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 478
    .end local v4           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :goto_2b
    return-void

    .line 462
    :pswitch_2c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_54

    move v0, v6

    .line 463
    .local v0, append:Z
    :goto_31
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 464
    .local v1, args:[Ljava/lang/Object;
    aget-object v2, v1, v7

    check-cast v2, Landroid/database/MatrixCursor;

    .line 465
    .local v2, data:Landroid/database/MatrixCursor;
    aget-object v3, v1, v6

    check-cast v3, Landroid/os/Bundle;

    .line 466
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_4e

    .line 467
    if-nez v0, :cond_49

    .line 468
    iget-object v5, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 470
    :cond_49
    iget-object v5, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_4e
    iget-object v5, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2b

    .end local v0           #append:Z
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #data:Landroid/database/MatrixCursor;
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_54
    move v0, v7

    .line 462
    goto :goto_31

    .line 456
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method

.method private applyChanges()V
    .registers 5

    .prologue
    .line 484
    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    monitor-enter v2

    .line 485
    :goto_3
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 486
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_19

    .line 488
    .local v0, msg:Landroid/os/Message;
    :try_start_12
    invoke-direct {p0, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->applyChange(Landroid/os/Message;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    .line 490
    :try_start_15
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    goto :goto_3

    .line 493
    .end local v0           #msg:Landroid/os/Message;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v1

    .line 490
    .restart local v0       #msg:Landroid/os/Message;
    :catchall_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    throw v1

    .line 493
    .end local v0           #msg:Landroid/os/Message;
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_19

    .line 494
    return-void
.end method

.method private changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V
    .registers 4
    .parameter "status"

    .prologue
    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method private static createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    .registers 6
    .parameter "t"
    .parameter "retryCommand"

    .prologue
    .line 82
    if-nez p0, :cond_8

    .line 83
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 85
    :cond_8
    if-nez p1, :cond_10

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 89
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, message:Ljava/lang/String;
    const-string v2, "FeedCursor"

    if-eqz v1, :cond_38

    .end local v1           #message:Ljava/lang/String;
    :goto_18
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, extras:Landroid/os/Bundle;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v2, v0}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V

    .line 95
    const-string v2, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-static {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->marshall(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 96
    const-string v2, "com.google.android.feeds.cursor.extra.RETRY_COMMAND"

    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-object v0

    .line 90
    .end local v0           #extras:Landroid/os/Bundle;
    .restart local v1       #message:Ljava/lang/String;
    :cond_38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method private enqueueChange(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    monitor-enter v1

    .line 442
    :try_start_3
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mClosed:Z

    if-eqz v0, :cond_11

    .line 445
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->applyChanges()V

    .line 449
    :goto_f
    monitor-exit v1

    .line 450
    return-void

    .line 447
    :cond_11
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->notifyChange()V

    goto :goto_f

    .line 449
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getCursor(I)Landroid/database/MatrixCursor;
    .registers 10
    .parameter "position"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mCursors:Ljava/util/ArrayList;

    .line 241
    .local v2, cursors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/MatrixCursor;>;"
    if-gez p1, :cond_c

    .line 242
    new-instance v6, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v7, "Before first row."

    invoke-direct {v6, v7}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 244
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 245
    .local v1, cursorCount:I
    const/4 v5, 0x0

    .line 246
    .local v5, rowCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v1, :cond_2b

    .line 247
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/MatrixCursor;

    .line 248
    .local v0, c:Landroid/database/MatrixCursor;
    sub-int v4, p1, v5

    .line 249
    .local v4, offset:I
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 250
    return-object v0

    .line 252
    :cond_23
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 255
    .end local v0           #c:Landroid/database/MatrixCursor;
    .end local v4           #offset:I
    :cond_2b
    new-instance v6, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v7, "After last row."

    invoke-direct {v6, v7}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getRequestHandler()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 600
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 602
    :cond_c
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    if-nez v1, :cond_3a

    .line 603
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MatrixFeedCursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 605
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 606
    new-instance v1, Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;-><init>(Lcom/google/android/feeds/core/content/FeedCursor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    .line 608
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_3a
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    return-object v1
.end method

.method private hasChanges()Z
    .registers 3

    .prologue
    .line 427
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    monitor-enter v1

    .line 428
    :try_start_3
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 429
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private isBusy()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-boolean v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mClosed:Z

    if-eqz v2, :cond_6

    .line 521
    :cond_5
    :goto_5
    return v1

    .line 515
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mActivated:Z

    if-eqz v2, :cond_5

    .line 517
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->hasChanges()Z

    move-result v2

    if-nez v2, :cond_5

    .line 520
    iget-object v2, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 521
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-eq v0, v2, :cond_5

    const/4 v1, 0x0

    goto :goto_5
.end method

.method private static isFeedCommand(Landroid/os/Bundle;)Z
    .registers 2
    .parameter "extras"

    .prologue
    .line 69
    const-string v0, "com.google.android.feeds.cursor.respond.input.extra.COMMAND"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static marshall(Ljava/lang/Object;)[B
    .registers 5
    .parameter "obj"

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 111
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 112
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v3

    .line 115
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_17
    return-object v3

    .line 113
    :catch_18
    move-exception v1

    .line 115
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_17
.end method

.method private notifyChange()V
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, selfChange:Z
    invoke-virtual {p0, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->onChange(Z)V

    .line 438
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mChanges:Ljava/util/LinkedList;

    monitor-enter v1

    .line 585
    :try_start_3
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 589
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->applyChanges()V

    .line 591
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    if-eqz v0, :cond_16

    .line 592
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mRequestHandler:Landroid/os/Handler;

    .line 595
    :cond_16
    monitor-exit v1

    .line 596
    return-void

    .line 595
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mActivated:Z

    .line 509
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 510
    return-void
.end method

.method public final getBlob(I)[B
    .registers 4
    .parameter "column"

    .prologue
    .line 307
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 308
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    return-object v1
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "columnName"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    .line 288
    .local v1, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 289
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 293
    .end local v0           #i:I
    :goto_e
    return v0

    .line 288
    .restart local v0       #i:I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 293
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .registers 5

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, count:I
    iget-object v3, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/MatrixCursor;

    .line 300
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_7

    .line 302
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_19
    return v0
.end method

.method public final getDouble(I)D
    .registers 5
    .parameter "column"

    .prologue
    .line 313
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 314
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 319
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final getFloat(I)F
    .registers 4
    .parameter "column"

    .prologue
    .line 324
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 325
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public final getInt(I)I
    .registers 4
    .parameter "column"

    .prologue
    .line 330
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 331
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public final getLong(I)J
    .registers 5
    .parameter "column"

    .prologue
    .line 336
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 337
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public final getShort(I)S
    .registers 4
    .parameter "column"

    .prologue
    .line 342
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 343
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    return v1
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 4
    .parameter "column"

    .prologue
    .line 348
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 349
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V
    .registers 24
    .parameter "command"
    .parameter "maxRetryCount"

    .prologue
    .line 363
    new-instance v8, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 364
    .local v8, cursor:Landroid/database/MatrixCursor;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v9, extras:Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 372
    .local v17, retryCount:I
    :goto_10
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mUri:Landroid/net/Uri;

    .line 373
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    if-eqz v2, :cond_72

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v4, v2

    .line 374
    .local v4, projection:[Ljava/lang/String;
    :goto_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mSelection:Ljava/lang/String;

    .line 375
    .local v5, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v2, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v6, v2

    .line 376
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_3a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mSortOrder:Ljava/lang/String;

    .line 377
    .local v7, sortOrder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mFeedResolverFactory:Lcom/google/android/feeds/core/content/FeedResolverFactory;

    invoke-interface/range {v2 .. v9}, Lcom/google/android/feeds/core/content/FeedResolverFactory;->createFeedResolver(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/os/Bundle;)Lcom/google/android/feeds/core/content/FeedResolver;

    move-result-object v16

    .line 379
    .local v16, resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/feeds/core/content/FeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_163
    .catch Ljava/net/HttpRetryException; {:try_start_10 .. :try_end_4d} :catch_76
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_10 .. :try_end_4d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4d} :catch_e2
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_4d} :catch_10d
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_4d} :catch_138

    .line 393
    :try_start_4d
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-virtual {v2, v9}, Lcom/google/android/feeds/core/provider/FeedStatus;->writeTo(Landroid/os/Bundle;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_163
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_4d .. :try_end_52} :catch_b2
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_e2
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_52} :catch_10d
    .catch Ljava/lang/Error; {:try_start_4d .. :try_end_52} :catch_138

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .local v10, append:Z
    const/16 v18, 0x2

    .line 412
    .local v18, what:I
    if-eqz v10, :cond_dd

    const/4 v11, 0x1

    .line 413
    .local v11, arg1:I
    :goto_5b
    const/4 v12, 0x0

    .line 414
    .local v12, arg2:I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v9, v15, v2

    .line 417
    .local v15, obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    .line 419
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #sortOrder:Ljava/lang/String;
    .end local v16           #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    :goto_71
    return-void

    .line 373
    .end local v10           #append:Z
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v15           #obj:[Ljava/lang/Object;
    .end local v18           #what:I
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_72
    const/4 v4, 0x0

    goto :goto_25

    .line 375
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v5       #selection:Ljava/lang/String;
    :cond_74
    const/4 v6, 0x0

    goto :goto_3a

    .line 381
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    :catch_76
    move-exception v14

    .line 382
    .local v14, e:Ljava/net/HttpRetryException;
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_8d

    .line 383
    :try_start_7d
    new-instance v13, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/feeds/core/content/FeedCursor;->mProjection:[Ljava/lang/String;

    invoke-direct {v13, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_163
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_7d .. :try_end_86} :catch_b2
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_e2
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_86} :catch_10d
    .catch Ljava/lang/Error; {:try_start_7d .. :try_end_86} :catch_138

    .line 384
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .local v13, cursor:Landroid/database/MatrixCursor;
    :try_start_86
    invoke-virtual {v9}, Landroid/os/Bundle;->clear()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_190
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_86 .. :try_end_89} :catch_19e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_19a
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_89} :catch_196
    .catch Ljava/lang/Error; {:try_start_86 .. :try_end_89} :catch_193

    .line 368
    add-int/lit8 v17, v17, 0x1

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto :goto_10

    .line 387
    :cond_8d
    :try_start_8d
    new-instance v2, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Maximum retries ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") exceeded"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b2
    .catchall {:try_start_8d .. :try_end_b2} :catchall_163
    .catch Lcom/google/android/feeds/core/provider/FeedException; {:try_start_8d .. :try_end_b2} :catch_b2
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_b2} :catch_e2
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_b2} :catch_10d
    .catch Ljava/lang/Error; {:try_start_8d .. :try_end_b2} :catch_138

    .line 394
    .end local v14           #e:Ljava/net/HttpRetryException;
    :catch_b2
    move-exception v14

    .line 395
    .local v14, e:Lcom/google/android/feeds/core/provider/FeedException;
    :goto_b3
    const/4 v8, 0x0

    .line 396
    :try_start_b4
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;

    move-result-object v9

    .line 399
    invoke-virtual {v14, v9}, Lcom/google/android/feeds/core/provider/FeedException;->copyExtrasTo(Landroid/os/Bundle;)V
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_163

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .restart local v10       #append:Z
    const/16 v18, 0x2

    .line 412
    .restart local v18       #what:I
    if-eqz v10, :cond_e0

    const/4 v11, 0x1

    .line 413
    .restart local v11       #arg1:I
    :goto_c6
    const/4 v12, 0x0

    .line 414
    .restart local v12       #arg2:I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v9, v15, v2

    .line 417
    .restart local v15       #obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    goto :goto_71

    .line 412
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v14           #e:Lcom/google/android/feeds/core/provider/FeedException;
    .end local v15           #obj:[Ljava/lang/Object;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #sortOrder:Ljava/lang/String;
    .restart local v16       #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    :cond_dd
    const/4 v11, 0x0

    goto/16 :goto_5b

    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v7           #sortOrder:Ljava/lang/String;
    .end local v16           #resolver:Lcom/google/android/feeds/core/content/FeedResolver;
    .restart local v14       #e:Lcom/google/android/feeds/core/provider/FeedException;
    :cond_e0
    const/4 v11, 0x0

    goto :goto_c6

    .line 400
    .end local v10           #append:Z
    .end local v14           #e:Lcom/google/android/feeds/core/provider/FeedException;
    .end local v18           #what:I
    :catch_e2
    move-exception v14

    .line 401
    .local v14, e:Ljava/io/IOException;
    :goto_e3
    const/4 v8, 0x0

    .line 402
    :try_start_e4
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_163

    move-result-object v9

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .restart local v10       #append:Z
    const/16 v18, 0x2

    .line 412
    .restart local v18       #what:I
    if-eqz v10, :cond_10b

    const/4 v11, 0x1

    .line 413
    .restart local v11       #arg1:I
    :goto_f3
    const/4 v12, 0x0

    .line 414
    .restart local v12       #arg2:I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v9, v15, v2

    .line 417
    .restart local v15       #obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    goto/16 :goto_71

    .line 412
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v15           #obj:[Ljava/lang/Object;
    :cond_10b
    const/4 v11, 0x0

    goto :goto_f3

    .line 403
    .end local v10           #append:Z
    .end local v14           #e:Ljava/io/IOException;
    .end local v18           #what:I
    :catch_10d
    move-exception v14

    .line 404
    .local v14, e:Ljava/lang/RuntimeException;
    :goto_10e
    const/4 v8, 0x0

    .line 405
    :try_start_10f
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_163

    move-result-object v9

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .restart local v10       #append:Z
    const/16 v18, 0x2

    .line 412
    .restart local v18       #what:I
    if-eqz v10, :cond_136

    const/4 v11, 0x1

    .line 413
    .restart local v11       #arg1:I
    :goto_11e
    const/4 v12, 0x0

    .line 414
    .restart local v12       #arg2:I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v9, v15, v2

    .line 417
    .restart local v15       #obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    goto/16 :goto_71

    .line 412
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v15           #obj:[Ljava/lang/Object;
    :cond_136
    const/4 v11, 0x0

    goto :goto_11e

    .line 406
    .end local v10           #append:Z
    .end local v14           #e:Ljava/lang/RuntimeException;
    .end local v18           #what:I
    :catch_138
    move-exception v14

    .line 407
    .local v14, e:Ljava/lang/Error;
    :goto_139
    const/4 v8, 0x0

    .line 408
    :try_start_13a
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/google/android/feeds/core/content/FeedCursor;->createErrorBundle(Ljava/lang/Throwable;Lcom/google/android/feeds/core/provider/FeedCommand;)Landroid/os/Bundle;
    :try_end_13f
    .catchall {:try_start_13a .. :try_end_13f} :catchall_163

    move-result-object v9

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .restart local v10       #append:Z
    const/16 v18, 0x2

    .line 412
    .restart local v18       #what:I
    if-eqz v10, :cond_161

    const/4 v11, 0x1

    .line 413
    .restart local v11       #arg1:I
    :goto_149
    const/4 v12, 0x0

    .line 414
    .restart local v12       #arg2:I
    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v9, v15, v2

    .line 417
    .restart local v15       #obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    goto/16 :goto_71

    .line 412
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v15           #obj:[Ljava/lang/Object;
    :cond_161
    const/4 v11, 0x0

    goto :goto_149

    .line 410
    .end local v10           #append:Z
    .end local v14           #e:Ljava/lang/Error;
    .end local v18           #what:I
    :catchall_163
    move-exception v2

    :goto_164
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v10

    .line 411
    .restart local v10       #append:Z
    const/16 v18, 0x2

    .line 412
    .restart local v18       #what:I
    if-eqz v10, :cond_18e

    const/4 v11, 0x1

    .line 413
    .restart local v11       #arg1:I
    :goto_16d
    const/4 v12, 0x0

    .line 414
    .restart local v12       #arg2:I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v8, v15, v19

    const/16 v19, 0x1

    aput-object v9, v15, v19

    .line 417
    .restart local v15       #obj:[Ljava/lang/Object;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v11, v12, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->enqueueChange(Landroid/os/Message;)V

    .line 418
    throw v2

    .line 412
    .end local v11           #arg1:I
    .end local v12           #arg2:I
    .end local v15           #obj:[Ljava/lang/Object;
    :cond_18e
    const/4 v11, 0x0

    goto :goto_16d

    .line 410
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .end local v10           #append:Z
    .end local v18           #what:I
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    .local v14, e:Ljava/net/HttpRetryException;
    :catchall_190
    move-exception v2

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto :goto_164

    .line 406
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :catch_193
    move-exception v14

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto :goto_139

    .line 403
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :catch_196
    move-exception v14

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto/16 :goto_10e

    .line 400
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :catch_19a
    move-exception v14

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto/16 :goto_e3

    .line 394
    .end local v8           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :catch_19e
    move-exception v14

    move-object v8, v13

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v8       #cursor:Landroid/database/MatrixCursor;
    goto/16 :goto_b3
.end method

.method public final isNull(I)Z
    .registers 4
    .parameter "column"

    .prologue
    .line 354
    iget v1, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mPos:I

    invoke-direct {p0, v1}, Lcom/google/android/feeds/core/content/FeedCursor;->getCursor(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 355
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    return v1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 614
    iget-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mClosed:Z

    if-nez v0, :cond_11

    .line 615
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 625
    :cond_11
    return-void
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mActivated:Z

    .line 500
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->applyChanges()V

    .line 503
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .parameter "extras"

    .prologue
    .line 527
    invoke-static {p1}, Lcom/google/android/feeds/core/content/FeedCursor;->isFeedCommand(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 528
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    invoke-direct {v0, p1}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    .line 529
    .local v0, command:Lcom/google/android/feeds/core/provider/FeedCommand;
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->getType()Lcom/google/android/feeds/core/provider/FeedCommand$Type;

    move-result-object v6

    .line 531
    .local v6, type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v5, responseBundle:Landroid/os/Bundle;
    sget-object v8, Lcom/google/android/feeds/core/content/FeedCursor$1;->$SwitchMap$com$google$android$feeds$core$provider$FeedCommand$Type:[I

    invoke-virtual {v6}, Lcom/google/android/feeds/core/provider/FeedCommand$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_a2

    .line 572
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 575
    .local v4, response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :goto_21
    invoke-virtual {v4, v5}, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->writeTo(Landroid/os/Bundle;)V

    .line 578
    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v5           #responseBundle:Landroid/os/Bundle;
    .end local v6           #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :goto_24
    return-object v5

    .line 534
    .restart local v0       #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .restart local v5       #responseBundle:Landroid/os/Bundle;
    .restart local v6       #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :pswitch_25
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->isBusy()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 535
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->ILLEGAL_STATE:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_21

    .line 538
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :cond_2e
    new-instance v0, Lcom/google/android/feeds/core/provider/FeedCommand;

    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, v8}, Lcom/google/android/feeds/core/provider/FeedCommand;-><init>(Landroid/os/Bundle;)V

    .line 541
    .restart local v0       #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->getCount()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/feeds/core/provider/FeedCommand;->rowCount(I)Lcom/google/android/feeds/core/provider/FeedCommand;

    .line 542
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/feeds/core/provider/FeedCommand;->state(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedCommand;

    .line 544
    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAsync()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 545
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_58

    invoke-virtual {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 546
    :cond_58
    sget-object v8, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADING:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {p0, v8}, Lcom/google/android/feeds/core/content/FeedCursor;->changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V

    .line 550
    :goto_5d
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/FeedCursor;->getRequestHandler()Landroid/os/Handler;

    move-result-object v1

    .line 551
    .local v1, handler:Landroid/os/Handler;
    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mMaxRetryCount:I

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 553
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 557
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #msg:Landroid/os/Message;
    :goto_6c
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 559
    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_21

    .line 548
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    :cond_6f
    sget-object v8, Lcom/google/android/feeds/core/provider/FeedStatus;->REQUERYING:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-direct {p0, v8}, Lcom/google/android/feeds/core/content/FeedCursor;->changeStatus(Lcom/google/android/feeds/core/provider/FeedStatus;)V

    goto :goto_5d

    .line 555
    :cond_75
    iget v8, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mMaxRetryCount:I

    invoke-virtual {p0, v0, v8}, Lcom/google/android/feeds/core/content/FeedCursor;->handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V

    goto :goto_6c

    .line 561
    :pswitch_7b
    iget-object v8, p0, Lcom/google/android/feeds/core/content/FeedCursor;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->get(Landroid/content/Context;)Lcom/google/android/feeds/core/content/SavedCursorProvider;

    move-result-object v3

    .line 562
    .local v3, provider:Lcom/google/android/feeds/core/content/SavedCursorProvider;
    if-eqz v3, :cond_99

    .line 563
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->OK:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 565
    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    new-instance v8, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/feeds/core/content/FeedCursor$SavedFeedCursor;-><init>(Lcom/google/android/feeds/core/content/FeedCursor;Lcom/google/android/feeds/core/content/FeedCursor$1;)V

    invoke-virtual {v3, v8}, Lcom/google/android/feeds/core/content/SavedCursorProvider;->save(Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;)Landroid/net/Uri;

    move-result-object v7

    .line 566
    .local v7, uri:Landroid/net/Uri;
    sget-object v8, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->URI:Lcom/google/android/feeds/core/provider/FeedCommand$Output;

    invoke-virtual {v8}, Lcom/google/android/feeds/core/provider/FeedCommand$Output;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_21

    .line 568
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_99
    sget-object v4, Lcom/google/android/feeds/core/provider/FeedCommand$Response;->UNSUPPORTED_OPERATION:Lcom/google/android/feeds/core/provider/FeedCommand$Response;

    .line 570
    .restart local v4       #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    goto :goto_21

    .line 578
    .end local v0           #command:Lcom/google/android/feeds/core/provider/FeedCommand;
    .end local v3           #provider:Lcom/google/android/feeds/core/content/SavedCursorProvider;
    .end local v4           #response:Lcom/google/android/feeds/core/provider/FeedCommand$Response;
    .end local v5           #responseBundle:Landroid/os/Bundle;
    .end local v6           #type:Lcom/google/android/feeds/core/provider/FeedCommand$Type;
    :cond_9c
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_24

    .line 532
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_25
        :pswitch_7b
    .end packed-switch
.end method
