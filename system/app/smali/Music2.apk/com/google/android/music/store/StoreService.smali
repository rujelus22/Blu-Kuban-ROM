.class public Lcom/google/android/music/store/StoreService;
.super Lcom/google/android/music/store/IStoreService$Stub;
.source "StoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/StoreService$1;,
        Lcom/google/android/music/store/StoreService$StoreIntentService;,
        Lcom/google/android/music/store/StoreService$StoreServiceBinder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/store/IStoreService$Stub;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    .line 35
    iput-object p1, p0, Lcom/google/android/music/store/StoreService;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/music/store/StoreService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/music/store/StoreService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 16
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 117
    iget-object v1, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/store/MusicFile;->getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;

    move-result-object v13

    .line 118
    .local v13, musicFile:Lcom/google/android/music/store/MusicFile;
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder;

    new-instance v1, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getSize()J

    move-result-wide v3

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getDurationInMilliSec()J

    move-result-wide v5

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/dl/DownloadOrder;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getSourceAccount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setSourceAccount(I)V

    .line 124
    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getLocalCopyPath()Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, location:Ljava/lang/String;
    if-eqz v12, :cond_57

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/android/music/store/MusicFile;->getLocalCopyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;I)V
    :try_end_57
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_1 .. :try_end_57} :catch_58

    .line 131
    .end local v0           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v12           #location:Ljava/lang/String;
    .end local v13           #musicFile:Lcom/google/android/music/store/MusicFile;
    :cond_57
    return-object v0

    .line 133
    :catch_58
    move-exception v11

    .line 134
    .local v11, e:Lcom/google/android/music/store/DataNotFoundException;
    const-string v1, "StoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not file MusicFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getAccountByHash(I)[Ljava/lang/String;
    .registers 8
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v3, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 104
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-static {v1, p1}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->get(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/accounts/Account;

    move-result-object v0

    .line 105
    .local v0, account:Landroid/accounts/Account;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_4a
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_6 .. :try_end_17} :catch_1d

    .line 110
    iget-object v4, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v3

    .line 106
    .end local v0           #account:Landroid/accounts/Account;
    :catch_1d
    move-exception v2

    .line 107
    .local v2, e:Lcom/google/android/music/sync/common/ProviderException;
    :try_start_1e
    const-string v3, "StoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get account by hash("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/music/sync/common/ProviderException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_4a

    .line 110
    .end local v2           #e:Lcom/google/android/music/sync/common/ProviderException;
    :catchall_4a
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
.end method

.method public getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Ljava/util/Map;
    .registers 8
    .parameter "artistId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 166
    .local v1, ret:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/music/store/Store;->getAlbumIdsAndAlbumKeepOnIdsForArtist(J)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3a

    .line 169
    :goto_c
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 170
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/16 v2, -0x1

    :goto_24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2c

    goto :goto_c

    .line 173
    :catchall_2c
    move-exception v2

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 170
    :cond_31
    const/4 v2, 0x1

    :try_start_32
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2c

    move-result-wide v2

    goto :goto_24

    .line 173
    :cond_37
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 176
    :cond_3a
    return-object v1
.end method

.method public getArtistIdsForAlbum(J)[J
    .registers 8
    .parameter "albumId"

    .prologue
    .line 148
    iget-object v3, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/music/store/Store;->getArtistIdsForAlbum(J)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_a

    .line 150
    const/4 v2, 0x0

    .line 160
    :goto_9
    return-object v2

    .line 153
    :cond_a
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [J

    .line 154
    .local v2, ret:[J
    const/4 v1, 0x0

    .line 155
    .local v1, i:I
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 156
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 160
    .end local v1           #i:I
    .end local v2           #ret:[J
    :catchall_1f
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    .restart local v1       #i:I
    .restart local v2       #ret:[J
    :cond_24
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9
.end method

.method public getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 7
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 41
    new-instance v1, Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v2, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/store/Store;->getPreferredMusicId(J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_17} :catch_19

    move-object p1, v1

    .line 44
    .end local p1
    :cond_18
    return-object p1

    .line 46
    .restart local p1
    :catch_19
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "StoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find music identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getSizeToDownloadAlbum(J)J
    .registers 5
    .parameter "albumId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/store/Store;->getSizeToDownloadAlbum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSizeToDownloadPlaylist(J)J
    .registers 5
    .parameter "playlistId"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/store/Store;->getSizeToDownloadPlaylist(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V
    .registers 8
    .parameter "songId"
    .parameter "outSourceType"
    .parameter "outSourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 56
    iget-object v1, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/google/android/music/store/Store;->getSourceAccountAndId(J[I[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 64
    :cond_f
    return-void

    .line 60
    :catch_10
    move-exception v0

    .line 61
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "StoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find music identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public isAlbumSelectedAsKeepOn(JZ)Z
    .registers 5
    .parameter "albumId"
    .parameter "useArtistKeepOn"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/store/Store;->isAlbumSelectedAsKeepOn(JZ)Z

    move-result v0

    return v0
.end method

.method public isArtistSelectedAsKeepOn(J)Z
    .registers 4
    .parameter "artistId"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/store/Store;->isArtistSelectedAsKeepOn(J)Z

    move-result v0

    return v0
.end method

.method public isPlaylistSelectedAsKeepOn(J)Z
    .registers 4
    .parameter "playlistId"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/store/Store;->isPlaylistSelectedAsKeepOn(J)Z

    move-result v0

    return v0
.end method

.method public markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 5
    .parameter "songId"

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {p1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->markSongPlayed(J)V

    .line 99
    :cond_f
    return-void
.end method

.method public requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 8
    .parameter "songIds"

    .prologue
    .line 70
    if-eqz p1, :cond_29

    array-length v2, p1

    if-lez v2, :cond_29

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 74
    array-length v2, p1

    new-array v1, v2, [J

    .line 75
    .local v1, xIds:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v2, p1

    if-ge v0, v2, :cond_20

    .line 76
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 79
    :cond_20
    iget-object v2, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v1}, Lcom/google/android/music/store/Store;->requiresDownloadManager([J)[J

    move-result-object v1

    .line 80
    if-nez v1, :cond_2a

    .line 81
    const/4 p1, 0x0

    .line 89
    .end local v0           #i:I
    .end local v1           #xIds:[J
    .end local p1
    :cond_29
    return-object p1

    .line 83
    .restart local v0       #i:I
    .restart local v1       #xIds:[J
    .restart local p1
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 84
    new-instance v2, Lcom/google/android/music/dl/ContentIdentifier;

    aget-wide v3, v1, v0

    sget-object v5, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    aput-object v2, p1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method public setRingtone(JLjava/lang/String;)I
    .registers 7
    .parameter "id"
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v2, p0, Lcom/google/android/music/store/StoreService;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v0

    .line 231
    .local v0, manager:Lcom/google/android/music/store/MusicRingtoneManager;
    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/music/store/MusicRingtoneManager;->setRingtoneAttempt(JLjava/lang/String;Z)I

    move-result v1

    .line 234
    :cond_d
    return v1
.end method
