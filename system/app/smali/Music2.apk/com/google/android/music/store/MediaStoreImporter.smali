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
    .line 636
    .local p1, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-nez p2, :cond_3

    .line 674
    :goto_2
    return-void

    .line 640
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 641
    .local v6, savedPosition:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, p3, :cond_7b

    .line 642
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 643
    const/16 v7, 0xb

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 644
    .local v4, mediaStoreAlbumId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_47

    .line 645
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, hasAlbumArt:Z
    const/4 v1, 0x0

    .line 649
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

    .line 652
    if-eqz v1, :cond_4a

    const/4 v2, 0x1

    .line 657
    :goto_37
    if-eqz v1, :cond_3c

    .line 658
    :try_start_39
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_4c

    .line 664
    :cond_3c
    :goto_3c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #hasAlbumArt:Z
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 652
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #hasAlbumArt:Z
    :cond_4a
    const/4 v2, 0x0

    goto :goto_37

    .line 660
    :catch_4c
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 653
    .end local v0           #e:Ljava/lang/Exception;
    :catch_57
    move-exception v7

    .line 657
    if-eqz v1, :cond_3c

    .line 658
    :try_start_5a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_3c

    .line 660
    :catch_5e
    move-exception v0

    .line 661
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 656
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_69
    move-exception v7

    .line 657
    if-eqz v1, :cond_6f

    .line 658
    :try_start_6c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 662
    :cond_6f
    :goto_6f
    throw v7

    .line 660
    :catch_70
    move-exception v0

    .line 661
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "MediaStoreImporter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    .line 673
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

    .line 722
    const/4 v6, 0x0

    .line 723
    .local v6, count:I
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->COUNT_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 728
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1c

    :try_start_11
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 729
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    move-result v6

    .line 732
    :cond_1c
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 735
    return v6

    .line 732
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

    .line 1232
    .line 1233
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1235
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

    .line 1238
    if-eqz v2, :cond_48

    .line 1239
    :goto_22
    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1240
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

    .line 1244
    :catchall_3e
    move-exception v1

    :goto_3f
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1245
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1244
    :cond_48
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1245
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1247
    return-void

    .line 1244
    :catchall_51
    move-exception v1

    move-object v2, v8

    goto :goto_3f
.end method

.method private getMediaDbVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 388
    .local v0, version:Ljava/lang/String;
    :goto_8
    return-object v0

    .line 386
    .end local v0           #version:Ljava/lang/String;
    :cond_9
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .restart local v0       #version:Ljava/lang/String;
    goto :goto_8
.end method

.method private getMediaStoreAudioCursor(Z)Landroid/database/Cursor;
    .registers 16
    .parameter "getAlbumArtist"

    .prologue
    const-wide/16 v12, 0x0

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, selectionParams:[Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_37

    .line 426
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, time:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionParams:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v0, 0x1

    aput-object v9, v4, v0

    .line 428
    .restart local v4       #selectionParams:[Ljava/lang/String;
    const-string v3, "(is_music=1 OR is_podcast=1)  AND (date_added >=?  OR date_modified >=?  )"

    .line 438
    .end local v9           #time:Ljava/lang/String;
    .local v3, audioSelection:Ljava/lang/String;
    :goto_1d
    const/4 v6, 0x0

    .line 439
    .local v6, count:I
    const/4 v7, 0x0

    .line 441
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_3a

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS_WITH_ALBUM_ARTIST:[Ljava/lang/String;

    :goto_27
    const-string v5, "date_added"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 448
    if-nez v7, :cond_3d

    .line 449
    const-string v0, "MediaStoreImporter"

    const-string v1, "Failed to get the cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_36} :catch_64

    .line 470
    :cond_36
    :goto_36
    return-object v7

    .line 435
    .end local v3           #audioSelection:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_37
    const-string v3, "is_music=1 OR is_podcast=1"

    .restart local v3       #audioSelection:Ljava/lang/String;
    goto :goto_1d

    .line 441
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3a
    :try_start_3a
    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_COLUMNS:[Ljava/lang/String;

    goto :goto_27

    .line 453
    :cond_3d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 454
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v0, :cond_36

    .line 455
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_73

    .line 456
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

    .line 462
    :catch_64
    move-exception v8

    .line 463
    .local v8, e:Ljava/lang/RuntimeException;
    if-nez p1, :cond_6e

    .line 464
    const-string v0, "MediaStoreImporter"

    const-string v1, "Exception while executing media store query"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :cond_6e
    invoke-static {v7}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 467
    const/4 v7, 0x0

    goto :goto_36

    .line 458
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

.method private static getMediaStoreFsId(Landroid/content/ContentResolver;)J
    .registers 10
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 399
    const-wide/16 v7, 0x0

    .line 400
    .local v7, fsId:J
    sget-object v1, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_FS_ID_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 404
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    move-result-wide v7

    .line 407
    :cond_1b
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 409
    return-wide v7

    .line 407
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

    .line 994
    .line 995
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 997
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

    .line 1002
    if-eqz v2, :cond_30

    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_45

    move-result v1

    if-eqz v1, :cond_30

    .line 1008
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1009
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v9

    :goto_2f
    return v0

    .line 1008
    :cond_30
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1009
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v10

    goto :goto_2f

    .line 1008
    :catchall_3a
    move-exception v1

    move-object v2, v11

    :goto_3c
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1009
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1008
    :catchall_45
    move-exception v1

    goto :goto_3c
.end method

.method private importAudioFiles(Landroid/database/Cursor;)V
    .registers 27
    .parameter "cursor"

    .prologue
    .line 475
    const/16 v17, 0x0

    .line 476
    .local v17, success:Z
    const/4 v11, 0x0

    .line 477
    .local v11, musicInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v12, 0x0

    .line 478
    .local v12, musicUpdate:Landroid/database/sqlite/SQLiteStatement;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v3, albumArtPresence:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 482
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1e
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 483
    .local v8, importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v4}, Lcom/google/android/music/store/MusicFile;->compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 484
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_37

    .line 485
    invoke-static {v4}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 488
    :cond_37
    new-instance v13, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v13}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 489
    .local v13, normalizer:Lcom/google/android/music/store/TagNormalizer;
    new-instance v7, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v7}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 490
    .local v7, file:Lcom/google/android/music/store/MusicFile;
    invoke-virtual {v7, v13}, Lcom/google/android/music/store/MusicFile;->setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V

    .line 492
    const/16 v20, 0x1

    .line 493
    .local v20, updateRecentItems:Z
    const/16 v19, 0x0

    .line 496
    .local v19, uncommittedChanges:Z
    :cond_48
    :goto_48
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_2d1

    .line 498
    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->reset()V

    .line 499
    const-wide/16 v14, -0x1

    .line 501
    .local v14, sourceId:J
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setSourceAccount(I)V

    .line 502
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 503
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 504
    .local v16, sourceIdStr:Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_86

    .line 508
    sget-object v21, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v4, v0, v1, v7}, Lcom/google/android/music/store/MusicFile;->readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    .line 513
    :cond_86
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setSourceId(Ljava/lang/String;)V

    .line 514
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 515
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 516
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setComposer(Ljava/lang/String;)V

    .line 518
    const/16 v21, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    mul-long v21, v21, v23

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setAddedTime(J)V

    .line 519
    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setDurationInMilliSec(J)V

    .line 520
    const/16 v21, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setMimeType(Ljava/lang/String;)V

    .line 521
    const/16 v21, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/MusicFile;->setSize(J)V

    .line 522
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTitle(Ljava/lang/String;)V

    .line 523
    const/4 v5, 0x0

    .line 524
    .local v5, discNumber:S
    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    .line 526
    .local v18, track:S
    const/16 v21, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_132

    .line 527
    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v5, v0

    .line 528
    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v18, v0

    .line 530
    :cond_132
    invoke-virtual {v7, v5}, Lcom/google/android/music/store/MusicFile;->setDiscPosition(S)V

    .line 531
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackPositionInAlbum(S)V

    .line 532
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setYear(S)V

    .line 533
    sget-object v21, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    if-eqz v21, :cond_160

    .line 534
    const/16 v21, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V

    .line 536
    :cond_160
    const/16 v21, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 537
    .local v9, mediaStoreAlbumId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v9, v21

    if-eqz v21, :cond_28f

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_28f

    .line 538
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

    .line 550
    :goto_19c
    const/16 v21, 0x12c

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setLocalCopyType(I)V

    .line 553
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getAlbumName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b6

    .line 554
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumName(Ljava/lang/String;)V

    .line 556
    :cond_1b6
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getTrackArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c9

    .line 557
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;)V

    .line 562
    :cond_1c9
    const-string v21, "<unknown>"

    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getAlbumArtist()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1dc

    .line 563
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1e .. :try_end_1dc} :catchall_27a

    .line 567
    :cond_1dc
    :try_start_1dc
    invoke-virtual {v7}, Lcom/google/android/music/store/MusicFile;->getLocalId()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_298

    .line 568
    invoke-virtual {v7, v12, v4}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedMusicCount:I
    :try_end_1f7
    .catchall {:try_start_1dc .. :try_end_1f7} :catchall_27a
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1f7} :catch_2ab

    .line 574
    :goto_1f7
    const/16 v19, 0x1

    .line 579
    :goto_1f9
    if-eqz v19, :cond_48

    :try_start_1fb
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v21

    if-nez v21, :cond_217

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

    .line 584
    :cond_217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 585
    const/16 v19, 0x0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 588
    if-eqz v20, :cond_254

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->countRecentItems(Landroid/content/Context;)I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2ce

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItems(Landroid/content/Context;)V

    .line 597
    :cond_254
    :goto_254
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/google/android/music/store/MediaStoreImporter;->importMediaStoreGenre(Lcom/google/android/music/store/TagNormalizer;Ljava/util/HashSet;)V

    .line 598
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 600
    const/16 v21, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/store/MediaStoreImporter;->collectMediaStoreAlbumArtPresence(Ljava/util/HashMap;Landroid/database/Cursor;I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 604
    const-wide/16 v21, 0xc8

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_278
    .catchall {:try_start_1fb .. :try_end_278} :catchall_27a

    goto/16 :goto_48

    .line 610
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
    :catchall_27a
    move-exception v21

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 611
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v21

    .line 541
    .restart local v5       #discNumber:S
    .restart local v7       #file:Lcom/google/android/music/store/MusicFile;
    .restart local v8       #importedAudioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v9       #mediaStoreAlbumId:J
    .restart local v13       #normalizer:Lcom/google/android/music/store/TagNormalizer;
    .restart local v14       #sourceId:J
    .restart local v16       #sourceIdStr:Ljava/lang/String;
    .restart local v18       #track:S
    .restart local v19       #uncommittedChanges:Z
    .restart local v20       #updateRecentItems:Z
    :cond_28f
    const/16 v21, 0x0

    :try_start_291
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtLocation(Ljava/lang/String;)V
    :try_end_296
    .catchall {:try_start_291 .. :try_end_296} :catchall_27a

    goto/16 :goto_19c

    .line 571
    :cond_298
    :try_start_298
    invoke-virtual {v7, v11}, Lcom/google/android/music/store/MusicFile;->insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J

    .line 572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/store/MediaStoreImporter;->mAddedMusicCount:I
    :try_end_2a9
    .catchall {:try_start_298 .. :try_end_2a9} :catchall_27a
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2a9} :catch_2ab

    goto/16 :goto_1f7

    .line 575
    :catch_2ab
    move-exception v6

    .line 576
    .local v6, e:Ljava/lang/Exception;
    :try_start_2ac
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
    :try_end_2cc
    .catchall {:try_start_2ac .. :try_end_2cc} :catchall_27a

    goto/16 :goto_1f9

    .line 593
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2ce
    const/16 v20, 0x0

    goto :goto_254

    .line 607
    .end local v5           #discNumber:S
    .end local v9           #mediaStoreAlbumId:J
    .end local v14           #sourceId:J
    .end local v16           #sourceIdStr:Ljava/lang/String;
    .end local v18           #track:S
    :cond_2d1
    const/16 v17, 0x1

    .line 610
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 611
    invoke-static {v12}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 614
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
    .line 748
    .local p2, audioIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 848
    :goto_8
    return-void

    .line 753
    :cond_9
    const/16 v17, 0x0

    .line 754
    .local v17, howManyGenres:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 757
    .local v13, genreCursor:Landroid/database/Cursor;
    if-nez v13, :cond_27

    .line 758
    :try_start_1c
    const-string v2, "MediaStoreImporter"

    const-string v4, "Failed to get the genre cursor"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_c8

    .line 846
    invoke-static {v13}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_8

    .line 761
    :cond_27
    :try_start_27
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 762
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

    .line 765
    :cond_49
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v2

    mul-int/lit8 v12, v2, 0x6

    .line 766
    .local v12, bufferSize:I
    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 767
    .local v20, selectionBuffer:Ljava/lang/StringBuffer;
    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 768
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

    .line 769
    :cond_6b
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 770
    .local v14, genreId:J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 772
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

    .line 778
    invoke-static/range {v16 .. v16}, Lcom/google/android/music/utils/MusicTagUtils;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 780
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/music/store/Store;->canonicalizeAndGenerateId(Lcom/google/android/music/store/TagNormalizer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 783
    .local v18, idAndCanonicalValue:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_a7

    .line 784
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 789
    :cond_a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "external"

    invoke-static {v4, v14, v15}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/store/MediaStoreImporter;->GENRE_MEMBER_COLUMNS:[Ljava/lang/String;

    if-nez v20, :cond_cd

    const/4 v5, 0x0

    :goto_b6
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_bb
    .catchall {:try_start_27 .. :try_end_bb} :catchall_c8

    move-result-object v19

    .line 797
    .local v19, memberCursor:Landroid/database/Cursor;
    if-eqz v19, :cond_c4

    :try_start_be
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_18d

    move-result v2

    if-nez v2, :cond_d2

    .line 842
    :cond_c4
    :try_start_c4
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_c8

    goto :goto_5d

    .line 846
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

    .line 789
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

    .line 801
    .restart local v19       #memberCursor:Landroid/database/Cursor;
    :cond_d2
    const/4 v2, 0x0

    :try_start_d3
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 802
    :cond_d8
    :goto_d8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 803
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 804
    .local v10, audioId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v10, v4

    if-eqz v2, :cond_d8

    .line 805
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

    .line 806
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 809
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 824
    .end local v10           #audioId:J
    :cond_11b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_16a

    .line 826
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 827
    const/16 v21, 0x0

    .line 828
    .local v21, success:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_135
    .catchall {:try_start_d3 .. :try_end_135} :catchall_18d

    move-result-object v3

    .line 830
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

    .line 833
    const/16 v21, 0x1

    .line 835
    :try_start_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 837
    if-eqz v21, :cond_16a

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_16a
    .catchall {:try_start_154 .. :try_end_16a} :catchall_18d

    .line 842
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v21           #success:Z
    :cond_16a
    :try_start_16a
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_c8

    goto/16 :goto_5d

    .line 818
    .restart local v10       #audioId:J
    :cond_16f
    :try_start_16f
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_d8

    .line 819
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

    .line 842
    .end local v10           #audioId:J
    :catchall_18d
    move-exception v2

    :try_start_18e
    invoke-static/range {v19 .. v19}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2
    :try_end_192
    .catchall {:try_start_18e .. :try_end_192} :catchall_c8

    .line 835
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

    .line 846
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

    iget-object v0, v0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/music/store/MediaStoreImporter;->getMediaStoreFsId(Landroid/content/ContentResolver;)J

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
    .line 1026
    new-instance v7, Lcom/google/android/music/store/PlayList;

    invoke-direct {v7}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 1027
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1028
    const-wide/16 v2, 0x0

    .line 1030
    const/4 v6, 0x0

    .line 1032
    if-eqz p4, :cond_242

    .line 1033
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/music/store/MediaStoreImporter;->matchPreviouslyImportedPlaylistItems(Landroid/database/Cursor;J)J

    move-result-wide v2

    move-wide v3, v2

    .line 1037
    :goto_19
    const/4 v12, 0x0

    .line 1038
    const/4 v5, 0x0

    .line 1039
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1041
    if-nez p4, :cond_b9

    .line 1043
    :try_start_23
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1044
    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Lcom/google/android/music/store/PlayList;->setMediaStoreId(J)V

    .line 1045
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/google/android/music/store/PlayList;->setSourceAccount(I)V

    .line 1046
    invoke-virtual {v7, v8}, Lcom/google/android/music/store/PlayList;->setSourceId(Ljava/lang/String;)V

    .line 1048
    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_232

    move-result-object v4

    .line 1049
    :try_start_38
    invoke-virtual {v7, v4}, Lcom/google/android/music/store/PlayList;->insertList(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1050
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mCreatedPlaylistCount:I

    .line 1052
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_23e

    .line 1053
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

    .line 1106
    :goto_75
    :try_start_75
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1d8

    .line 1107
    sget-boolean v3, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v3, :cond_9f

    .line 1108
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

    .line 1128
    :cond_9f
    :goto_9f
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_1fa

    .line 1129
    const/4 v3, 0x1

    .line 1132
    invoke-static {v10}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1133
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1137
    if-nez p4, :cond_228

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 1139
    :goto_b1
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1141
    :goto_b8
    return-void

    .line 1060
    :cond_b9
    :try_start_b9
    sget-object v9, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-static {v2, v9, v8, v7}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v9

    if-nez v9, :cond_fa

    .line 1063
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

    .line 1132
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1133
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_b8

    .line 1067
    :cond_fa
    :try_start_fa
    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getMediaStoreId()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v9, v9, v13

    if-nez v9, :cond_13e

    .line 1068
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

    .line 1132
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1133
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_b8

    .line 1072
    :cond_13e
    :try_start_13e
    invoke-virtual {v7}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_185

    .line 1073
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

    .line 1075
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 1076
    invoke-static {v2}, Lcom/google/android/music/store/PlayList;->compilePlayListUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_17a
    .catchall {:try_start_13e .. :try_end_17a} :catchall_232

    move-result-object v5

    .line 1077
    :try_start_17b
    invoke-virtual {v7, v5}, Lcom/google/android/music/store/PlayList;->update(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1078
    iget v6, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    .line 1079
    const/4 v6, 0x1

    .line 1082
    :cond_185
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_23a

    .line 1083
    const/4 v8, 0x0

    invoke-static {v2, v3, v4, v8}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;JLcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v3

    .line 1084
    if-nez v3, :cond_1a3

    .line 1085
    const-string v3, "MediaStoreImporter"

    const-string v4, "Unexpected disappearance of the item from the playlist."

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catchall {:try_start_17b .. :try_end_199} :catchall_237

    .line 1132
    invoke-static {v5}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1133
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_b8

    .line 1090
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

    .line 1097
    iget v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistItemCount:I

    .line 1098
    if-lez v3, :cond_23a

    if-nez v6, :cond_23a

    .line 1099
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I
    :try_end_1d3
    .catchall {:try_start_1a3 .. :try_end_1d3} :catchall_237

    .line 1100
    const/4 v3, 0x1

    move-object v10, v5

    move v11, v3

    goto/16 :goto_75

    .line 1111
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

    .line 1116
    if-lez v3, :cond_205

    .line 1117
    iget v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mInsertedPlaylistItemCount:I

    .line 1122
    :cond_1ee
    :goto_1ee
    if-eqz p4, :cond_9f

    if-nez v11, :cond_9f

    .line 1123
    iget v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mUpdatedPlaylistCount:I
    :try_end_1f8
    .catchall {:try_start_1d8 .. :try_end_1f8} :catchall_1fa

    goto/16 :goto_9f

    .line 1132
    :catchall_1fa
    move-exception v3

    move-object v4, v10

    :goto_1fc
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1133
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v4, v2, v12}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v3

    .line 1118
    :cond_205
    if-gez v3, :cond_1ee

    .line 1119
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

    .line 1137
    :cond_228
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_b1

    .line 1132
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

    .line 871
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 873
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_30

    .line 874
    invoke-direct {p0, v10}, Lcom/google/android/music/store/MediaStoreImporter;->getLocalPlaylistsFromMusicStore(Ljava/util/Map;)V

    .line 880
    :goto_12
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mImportChangesSinceDate:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 882
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 887
    if-nez v1, :cond_39

    .line 888
    :try_start_25
    const-string v0, "MediaStoreImporter"

    const-string v2, "Failed to get the playlist cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_aa

    .line 982
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 991
    :cond_2f
    :goto_2f
    return-void

    .line 877
    :cond_30
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/PlayList;->deleteAllMediaStorePlaylists(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_12

    .line 891
    :cond_39
    :try_start_39
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 892
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

    .line 895
    :cond_59
    if-ge v0, v6, :cond_74

    .line 896
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_aa

    .line 982
    :cond_5e
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 985
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 988
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/store/PlayList;->deletePlaylistsAndItems(Landroid/content/Context;Ljava/util/Collection;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedPlaylistCount:I

    goto :goto_2f

    .line 898
    :cond_74
    :goto_74
    :try_start_74
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 900
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 901
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 906
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 908
    :cond_8f
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 909
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 926
    :cond_9a
    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_af

    .line 927
    :cond_a2
    const-string v0, "MediaStoreImporter"

    const-string v2, "Skipping import of playlist with empty name"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_74 .. :try_end_a9} :catchall_aa

    goto :goto_74

    .line 982
    :catchall_aa
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 933
    :cond_af
    :try_start_af
    invoke-direct {p0, v0}, Lcom/google/android/music/store/MediaStoreImporter;->haveNonMediaStorePlaylist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 934
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

    .line 955
    :cond_da
    :try_start_da
    iget-object v4, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "external"

    invoke-static {v2, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/store/MediaStoreImporter;->MEDIA_STORE_PLAYLIST_MEMBER_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_eb
    .catchall {:try_start_da .. :try_end_eb} :catchall_12b

    move-result-object v9

    .line 964
    if-eqz v9, :cond_109

    :try_start_ee
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_109

    .line 965
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v4, p0

    move-wide v5, v11

    move-object v7, v0

    .line 967
    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/store/MediaStoreImporter;->importPlaylist(JLjava/lang/String;Ljava/lang/Long;Landroid/database/Cursor;)V
    :try_end_104
    .catchall {:try_start_ee .. :try_end_104} :catchall_126

    .line 976
    :cond_104
    :goto_104
    :try_start_104
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_aa

    goto/16 :goto_74

    .line 970
    :cond_109
    :try_start_109
    sget-boolean v2, Lcom/google/android/music/store/MediaStoreImporter;->LOGV:Z

    if-eqz v2, :cond_104

    .line 971
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

    .line 976
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

    .line 1158
    const-wide/16 v8, 0x0

    .line 1160
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1162
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

    .line 1169
    if-eqz v3, :cond_6f

    .line 1170
    :cond_23
    :try_start_23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1171
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1172
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1174
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1176
    cmp-long v1, v1, v4

    if-eqz v1, :cond_23

    .line 1179
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1180
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1191
    :cond_43
    :goto_43
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1192
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1193
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_53
    .catchall {:try_start_23 .. :try_end_53} :catchall_61

    move-result-wide v1

    .line 1199
    :goto_54
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1200
    iget-object v3, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v3, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1203
    return-wide v1

    .line 1186
    :cond_5d
    :try_start_5d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_43

    .line 1199
    :catchall_61
    move-exception v1

    move-object v2, v3

    :goto_63
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1200
    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 1199
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

    .line 677
    new-instance v9, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mAudioFilesInMediaStoreCount:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x40

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 678
    .local v9, selectionBuffer:Ljava/lang/StringBuffer;
    const-string v0, "SourceAccount"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 680
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MediaStoreImporter;->AUDIO_ID_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_music=1 OR is_podcast=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 683
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_96

    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 691
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 693
    :goto_48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 694
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

    .line 703
    :catchall_5d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 697
    :cond_62
    :try_start_62
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    .line 698
    .local v8, length:I
    add-int/lit8 v0, v8, -0x1

    const-string v1, ")"

    invoke-virtual {v9, v0, v8, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_5d

    .line 703
    .end local v8           #length:I
    :goto_6d
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 707
    const/4 v10, 0x0

    .line 708
    .local v10, success:Z
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 710
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

    .line 711
    const/4 v10, 0x1

    .line 713
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, v7, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 716
    iget v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mDeletedMusicCount:I

    if-lez v0, :cond_95

    .line 717
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 719
    :cond_95
    return-void

    .line 700
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

    .line 713
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
    .line 392
    const-string v2, "store.preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 393
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 394
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "media.store.import.db.version.check"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 396
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
    .line 853
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 854
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "Genre"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v2, "GenreId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 856
    const-string v2, "CanonicalGenre"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
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

    .line 862
    .local v1, where:Ljava/lang/String;
    const-string v2, "MUSIC"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    return-void
.end method

.method static setLocalMusicAlbumArtistBasedOnRemoteDup(Landroid/content/Context;)I
    .registers 15
    .parameter

    .prologue
    .line 1266
    sget-object v0, Lcom/google/android/music/store/MediaStoreImporter;->sHasAlbumArtist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1269
    const/4 v0, 0x0

    .line 1369
    :goto_9
    return v0

    .line 1276
    :cond_a
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 1277
    const/4 v0, 0x0

    .line 1279
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1282
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

    .line 1323
    if-eqz v4, :cond_a3

    .line 1324
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_a2
    .catchall {:try_start_13 .. :try_end_a2} :catchall_12d

    move-result v0

    .line 1327
    :cond_a3
    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1330
    const/4 v2, 0x0

    .line 1331
    const/4 v1, 0x0

    .line 1332
    const/4 v5, 0x0

    .line 1334
    if-lez v0, :cond_14e

    .line 1335
    :try_start_ab
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1336
    invoke-static {v2}, Lcom/google/android/music/store/MusicFile;->compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_141

    move-result-object v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v13

    .line 1338
    :goto_b6
    :try_start_b6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1339
    new-instance v7, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v7}, Lcom/google/android/music/store/MusicFile;-><init>()V
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_143

    .line 1340
    const/4 v0, 0x0

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    .line 1341
    :cond_c3
    :goto_c3
    :try_start_c3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_132

    .line 1342
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1343
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_c3 .. :try_end_d2} :catchall_11c

    move-result-object v10

    .line 1345
    :try_start_d3
    invoke-virtual {v7, v0, v8, v9}, Lcom/google/android/music/store/MusicFile;->load(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1346
    invoke-virtual {v7, v10}, Lcom/google/android/music/store/MusicFile;->forceAlbumArtist(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v7, v2, v0}, Lcom/google/android/music/store/MusicFile;->updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1348
    add-int/lit8 v1, v1, 0x1

    .line 1349
    invoke-interface {v4}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-nez v10, :cond_e8

    rem-int/lit16 v10, v1, 0x200

    if-nez v10, :cond_c3

    .line 1350
    :cond_e8
    const/4 v10, 0x1

    invoke-virtual {v3, v0, v10}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_ec
    .catchall {:try_start_d3 .. :try_end_ec} :catchall_11c
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_d3 .. :try_end_ec} :catch_fc

    .line 1351
    const/4 v0, 0x0

    .line 1352
    :try_start_ed
    sget-object v10, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1353
    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_148
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_ed .. :try_end_f7} :catch_fc

    move-result-object v0

    .line 1354
    :try_start_f8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_11c
    .catch Lcom/google/android/music/store/DataNotFoundException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_c3

    .line 1356
    :catch_fc
    move-exception v10

    .line 1357
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

    .line 1362
    :catchall_11c
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    :goto_121
    if-eqz v2, :cond_126

    .line 1363
    invoke-virtual {v3, v2, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1365
    :cond_126
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1366
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1327
    :catchall_12d
    move-exception v0

    invoke-virtual {v3, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 1360
    :cond_132
    const/4 v5, 0x1

    .line 1362
    if-eqz v0, :cond_138

    .line 1363
    invoke-virtual {v3, v0, v5}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1365
    :cond_138
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1366
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v1

    .line 1369
    goto/16 :goto_9

    .line 1362
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
    .line 1376
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 1378
    .local v0, bgWorker:Landroid/os/Handler;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1380
    new-instance v2, Lcom/google/android/music/store/MediaStoreImporter$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/store/MediaStoreImporter$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 1385
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/store/MediaStoreImporter;->UPDATE_POST_SYNC_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1386
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1387
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
    .line 1251
    const-string v1, "store.preferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1252
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "media.store.import.time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1253
    const-string v1, "media.store.import.version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1254
    const-string v1, "media.store.import.fs_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1256
    return-void
.end method
