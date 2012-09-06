.class public Lcom/google/android/music/medialist/AlbumSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "AlbumSongList.java"


# instance fields
.field private final mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;

.field private mArtistSort:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 9
    .parameter "albumId"

    .prologue
    const/4 v3, 0x0

    .line 42
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 46
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "artistSort"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_23

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid album id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_23
    iput-wide p1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    .line 56
    iput-object p3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistSort:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getNames(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistSort:Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 93
    :cond_11
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v7

    const-string v0, "artist"

    aput-object v0, v2, v8

    const-string v0, "artist_id"

    aput-object v0, v2, v9

    const-string v0, "artistSort"

    aput-object v0, v2, v10

    .line 99
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5b

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_58

    .line 106
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 107
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 108
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistId:J

    .line 109
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistSort:Ljava/lang/String;

    .line 111
    :cond_58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_5b
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 114
    const v0, 0x7f0d0075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 116
    :cond_6c
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 117
    const v0, 0x7f0d0074

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 120
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_7d
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    return v0
.end method

.method public containsLocalItems(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 209
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasLocal"

    aput-object v0, v2, v8

    .line 212
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 216
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown album id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 222
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 219
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v7

    .line 222
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 219
    goto :goto_46

    .line 222
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public containsRemoteItems(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 190
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v8

    .line 193
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 197
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown album id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 203
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 200
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-ne v0, v7, :cond_4b

    move v0, v7

    .line 203
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 200
    goto :goto_46

    .line 203
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"

    .prologue
    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v0

    .line 151
    :goto_a
    return-wide v0

    .line 149
    :catch_b
    move-exception v0

    .line 151
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 82
    :goto_1e
    return-object v0

    :cond_1f
    new-array v0, v4, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1e
.end method

.method public getArtistId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 156
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistId:J

    return-wide v0
.end method

.method public getArtistSort(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistSort:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    :try_start_0
    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 138
    .local v1, albumid:J
    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getSecondaryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 142
    .end local v1           #albumid:J
    :goto_1a
    return-object v0

    .line 140
    :catch_1b
    move-exception v0

    .line 142
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 320
    const v0, 0x7f04005d

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

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
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDifferentTrackArtists(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "HasDifferentTrackArtists"

    aput-object v0, v2, v8

    .line 174
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 178
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown album id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 184
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 181
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-ne v0, v7, :cond_4b

    move v0, v7

    .line 184
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 181
    goto :goto_46

    .line 184
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z
    .registers 12
    .parameter "context"
    .parameter "offlineMusicManager"
    .parameter "storeService"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, result:Ljava/lang/Boolean;
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 244
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_51

    move-result-object v7

    .line 250
    :goto_2c
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 252
    if-nez v7, :cond_56

    .line 255
    invoke-virtual {p0, p3}, Lcom/google/android/music/medialist/AlbumSongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    .line 257
    :goto_35
    return v0

    .line 247
    :cond_36
    :try_start_36
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the artistid for album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_51

    goto :goto_2c

    .line 250
    :catchall_51
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 257
    :cond_56
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_35
.end method

.method public isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z
    .registers 7
    .parameter "storeService"

    .prologue
    .line 229
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/music/store/IStoreService;->isAlbumSelectedAsKeepOn(JZ)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 232
    :goto_7
    return v1

    .line 230
    :catch_8
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AlbumSongList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keep on status for album id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .registers 11
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 263
    if-eqz p3, :cond_a

    .line 264
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(J)V

    .line 279
    :goto_9
    return-void

    .line 266
    :cond_a
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist_id"

    aput-object v0, v2, v4

    move-object v0, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, c:Landroid/database/Cursor;
    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 271
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_51

    .line 276
    :goto_32
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    .line 273
    :cond_36
    :try_start_36
    const-string v0, "AlbumSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find the artistid for album: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_51

    goto :goto_32

    .line 276
    :catchall_51
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 303
    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for AlbumSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsAppendToPlaylist()Z
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public supportsOfflineCaching()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method
