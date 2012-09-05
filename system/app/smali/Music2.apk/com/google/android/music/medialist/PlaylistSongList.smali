.class public Lcom/google/android/music/medialist/PlaylistSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "PlaylistSongList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
    }
.end annotation


# instance fields
.field private final mId:J

.field private mName:Ljava/lang/String;

.field private final mPlaylistType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .registers 8
    .parameter "playlistId"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 42
    iput-wide p1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    .line 43
    iput-object p3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mPlaylistType:I

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_29

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid playlist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_29
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendPlaylistToPlayList(Landroid/content/ContentResolver;JJ)I

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

    .line 225
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v8

    .line 228
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, c:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 232
    const-string v0, "PlaylistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown playlist id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_49

    .line 238
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_39
    return v8

    .line 235
    :cond_3a
    const/4 v0, 0x0

    :try_start_3b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    move-result v0

    if-ne v0, v7, :cond_47

    move v0, v7

    .line 238
    :goto_42
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_39

    :cond_47
    move v0, v8

    .line 235
    goto :goto_42

    .line 238
    :catchall_49
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .registers 6
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    return-object v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mPlaylistType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .parameter "context"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    return-wide v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mPlaylistType:I

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistTypeToArtStyle(I)I

    move-result v1

    .line 97
    .local v1, style:I
    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    iget-object v7, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/music/medialist/PlaylistSongList;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f040013

    :goto_9
    return v0

    :cond_a
    const v0, 0x7f040050

    goto :goto_9
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    return-wide v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistType()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mPlaylistType:I

    return v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 91
    const v0, 0x7f0d0096

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public isEditable()Z
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z
    .registers 7
    .parameter "context"
    .parameter "offlineMusicManager"
    .parameter "storeService"

    .prologue
    .line 213
    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 214
    .local v0, result:Ljava/lang/Boolean;
    if-nez v0, :cond_d

    .line 217
    invoke-virtual {p0, p3}, Lcom/google/android/music/medialist/PlaylistSongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v1

    .line 219
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_c
.end method

.method public isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z
    .registers 7
    .parameter "storeService"

    .prologue
    .line 203
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-interface {p1, v1, v2}, Lcom/google/android/music/store/IStoreService;->isPlaylistSelectedAsKeepOn(J)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 206
    :goto_6
    return v1

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PlaylistSongList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to get offline status for playlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .registers 6
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    .line 245
    if-eqz p3, :cond_8

    .line 246
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 250
    :goto_7
    return-void

    .line 248
    :cond_8
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_7
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v7

    .line 166
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 168
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mName:Ljava/lang/String;

    .line 173
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    :cond_2a
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 182
    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList;->mId:J

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 183
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for PlaylistSongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsOfflineCaching()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method
