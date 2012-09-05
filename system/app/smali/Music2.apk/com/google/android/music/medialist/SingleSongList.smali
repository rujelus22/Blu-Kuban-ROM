.class public Lcom/google/android/music/medialist/SingleSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "SingleSongList.java"


# instance fields
.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private final mAudioId:J

.field private final mTrackName:Ljava/lang/String;

.field private mVariablesResolved:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 8
    .parameter "songId"
    .parameter "trackName"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 36
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mVariablesResolved:Z

    .line 28
    iput-wide v2, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistId:J

    .line 29
    iput-object v1, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistName:Ljava/lang/String;

    .line 31
    iput-wide v2, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumId:J

    .line 32
    iput-object v1, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumName:Ljava/lang/String;

    .line 37
    iput-wide p1, p0, Lcom/google/android/music/medialist/SingleSongList;->mAudioId:J

    .line 38
    iput-object p3, p0, Lcom/google/android/music/medialist/SingleSongList;->mTrackName:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_37

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local music id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/medialist/SingleSongList;->mAudioId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_37
    return-void
.end method

.method private declared-synchronized resolveNames(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mVariablesResolved:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_58

    if-eqz v0, :cond_7

    .line 85
    :goto_5
    monitor-exit p0

    return-void

    .line 66
    :cond_7
    const/4 v0, 0x4

    :try_start_8
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v2, v0

    .line 72
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/SingleSongList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_58

    move-result-object v6

    .line 75
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_51

    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 76
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistId:J

    .line 77
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistName:Ljava/lang/String;

    .line 78
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumId:J

    .line 79
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumName:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_2f .. :try_end_51} :catchall_5b

    .line 82
    :cond_51
    :try_start_51
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mVariablesResolved:Z
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_58

    goto :goto_5

    .line 62
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_5b
    move-exception v0

    :try_start_5c
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_58
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mAudioId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendItemToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    return v0
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/SingleSongList;->resolveNames(Landroid/content/Context;)V

    .line 110
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumId:J

    return-wide v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/SingleSongList;->mAudioId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/SingleSongList;->mTrackName:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter "context"

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mAudioId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/SingleSongList;->resolveNames(Landroid/content/Context;)V

    .line 102
    iget-wide v3, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 103
    .local v1, albumid:J
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/music/medialist/SingleSongList;->mAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistName:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 130
    const v0, 0x7f04004c

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/SingleSongList;->resolveNames(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/music/medialist/SingleSongList;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public populateExternalSearchExtras(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "i"

    .prologue
    .line 125
    const-string v0, "android.intent.extra.title"

    iget-object v1, p0, Lcom/google/android/music/medialist/SingleSongList;->mTrackName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for SingleSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
