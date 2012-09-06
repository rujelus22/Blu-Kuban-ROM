.class public Lcom/google/android/music/store/MediaStoreImporter;
.super Ljava/lang/Object;
.source "MediaStoreImporter.java"


# static fields
.field private static final AUDIO_COLUMNS:[Ljava/lang/String;

.field private static final AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

.field private static final AUDIO_ID_COLUMNS:[Ljava/lang/String;

.field private static final COUNT_COLUMNS:[Ljava/lang/String;

.field private static final GENRE_COLUMNS:[Ljava/lang/String;

.field private static final GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

.field private static final LOGV:Z

.field private static final MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

.field private static MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

.field private static final MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

.field private static final MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String;

.field private static final PLAYLIST_COLUMNS:[Ljava/lang/String;

.field private static final PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String;

.field private static final UPDATE_POST_SYNC_MESSAGE_TYPE:I

.field private static final sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAddedMusicCount:I

.field private mAudioFilesInMediaStoreCount:I

.field private mContext:Landroid/content/Context;

.field private mCreatedPlaylistCount:I

.field private mDeletedMusicCount:I

.field private mDeletedPlaylistCount:I

.field private mDeletedPlaylistItemCount:I

.field private mImportChangesSinceDate:J

.field private mInsertedPlaylistItemCount:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mStore:Lcom/google/android/music/store/Store;

.field private mUpdatedMusicCount:I

.field private mUpdatedPlaylistCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    const-string v0, "MediaStoreImporter"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    .line 41
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "fsid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_ID_COLUMNS:[Ljava/lang/String;

    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "composer"

    aput-object v1, v0, v6

    const-string v1, "date_added"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "album_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS:[Ljava/lang/String;

    .line 83
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "composer"

    aput-object v1, v0, v6

    const-string v1, "date_added"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "track"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "year"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

    .line 114
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_COLUMNS:[Ljava/lang/String;

    .line 120
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

    .line 123
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    .line 134
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

    .line 139
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v4

    const-string v1, "MusicSourceId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String;

    .line 146
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 181
    return-void
.end method

.method private collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V
    .registers 14
    .parameter
    .parameter "mediaStoreCursor"
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-nez p2, :cond_3

    .line 711
    :goto_2
    return-void

    .line 677
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 678
    .local v6, savedPosition:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, p3, :cond_7b

    .line 679
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 680
    const/16 v7, 0xb

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 681
    .local v4, mediaStoreAlbumId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_47

    .line 682
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 683
    const/4 v2, 0x0

    .line 684
    .local v2, hasAlbumArt:Z
    const/4 v1, 0x0

    .line 686
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_28
    iget-object v7, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getMediaStoreAlbumArt(J)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_57

    move-result-object v1

    .line 689
    if-eqz v1, :cond_4a

    const/4 v2, 0x1

    .line 694
    :goto_37
    if-eqz v1, :cond_3c

    .line 695
    :try_start_39
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_4c

    .line 701
    :cond_3c
    :goto_3c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #hasAlbumArt:Z
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 689
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #hasAlbumArt:Z
    :cond_4a
    const/4 v2, 0x0

    goto :goto_37

    .line 697
    :catch_4c
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 690
    .end local v0           #e:Ljava/lang/Exception;
    :catch_57
    move-exception v7

    .line 694
    if-eqz v1, :cond_3c

    .line 695
    :try_start_5a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_3c

    .line 697
    :catch_5e
    move-exception v0

    .line 698
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 693
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_69
    move-exception v7

    .line 694
    if-eqz v1, :cond_6f

    .line 695
    :try_start_6c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 699
    :cond_6f
    :goto_6f
    throw v7

    .line 697
    :catch_70
    move-exception v0

    .line 698
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 710
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #hasAlbumArt:Z
    .end local v4           #mediaStoreAlbumId:J
    :cond_7b
    invoke-interface {p2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2
.end method

.method private getAllAudioCount()I
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 759
    const/4 v6, 0x0

    .line 760
    .local v6, count:I
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->COUNT_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 765
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1c

    :try_start_11
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 766
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    move-result v6

    .line 769
    :cond_1c
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 772
    return v6

    .line 769
    :catchall_20
    move-exception v0

    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getLocalPlaylistsFromMusicStore(Ljava/util/Map;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1270
    .line 1271
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1273
    :try_start_7
    const-string v1, "LISTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MediaStoreId"

    aput-object v4, v2, v3

    const-string v3, "MediaStoreId NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_51

    move-result-object v2

    .line 1276
    if-eqz v2, :cond_48

    .line 1277
    :goto_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1278
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    goto :goto_22

    .line 1282
    :catchall_3e
    move-exception v1

    :goto_3f
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1283
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1282
    :cond_48
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1283
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1285
    return-void

    .line 1282
    :catchall_51
    move-exception v1

    move-object v2, v8

    goto :goto_3f
.end method

.method private getMediaDbVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, version:Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_16

    .line 392
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, mediaStoreVersion:Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 394
    const-string v2, "MediaStoreImporter"

    const-string v3, "MediaStore.getVersion() returned null. Using build number"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0           #mediaStoreVersion:Ljava/lang/String;
    :cond_16
    :goto_16
    if-nez v1, :cond_1a

    .line 403
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 405
    :cond_1a
    return-object v1

    .line 396
    .restart local v0       #mediaStoreVersion:Ljava/lang/String;
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaStore."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method private getMediaStoreAudioCursor(Z)Landroid/database/Cursor;
    .registers 16
    .parameter "getAlbumArtist"

    .prologue
    const-wide/16 v12, 0x0

    .line 441
    const/4 v4, 0x0

    .line 442
    .local v4, selectionParams:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_37

    .line 443
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, time:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionParams:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    .line 445
    .restart local v4       #selectionParams:[Ljava/lang/String;
    const-string v3, "(is_music=1 OR is_podcast=1)  AND (date_added >=?  OR date_modified >=?  )"

    .line 455
    .end local v9           #time:Ljava/lang/String;
    .local v3, audioSelection:Ljava/lang/String;
    :goto_1d
    const/4 v6, 0x0

    .line 456
    .local v6, count:I
    const/4 v7, 0x0

    .line 458
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_3a

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

    :goto_27
    const-string v5, "date_added"

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 465
    if-nez v7, :cond_3d

    .line 466
    const-string v0, "MediaStoreImporter"

    const-string v1, "Failed to get the cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_36} :catch_64

    .line 487
    :cond_36
    :goto_36
    return-object v7

    .line 452
    .end local v3           #audioSelection:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_37
    const-string v3, "is_music=1 OR is_podcast=1"

    .restart local v3       #audioSelection:Ljava/lang/String;
    goto :goto_1d

    .line 458
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3a
    :try_start_3a
    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS:[Ljava/lang/String;

    goto :goto_27

    .line 470
    :cond_3d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 471
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v0, :cond_36

    .line 472
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_73

    .line 473
    const-string v0, "MediaStoreImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of new/modified songs in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_63} :catch_64

    goto :goto_36

    .line 479
    :catch_64
    move-exception v8

    .line 480
    .local v8, e:Ljava/lang/RuntimeException;
    if-nez p1, :cond_6e

    .line 481
    const-string v0, "MediaStoreImporter"

    const-string v1, "Exception while executing media store query"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    :cond_6e
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 484
    const/4 v7, 0x0

    goto :goto_36

    .line 475
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_73
    :try_start_73
    const-string v0, "MediaStoreImporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of songs in MediaStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_8b} :catch_64

    goto :goto_36
.end method

.method private static getMediaStoreFsId(Landroid/content/Context;)J
    .registers 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 416
    const-wide/16 v7, 0x0

    .line 417
    .local v7, fsId:J
    sget-object v1, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 421
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    move-result-wide v7

    .line 424
    :cond_1b
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 426
    return-wide v7

    .line 424
    :catchall_1f
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private haveNonMediaStorePlaylist(Ljava/lang/String;)Z
    .registers 14
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1032
    .line 1033
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1035
    :try_start_9
    const-string v1, "LISTS"

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_NAME_CHECK_COLUMNS:[Ljava/lang/String;

    const-string v3, "Name=? AND MediaStoreId IS NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_3a

    move-result-object v2

    .line 1040
    if-eqz v2, :cond_30

    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_45

    move-result v1

    if-eqz v1, :cond_30

    .line 1046
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1047
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v9

    :goto_2f
    return v0

    .line 1046
    :cond_30
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1047
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v10

    goto :goto_2f

    .line 1046
    :catchall_3a
    move-exception v1

    move-object v2, v11

    :goto_3c
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1047
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1046
    :catchall_45
    move-exception v1

    goto :goto_3c
.end method

.method private importAudioFiles(Landroid/database/Cursor;)V
    .registers 27
    .parameter "cursor"

    .prologue
    .line 492
    const/16 v17, 0x0

    .line 493
    .local v17, success:Z
    const/4 v11, 0x0

    .line 494
    .local v11, musicInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v12, 0x0

    .line 495
    .local v12, musicUpdate:Landroid/database/sqlite/SQLiteStatement;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 496
    .local v3, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 499
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1e
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 500
    .local v8, importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v4}, Lcom/google/android/music/store/MusicFile;->compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 501
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_37

    .line 502
    invoke-static {v4}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 505
    :cond_37
    new-instance v13, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v13}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 506
    .local v13, normalizer:Lcom/google/android/music/store/TagNormalizer;
    new-instance v7, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v7}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 507
    .local v7, file:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v7, v13}, Lcom/google/android/music/store/MusicFile;->setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V

    .line 509
    const/16 v20, 0x1

    .line 510
    .local v20, updateRecentItems:Z
    const/16 v19, 0x0

    .line 513
    .local v19, uncommittedChanges:Z
    :cond_48
    :goto_48
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_330

    .line 515
    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->reset()V

    .line 516
    const-wide/16 v14, -0x1

    .line 518
    .local v14, sourceId:J
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 519
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 520
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 521
    .local v16, sourceIdStr:Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_86

    .line 525
    sget-object v21, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v4, v0, v1, v7}, Lcom/google/android/music/store/MusicFile;->readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 530
    :cond_86
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 531
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 532
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 533
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 535
    const/16 v21, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_db

    .line 537
    const/16 v21, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 539
    :cond_db
    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_f6

    .line 540
    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 542
    :cond_f6
    const/16 v21, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setMimeType(Ljava/lang/String;)V

    .line 543
    const/16 v21, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_2bf

    .line 544
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 548
    :goto_118
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_2d0

    .line 549
    const-string v21, "<unknown>"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 553
    :goto_12b
    const/4 v5, 0x0

    .line 555
    .local v5, discNumber:S
    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_2e1

    .line 556
    const/16 v18, 0x0

    .line 561
    .local v18, track:S
    :goto_13a
    const/16 v21, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_156

    .line 562
    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v5, v0

    .line 563
    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v18, v0

    .line 565
    :cond_156
    invoke-virtual {v7, v5}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 566
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 567
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_179

    .line 568
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 570
    :cond_179
    sget-object v21, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_190

    .line 571
    const/16 v21, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 573
    :cond_190
    const/16 v21, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 574
    .local v9, mediaStoreAlbumId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v9, v21

    if-eqz v21, :cond_2ed

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2ed

    .line 575
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mediastore:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V

    .line 587
    :goto_1cc
    const/16 v21, 0x12c

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setLocalCopyType(I)V

    .line 590
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e6

    .line 591
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 593
    :cond_1e6
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f9

    .line 594
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 599
    :cond_1f9
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20c

    .line 600
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V
    :try_end_20c
    .catchall {:try_start_1e .. :try_end_20c} :catchall_2aa

    .line 604
    :cond_20c
    :try_start_20c
    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_2f6

    .line 605
    invoke-virtual {v7, v12, v4}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I
    :try_end_227
    .catchall {:try_start_20c .. :try_end_227} :catchall_2aa
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_227} :catch_309

    .line 611
    :goto_227
    const/16 v19, 0x1

    .line 616
    :goto_229
    if-eqz v19, :cond_48

    :try_start_22b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v21

    if-nez v21, :cond_247

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    rem-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    if-nez v21, :cond_48

    .line 621
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 622
    const/16 v19, 0x0

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 625
    if-eqz v20, :cond_284

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->countRecentItems(Landroid/content/Context;)I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_32c

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 634
    :cond_284
    :goto_284
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/google/android/music/store/MediaStoreImporter;->importMediaStoreGenre(Lcom/google/android/music/store/TagNormalizer;Ljava/util/HashSet;)V

    .line 635
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 637
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 641
    const-wide/16 v21, 0xc8

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_2a8
    .catchall {:try_start_22b .. :try_end_2a8} :catchall_2aa

    goto/16 :goto_48

    .line 647
    .end local v5           #discNumber:S
    .end local v7           #file:Lcom/google/android/music/store/MusicFile;
    .end local v8           #importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v9           #mediaStoreAlbumId:J
    .end local v13           #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .end local v14           #sourceId:J
    .end local v16           #sourceIdStr:Ljava/lang/String;
    .end local v18           #track:S
    .end local v19           #uncommittedChanges:Z
    .end local v20           #updateRecentItems:Z
    :catchall_2aa
    move-exception v21

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 648
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v21

    .line 546
    .restart local v7       #file:Lcom/google/android/music/store/MusicFile;
    .restart local v8       #importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13       #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .restart local v14       #sourceId:J
    .restart local v16       #sourceIdStr:Ljava/lang/String;
    .restart local v19       #uncommittedChanges:Z
    .restart local v20       #updateRecentItems:Z
    :cond_2bf
    const/16 v21, 0x7

    :try_start_2c1
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    goto/16 :goto_118

    .line 551
    :cond_2d0
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 558
    .restart local v5       #discNumber:S
    :cond_2e1
    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    .restart local v18       #track:S
    goto/16 :goto_13a

    .line 578
    .restart local v9       #mediaStoreAlbumId:J
    :cond_2ed
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V
    :try_end_2f4
    .catchall {:try_start_2c1 .. :try_end_2f4} :catchall_2aa

    goto/16 :goto_1cc

    .line 608
    :cond_2f6
    :try_start_2f6
    invoke-virtual {v7, v11}, Lcom/google/android/music/store/MusicFile;->insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I
    :try_end_307
    .catchall {:try_start_2f6 .. :try_end_307} :catchall_2aa
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_307} :catch_309

    goto/16 :goto_227

    .line 612
    :catch_309
    move-exception v6

    .line 613
    .local v6, e:Ljava/lang/Exception;
    :try_start_30a
    const-string v21, "MediaStoreImporter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to insert local file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32a
    .catchall {:try_start_30a .. :try_end_32a} :catchall_2aa

    goto/16 :goto_229

    .line 630
    .end local v6           #e:Ljava/lang/Exception;
    :cond_32c
    const/16 v20, 0x0

    goto/16 :goto_284

    .line 644
    .end local v5           #discNumber:S
    .end local v9           #mediaStoreAlbumId:J
    .end local v14           #sourceId:J
    .end local v16           #sourceIdStr:Ljava/lang/String;
    .end local v18           #track:S
    :cond_330
    const/16 v17, 0x1

    .line 647
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 648
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 651
    return-void
.end method

.method private importMediaStoreGenre(Lcom/google/android/music/store/TagNormalizer;Ljava/util/HashSet;)V
    .registers 26
    .parameter "normalizer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/TagNormalizer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p2, audioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 885
    :goto_8
    return-void

    .line 790
    :cond_9
    const/16 v17, 0x0

    .line 791
    .local v17, howManyGenres:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 794
    .local v13, genreCursor:Landroid/database/Cursor;
    if-nez v13, :cond_27

    .line 795
    :try_start_1c
    const-string v2, "MediaStoreImporter"

    const-string v4, "Failed to get the genre cursor"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_c8

    .line 883
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_8

    .line 798
    :cond_27
    :try_start_27
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 799
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_49

    const-string v2, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of generes in MediaStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_49
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v2

    mul-int/lit8 v12, v2, 0x6

    .line 803
    .local v12, bufferSize:I
    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 804
    .local v20, selectionBuffer:Ljava/lang/StringBuffer;
    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 805
    .local v22, updateBuffer:Ljava/lang/StringBuffer;
    :cond_5d
    :goto_5d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_19d

    if-eqz p2, :cond_6b

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19d

    .line 806
    :cond_6b
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 807
    .local v14, genreId:J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 809
    .local v16, genreName:Ljava/lang/String;
    if-eqz v16, :cond_5d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 815
    invoke-static/range {v16 .. v16}, Lcom/google/android/music/utils/MusicTagUtils;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 817
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/music/store/Store;->canonicalizeAndGenerateId(Lcom/google/android/music/store/TagNormalizer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 820
    .local v18, idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_a7

    .line 821
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 826
    :cond_a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    const-string v4, "external"

    invoke-static {v4, v14, v15}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

    if-nez v20, :cond_cd

    const/4 v5, 0x0

    :goto_b6
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_bb
    .catchall {:try_start_27 .. :try_end_bb} :catchall_c8

    move-result-object v19

    .line 834
    .local v19, memberCursor:Landroid/database/Cursor;
    if-eqz v19, :cond_c4

    :try_start_be
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_18d

    move-result v2

    if-nez v2, :cond_d2

    .line 879
    :cond_c4
    :try_start_c4
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_5d

    .line 883
    .end local v12           #bufferSize:I
    .end local v14           #genreId:J
    .end local v16           #genreName:Ljava/lang/String;
    .end local v18           #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v19           #memberCursor:Landroid/database/Cursor;
    .end local v20           #selectionBuffer:Ljava/lang/StringBuffer;
    .end local v22           #updateBuffer:Ljava/lang/StringBuffer;
    :catchall_c8
    move-exception v2

    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 826
    .restart local v12       #bufferSize:I
    .restart local v14       #genreId:J
    .restart local v16       #genreName:Ljava/lang/String;
    .restart local v18       #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v20       #selectionBuffer:Ljava/lang/StringBuffer;
    .restart local v22       #updateBuffer:Ljava/lang/StringBuffer;
    :cond_cd
    :try_start_cd
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_c8

    move-result-object v5

    goto :goto_b6

    .line 838
    .restart local v19       #memberCursor:Landroid/database/Cursor;
    :cond_d2
    const/4 v2, 0x0

    :try_start_d3
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 839
    :cond_d8
    :goto_d8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 840
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 841
    .local v10, audioId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v10, v4

    if-eqz v2, :cond_d8

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 861
    .end local v10           #audioId:J
    :cond_11b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_16a

    .line 863
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 864
    const/16 v21, 0x0

    .line 865
    .local v21, success:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_135
    .catchall {:try_start_d3 .. :try_end_135} :catchall_18d

    move-result-object v3

    .line 867
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    :try_start_137
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v9}, Lcom/google/android/music/store/MediaStoreImporter;->setGenre(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_137 .. :try_end_152} :catchall_192

    .line 870
    const/16 v21, 0x1

    .line 872
    :try_start_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 874
    if-eqz v21, :cond_16a

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_16a
    .catchall {:try_start_154 .. :try_end_16a} :catchall_18d

    .line 879
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v21           #success:Z
    :cond_16a
    :try_start_16a
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_c8

    goto/16 :goto_5d

    .line 855
    .restart local v10       #audioId:J
    :cond_16f
    :try_start_16f
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_d8

    .line 856
    const-string v2, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Unexpected absence of audio "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catchall {:try_start_16f .. :try_end_18b} :catchall_18d

    goto/16 :goto_d8

    .line 879
    .end local v10           #audioId:J
    :catchall_18d
    move-exception v2

    :try_start_18e
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2
    :try_end_192
    .catchall {:try_start_18e .. :try_end_192} :catchall_c8

    .line 872
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v21       #success:Z
    :catchall_192
    move-exception v2

    :try_start_193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v2
    :try_end_19d
    .catchall {:try_start_193 .. :try_end_19d} :catchall_18d

    .line 883
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #genreId:J
    .end local v16           #genreName:Ljava/lang/String;
    .end local v18           #idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v19           #memberCursor:Landroid/database/Cursor;
    .end local v21           #success:Z
    :cond_19d
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_8
.end method

.method private importNow()Z
    .registers 30

    .prologue
    .line 228
    const/16 v21, 0x0

    .line 230
    .local v21, success:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 232
    .local v8, importStartTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "store.preferences"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 234
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v22, "media.store.import.db.version"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 236
    .local v17, previouslyImportedMediaDbVersion:Ljava/lang/String;
    move-object/from16 v11, v17

    .line 237
    .local v11, mediaDbVersion:Ljava/lang/String;
    const-string v22, "media.store.import.db.version.check"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 239
    .local v12, mediaDbVersionCheck:Z
    if-eqz v12, :cond_34

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaDbVersion()Ljava/lang/String;

    move-result-object v11

    .line 248
    :cond_34
    const-string v22, "media.store.import.time"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 249
    const-string v22, "media.store.import.version"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 250
    .local v18, previouslyImportedVersion:J
    const-string v22, "media.store.import.fs_id"

    const-wide/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 252
    .local v15, previouslyImportedFsId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreFsId(Landroid/content/Context;)J

    move-result-wide v3

    .line 254
    .local v3, currentFsId:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-gez v22, :cond_c5

    .line 255
    sget-boolean v22, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v22, :cond_7f

    const-string v22, "MediaStoreImporter"

    const-string v23, "No valid media store import"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_7f
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 274
    :cond_87
    :goto_87
    sget-object v22, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreAudioCursor(Z)Landroid/database/Cursor;

    move-result-object v5

    .line 276
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_b9

    sget-object v22, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-eqz v22, :cond_b9

    .line 278
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreAudioCursor(Z)Landroid/database/Cursor;

    move-result-object v5

    .line 279
    if-eqz v5, :cond_b9

    .line 281
    const-string v22, "MediaStoreImporter"

    const-string v23, "Current system does not support album artist tag"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v22, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    :cond_b9
    if-nez v5, :cond_173

    .line 287
    const-string v22, "MediaStoreImporter"

    const-string v23, "Failed to get the audio cursor"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v22, 0x0

    .line 375
    :goto_c4
    return v22

    .line 257
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_c5
    const-wide/16 v22, 0x9

    cmp-long v22, v18, v22

    if-eqz v22, :cond_fc

    .line 258
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MediaStore import needs an upgrade from version "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x9

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto :goto_87

    .line 261
    :cond_fc
    cmp-long v22, v15, v3

    if-eqz v22, :cond_131

    .line 262
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "File system changed since previous import from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto/16 :goto_87

    .line 265
    :cond_131
    if-eqz v12, :cond_87

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_87

    .line 267
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Media store database version has changed since previous import from \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\" to \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    goto/16 :goto_87

    .line 291
    .restart local v5       #cursor:Landroid/database/Cursor;
    :cond_173
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 292
    .local v7, howManyFilesToImport:I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 293
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_191

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->getAllAudioCount()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 297
    :cond_191
    const/16 v20, 0x0

    .line 300
    .local v20, removedPlaylistItemCount:I
    :try_start_193
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1a8

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/store/Store;->deleteLocalMusic()V

    .line 304
    :cond_1a8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/music/store/MediaStoreImporter;->importAudioFiles(Landroid/database/Cursor;)V

    .line 306
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1d8

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/store/Store;->countLocalMusic()I

    move-result v10

    .line 311
    .local v10, localFilesInMusicStore:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v10, v0, :cond_376

    .line 312
    sget-boolean v22, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v22, :cond_1d8

    const-string v22, "MediaStoreImporter"

    const-string v23, "No need to delete local files"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v10           #localFilesInMusicStore:I
    :cond_1d8
    :goto_1d8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1fc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v22, v0

    if-gtz v22, :cond_1fc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v22, v0

    if-gtz v22, :cond_1fc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v22, v0

    if-lez v22, :cond_20e

    .line 332
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/MediaStoreImporter;->setLocalMusicAlbumArtistBasedOnRemoteDup(Landroid/content/Context;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 336
    :cond_20e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->importPlaylists()V

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_225

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v22, v0

    if-lez v22, :cond_22f

    .line 339
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/PlayList;->removeLocalOrphanedItems(Landroid/content/Context;)I

    move-result v20

    .line 342
    :cond_22f
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 343
    .local v14, prefsEdit:Landroid/content/SharedPreferences$Editor;
    const-string v22, "media.store.import.time"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v22, "media.store.import.version"

    const-wide/16 v23, 0x9

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 345
    const-string v22, "media.store.import.fs_id"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 347
    if-eqz v12, :cond_25c

    .line 348
    const-string v22, "media.store.import.db.version"

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string v22, "media.store.import.db.version.check"

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    :cond_25c
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v21

    .line 354
    if-nez v21, :cond_269

    .line 355
    const-string v22, "MediaStoreImporter"

    const-string v23, "Failed to update preference file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_269
    .catchall {:try_start_193 .. :try_end_269} :catchall_3e1

    .line 359
    :cond_269
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 362
    if-eqz v21, :cond_372

    .line 363
    const-string v23, "MediaStoreImporter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Update: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v22, v25, v27

    if-nez v22, :cond_40e

    const-string v22, "full"

    :goto_28d
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Added music: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Updated music: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Deleted music: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Created playlists: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Updated playlists: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Deleted playlists: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Inserted playlist items: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Deleted playlist items: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Removed orphaned playlist items: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_372
    move/from16 v22, v21

    .line 375
    goto/16 :goto_c4

    .line 313
    .end local v14           #prefsEdit:Landroid/content/SharedPreferences$Editor;
    .restart local v10       #localFilesInMusicStore:I
    :cond_376
    :try_start_376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v10, v0, :cond_3e6

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v22, v0

    sub-int v6, v10, v22

    .line 316
    .local v6, expectedDeletions:I
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Need to delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " local files"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MediaStoreImporter;->removeDeletedAudioFiles()V

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1d8

    .line 319
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expected to delete "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files but actually deleted "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3df
    .catchall {:try_start_376 .. :try_end_3df} :catchall_3e1

    goto/16 :goto_1d8

    .line 359
    .end local v6           #expectedDeletions:I
    .end local v10           #localFilesInMusicStore:I
    :catchall_3e1
    move-exception v22

    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v22

    .line 324
    .restart local v10       #localFilesInMusicStore:I
    :cond_3e6
    :try_start_3e6
    const-string v22, "MediaStoreImporter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Music store has "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    move/from16 v24, v0

    sub-int v24, v24, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " less files than media store after import"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40c
    .catchall {:try_start_3e6 .. :try_end_40c} :catchall_3e1

    goto/16 :goto_1d8

    .line 363
    .end local v10           #localFilesInMusicStore:I
    .restart local v14       #prefsEdit:Landroid/content/SharedPreferences$Editor;
    :cond_40e
    const-string v22, "incremental"

    goto/16 :goto_28d
.end method

.method private importPlaylist(JLjava/lang/String;Ljava/lang/Long;Landroid/database/Cursor;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1064
    new-instance v7, Lcom/google/android/music/store/PlayList;

    invoke-direct {v7}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 1065
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1066
    const-wide/16 v2, 0x0

    .line 1068
    const/4 v6, 0x0

    .line 1070
    if-eqz p4, :cond_242

    .line 1071
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/music/store/MediaStoreImporter;->matchPreviouslyImportedPlaylistItems(Landroid/database/Cursor;J)J

    move-result-wide v2

    move-wide v3, v2

    .line 1075
    :goto_19
    const/4 v12, 0x0

    .line 1076
    const/4 v5, 0x0

    .line 1077
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1079
    if-nez p4, :cond_b9

    .line 1081
    :try_start_23
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1082
    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/PlayList;->setMediaStoreId(J)V

    .line 1083
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 1084
    invoke-virtual {v7, v8}, Lcom/google/android/music/store/PlayList;->setSourceId(Ljava/lang/String;)V

    .line 1086
    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_232

    move-result-object v4

    .line 1087
    :try_start_38
    invoke-virtual {v7, v4}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1088
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    .line 1090
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_23e

    .line 1091
    const-string v3, "MediaStoreImporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Importing playlist "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " with "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " songs"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_38 .. :try_end_73} :catchall_235

    move-object v10, v4

    move v11, v6

    .line 1144
    :goto_75
    :try_start_75
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 1145
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_9f

    .line 1146
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All items of playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already present."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_9f
    :goto_9f
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_1fa

    .line 1167
    const/4 v3, 0x1

    .line 1170
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1171
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1175
    if-nez p4, :cond_228

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 1177
    :goto_b1
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1179
    :goto_b8
    return-void

    .line 1098
    :cond_b9
    :try_start_b9
    sget-object v9, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-static {v2, v9, v8, v7}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v9

    if-nez v9, :cond_fa

    .line 1101
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "dissapeared while being imported"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_b9 .. :try_end_f1} :catchall_232

    .line 1170
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1171
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_b8

    .line 1105
    :cond_fa
    :try_start_fa
    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v9, v9, v13

    if-nez v9, :cond_13e

    .line 1106
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playlist \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "was modified while being imported"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_fa .. :try_end_134} :catchall_232

    .line 1170
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1171
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_b8

    .line 1110
    :cond_13e
    :try_start_13e
    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_185

    .line 1111
    const-string v6, "MediaStoreImporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Playlist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was renamed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1114
    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_17a
    .catchall {:try_start_13e .. :try_end_17a} :catchall_232

    move-result-object v5

    .line 1115
    :try_start_17b
    invoke-virtual {v7, v5}, Lcom/google/android/music/store/PlayList;->update(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1116
    iget v6, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 1117
    const/4 v6, 0x1

    .line 1120
    :cond_185
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_23a

    .line 1121
    const/4 v8, 0x0

    invoke-static {v2, v3, v4, v8}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v3

    .line 1122
    if-nez v3, :cond_1a3

    .line 1123
    const-string v3, "MediaStoreImporter"

    const-string v4, "Unexpected disappearance of the item from the playlist."

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catchall {:try_start_17b .. :try_end_199} :catchall_237

    .line 1170
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1171
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_b8

    .line 1128
    :cond_1a3
    :try_start_1a3
    const-string v4, "LISTITEMS"

    const-string v8, "ListId=? AND ClientPosition>=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayList$Item;->getClientPosition()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v2, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1135
    iget v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    .line 1136
    if-lez v3, :cond_23a

    if-nez v6, :cond_23a

    .line 1137
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I
    :try_end_1d3
    .catchall {:try_start_1a3 .. :try_end_1d3} :catchall_237

    .line 1138
    const/4 v3, 0x1

    move-object v10, v5

    move v11, v3

    goto/16 :goto_75

    .line 1149
    :cond_1d8
    :try_start_1d8
    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v3

    const/4 v6, 0x1

    sget-object v7, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p5

    invoke-static/range {v2 .. v9}, Lcom/google/android/music/store/PlayList;->appendItems(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/Cursor;ZLjava/lang/Integer;ZZ)I

    move-result v3

    .line 1154
    if-lez v3, :cond_205

    .line 1155
    iget v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    .line 1160
    :cond_1ee
    :goto_1ee
    if-eqz p4, :cond_9f

    if-nez v11, :cond_9f

    .line 1161
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I
    :try_end_1f8
    .catchall {:try_start_1d8 .. :try_end_1f8} :catchall_1fa

    goto/16 :goto_9f

    .line 1170
    :catchall_1fa
    move-exception v3

    move-object v4, v10

    :goto_1fc
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1171
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3

    .line 1156
    :cond_205
    if-gez v3, :cond_1ee

    .line 1157
    :try_start_207
    const-string v3, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached size limit in playlist \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_227
    .catchall {:try_start_207 .. :try_end_227} :catchall_1fa

    goto :goto_1ee

    .line 1175
    :cond_228
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_b1

    .line 1170
    :catchall_232
    move-exception v3

    move-object v4, v5

    goto :goto_1fc

    :catchall_235
    move-exception v3

    goto :goto_1fc

    :catchall_237
    move-exception v3

    move-object v4, v5

    goto :goto_1fc

    :cond_23a
    move-object v10, v5

    move v11, v6

    goto/16 :goto_75

    :cond_23e
    move-object v10, v4

    move v11, v6

    goto/16 :goto_75

    :cond_242
    move-wide v3, v2

    goto/16 :goto_19
.end method

.method private importPlaylists()V
    .registers 14

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 908
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 910
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_30

    .line 911
    invoke-direct {p0, v10}, Lcom/google/android/music/store/MediaStoreImporter;->getLocalPlaylistsFromMusicStore(Ljava/util/Map;)V

    .line 917
    :goto_12
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 919
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 925
    if-nez v1, :cond_39

    .line 926
    :try_start_25
    const-string v0, "MediaStoreImporter"

    const-string v2, "Failed to get the playlist cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_aa

    .line 1020
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1029
    :cond_2f
    :goto_2f
    return-void

    .line 914
    :cond_30
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/PlayList;->deleteAllMediaStorePlaylists(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_12

    .line 929
    :cond_39
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 930
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_59

    const-string v2, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of playlists in MediaStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_59
    if-ge v0, v6, :cond_74

    .line 934
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_aa

    .line 1020
    :cond_5e
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1023
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1026
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_2f

    .line 936
    :cond_74
    :goto_74
    :try_start_74
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 938
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 939
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 944
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 946
    :cond_8f
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 947
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 964
    :cond_9a
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_af

    .line 965
    :cond_a2
    const-string v0, "MediaStoreImporter"

    const-string v2, "Skipping import of playlist with empty name"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_74 .. :try_end_a9} :catchall_aa

    goto :goto_74

    .line 1020
    :catchall_aa
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 971
    :cond_af
    :try_start_af
    invoke-direct {p0, v0}, Lcom/google/android/music/store/MediaStoreImporter;->haveNonMediaStorePlaylist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 972
    const-string v2, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping import of playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " because non-media store playlist with same name "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "already exits"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_af .. :try_end_d9} :catchall_aa

    goto :goto_74

    .line 993
    :cond_da
    :try_start_da
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    const-string v2, "external"

    invoke-static {v2, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    invoke-static/range {v4 .. v9}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_12b

    move-result-object v9

    .line 1002
    if-eqz v9, :cond_109

    :try_start_ee
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_109

    .line 1003
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v4, p0

    move-wide v5, v11

    move-object v7, v0

    .line 1005
    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/store/MediaStoreImporter;->importPlaylist(JLjava/lang/String;Ljava/lang/Long;Landroid/database/Cursor;)V
    :try_end_104
    .catchall {:try_start_ee .. :try_end_104} :catchall_126

    .line 1014
    :cond_104
    :goto_104
    :try_start_104
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_aa

    goto/16 :goto_74

    .line 1008
    :cond_109
    :try_start_109
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_104

    .line 1009
    const-string v2, "MediaStoreImporter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping import of empty playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_109 .. :try_end_125} :catchall_126

    goto :goto_104

    .line 1014
    :catchall_126
    move-exception v0

    :goto_127
    :try_start_127
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
    :try_end_12b
    .catchall {:try_start_127 .. :try_end_12b} :catchall_aa

    :catchall_12b
    move-exception v0

    move-object v9, v3

    goto :goto_127
.end method

.method private matchPreviouslyImportedPlaylistItems(Landroid/database/Cursor;J)J
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 1196
    const-wide/16 v8, 0x0

    .line 1198
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1200
    :try_start_9
    const-string v1, "LISTITEMS"

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->MUSIC_STORE_PLAYLIST_ITEM_COLUMNS:[Ljava/lang/String;

    const-string v3, "ListId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ServerOrder, ClientPosition"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_6c

    move-result-object v3

    .line 1207
    if-eqz v3, :cond_6f

    .line 1208
    :cond_23
    :try_start_23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1209
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1210
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1212
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1214
    cmp-long v1, v1, v4

    if-eqz v1, :cond_23

    .line 1217
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1218
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1229
    :cond_43
    :goto_43
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1230
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1231
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_53
    .catchall {:try_start_23 .. :try_end_53} :catchall_61

    move-result-wide v1

    .line 1237
    :goto_54
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1238
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1241
    return-wide v1

    .line 1224
    :cond_5d
    :try_start_5d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_43

    .line 1237
    :catchall_61
    move-exception v1

    move-object v2, v3

    :goto_63
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1238
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1237
    :catchall_6c
    move-exception v1

    move-object v2, v10

    goto :goto_63

    :cond_6f
    move-wide v1, v8

    goto :goto_54
.end method

.method private removeDeletedAudioFiles()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 714
    new-instance v9, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x40

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 715
    .local v9, selectionBuffer:Ljava/lang/StringBuffer;
    const-string v0, "SourceAccount"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_ID_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 720
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_96

    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 728
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    :goto_48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 731
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_5d

    goto :goto_48

    .line 740
    :catchall_5d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 734
    :cond_62
    :try_start_62
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 735
    .local v8, length:I
    add-int/lit8 v0, v8, -0x1

    const-string v1, ")"

    invoke-virtual {v9, v0, v8, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5d

    .line 740
    .end local v8           #length:I
    :goto_6d
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 744
    const/4 v10, 0x0

    .line 745
    .local v10, success:Z
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 747
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_77
    const-string v0, "MUSIC"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_9e

    .line 748
    const/4 v10, 0x1

    .line 750
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, v7, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 753
    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    if-lez v0, :cond_95

    .line 754
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 756
    :cond_95
    return-void

    .line 737
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #success:Z
    :cond_96
    :try_start_96
    const-string v0, "MediaStoreImporter"

    const-string v1, "Deleting all local music"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_5d

    goto :goto_6d

    .line 750
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #success:Z
    :catchall_9e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v7, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v0
.end method

.method static requestMediaStoreVersionCheck(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 409
    const-string v2, "store.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 410
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "media.store.import.db.version.check"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 413
    return-void
.end method

.method private setGenre(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "genreName"
    .parameter "genreId"
    .parameter "canonicalGenreName"
    .parameter "ids"

    .prologue
    .line 890
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 891
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "Genre"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v2, "GenreId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 893
    const-string v2, "CanonicalGenre"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GenreId=0 AND SourceAccount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SourceId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, where:Ljava/lang/String;
    const-string v2, "MUSIC"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method static setLocalMusicAlbumArtistBasedOnRemoteDup(Landroid/content/Context;)I
    .registers 15
    .parameter

    .prologue
    .line 1304
    sget-object v0, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1307
    const/4 v0, 0x0

    .line 1407
    :goto_9
    return v0

    .line 1314
    :cond_a
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 1315
    const/4 v0, 0x0

    .line 1317
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1320
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT DISTINCT local.Id, remote.AlbumArtist FROM MUSIC as local, MUSIC as remote  WHERE local.CanonicalName=remote.CanonicalName AND local.CanonicalAlbum=remote.CanonicalAlbum AND local.DiscNumber=remote.DiscNumber AND local.TrackNumber=remote.TrackNumber AND abs(local.Duration - remote.Duration) < 5000 AND local.SourceAccount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "local."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AlbumArtistOrigin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "local."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AlbumArtistId"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "remote."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SourceAccount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "remote."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AlbumArtistOrigin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1361
    if-eqz v4, :cond_a3

    .line 1362
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_a2
    .catchall {:try_start_13 .. :try_end_a2} :catchall_12d

    move-result v0

    .line 1365
    :cond_a3
    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1368
    const/4 v2, 0x0

    .line 1369
    const/4 v1, 0x0

    .line 1370
    const/4 v5, 0x0

    .line 1372
    if-lez v0, :cond_14e

    .line 1373
    :try_start_ab
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1374
    invoke-static {v2}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_141

    move-result-object v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    .line 1376
    :goto_b6
    :try_start_b6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1377
    new-instance v7, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v7}, Lcom/google/android/music/store/MusicFile;-><init>()V
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_143

    .line 1378
    const/4 v0, 0x0

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    .line 1379
    :cond_c3
    :goto_c3
    :try_start_c3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_132

    .line 1380
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1381
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_c3 .. :try_end_d2} :catchall_11c

    move-result-object v10

    .line 1383
    :try_start_d3
    invoke-virtual {v7, v0, v8, v9}, Lcom/google/android/music/store/MusicFile;->load(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1384
    invoke-virtual {v7, v10}, Lcom/google/android/music/store/MusicFile;->forceAlbumArtist(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v7, v2, v0}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1386
    add-int/lit8 v1, v1, 0x1

    .line 1387
    invoke-interface {v4}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-nez v10, :cond_e8

    rem-int/lit16 v10, v1, 0x200

    if-nez v10, :cond_c3

    .line 1388
    :cond_e8
    const/4 v10, 0x1

    invoke-virtual {v3, v0, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_ec
    .catchall {:try_start_d3 .. :try_end_ec} :catchall_11c
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_d3 .. :try_end_ec} :catch_fc

    .line 1389
    const/4 v0, 0x0

    .line 1390
    :try_start_ed
    sget-object v10, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1391
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_148
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_ed .. :try_end_f7} :catch_fc

    move-result-object v0

    .line 1392
    :try_start_f8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_11c
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_c3

    .line 1394
    :catch_fc
    move-exception v10

    .line 1395
    :try_start_fd
    const-string v10, "MediaStoreImporter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Local music file with id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disappeared"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_fd .. :try_end_11b} :catchall_11c

    goto :goto_c3

    .line 1400
    :catchall_11c
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    :goto_121
    if-eqz v2, :cond_126

    .line 1401
    invoke-virtual {v3, v2, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1403
    :cond_126
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1404
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1365
    :catchall_12d
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 1398
    :cond_132
    const/4 v5, 0x1

    .line 1400
    if-eqz v0, :cond_138

    .line 1401
    invoke-virtual {v3, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1403
    :cond_138
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1404
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v1

    .line 1407
    goto/16 :goto_9

    .line 1400
    :catchall_141
    move-exception v0

    goto :goto_121

    :catchall_143
    move-exception v0

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_121

    :catchall_148
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    goto :goto_121

    :cond_14e
    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    goto/16 :goto_b6
.end method

.method public static updateLocalMusicBasedOnRemoteContentAsync(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 1414
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 1416
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    new-instance v2, Lcom/google/android/music/store/MediaStoreImporter$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/MediaStoreImporter$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 1423
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1424
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1425
    return-void
.end method


# virtual methods
.method declared-synchronized doImport(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 195
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    .line 207
    iput-object p1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 209
    invoke-static {p1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    .line 214
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->createDatabase()V

    .line 216
    invoke-direct {p0}, Lcom/google/android/music/store/MediaStoreImporter;->importNow()Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_42

    move-result v0

    .line 219
    const/4 v1, 0x0

    :try_start_38
    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_4d

    monitor-exit p0

    return v0

    .line 219
    :catchall_42
    move-exception v0

    const/4 v1, 0x0

    :try_start_44
    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    throw v0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4d

    .line 195
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invalidateMediaStoreImport(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1289
    const-string v1, "store.preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1290
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "media.store.import.time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1291
    const-string v1, "media.store.import.version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1292
    const-string v1, "media.store.import.fs_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1294
    return-void
.end method
