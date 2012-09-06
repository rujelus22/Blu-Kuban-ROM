.class public Lcom/google/android/music/AsyncCursor;
.super Landroid/database/AbstractCursor;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncCursor$1;,
        Lcom/google/android/music/AsyncCursor$EmptyCursor;,
        Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;,
        Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;,
        Lcom/google/android/music/AsyncCursor$CursorFragment;
    }
.end annotation


# static fields
.field static final LOG:Z

.field static mSqlSerializer:Ljava/lang/Object;

.field private static final sCountProjection:[Ljava/lang/String;

.field private static sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;


# instance fields
.field private mAsyncCommandsExecuted:I

.field mContext:Landroid/content/Context;

.field private final mCreatedFromTrace:[Ljava/lang/StackTraceElement;

.field mCurrentRowCursor:Landroid/database/Cursor;

.field mCurrentRowCursorOffset:I

.field mEmptyCursor:Landroid/database/Cursor;

.field mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/AsyncCursor$CursorFragment;",
            ">;"
        }
    .end annotation
.end field

.field volatile mHaveExactSize:Z

.field private mIsHighPriority:Z

.field mLastFetchOffset:I

.field mNewSize:I

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSize:I

.field mSortOrder:Ljava/lang/String;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field mUri:Landroid/net/Uri;

.field mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-direct {v0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    .line 40
    const-string v0, "AsyncCursor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "highPriority"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/google/android/music/AsyncCursor$EmptyCursor;

    invoke-direct {v0}, Lcom/google/android/music/AsyncCursor$EmptyCursor;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    .line 52
    iput-boolean v1, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 60
    iput v1, p0, Lcom/google/android/music/AsyncCursor;->mAsyncCommandsExecuted:I

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    .line 154
    iput-object p3, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    .line 157
    iput-object p6, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v1, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 159
    invoke-static {p1}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 160
    iput-boolean p7, p0, Lcom/google/android/music/AsyncCursor;->mIsHighPriority:Z

    .line 163
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_86

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/android/music/AsyncCursor;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sel: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', args: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "high priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 172
    :cond_86
    invoke-direct {p0, v2}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(I)V

    .line 175
    new-instance v0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;-><init>(Lcom/google/android/music/AsyncCursor;Lcom/google/android/music/AsyncCursor$1;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    .line 176
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCreatedFromTrace:[Ljava/lang/StackTraceElement;

    .line 179
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/AsyncCursor;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AsyncCursor;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AsyncCursor;->doFetch(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doFreshen()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doClose()V

    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 139
    if-lez v0, :cond_12

    .line 140
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 145
    .end local v0           #i:I
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doClose()V
    .registers 6

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 434
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 435
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 436
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget-object v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 438
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_1a
    sget-boolean v3, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v3, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cursors"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 439
    :cond_3a
    monitor-exit p0

    .line 440
    return-void

    .line 439
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_3c
    move-exception v3

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method private doCount()V
    .registers 12

    .prologue
    .line 235
    sget-object v10, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v10

    .line 237
    :try_start_3
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_c

    const-string v0, "getting size"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 239
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 240
    .local v7, startTime:J
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_8d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_1e} :catch_8b

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5a

    :try_start_21
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 244
    monitor-enter p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_84

    .line 245
    const/4 v0, 0x0

    :try_start_29
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 246
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_81

    .line 247
    :try_start_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    long-to-int v9, v0

    .line 248
    .local v9, timeForCount:I
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v1, "asyncCursorDoCount"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "uri"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "timeMs"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_84

    .line 253
    .end local v9           #timeForCount:I
    :cond_5a
    if-eqz v6, :cond_5f

    .line 254
    :try_start_5c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_8d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5c .. :try_end_5f} :catch_8b

    .line 259
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #startTime:J
    :cond_5f
    :goto_5f
    :try_start_5f
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 261
    :cond_7b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 262
    monitor-exit v10
    :try_end_80
    .catchall {:try_start_5f .. :try_end_80} :catchall_8d

    .line 263
    return-void

    .line 246
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #startTime:J
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    .line 253
    :catchall_84
    move-exception v0

    if-eqz v6, :cond_8a

    .line 254
    :try_start_87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_87 .. :try_end_8b} :catch_8b

    .line 257
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #startTime:J
    :catch_8b
    move-exception v0

    goto :goto_5f

    .line 262
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v10
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method private doFetch(II)V
    .registers 18
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 277
    sget-object v14, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v14

    .line 278
    :try_start_3
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting fetch at offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 279
    :cond_1f
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 280
    .local v2, limituri:Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 281
    .local v11, startTime:J
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 282
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_168

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 284
    .local v9, count:I
    if-eqz v9, :cond_d1

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v11

    long-to-int v13, v3

    .line 286
    .local v13, totalTime:I
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "asyncCursorFetch"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "uri"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "timeMs"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    monitor-enter p0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_12d

    .line 290
    :try_start_8d
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v8

    .line 291
    .local v8, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v8, :cond_b0

    .line 292
    iget-boolean v1, v8, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-eqz v1, :cond_9c

    .line 293
    const-string v1, "possible unnecessary query: fragment was fresh"

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 295
    :cond_9c
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v3, v8, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    if-ne v1, v3, :cond_a6

    .line 296
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v1, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 298
    :cond_a6
    iget-object v1, v8, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 299
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    :cond_b0
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/music/AsyncCursor$CursorFragment;

    move/from16 v0, p1

    invoke-direct {v3, v0, v7}, Lcom/google/android/music/AsyncCursor$CursorFragment;-><init>(ILandroid/database/Cursor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v10

    .line 303
    .local v10, pos:I
    move/from16 v0, p1

    if-lt v10, v0, :cond_d0

    add-int v1, p1, p2

    if-ge v10, v1, :cond_d0

    .line 306
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/music/AsyncCursor;->onMove(II)Z

    .line 309
    :cond_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_8d .. :try_end_d1} :catchall_12a

    .line 311
    .end local v8           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v10           #pos:I
    .end local v13           #totalTime:I
    :cond_d1
    :try_start_d1
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " requested)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 316
    :cond_fd
    if-nez v9, :cond_130

    .line 320
    move/from16 v0, p1

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 321
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 322
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_124

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new size estimate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 330
    :cond_124
    :goto_124
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 334
    .end local v9           #count:I
    :goto_128
    monitor-exit v14
    :try_end_129
    .catchall {:try_start_d1 .. :try_end_129} :catchall_12d

    .line 335
    return-void

    .line 309
    .restart local v9       #count:I
    .restart local v13       #totalTime:I
    :catchall_12a
    move-exception v1

    :try_start_12b
    monitor-exit p0
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    :try_start_12c
    throw v1

    .line 334
    .end local v2           #limituri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #count:I
    .end local v11           #startTime:J
    .end local v13           #totalTime:I
    :catchall_12d
    move-exception v1

    monitor-exit v14
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_12d

    throw v1

    .line 323
    .restart local v2       #limituri:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #count:I
    .restart local v11       #startTime:J
    :cond_130
    move/from16 v0, p2

    if-ge v9, v0, :cond_124

    :try_start_134
    iget-boolean v1, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v1, :cond_124

    .line 326
    add-int v1, p1, v9

    iput v1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 328
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_124

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting size from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    goto :goto_124

    .line 332
    .end local v9           #count:I
    :cond_168
    const-string v1, "Got null Cursor"

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_134 .. :try_end_16d} :catchall_12d

    goto :goto_128
.end method

.method private doFreshen()V
    .registers 5

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 371
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_18

    .line 372
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 373
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 378
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_18
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(I)V

    .line 380
    monitor-exit p0

    .line 381
    return-void

    .line 380
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_1e
    move-exception v3

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v3
.end method

.method private fetchMoreIfNeeded(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 599
    div-int/lit16 v1, p1, 0x7d0

    .line 600
    .local v1, fragment:I
    rem-int/lit16 v3, p1, 0x7d0

    .line 601
    .local v3, offset:I
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_10

    .line 602
    mul-int/lit16 v4, v1, 0x7d0

    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    .line 621
    :cond_f
    :goto_f
    return-void

    .line 605
    :cond_10
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_24

    if-lez v1, :cond_24

    .line 607
    add-int/lit8 v4, v1, -0x1

    mul-int/lit16 v0, v4, 0x7d0

    .line 608
    .local v0, fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_24

    .line 609
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_f

    .line 613
    .end local v0           #fetchpos:I
    :cond_24
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit16 v2, v4, 0x7d0

    .line 614
    .local v2, lastfragment:I
    const/16 v4, 0x5dc

    if-le v3, v4, :cond_f

    if-ge v1, v2, :cond_f

    .line 616
    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v0, v4, 0x7d0

    .line 617
    .restart local v0       #fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_f

    .line 618
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_f
.end method

.method private fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;
    .registers 8
    .parameter "position"

    .prologue
    .line 582
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 583
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_2a

    .line 584
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 585
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    .line 586
    .local v4, start:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int v1, v4, v5

    .line 587
    .local v1, end:I
    if-lt p1, v4, :cond_27

    if-ge p1, v1, :cond_27

    .line 588
    iget-boolean v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-nez v5, :cond_26

    .line 589
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    .line 594
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_26
    :goto_26
    return-object v0

    .line 583
    .restart local v0       #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 594
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_2a
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private queueFetch(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 266
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queuing fetch at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 267
    :cond_1a
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    if-eq p1, v0, :cond_2c

    .line 268
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v1, 0x2

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(Landroid/os/Message;)V

    .line 269
    iput p1, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 271
    :cond_2c
    return-void
.end method

.method private sendMessageToHandler(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method private sendMessageToHandler(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 120
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mAsyncCommandsExecuted:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1f

    .line 123
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mIsHighPriority:Z

    if-eqz v0, :cond_17

    .line 124
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 131
    :goto_10
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mAsyncCommandsExecuted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mAsyncCommandsExecuted:I

    .line 132
    return-void

    .line 126
    :cond_17
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 129
    :cond_1f
    sget-object v0, Lcom/google/android/music/AsyncCursor;->sHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 425
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_9

    const-string v0, "close"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 427
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 428
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->sendMessageToHandler(I)V

    .line 429
    return-void
.end method

.method protected finalize()V
    .registers 8

    .prologue
    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_34

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "AsyncCursor created from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCreatedFromTrace:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_24

    aget-object v1, v0, v2

    .line 223
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v5, "\n\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 225
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_24
    const-string v5, "AsyncCursor"

    const-string v6, "not closed in finalizer, exiting thread"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v5, "AsyncCursor"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_38

    .line 229
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_34
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 231
    return-void

    .line 229
    :catchall_38
    move-exception v5

    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    throw v5
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 450
    monitor-enter p0

    .line 452
    :try_start_1
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    monitor-exit p0

    return v0

    .line 453
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getCountSync()I
    .registers 3

    .prologue
    .line 467
    sget-object v1, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_16

    .line 469
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v0, :cond_e

    .line 470
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->requery()Z

    .line 473
    :cond_e
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    return v0

    .line 474
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0

    .line 475
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 485
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 486
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 485
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 493
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 492
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 500
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 499
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 506
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 507
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 506
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 514
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 513
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 520
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 521
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 520
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasCount()Z
    .registers 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    return v0
.end method

.method public declared-synchronized isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 531
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 532
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 531
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMove(II)Z
    .registers 13
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/16 v9, 0x5dc

    const/16 v8, 0x1f4

    const/4 v7, 0x1

    .line 539
    monitor-enter p0

    .line 541
    :try_start_6
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    if-eq v5, v6, :cond_33

    if-ltz p1, :cond_33

    if-ltz p2, :cond_33

    div-int/lit16 v5, p1, 0x7d0

    div-int/lit16 v6, p2, 0x7d0

    if-ne v5, v6, :cond_33

    .line 545
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    sub-int v6, p2, v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 546
    .local v1, moved:Z
    rem-int/lit16 v4, p1, 0x7d0

    .line 547
    .local v4, oldoffset:I
    rem-int/lit16 v2, p2, 0x7d0

    .line 548
    .local v2, newoffset:I
    if-lt v4, v8, :cond_28

    if-lt v2, v8, :cond_2c

    :cond_28
    if-gt v4, v9, :cond_2f

    if-le v2, v9, :cond_2f

    .line 551
    :cond_2c
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 553
    :cond_2f
    if-eqz v1, :cond_55

    .line 554
    monitor-exit p0

    .line 578
    .end local v1           #moved:Z
    .end local v2           #newoffset:I
    .end local v4           #oldoffset:I
    :goto_32
    return v7

    .line 560
    :cond_33
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 561
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_55

    .line 562
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 563
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 564
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v3, p2, v5

    .line 565
    .local v3, offsetInCursor:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 566
    .restart local v1       #moved:Z
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 567
    if-eqz v1, :cond_55

    .line 568
    monitor-exit p0

    goto :goto_32

    .line 577
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #moved:Z
    .end local v3           #offsetInCursor:I
    :catchall_52
    move-exception v5

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_52

    throw v5

    .line 573
    :cond_55
    :try_start_55
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 574
    div-int/lit16 v5, p2, 0x7d0

    mul-int/lit16 v5, v5, 0x7d0

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 575
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    rem-int/lit16 v6, p2, 0x7d0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 577
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_52

    goto :goto_32
.end method

.method printf(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 76
    const-string v0, "AsyncCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 342
    return-void
.end method

.method public requery()Z
    .registers 7

    .prologue
    .line 386
    sget-boolean v4, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "requery"

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 387
    :cond_9
    monitor-enter p0

    .line 388
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v3

    .line 389
    .local v3, pos:I
    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 390
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_41

    .line 391
    iget-object v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 392
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 393
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v1, v3, v4

    .line 394
    .local v1, offsetInCursor:I
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 399
    .end local v1           #offsetInCursor:I
    :goto_25
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    iget v5, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    if-eq v4, v5, :cond_38

    .line 400
    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 401
    .local v2, oldsize:I
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 414
    if-lt v3, v2, :cond_38

    .line 415
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 418
    .end local v2           #oldsize:I
    :cond_38
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 419
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_4c

    .line 420
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v4

    return v4

    .line 396
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 397
    div-int/lit16 v4, v3, 0x7d0

    mul-int/lit16 v4, v4, 0x7d0

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    goto :goto_25

    .line 419
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v3           #pos:I
    :catchall_4c
    move-exception v4

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v4
.end method
