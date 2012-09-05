.class public Lcom/google/android/music/medialist/AlbumSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "AlbumSongList.java"


# instance fields
.field private final mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mArtistId:J

.field private mArtistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .parameter "albumId"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_23

    .line 48
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

    .line 50
    :cond_23
    iput-wide p1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    .line 51
    iput-object p3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private getNames(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    if-nez v0, :cond_6e

    .line 82
    :cond_c
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "album"

    aput-object v0, v2, v7

    const-string v0, "artist"

    aput-object v0, v2, v8

    const-string v0, "artist_id"

    aput-object v0, v2, v9

    .line 87
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

    .line 89
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4c

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_49

    .line 94
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 95
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 96
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistId:J

    .line 98
    :cond_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_4c
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 101
    const v0, 0x7f0d0065

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 103
    :cond_5d
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 104
    const v0, 0x7f0d0064

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    .line 107
    .end local v2           #cols:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6e
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v0

    return v0
.end method

.method public containsRemoteItems(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 153
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v8

    .line 156
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

    .line 159
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 160
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

    .line 166
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 163
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-ne v0, v7, :cond_4b

    move v0, v7

    .line 166
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 163
    goto :goto_46

    .line 166
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .registers 4
    .parameter "context"

    .prologue
    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v0

    .line 138
    :goto_a
    return-wide v0

    .line 136
    :catch_b
    move-exception v0

    .line 138
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 69
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

    .line 71
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
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 143
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistId:J

    return-wide v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter "context"

    .prologue
    .line 77
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
    .line 124
    :try_start_0
    iget-wide v3, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 125
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

    .line 129
    .end local v1           #albumid:J
    :goto_1a
    return-object v0

    .line 127
    :catch_1b
    move-exception v0

    .line 129
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 258
    const v0, 0x7f04004b

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 118
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
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z
    .registers 12
    .parameter "context"
    .parameter "offlineMusicManager"
    .parameter "storeService"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    .local v7, result:Ljava/lang/Boolean;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "artist_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, c:Landroid/database/Cursor;
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 188
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_54

    move-result-object v7

    .line 194
    :goto_2f
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 196
    if-nez v7, :cond_59

    .line 199
    invoke-virtual {p0, p3}, Lcom/google/android/music/medialist/AlbumSongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v0

    .line 201
    :goto_38
    return v0

    .line 191
    :cond_39
    :try_start_39
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
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_54

    goto :goto_2f

    .line 194
    :catchall_54
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 201
    :cond_59
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_38
.end method

.method public isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z
    .registers 7
    .parameter "storeService"

    .prologue
    .line 173
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/music/store/IStoreService;->isAlbumSelectedAsKeepOn(JZ)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 176
    :goto_7
    return v1

    .line 174
    :catch_8
    move-exception v0

    .line 175
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

    .line 176
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .registers 11
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 207
    if-eqz p3, :cond_a

    .line 208
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(J)V

    .line 223
    :goto_9
    return-void

    .line 210
    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "artist_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, c:Landroid/database/Cursor;
    :try_start_25
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 215
    iget-wide v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_54

    .line 220
    :goto_35
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    .line 217
    :cond_39
    :try_start_39
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
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_54

    goto :goto_35

    .line 220
    :catchall_54
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public populateExternalSearchExtras(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "i"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 249
    const-string v0, "android.intent.extra.album"

    iget-object v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 252
    const-string v0, "android.intent.extra.artist"

    iget-object v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mArtistName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_21
    return-void
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumName:Ljava/lang/String;

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/music/medialist/AlbumSongList;->getNames(Landroid/content/Context;)V

    .line 234
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 241
    iget-wide v1, p0, Lcom/google/android/music/medialist/AlbumSongList;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for AlbumSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsOfflineCaching()Z
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
