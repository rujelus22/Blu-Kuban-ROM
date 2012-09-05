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

.field static sInstanceCounter:I


# instance fields
.field final TAG:Ljava/lang/String;

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

.field mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

.field volatile mHaveExactSize:Z

.field mLastFetchOffset:I

.field mNewSize:I

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSize:I

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    .line 42
    const-string v0, "AsyncCursor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    .line 53
    sput v2, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/google/android/music/AsyncCursor$EmptyCursor;

    invoke-direct {v0}, Lcom/google/android/music/AsyncCursor$EmptyCursor;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncCursor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/music/AsyncCursor;->getInstanceCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    .line 125
    iput-object p3, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    .line 127
    iput-object p5, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    .line 128
    iput-object p6, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    .line 129
    iput v2, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 131
    new-instance v0, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-direct {v0, p0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;-><init>(Lcom/google/android/music/AsyncCursor;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    .line 133
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v0, v3}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 143
    new-instance v0, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;-><init>(Lcom/google/android/music/AsyncCursor;Lcom/google/android/music/AsyncCursor$1;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    .line 144
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, p2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCreatedFromTrace:[Ljava/lang/StackTraceElement;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/AsyncCursor;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AsyncCursor;->doFetch(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doFreshen()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AsyncCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doClose()V

    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 110
    if-lez v0, :cond_12

    .line 111
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 116
    .end local v0           #i:I
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doClose()V
    .registers 6

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 404
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 405
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 406
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget-object v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 408
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_1a
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->quit()V

    .line 409
    sget-boolean v3, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v3, :cond_3f

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

    .line 410
    :cond_3f
    monitor-exit p0

    .line 411
    return-void

    .line 410
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_41
    move-exception v3

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_41

    throw v3
.end method

.method private doCount()V
    .registers 9

    .prologue
    .line 214
    sget-object v7, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v7

    .line 216
    :try_start_3
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_c

    const-string v0, "getting size"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 218
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/AsyncCursor;->sCountProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_5f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_1a} :catch_5d

    move-result-object v6

    .line 220
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 221
    monitor-enter p0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_56

    .line 222
    const/4 v0, 0x0

    :try_start_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 223
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_53

    .line 226
    :cond_2c
    if-eqz v6, :cond_31

    .line 227
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2e .. :try_end_31} :catch_5d

    .line 232
    .end local v6           #c:Landroid/database/Cursor;
    :cond_31
    :goto_31
    :try_start_31
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_4d

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

    .line 234
    :cond_4d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 235
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_5f

    .line 236
    return-void

    .line 223
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 226
    :catchall_56
    move-exception v0

    if-eqz v6, :cond_5c

    .line 227
    :try_start_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_59 .. :try_end_5d} :catch_5d

    .line 230
    .end local v6           #c:Landroid/database/Cursor;
    :catch_5d
    move-exception v0

    goto :goto_31

    .line 235
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method private doFetch(II)V
    .registers 14
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 252
    sget-object v10, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v10

    .line 253
    :try_start_3
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting fetch at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 254
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, limituri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_12c

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 258
    .local v8, count:I
    if-eqz v8, :cond_9b

    .line 259
    monitor-enter p0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_f3

    .line 260
    :try_start_5b
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v7

    .line 261
    .local v7, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v7, :cond_7e

    .line 262
    iget-boolean v0, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-eqz v0, :cond_6a

    .line 263
    const-string v0, "possible unnecessary query: fragment was fresh"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 265
    :cond_6a
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v2, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    if-ne v0, v2, :cond_74

    .line 266
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 268
    :cond_74
    iget-object v0, v7, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 269
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    :cond_7e
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/music/AsyncCursor$CursorFragment;

    invoke-direct {v2, p1, v6}, Lcom/google/android/music/AsyncCursor$CursorFragment;-><init>(ILandroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v9

    .line 273
    .local v9, pos:I
    if-lt v9, p1, :cond_9a

    add-int v0, p1, p2

    if-ge v9, v0, :cond_9a

    .line 276
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/AsyncCursor;->onMove(II)Z

    .line 279
    :cond_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_5b .. :try_end_9b} :catchall_f0

    .line 281
    .end local v7           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v9           #pos:I
    :cond_9b
    :try_start_9b
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_c5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetched "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requested)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 286
    :cond_c5
    if-nez v8, :cond_f6

    .line 290
    iput p1, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 291
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 292
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_ea

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new size estimate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 300
    :cond_ea
    :goto_ea
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 304
    .end local v8           #count:I
    :goto_ee
    monitor-exit v10
    :try_end_ef
    .catchall {:try_start_9b .. :try_end_ef} :catchall_f3

    .line 305
    return-void

    .line 279
    .restart local v8       #count:I
    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v0

    .line 304
    .end local v1           #limituri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #count:I
    :catchall_f3
    move-exception v0

    monitor-exit v10
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f3

    throw v0

    .line 293
    .restart local v1       #limituri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #count:I
    :cond_f6
    if-ge v8, p2, :cond_ea

    :try_start_f8
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v0, :cond_ea

    .line 296
    add-int v0, p1, v8

    iput v0, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 298
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_ea

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusting size from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    goto :goto_ea

    .line 302
    .end local v8           #count:I
    :cond_12c
    const-string v0, "Got null Cursor"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_f8 .. :try_end_131} :catchall_f3

    goto :goto_ee
.end method

.method private doFreshen()V
    .registers 6

    .prologue
    .line 339
    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 341
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_18

    .line 342
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 343
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 348
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    :cond_18
    iget-object v3, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 350
    monitor-exit p0

    .line 351
    return-void

    .line 350
    .end local v1           #i:I
    .end local v2           #len:I
    :catchall_20
    move-exception v3

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private fetchMoreIfNeeded(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 570
    div-int/lit16 v1, p1, 0x7d0

    .line 571
    .local v1, fragment:I
    rem-int/lit16 v3, p1, 0x7d0

    .line 572
    .local v3, offset:I
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_10

    .line 573
    mul-int/lit16 v4, v1, 0x7d0

    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    .line 592
    :cond_f
    :goto_f
    return-void

    .line 576
    :cond_10
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_24

    if-lez v1, :cond_24

    .line 578
    add-int/lit8 v4, v1, -0x1

    mul-int/lit16 v0, v4, 0x7d0

    .line 579
    .local v0, fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_24

    .line 580
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_f

    .line 584
    .end local v0           #fetchpos:I
    :cond_24
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit16 v2, v4, 0x7d0

    .line 585
    .local v2, lastfragment:I
    const/16 v4, 0x5dc

    if-le v3, v4, :cond_f

    if-ge v1, v2, :cond_f

    .line 587
    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v0, v4, 0x7d0

    .line 588
    .restart local v0       #fetchpos:I
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v4

    if-nez v4, :cond_f

    .line 589
    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    goto :goto_f
.end method

.method private fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;
    .registers 8
    .parameter "position"

    .prologue
    .line 553
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 554
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_2a

    .line 555
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncCursor$CursorFragment;

    .line 556
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    .line 557
    .local v4, start:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int v1, v4, v5

    .line 558
    .local v1, end:I
    if-lt p1, v4, :cond_27

    if-ge p1, v1, :cond_27

    .line 559
    iget-boolean v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    if-nez v5, :cond_26

    .line 560
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncCursor;->queueFetch(I)V

    .line 565
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_26
    :goto_26
    return-object v0

    .line 554
    .restart local v0       #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 565
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_2a
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private static declared-synchronized getInstanceCounter()I
    .registers 2

    .prologue
    .line 66
    const-class v1, Lcom/google/android/music/AsyncCursor;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/music/AsyncCursor;->sInstanceCounter:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queueFetch(I)V
    .registers 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x2

    .line 239
    sget-boolean v1, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queuing fetch at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 240
    :cond_1b
    iget v1, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    if-eq p1, v1, :cond_33

    .line 241
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v1, v3}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->removeMessages(I)V

    .line 243
    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    iput p1, p0, Lcom/google/android/music/AsyncCursor;->mLastFetchOffset:I

    .line 246
    .end local v0           #msg:Landroid/os/Message;
    :cond_33
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 395
    sget-boolean v0, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v0, :cond_9

    const-string v0, "close"

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->mUriObserver:Lcom/google/android/music/AsyncCursor$CursorFragmentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 397
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 398
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z

    .line 399
    return-void
.end method

.method protected finalize()V
    .registers 8

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "AsyncCursor created from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCreatedFromTrace:[Ljava/lang/StackTraceElement;

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_24

    aget-object v1, v0, v2

    .line 200
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v5, "\n\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 202
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_24
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    const-string v6, "not closed in finalizer, exiting thread"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mHandler:Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/android/music/AsyncCursor$AsyncCursorHandler;->sendEmptyMessage(I)Z
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3e

    .line 208
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_3a
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 210
    return-void

    .line 208
    :catchall_3e
    move-exception v5

    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    throw v5
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 421
    monitor-enter p0

    .line 423
    :try_start_1
    iget v0, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    monitor-exit p0

    return v0

    .line 424
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
    .line 438
    sget-object v1, Lcom/google/android/music/AsyncCursor;->mSqlSerializer:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_16

    .line 440
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    if-nez v0, :cond_e

    .line 441
    invoke-direct {p0}, Lcom/google/android/music/AsyncCursor;->doCount()V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->requery()Z

    .line 444
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

    .line 445
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0

    .line 446
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
    .line 456
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 457
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 456
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 463
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 464
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 463
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 470
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 471
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 470
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 478
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 477
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 484
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 485
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 484
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getString(I)Ljava/lang/String;
    .registers 3
    .parameter "column"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 492
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 491
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasCount()Z
    .registers 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    return v0
.end method

.method public declared-synchronized isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 502
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->checkPosition()V

    .line 503
    iget-object v0, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 502
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

    .line 510
    monitor-enter p0

    .line 512
    :try_start_6
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    if-eq v5, v6, :cond_33

    if-ltz p1, :cond_33

    if-ltz p2, :cond_33

    div-int/lit16 v5, p1, 0x7d0

    div-int/lit16 v6, p2, 0x7d0

    if-ne v5, v6, :cond_33

    .line 516
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    sub-int v6, p2, v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 517
    .local v1, moved:Z
    rem-int/lit16 v4, p1, 0x7d0

    .line 518
    .local v4, oldoffset:I
    rem-int/lit16 v2, p2, 0x7d0

    .line 519
    .local v2, newoffset:I
    if-lt v4, v8, :cond_28

    if-lt v2, v8, :cond_2c

    :cond_28
    if-gt v4, v9, :cond_2f

    if-le v2, v9, :cond_2f

    .line 522
    :cond_2c
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 524
    :cond_2f
    if-eqz v1, :cond_55

    .line 525
    monitor-exit p0

    .line 549
    .end local v1           #moved:Z
    .end local v2           #newoffset:I
    .end local v4           #oldoffset:I
    :goto_32
    return v7

    .line 531
    :cond_33
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 532
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_55

    .line 533
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 534
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 535
    iget v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v3, p2, v5

    .line 536
    .local v3, offsetInCursor:I
    iget-object v5, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    .line 537
    .restart local v1       #moved:Z
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 538
    if-eqz v1, :cond_55

    .line 539
    monitor-exit p0

    goto :goto_32

    .line 548
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v1           #moved:Z
    .end local v3           #offsetInCursor:I
    :catchall_52
    move-exception v5

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_52

    throw v5

    .line 544
    :cond_55
    :try_start_55
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 545
    div-int/lit16 v5, p2, 0x7d0

    mul-int/lit16 v5, v5, 0x7d0

    iput v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 546
    iget-object v5, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    rem-int/lit16 v6, p2, 0x7d0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 547
    invoke-direct {p0, p2}, Lcom/google/android/music/AsyncCursor;->fetchMoreIfNeeded(I)V

    .line 548
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_52

    goto :goto_32
.end method

.method printf(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/music/AsyncCursor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncCursor;->onChange(Z)V

    .line 312
    return-void
.end method

.method public requery()Z
    .registers 7

    .prologue
    .line 356
    sget-boolean v4, Lcom/google/android/music/AsyncCursor;->LOG:Z

    if-eqz v4, :cond_9

    const-string v4, "requery"

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->printf(Ljava/lang/String;)V

    .line 357
    :cond_9
    monitor-enter p0

    .line 358
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/music/AsyncCursor;->getPosition()I

    move-result v3

    .line 359
    .local v3, pos:I
    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncCursor;->fragmentForPosition(I)Lcom/google/android/music/AsyncCursor$CursorFragment;

    move-result-object v0

    .line 360
    .local v0, cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    if-eqz v0, :cond_41

    .line 361
    iget-object v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 362
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    .line 363
    iget v4, v0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    sub-int v1, v3, v4

    .line 364
    .local v1, offsetInCursor:I
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    .end local v1           #offsetInCursor:I
    :goto_25
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    iget v5, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    if-eq v4, v5, :cond_38

    .line 370
    iget v2, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 371
    .local v2, oldsize:I
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mSize:I

    .line 384
    if-lt v3, v2, :cond_38

    .line 385
    iget v4, p0, Lcom/google/android/music/AsyncCursor;->mNewSize:I

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncCursor;->moveToPosition(I)Z

    .line 388
    .end local v2           #oldsize:I
    :cond_38
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/AsyncCursor;->mHaveExactSize:Z

    .line 389
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_4c

    .line 390
    invoke-super {p0}, Landroid/database/AbstractCursor;->requery()Z

    move-result v4

    return v4

    .line 366
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/google/android/music/AsyncCursor;->mEmptyCursor:Landroid/database/Cursor;

    iput-object v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursor:Landroid/database/Cursor;

    .line 367
    div-int/lit16 v4, v3, 0x7d0

    mul-int/lit16 v4, v4, 0x7d0

    iput v4, p0, Lcom/google/android/music/AsyncCursor;->mCurrentRowCursorOffset:I

    goto :goto_25

    .line 389
    .end local v0           #cf:Lcom/google/android/music/AsyncCursor$CursorFragment;
    .end local v3           #pos:I
    :catchall_4c
    move-exception v4

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v4
.end method
