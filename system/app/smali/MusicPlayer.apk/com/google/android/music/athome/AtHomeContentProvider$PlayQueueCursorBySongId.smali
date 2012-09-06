.class final Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;
.super Lcom/google/android/music/utils/RequeriableCursorWrapper;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayQueueCursorBySongId"
.end annotation


# instance fields
.field private final mSongId:J


# direct methods
.method public constructor <init>([Ljava/lang/String;J)V
    .registers 5
    .parameter "columnNames"
    .parameter "songId"

    .prologue
    .line 251
    invoke-static {p1, p2, p3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;->buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;-><init>(Landroid/database/CrossProcessCursor;)V

    .line 252
    iput-wide p2, p0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;->mSongId:J

    .line 253
    return-void
.end method

.method private static buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;
    .registers 12
    .parameter "columnNames"
    .parameter "songId"

    .prologue
    .line 262
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    monitor-enter v6

    .line 263
    :try_start_5
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 264
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 266
    .local v1, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v1, :cond_5c

    .line 267
    invoke-interface {v1}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSongs()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 268
    .local v4, songs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 270
    .local v3, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSongId()J

    move-result-wide v7

    cmp-long v5, v7, p1

    if-nez v5, :cond_1f

    .line 271
    invoke-static {v1, p0, v3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;->createRow(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;[Ljava/lang/String;Lcom/google/android/music/athome/api/AtHomeSongInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 273
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v2, :cond_40

    .line 274
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 275
    monitor-exit v6

    .line 282
    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v4           #songs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :goto_3f
    return-object v0

    .line 277
    .restart local v2       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v3       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .restart local v4       #songs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_40
    const-string v5, "aah.Music"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create row for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 283
    .end local v0           #c:Landroid/database/MatrixCursor;
    .end local v1           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v4           #songs:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :catchall_59
    move-exception v5

    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_59

    throw v5

    .line 282
    .restart local v0       #c:Landroid/database/MatrixCursor;
    .restart local v1       #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :cond_5c
    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    goto :goto_3f
.end method


# virtual methods
.method protected getUpdatedCursor()Landroid/database/CrossProcessCursor;
    .registers 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;->mSongId:J

    invoke-static {v0, v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;->buildCursor([Ljava/lang/String;J)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method
