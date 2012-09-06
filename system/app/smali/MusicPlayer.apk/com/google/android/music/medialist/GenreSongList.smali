.class public Lcom/google/android/music/medialist/GenreSongList;
.super Lcom/google/android/music/medialist/SongList;
.source "GenreSongList.java"


# instance fields
.field mId:J

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .registers 8
    .parameter "genreId"
    .parameter "name"
    .parameter "sortOrder"

    .prologue
    .line 31
    invoke-direct {p0, p4}, Lcom/google/android/music/medialist/SongList;-><init>(I)V

    .line 32
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid genre id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_22
    iput-wide p1, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    .line 36
    iput-object p3, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {p1, p2, p3, v0, v1}, Lcom/google/android/music/store/MusicContent$Playlists;->appendGenreToPlayList(Landroid/content/ContentResolver;JJ)I

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

    .line 142
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasLocal"

    aput-object v0, v2, v8

    .line 145
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 149
    const-string v0, "GenreSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Genre id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 155
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 152
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v7

    .line 155
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 152
    goto :goto_46

    .line 155
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

    .line 123
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "hasRemote"

    aput-object v0, v2, v8

    .line 126
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 130
    const-string v0, "GenreSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Genre id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_4d

    .line 136
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    :goto_3d
    return v8

    .line 133
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    move-result v0

    if-ne v0, v7, :cond_4b

    move v0, v7

    .line 136
    :goto_46
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v8, v0

    goto :goto_3d

    :cond_4b
    move v0, v8

    .line 133
    goto :goto_46

    .line 136
    :catchall_4d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/music/medialist/GenreSongList;->getSortOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .parameter "context"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/medialist/GenreSongList;->getSortParam()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, sortParam:Ljava/lang/String;
    iget-wide v1, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getGenreId()J
    .registers 3

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    return-wide v0
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 61
    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_3
    iget-wide v3, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    iget-object v7, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    move-result-object v0

    .line 65
    :goto_f
    return-object v0

    .line 63
    :catch_10
    move-exception v0

    move-object v0, v9

    .line 65
    goto :goto_f
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 175
    const v0, 0x7f040061

    return v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    .line 80
    const v0, 0x7f0d0127

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000f

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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, orders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 107
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v7

    .line 110
    .local v2, cols:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 115
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/GenreSongList;->mName:Ljava/lang/String;

    .line 117
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2e
    return-void
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 165
    iget-wide v1, p0, Lcom/google/android/music/medialist/GenreSongList;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    return-void
.end method

.method public storeDefaultSortOrder(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 51
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 53
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_4
    iget v1, p0, Lcom/google/android/music/medialist/GenreSongList;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setGenreSongsSortOrder(I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 55
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 57
    return-void

    .line 55
    :catchall_d
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method

.method public supportsAppendToPlaylist()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
