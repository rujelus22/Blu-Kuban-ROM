.class final Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;
.super Lcom/google/android/music/utils/RequeriableCursorWrapper;
.source "AtHomeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubmitterStatsCursor"
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 203
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;->buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/utils/RequeriableCursorWrapper;-><init>(Landroid/database/CrossProcessCursor;)V

    .line 204
    return-void
.end method

.method private static buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 2
    .parameter "columnNames"

    .prologue
    .line 213
    invoke-static {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;->getSubmitterStatsCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private static getSubmitterStatsCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 11
    .parameter "projection"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, hasMultiSubmitter:I
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    monitor-enter v7

    .line 224
    :try_start_6
    invoke-static {}, Lcom/google/android/music/athome/AtHomeContentProvider;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 225
    .local v3, queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    if-eqz v3, :cond_4b

    invoke-interface {v3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSize()I

    move-result v6

    if-lez v6, :cond_4b

    .line 226
    new-instance v2, Ljava/util/HashSet;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 227
    .local v2, numUniqueProfileUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSongs()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 228
    .local v4, songInfo:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;->getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;

    move-result-object v5

    .line 229
    .local v5, submitterInfo:Lcom/google/android/music/athome/api/SubmitterInfo;
    if-eqz v5, :cond_26

    .line 230
    invoke-virtual {v5}, Lcom/google/android/music/athome/api/SubmitterInfo;->getPictureUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_26

    .line 232
    const/4 v0, 0x1

    .line 238
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #numUniqueProfileUrls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #songInfo:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v5           #submitterInfo:Lcom/google/android/music/athome/api/SubmitterInfo;
    :cond_4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_51

    .line 239
    invoke-static {p0, v0}, Lcom/google/android/music/utils/DbUtils;->getCountCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v6

    return-object v6

    .line 238
    .end local v3           #queue:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;
    :catchall_51
    move-exception v6

    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v6
.end method


# virtual methods
.method protected getUpdatedCursor()Landroid/database/CrossProcessCursor;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider$SubmitterStatsCursor;->buildCursor([Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method
