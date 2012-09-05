.class public Lcom/google/android/music/medialist/SharedAlbumSongList;
.super Lcom/google/android/music/medialist/ExternalDomainSongList;
.source "SharedAlbumSongList.java"


# static fields
.field private static final LOGV:Z

.field private static final LOG_PROJ:Z


# instance fields
.field private mAlbumArtUrl:Ljava/lang/String;

.field private mSongs:Lcom/google/android/music/medialist/SongDataList;

.field private mStoreUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    const-string v0, "SharedAlbumSongList"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SharedAlbumSongList;->LOGV:Z

    .line 19
    const-string v0, "SharedAlbumSongList"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SharedAlbumSongList;->LOG_PROJ:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongDataList;)V
    .registers 5
    .parameter "albumArtUrl"
    .parameter "storeUrl"
    .parameter "songs"

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 27
    iput-object p1, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mAlbumArtUrl:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mStoreUrl:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    .line 30
    return-void
.end method


# virtual methods
.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mAlbumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mAlbumArtUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mStoreUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    invoke-static {v2}, Lcom/google/android/music/medialist/SongDataList;->toJson(Lcom/google/android/music/medialist/SongDataList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 11
    .parameter "context"
    .parameter "proj"
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v5, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    if-nez v5, :cond_6

    .line 99
    :cond_5
    :goto_5
    return-object v4

    .line 75
    :cond_6
    if-eqz p2, :cond_5

    .line 79
    array-length v4, p2

    new-array v1, v4, [Ljava/lang/String;

    .line 80
    .local v1, cursorCols:[Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/music/medialist/SharedAlbumSongList;->LOG_PROJ:Z

    if-eqz v4, :cond_12

    .line 81
    invoke-virtual {p0, p2}, Lcom/google/android/music/medialist/SharedAlbumSongList;->logProjection([Ljava/lang/String;)V

    .line 84
    :cond_12
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v4, p2

    if-ge v2, v4, :cond_1d

    .line 85
    aget-object v4, p2, v2

    aput-object v4, v1, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 88
    :cond_1d
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 90
    .local v0, c:Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    :goto_23
    iget-object v4, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v4, v4, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4c

    .line 91
    int-to-long v5, v2

    iget-object v4, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v4, v4, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/medialist/SongData;

    invoke-virtual {p0, v5, v6, v1, v4}, Lcom/google/android/music/medialist/SharedAlbumSongList;->createRow(J[Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 92
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v3, :cond_44

    .line 93
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 90
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 95
    :cond_44
    const-string v4, "SharedAlbumSongList"

    const-string v5, "Failed to create row"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 99
    .end local v3           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/SharedAlbumSongList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    goto :goto_5
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 123
    :cond_14
    const/4 v0, 0x0

    .line 125
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    goto :goto_15
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 115
    :cond_14
    const/4 v0, 0x0

    .line 117
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    goto :goto_15
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 131
    :cond_14
    const/4 v0, 0x0

    .line 133
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    goto :goto_15
.end method

.method public getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "songId"
    .parameter "proj"

    .prologue
    const/4 v5, 0x0

    .line 34
    if-nez p2, :cond_4

    .line 65
    :cond_3
    :goto_3
    return-object v5

    .line 38
    :cond_4
    iget-object v6, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    if-eqz v6, :cond_3

    .line 42
    array-length v6, p3

    new-array v1, v6, [Ljava/lang/String;

    .line 44
    .local v1, cursorCols:[Ljava/lang/String;
    sget-boolean v6, Lcom/google/android/music/medialist/SharedAlbumSongList;->LOG_PROJ:Z

    if-eqz v6, :cond_12

    .line 45
    invoke-virtual {p0, p3}, Lcom/google/android/music/medialist/SharedAlbumSongList;->logProjection([Ljava/lang/String;)V

    .line 48
    :cond_12
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v6, p3

    if-ge v2, v6, :cond_1d

    .line 49
    aget-object v6, p3, v2

    aput-object v6, v1, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 52
    :cond_1d
    iget-object v6, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mSongs:Lcom/google/android/music/medialist/SongDataList;

    iget-object v6, v6, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/medialist/SongData;

    .line 53
    .local v4, song:Lcom/google/android/music/medialist/SongData;
    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {p2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p3, v4}, Lcom/google/android/music/medialist/SharedAlbumSongList;->createRow(J[Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 58
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 62
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 63
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/SharedAlbumSongList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v5

    goto :goto_3
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedAlbumSongList;->mStoreUrl:Ljava/lang/String;

    return-object v0
.end method
