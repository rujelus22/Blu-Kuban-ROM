.class public Lcom/google/android/music/medialist/ArtistSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "ArtistSongList.java"


# instance fields
.field mId:J

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .registers 8
    .parameter "artistid"
    .parameter "name"
    .parameter "sortOrder"

    .prologue
    .line 36
    invoke-direct {p0, p4}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid artist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_22
    iput-wide p1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    .line 41
    iput-object p3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendArtistToPlayList(Landroid/content/ContentResolver;JJ)I

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

    .line 160
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v8

    .line 163
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 167
    const-string v0, "ArtistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown artist id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 173
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 170
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-ne v0, v7, :cond_4b

    move v0, v7

    .line 173
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 170
    goto :goto_46

    .line 173
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getArtistId()J
    .registers 3

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .parameter "context"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, sortParam:Ljava/lang/String;
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistUri(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    iget-object v7, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

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
    .line 189
    const v0, 0x7f04004d

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidSortOrders()Ljava/util/ArrayList;
    .registers 3
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
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z
    .registers 7
    .parameter "context"
    .parameter "offlineMusicManager"
    .parameter "storeService"

    .prologue
    .line 149
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    .local v0, result:Ljava/lang/Boolean;
    if-nez v0, :cond_d

    .line 153
    invoke-virtual {p0, p3}, Lcom/google/android/music/medialist/ArtistSongList;->isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z

    move-result v1

    .line 155
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
    .line 139
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-interface {p1, v1, v2}, Lcom/google/android/music/store/IStoreService;->isArtistSelectedAsKeepOn(J)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 142
    :goto_6
    return v1

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ArtistSongList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote error trying to get offline status for artist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .registers 6
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    .line 180
    if-eqz p3, :cond_8

    .line 181
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    .line 185
    :goto_7
    return-void

    .line 183
    :cond_8
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_7
.end method

.method public populateExternalSearchExtras(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "i"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 102
    const-string v0, "android.intent.extra.artist"

    iget-object v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_f
    return-void
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v7

    .line 111
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 116
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/ArtistSongList;->mName:Ljava/lang/String;

    .line 118
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2e
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 127
    iget-wide v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 56
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_4
    iget v1, p0, Lcom/google/android/music/medialist/ArtistSongList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setArtistSongsSortOrder(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 58
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 60
    return-void

    .line 58
    :catchall_d
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method

.method public supportsOfflineCaching()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method
