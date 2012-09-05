.class public Lcom/google/android/music/medialist/SharedSingleSongList;
.super Lcom/google/android/music/medialist/ExternalDomainSongList;
.source "SharedSingleSongList.java"


# static fields
.field private static final LOGV:Z

.field private static final LOG_PROJ:Z


# instance fields
.field private mAlbumArtUrl:Ljava/lang/String;

.field private mSong:Lcom/google/android/music/medialist/SongData;

.field private mStoreUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-string v0, "SharedSingleSongList"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SharedSingleSongList;->LOGV:Z

    .line 18
    const-string v0, "SharedSingleSongList"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SharedSingleSongList;->LOG_PROJ:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)V
    .registers 5
    .parameter "albumArtUrl"
    .parameter "storeUrl"
    .parameter "song"

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 26
    iput-object p1, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mAlbumArtUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mStoreUrl:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mAlbumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mAlbumArtUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mStoreUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    invoke-static {v2}, Lcom/google/android/music/medialist/SongData;->toJson(Lcom/google/android/music/medialist/SongData;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 12
    .parameter "context"
    .parameter "proj"
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 34
    array-length v5, p2

    new-array v1, v5, [Ljava/lang/String;

    .line 36
    .local v1, cursorCols:[Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    if-nez v5, :cond_9

    .line 56
    :goto_8
    return-object v4

    .line 40
    :cond_9
    sget-boolean v5, Lcom/google/android/music/medialist/SharedSingleSongList;->LOG_PROJ:Z

    if-eqz v5, :cond_10

    .line 41
    invoke-virtual {p0, p2}, Lcom/google/android/music/medialist/SharedSingleSongList;->logProjection([Ljava/lang/String;)V

    .line 44
    :cond_10
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v5, p2

    if-ge v2, v5, :cond_1b

    .line 45
    aget-object v5, p2, v2

    aput-object v5, v1, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 48
    :cond_1b
    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    invoke-virtual {p0, v5, v6, v1, v7}, Lcom/google/android/music/medialist/SharedSingleSongList;->createRow(J[Ljava/lang/String;Lcom/google/android/music/medialist/SongData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 49
    .local v3, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez v3, :cond_2d

    .line 50
    const-string v5, "SharedSingleSongList"

    const-string v6, "Failed to creat row for the cursor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 54
    :cond_2d
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 55
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/SharedSingleSongList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v4

    goto :goto_8
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    if-nez v0, :cond_6

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mAlbum:Ljava/lang/String;

    goto :goto_5
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mTitle:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    if-nez v0, :cond_6

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mSong:Lcom/google/android/music/medialist/SongData;

    iget-object v0, v0, Lcom/google/android/music/medialist/SongData;->mArtist:Ljava/lang/String;

    goto :goto_5
.end method

.method public getStoreUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/music/medialist/SharedSingleSongList;->mStoreUrl:Ljava/lang/String;

    return-object v0
.end method
