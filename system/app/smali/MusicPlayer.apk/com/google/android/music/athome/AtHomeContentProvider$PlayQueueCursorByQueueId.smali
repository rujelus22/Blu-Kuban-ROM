.class final Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;
.super Lcom/google/android/music/utils/RequeriableCursorWrapper;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayQueueCursorByQueueId"
.end annotation


# instance fields
.field private final mSongQueueId:J


# direct methods
.method public constructor <init>([Ljava/lang/String;J)V
    .registers 5
    .parameter "columnNames"
    .parameter "songQueueId"

    .prologue
    .line 295
    invoke-static {p1, p2, p3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;-><init>(Landroid/database/CrossProcessCursor;)V

    .line 296
    iput-wide p2, p0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->mSongQueueId:J

    .line 297
    return-void
.end method

.method private static buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;
    .registers 11
    .parameter "columnNames"
    .parameter "songQueueId"

    .prologue
    .line 307
    invoke-static {p0}, Lcom/google/android/music/utils/DbUtils;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 308
    invoke-static {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->getOneSongsCountCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 326
    :goto_a
    return-object v0

    .line 311
    :cond_b
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    monitor-enter v5

    .line 312
    :try_start_10
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 313
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 315
    .local v1, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v1, :cond_31

    .line 316
    invoke-interface {v1, p1, p2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v3

    .line 317
    .local v3, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v3, :cond_31

    .line 318
    invoke-static {v1, p0, v3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->createRow(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;[Ljava/lang/String;Lcom/google/android/music/athome/api/AtHomeSongInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 319
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v2, :cond_36

    .line 320
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 326
    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_31
    :goto_31
    monitor-exit v5

    goto :goto_a

    .line 327
    .end local v0           #c:Landroid/database/MatrixCursor;
    .end local v1           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_33

    throw v4

    .line 322
    .restart local v0       #c:Landroid/database/MatrixCursor;
    .restart local v1       #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    .restart local v2       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v3       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_36
    :try_start_36
    const-string v4, "aah.Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create row for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_33

    goto :goto_31
.end method

.method private static getOneSongsCountCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;
    .registers 7
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, count:I
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    monitor-enter v3

    .line 333
    :try_start_6
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 334
    .local v1, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v1, :cond_19

    .line 335
    invoke-interface {v1, p1, p2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 336
    const/4 v0, 0x1

    .line 339
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1f

    .line 340
    invoke-static {p0, v0}, Lcom/google/android/music/utils/DbUtils;->getCountCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v2

    return-object v2

    .line 339
    .end local v1           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method


# virtual methods
.method protected getUpdatedCursor()Landroid/database/CrossProcessCursor;
    .registers 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->mSongQueueId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;->buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method
