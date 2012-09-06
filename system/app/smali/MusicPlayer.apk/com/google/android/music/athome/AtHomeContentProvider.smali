.class public Lcom/google/android/music/athome/AtHomeContentProvider;
.super Landroid/content/ContentProvider;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;,
        Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;,
        Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;,
        Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;,
        Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final LOGV:Z

.field public static final PLAY_QUEUE_URI:Landroid/net/Uri;

.field public static final SUBMITTER_STATS_URI:Landroid/net/Uri;

.field private static final sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "content://com.google.android.music.athome"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playq"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "submitter_stats"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->SUBMITTER_STATS_URI:Landroid/net/Uri;

    .line 52
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeContentProvider;->LOGV:Z

    .line 398
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 388
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static getSong(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 10
    .parameter "resolver"
    .parameter "projection"
    .parameter "songId"

    .prologue
    const/4 v3, 0x0

    .line 373
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "songidparam"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSongUri(J)Landroid/net/Uri;
    .registers 3
    .parameter "queueId"

    .prologue
    .line 379
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static moveSong(Landroid/content/ContentResolver;JJ)Z
    .registers 11
    .parameter "resolver"
    .parameter "songToMove"
    .parameter "desiredPreviousSong"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 383
    invoke-static {p1, p2}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSongUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "moveto"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 385
    .local v0, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_24

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method static notifyOfChange(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/athome/AtHomeContentProvider;->PLAY_QUEUE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 409
    return-void
.end method

.method static setPlayQueue(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;)V
    .registers 3
    .parameter "playQ"

    .prologue
    .line 402
    sget-object v1, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 403
    :try_start_3
    sget-object v0, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 404
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, deleted:Z
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 415
    .local v1, id:J
    sget-object v5, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v5

    .line 416
    :try_start_8
    sget-object v4, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 417
    .local v3, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v3, :cond_16

    .line 418
    invoke-interface {v3, v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->removeSong(J)Z

    move-result v0

    .line 420
    :cond_16
    monitor-exit v5

    .line 421
    if-eqz v0, :cond_1e

    .line 422
    const/4 v4, 0x1

    .line 424
    :goto_1a
    return v4

    .line 420
    .end local v3           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_1b
    move-exception v4

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v4

    .line 424
    .restart local v3       #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 430
    const-string v0, "vnd.android.cursor.dir/vnd.google.xaudio"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v9, 0x1

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 449
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_34

    const-string v7, "playq"

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 450
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_48

    .line 451
    const-string v7, "songidparam"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, param:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    .line 453
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 455
    .local v5, songId:J
    new-instance v0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-direct {v0, p2, v5, v6}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorBySongId;-><init>([Ljava/lang/String;J)V

    .line 466
    .end local v3           #param:Ljava/lang/String;
    .end local v5           #songId:J
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_34
    :goto_34
    if-eqz v0, :cond_41

    .line 467
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v0, v7, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 469
    :cond_41
    return-object v0

    .line 457
    .restart local v3       #param:Ljava/lang/String;
    :cond_42
    new-instance v0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-direct {v0, p2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursor;-><init>([Ljava/lang/String;)V

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_34

    .line 459
    .end local v3           #param:Ljava/lang/String;
    :cond_48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    const-string v7, "submitter_stats"

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 460
    new-instance v0, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-direct {v0, p2}, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;-><init>([Ljava/lang/String;)V

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_34

    .line 462
    :cond_61
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 463
    .local v1, id:J
    new-instance v0, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;

    .end local v0           #cursor:Landroid/database/Cursor;
    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueCursorByQueueId;-><init>([Ljava/lang/String;J)V

    .restart local v0       #cursor:Landroid/database/Cursor;
    goto :goto_34
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 475
    const/4 v6, 0x0

    .line 476
    .local v6, updated:Z
    const-string v7, "moveto"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, moveParam:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 478
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 479
    .local v0, moveDestinationId:J
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 480
    .local v4, songToMove:J
    sget-object v8, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v8

    .line 481
    :try_start_18
    sget-object v7, Lcom/google/android/music/athome/AtHomeContentProvider;->sPlayQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 482
    .local v3, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v3, :cond_26

    .line 483
    invoke-interface {v3, v4, v5, v0, v1}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->moveSong(JJ)Z

    move-result v6

    .line 485
    :cond_26
    monitor-exit v8

    .line 487
    .end local v0           #moveDestinationId:J
    .end local v3           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    .end local v4           #songToMove:J
    :cond_27
    if-eqz v6, :cond_2e

    .line 488
    const/4 v7, 0x1

    .line 490
    :goto_2a
    return v7

    .line 485
    .restart local v0       #moveDestinationId:J
    .restart local v4       #songToMove:J
    :catchall_2b
    move-exception v7

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    throw v7

    .line 490
    .end local v0           #moveDestinationId:J
    .end local v4           #songToMove:J
    :cond_2e
    const/4 v7, 0x0

    goto :goto_2a
.end method
