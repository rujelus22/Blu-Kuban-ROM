.class Lcom/google/android/finsky/download/DownloadProgressManager;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;
    }
.end annotation


# static fields
.field private static volatile sDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandlerThreadId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .registers 4
    .parameter "downloadQueue"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 61
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Download progress manager runner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$1;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadProgressManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method private assertOnHandlerThread()V
    .registers 7

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 101
    .local v0, curThreadId:J
    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_39

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This should only be run on DownloadProgressManager\'s handler thread ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Instead we\'re on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_39
    return-void
.end method

.method private generateDownloadProgressFromCursor()Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 231
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v11, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->requery()Z

    move-result v15

    if-nez v15, :cond_20

    .line 234
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    .line 238
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_8d

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    const-string v16, "_id"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 240
    .local v10, indexId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    const-string v16, "current_bytes"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, currentBytesColumnId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    const-string v16, "total_bytes"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 244
    .local v13, totalBytesColumnId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    const-string v16, "status"

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 247
    .local v12, statusColumnId:I
    :goto_52
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_8d

    .line 249
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 250
    .local v8, id:J
    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 252
    .local v14, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 253
    .local v6, status:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 254
    .local v4, totalBytes:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 256
    .local v2, currentBytes:J
    new-instance v1, Lcom/google/android/finsky/download/DownloadProgress;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/download/DownloadProgress;-><init>(JJI)V

    .line 259
    .local v1, downloadProgress:Lcom/google/android/finsky/download/DownloadProgress;
    invoke-interface {v11, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 263
    .end local v1           #downloadProgress:Lcom/google/android/finsky/download/DownloadProgress;
    .end local v2           #currentBytes:J
    .end local v4           #totalBytes:J
    .end local v6           #status:I
    .end local v7           #currentBytesColumnId:I
    .end local v8           #id:J
    .end local v10           #indexId:I
    .end local v12           #statusColumnId:I
    .end local v13           #totalBytesColumnId:I
    .end local v14           #uri:Landroid/net/Uri;
    :cond_8d
    return-object v11
.end method

.method private static getCachedProgress()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-object v0
.end method

.method private static getUris()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v3, uris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v1

    .line 214
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    if-eqz v1, :cond_23

    .line 215
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 216
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 220
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_23
    return-object v3
.end method

.method private static makeCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_30

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download progress cursor null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_2f
    return-object v2

    :cond_30
    move-object v2, v6

    goto :goto_2f
.end method

.method private makeCursorIfNeeded(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_19

    .line 83
    invoke-static {p1}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 84
    new-instance v0, Lcom/google/android/finsky/download/DownloadProgressManager$2;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager$2;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/os/Handler;)V

    .line 95
    .local v0, downloadObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    .end local v0           #downloadObserver:Landroid/database/ContentObserver;
    :cond_19
    return-void
.end method

.method private onDownloadProgress()V
    .registers 8

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 168
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v3

    .line 171
    .local v3, oldUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->generateDownloadProgressFromCursor()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 176
    .local v1, downloadProgressMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v0

    .line 177
    .local v0, cachedProgress:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 178
    :cond_1b
    sput-object v1, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    .line 182
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v2

    .line 183
    .local v2, newUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v4, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 185
    .local v4, r:Ljava/lang/Runnable;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    .end local v2           #newUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v4           #r:Ljava/lang/Runnable;
    :cond_35
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$3;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method
