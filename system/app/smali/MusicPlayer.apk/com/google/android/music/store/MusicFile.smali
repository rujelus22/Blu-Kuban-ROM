.class public Lcom/google/android/music/store/MusicFile;
.super Lcom/google/android/music/store/Syncable;
.source "MusicFile.java"


# static fields
.field private static final DELETE_PROJECTION:[Ljava/lang/String;

.field static final FULL_PROJECTION:[Ljava/lang/String;

.field public static final MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

.field public static final MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

.field public static final PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String;

.field private static SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddedTime:J

.field private mAlbumArtLocation:Ljava/lang/String;

.field private mAlbumArtLocationChanged:Z

.field private mAlbumArtist:Ljava/lang/String;

.field private mAlbumArtistId:J

.field private mAlbumArtistOrigin:I

.field private mAlbumId:J

.field private mAlbumName:Ljava/lang/String;

.field private mBitrate:I

.field private mCanonicalAlbum:Ljava/lang/String;

.field private mCanonicalAlbumArtist:Ljava/lang/String;

.field private mCanonicalGenre:Ljava/lang/String;

.field private mCanonicalTitle:Ljava/lang/String;

.field private mCanonicalTrackArtist:Ljava/lang/String;

.field private mCompilation:Z

.field private mComposer:Ljava/lang/String;

.field private mDiscCount:S

.field private mDiscPosition:S

.field private mDurationInMilliSec:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mGenreId:J

.field private mLastPlayDate:J

.field private mLocalCopyBitrate:I

.field private mLocalCopyPath:Ljava/lang/String;

.field private mLocalCopySize:J

.field private mLocalCopyStorageType:I

.field private mLocalCopyType:I

.field private mLocalId:J

.field private mNormalizer:Lcom/google/android/music/store/TagNormalizer;

.field private mPlayCount:I

.field private mRating:I

.field private mSize:J

.field private mSongId:J

.field private mStoreAlbumId:Ljava/lang/String;

.field private mStoreSongId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrackArtist:Ljava/lang/String;

.field private mTrackArtistId:J

.field private mTrackArtistOrigin:I

.field private mTrackCountInAlbum:S

.field private mTrackPositionInAlbum:S

.field private mTrackType:I

.field private mYear:S


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

    .line 36
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MUSIC.Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "Size"

    aput-object v1, v0, v6

    const-string v1, "LocalCopyPath"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LocalCopyType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AlbumArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LocalCopyStorageType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MUSIC.Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "_sync_version"

    aput-object v1, v0, v6

    const-string v1, "Size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FileType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FileDate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LocalCopyPath"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LocalCopyType"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Album"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Artist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Composer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Genre"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Year"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Duration"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TrackCount"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TrackNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DiscCount"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DiscNumber"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Compilation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BitRate"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "AlbumArtLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SongId"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "AlbumId"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "AlbumArtistId"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GenreId"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CanonicalName"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CanonicalAlbum"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CanonicalAlbumArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CanonicalGenre"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PlayCount"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "LastPlayDate"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "AlbumArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "LocalCopySize"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "LocalCopyBitrate"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "TrackType"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ArtistOrigin"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ArtistId"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "CanonicalArtist"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Rating"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "StoreId"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "StoreAlbumId"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "LocalCopyStorageType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    .line 311
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "LocalCopyType"

    aput-object v1, v0, v4

    const-string v1, "LocalCopyPath"

    aput-object v1, v0, v5

    const-string v1, "LocalCopyStorageType"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    .line 322
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "SourceAccount"

    aput-object v1, v0, v4

    const-string v1, "SourceId"

    aput-object v1, v0, v5

    const-string v1, "PlayCount"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/store/MusicFile;->PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/google/android/music/store/Syncable;-><init>()V

    .line 339
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 341
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 344
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 347
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    .line 350
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 352
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 365
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 380
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    return-void
.end method

.method public static compileDeleteByLocalIdStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 1229
    const-string v0, "delete from MUSIC where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 923
    const-string v0, "update MUSIC set SourceAccount=?, SourceId=?, _sync_version=?, Size=?, FileType=?, FileDate=?, LocalCopyPath=?, LocalCopyType=?, Title=?, Album=?, Artist=?, AlbumArtist=?, AlbumArtistOrigin=?, Composer=?, Genre=?, Year=?, Duration=?, TrackCount=?, TrackNumber=?, DiscCount=?, DiscNumber=?, Compilation=?, BitRate=?, AlbumArtLocation=?, SongId=?, AlbumId=?, AlbumArtistId=?, GenreId=?, CanonicalName=?, CanonicalAlbum=?, CanonicalAlbumArtist=?, CanonicalGenre=?, PlayCount=?, LastPlayDate=?, LocalCopySize=?, LocalCopyBitrate=?, TrackType=?, ArtistOrigin=?, ArtistId=?, CanonicalArtist=?, Rating=?, _sync_dirty=?, StoreId=?,StoreAlbumId=?,LocalCopyStorageType=? where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 919
    const-string v0, "insert into MUSIC ( SourceAccount, SourceId, _sync_version, Size, FileType, FileDate, LocalCopyPath, LocalCopyType, Title, Album, Artist, AlbumArtist, AlbumArtistOrigin, Composer, Genre, Year, Duration, TrackCount, TrackNumber, DiscCount, DiscNumber, Compilation, BitRate, AlbumArtLocation, SongId, AlbumId, AlbumArtistId, GenreId, CanonicalName, CanonicalAlbum, CanonicalAlbumArtist, CanonicalGenre, PlayCount, LastPlayDate, LocalCopySize, LocalCopyBitrate, TrackType, ArtistOrigin, ArtistId, CanonicalArtist, Rating, _sync_dirty, StoreId, StoreAlbumId, LocalCopyStorageType) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Landroid/database/sqlite/SQLiteStatement;J)V
    .registers 4
    .parameter "deleteByLocalIdStatement"
    .parameter "localId"

    .prologue
    .line 1291
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1292
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1293
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1294
    return-void
.end method

.method public static final deleteAndGetLocalCacheFilepath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;
    .registers 22
    .parameter "context"
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 1241
    const/4 v15, 0x0

    .line 1242
    .local v15, id:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1243
    .local v13, file:Ljava/io/File;
    const-string v3, "MUSIC"

    sget-object v4, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    const-string v5, "SourceAccount=? AND SourceId=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    aput-object p3, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "1"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1251
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_55

    :try_start_22
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1252
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1253
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1255
    .local v12, cacheType:I
    const/16 v2, 0x12c

    if-eq v12, v2, :cond_55

    .line 1256
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_55

    .line 1257
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1258
    .local v14, filepath:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    .line 1259
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1261
    .local v17, storageType:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    :try_end_54
    .catchall {:try_start_22 .. :try_end_54} :catchall_7c

    move-result-object v13

    .line 1267
    .end local v12           #cacheType:I
    .end local v14           #filepath:Ljava/lang/String;
    .end local v17           #storageType:I
    :cond_55
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1270
    if-eqz v15, :cond_78

    .line 1271
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v15, v16, v2

    .line 1272
    .local v16, idArgs:[Ljava/lang/String;
    const-string v2, "MUSIC"

    const-string v3, "Id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1273
    const-string v2, "SHOULDKEEPON"

    const-string v3, "MusicId=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1276
    .end local v16           #idArgs:[Ljava/lang/String;
    :cond_78
    if-nez v13, :cond_81

    const/4 v2, 0x0

    :goto_7b
    return-object v2

    .line 1267
    :catchall_7c
    move-exception v2

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v2

    .line 1276
    :cond_81
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b
.end method

.method public static deleteByLocalId(Landroid/content/Context;J)V
    .registers 11
    .parameter "context"
    .parameter "localId"

    .prologue
    .line 1308
    const/4 v1, 0x0

    .line 1309
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 1310
    .local v3, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1311
    .local v2, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1313
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    invoke-static {v0}, Lcom/google/android/music/store/MusicFile;->compileDeleteByLocalIdStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1314
    invoke-static {v1, p1, p2}, Lcom/google/android/music/store/MusicFile;->delete(Landroid/database/sqlite/SQLiteStatement;J)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 1315
    const/4 v3, 0x1

    .line 1317
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1318
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1321
    if-eqz v3, :cond_25

    .line 1322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1325
    :cond_25
    return-void

    .line 1317
    :catchall_26
    move-exception v4

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1318
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public static getMusicFilesToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .registers 11
    .parameter "db"
    .parameter "sourceAccount"

    .prologue
    const/4 v5, 0x0

    .line 1367
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND _sync_dirty=1"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaycountsToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .registers 11
    .parameter "db"
    .parameter "sourceAccount"

    .prologue
    const/4 v5, 0x0

    .line 1388
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->PLAYCOUNT_SYNC_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND PlayCount>0"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getSummaryMusicFile(Lcom/google/android/music/store/Store;Lcom/google/android/music/store/MusicFile;J)Lcom/google/android/music/store/MusicFile;
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/DataNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1704
    invoke-static {}, Lcom/google/android/music/store/MusicFile;->getSummaryProjection()[Ljava/lang/String;

    move-result-object v2

    .line 1706
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1707
    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1712
    :try_start_13
    const-string v3, "MUSIC.Id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_65

    move-result-object v2

    .line 1715
    if-eqz v2, :cond_2e

    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1716
    :cond_2e
    new-instance v0, Lcom/google/android/music/store/DataNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/music/store/DataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_47

    .line 1730
    :catchall_47
    move-exception v0

    :goto_48
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1731
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 1719
    :cond_4f
    if-nez p1, :cond_61

    .line 1720
    :try_start_51
    new-instance p1, Lcom/google/android/music/store/MusicFile;

    invoke-direct {p1}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 1725
    :goto_56
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/music/store/MusicFile;->populateFromSummary(Landroid/database/Cursor;I)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_47

    .line 1730
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1731
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object p1

    .line 1722
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Lcom/google/android/music/store/MusicFile;->reset()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_47

    goto :goto_56

    .line 1730
    :catchall_65
    move-exception v0

    move-object v2, v8

    goto :goto_48
.end method

.method static getSummaryProjection()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1452
    sget-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 12
    .parameter "statement"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 936
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_19

    .line 937
    :cond_11
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    const-string v5, "Source id must be set before saving to DB"

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 940
    :cond_19
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    move v1, v4

    .line 941
    .local v1, hasStoreSongId:Z
    :goto_22
    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-eq v6, v4, :cond_2e

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-eq v6, v7, :cond_2e

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-ne v6, v8, :cond_68

    :cond_2e
    move v3, v4

    .line 944
    .local v3, storeTrack:Z
    :goto_2f
    if-eqz v1, :cond_6a

    if-nez v3, :cond_6a

    .line 945
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store song id is set for track that is not promo or purchase. Store song id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ServerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v1           #hasStoreSongId:Z
    .end local v3           #storeTrack:Z
    :cond_66
    move v1, v5

    .line 940
    goto :goto_22

    .restart local v1       #hasStoreSongId:Z
    :cond_68
    move v3, v5

    .line 941
    goto :goto_2f

    .line 951
    .restart local v3       #storeTrack:Z
    :cond_6a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_aa

    move v0, v4

    .line 952
    .local v0, hasStoreAlbumId:Z
    :goto_73
    if-eqz v0, :cond_ac

    if-nez v3, :cond_ac

    .line 953
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store album ID is set for track that is not promo or purchase. Store album ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ServerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #hasStoreAlbumId:Z
    :cond_aa
    move v0, v5

    .line 951
    goto :goto_73

    .line 959
    .restart local v0       #hasStoreAlbumId:Z
    :cond_ac
    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 960
    .local v2, isEmptyPath:Z
    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    packed-switch v5, :pswitch_data_2e4

    .line 979
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid storage type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 962
    :pswitch_d2
    if-nez v2, :cond_103

    .line 963
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local path is set for storage type NONE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 968
    :pswitch_ef
    if-eqz v2, :cond_103

    .line 969
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    const-string v5, "Local path is not set for storage type INTERNAL"

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 974
    :pswitch_f9
    if-eqz v2, :cond_103

    .line 975
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    const-string v5, "Local path is not set for storage type EXTERNAL"

    invoke-direct {v4, v5}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 982
    :cond_103
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->setDerivedFields()V

    .line 984
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 986
    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 987
    const/16 v4, 0x25

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 988
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v8, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 989
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    if-nez v4, :cond_28e

    .line 990
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 995
    :goto_123
    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 996
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 998
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1000
    if-eqz v2, :cond_295

    .line 1001
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1005
    :goto_13b
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1006
    const/16 v4, 0x2d

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1007
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1009
    const/16 v5, 0x9

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_29c

    const-string v4, ""

    :goto_15b
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1010
    const/16 v5, 0xa

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-nez v4, :cond_2a0

    const-string v4, ""

    :goto_166
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1011
    const/16 v5, 0xb

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-nez v4, :cond_2a4

    const-string v4, ""

    :goto_171
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1013
    const/16 v4, 0x26

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1015
    const/16 v5, 0xc

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-nez v4, :cond_2a8

    const-string v4, ""

    :goto_184
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1017
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1018
    const/16 v5, 0xe

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    if-nez v4, :cond_2ac

    const-string v4, ""

    :goto_197
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1019
    const/16 v5, 0xf

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-nez v4, :cond_2b0

    const-string v4, ""

    :goto_1a2
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1020
    const/16 v4, 0x10

    iget-short v5, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1021
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1022
    const/16 v4, 0x12

    iget-short v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1023
    const/16 v4, 0x13

    iget-short v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1024
    const/16 v4, 0x14

    iget-short v5, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1025
    const/16 v4, 0x15

    iget-short v5, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1026
    const/16 v6, 0x16

    iget-boolean v4, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    if-eqz v4, :cond_2b4

    const-wide/16 v4, 0x1

    :goto_1dc
    invoke-virtual {p1, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1027
    const/16 v4, 0x17

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1028
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    if-eqz v4, :cond_1f3

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2b8

    .line 1029
    :cond_1f3
    const/16 v4, 0x18

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1033
    :goto_1f8
    const/16 v4, 0x19

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1034
    const/16 v4, 0x1a

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1035
    const/16 v4, 0x1b

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1036
    const/16 v4, 0x27

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1037
    const/16 v4, 0x1c

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1038
    const/16 v5, 0x1d

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v4, :cond_2c1

    const-string v4, ""

    :goto_223
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1040
    const/16 v5, 0x1e

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v4, :cond_2c5

    const-string v4, ""

    :goto_22e
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1042
    const/16 v5, 0x1f

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    if-nez v4, :cond_2c9

    const-string v4, ""

    :goto_239
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1044
    const/16 v5, 0x28

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    if-nez v4, :cond_2cd

    const-string v4, ""

    :goto_244
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1046
    const/16 v5, 0x20

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    if-nez v4, :cond_2d1

    const-string v4, ""

    :goto_24f
    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1048
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1049
    const/16 v4, 0x22

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1050
    const/16 v4, 0x23

    iget-wide v5, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1051
    const/16 v4, 0x29

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    int-to-long v5, v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1052
    const/16 v6, 0x2a

    iget-boolean v4, p0, Lcom/google/android/music/store/MusicFile;->mNeedsSync:Z

    if-eqz v4, :cond_2d5

    const-wide/16 v4, 0x1

    :goto_278
    invoke-virtual {p1, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1054
    if-eqz v1, :cond_2d8

    .line 1055
    const/16 v4, 0x2b

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1059
    :goto_284
    if-eqz v0, :cond_2de

    .line 1060
    const/16 v4, 0x2c

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1064
    :goto_28d
    return-void

    .line 992
    :cond_28e
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    invoke-virtual {p1, v7, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_123

    .line 1003
    :cond_295
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {p1, v9, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_13b

    .line 1009
    :cond_29c
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    goto/16 :goto_15b

    .line 1010
    :cond_2a0
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    goto/16 :goto_166

    .line 1011
    :cond_2a4
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    goto/16 :goto_171

    .line 1015
    :cond_2a8
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    goto/16 :goto_184

    .line 1018
    :cond_2ac
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    goto/16 :goto_197

    .line 1019
    :cond_2b0
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    goto/16 :goto_1a2

    .line 1026
    :cond_2b4
    const-wide/16 v4, 0x0

    goto/16 :goto_1dc

    .line 1031
    :cond_2b8
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1f8

    .line 1038
    :cond_2c1
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    goto/16 :goto_223

    .line 1040
    :cond_2c5
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    goto/16 :goto_22e

    .line 1042
    :cond_2c9
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    goto/16 :goto_239

    .line 1044
    :cond_2cd
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    goto/16 :goto_244

    .line 1046
    :cond_2d1
    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    goto/16 :goto_24f

    .line 1052
    :cond_2d5
    const-wide/16 v4, 0x0

    goto :goto_278

    .line 1057
    :cond_2d8
    const/16 v4, 0x2b

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_284

    .line 1062
    :cond_2de
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_28d

    .line 960
    :pswitch_data_2e4
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_ef
        :pswitch_f9
    .end packed-switch
.end method

.method public static readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;
    .registers 14
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 1337
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1343
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1345
    if-nez p3, :cond_27

    .line 1346
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .end local p3
    .local v9, file:Lcom/google/android/music/store/MusicFile;
    move-object p3, v9

    .line 1348
    .end local v9           #file:Lcom/google/android/music/store/MusicFile;
    .restart local p3
    :cond_27
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_33

    .line 1354
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move-object v5, p3

    :goto_2e
    return-object v5

    :cond_2f
    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_2e

    :catchall_33
    move-exception v0

    invoke-static {v8}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static resetPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 7
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1412
    .local p1, musicIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1424
    :cond_8
    :goto_8
    return-void

    .line 1416
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1417
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "PlayCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1420
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "Id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1421
    invoke-static {v0, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 1423
    const-string v2, "MUSIC"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8
.end method

.method private final setAlbumArtist(Ljava/lang/String;I)V
    .registers 6
    .parameter "albumArtist"
    .parameter "albumArtistOrigin"

    .prologue
    const-wide/16 v1, 0x0

    .line 588
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 589
    :cond_e
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 590
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 592
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 593
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 594
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 596
    :cond_1b
    return-void
.end method

.method public static setPlayCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V
    .registers 9
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, playCounts:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x1

    .line 1435
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1436
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "Id=?"

    .line 1437
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 1438
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1440
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 1442
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1444
    const-string v6, "PlayCount"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    const-string v5, "MUSIC"

    const-string v6, "Id=?"

    invoke-virtual {p0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e

    .line 1448
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_39
    return-void
.end method

.method private final setTrackArtist(Ljava/lang/String;I)V
    .registers 6
    .parameter "trackArtist"
    .parameter "trackArtistOrigin"

    .prologue
    const/4 v2, 0x1

    .line 544
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, p2, :cond_d

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 545
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 546
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 548
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 549
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, v2, :cond_2d

    .line 551
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, v2, :cond_28

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both track artist and album artist can\'t be derived"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_28
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 558
    :cond_2d
    return-void
.end method

.method private static stringChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 851
    if-nez p0, :cond_f

    .line 852
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 856
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 852
    goto :goto_c

    .line 853
    :cond_f
    if-nez p1, :cond_19

    .line 854
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    move v0, v1

    goto :goto_c

    .line 856
    :cond_19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_c
.end method

.method public static throwIfInvalidRating(I)V
    .registers 4
    .parameter "rating"

    .prologue
    .line 826
    if-ltz p0, :cond_5

    const/4 v0, 0x5

    if-le p0, v0, :cond_24

    .line 828
    :cond_5
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rating value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of expected range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_24
    return-void
.end method


# virtual methods
.method public final forceAlbumArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtist"

    .prologue
    .line 577
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 578
    return-void
.end method

.method public final getAddedTime()J
    .registers 3

    .prologue
    .line 444
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    return-wide v0
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 617
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    return-wide v0
.end method

.method public final getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public final getComposer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscCount()S
    .registers 2

    .prologue
    .line 689
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    return v0
.end method

.method public final getDiscPosition()S
    .registers 2

    .prologue
    .line 697
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    return v0
.end method

.method public final getDurationInMilliSec()J
    .registers 3

    .prologue
    .line 662
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    return-wide v0
.end method

.method public final getGenre()Ljava/lang/String;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCopyPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCopyStorageType()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    return v0
.end method

.method public final getLocalCopyType()I
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    return v0
.end method

.method public final getLocalId()J
    .registers 3

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v0
.end method

.method public final getRating()I
    .registers 2

    .prologue
    .line 783
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    return v0
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    return-wide v0
.end method

.method public final getStoreAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreSongId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackPositionInAlbum()S
    .registers 2

    .prologue
    .line 646
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    return v0
.end method

.method public final getTrackType()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    return v0
.end method

.method public final getYear()S
    .registers 2

    .prologue
    .line 654
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    return v0
.end method

.method public final insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J
    .registers 8
    .parameter "musicInsert"

    .prologue
    .line 1077
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 1078
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "MusicFile already created. Forgot to call reset()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1083
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1084
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    .line 1085
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into MUSIC"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1087
    :cond_25
    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1090
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v2
.end method

.method public isPurchasedTrack()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method load(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/DataNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1686
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "Id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1691
    if-eqz v1, :cond_27

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1692
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_46

    .line 1697
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1699
    return-void

    .line 1694
    :cond_27
    :try_start_27
    new-instance v0, Lcom/google/android/music/store/DataNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicFile with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/store/DataNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_46

    .line 1697
    :catchall_46
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    .registers 10
    .parameter "c"

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1479
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1480
    const/16 v0, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 1481
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1482
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1483
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 1484
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    .line 1489
    :goto_29
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1490
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 1491
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 1492
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1493
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1494
    const/16 v0, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    .line 1495
    const/16 v0, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 1496
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1497
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1498
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1499
    const/16 v0, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 1500
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1501
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1502
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 1503
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 1504
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 1505
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1506
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 1507
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 1508
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 1509
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 1510
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_181

    move v0, v1

    :goto_d6
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 1511
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 1512
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 1513
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 1517
    :goto_e8
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 1518
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1519
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1520
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1521
    const/16 v0, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1522
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1523
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1524
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1525
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1526
    const/16 v0, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1527
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1528
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 1529
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 1530
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 1531
    const/16 v0, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 1532
    const/16 v0, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_18c

    :goto_162
    iput-boolean v1, p0, Lcom/google/android/music/store/MusicFile;->mNeedsSync:Z

    .line 1533
    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 1534
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 1538
    :goto_16e
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 1539
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 1543
    :goto_178
    return-void

    .line 1486
    :cond_179
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    goto/16 :goto_29

    :cond_181
    move v0, v2

    .line 1510
    goto/16 :goto_d6

    .line 1515
    :cond_184
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    goto/16 :goto_e8

    :cond_18c
    move v1, v2

    .line 1532
    goto :goto_162

    .line 1536
    :cond_18e
    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    goto :goto_16e

    .line 1541
    :cond_197
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    goto :goto_178
.end method

.method populateFromSummary(Landroid/database/Cursor;I)V
    .registers 5
    .parameter "c"
    .parameter "columnOffset"

    .prologue
    .line 1461
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1462
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1463
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1464
    add-int/lit8 v0, p2, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1465
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1466
    add-int/lit8 v0, p2, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1467
    add-int/lit8 v0, p2, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1468
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1469
    add-int/lit8 v0, p2, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1470
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1471
    add-int/lit8 v0, p2, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1472
    add-int/lit8 v0, p2, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1473
    add-int/lit8 v0, p2, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    .line 1474
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 861
    invoke-super {p0}, Lcom/google/android/music/store/Syncable;->reset()V

    .line 862
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 863
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 864
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 865
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 866
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 867
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 868
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 869
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 870
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 871
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 872
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    .line 873
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 874
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 875
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 876
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 877
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 878
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 879
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 880
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 881
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 882
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 883
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 884
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 885
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 886
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 887
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 888
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 889
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 890
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 891
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 892
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 893
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 894
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 895
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 896
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->resetDerivedFields()V

    .line 897
    return-void
.end method

.method public resetDerivedFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 905
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 906
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 907
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 908
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 909
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 910
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 911
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 912
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 913
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 914
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public final setAddedTime(J)V
    .registers 6
    .parameter "addedTime"

    .prologue
    .line 456
    const-wide v0, 0x4977387000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0x3bb2cc3d800L

    cmp-long v0, p1, v0

    if-lez v0, :cond_2a

    .line 457
    :cond_12
    const-string v0, "MusicStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected added time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2a
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 460
    return-void
.end method

.method public setAlbumArtLocation(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtLocation"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 677
    :cond_b
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public final setAlbumArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtist"

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 574
    return-void
.end method

.method public final setAlbumName(Ljava/lang/String;)V
    .registers 5
    .parameter "albumName"

    .prologue
    const-wide/16 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 609
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 610
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 612
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 614
    :cond_13
    return-void
.end method

.method public final setComposer(Ljava/lang/String;)V
    .registers 2
    .parameter "composer"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 626
    return-void
.end method

.method setDerivedFields()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x1f

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    .line 1128
    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    if-nez v8, :cond_11

    .line 1129
    new-instance v8, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v8}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    iput-object v8, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 1131
    :cond_11
    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-eqz v8, :cond_7c

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7c

    move v2, v6

    .line 1132
    .local v2, hasAlbumArtist:Z
    :goto_22
    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-eqz v8, :cond_7e

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7e

    move v3, v6

    .line 1133
    .local v3, hasTrackArtist:Z
    :goto_33
    if-nez v2, :cond_80

    if-eqz v3, :cond_80

    .line 1134
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 1139
    :cond_3c
    :goto_3c
    iget-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_64

    .line 1140
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1141
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-eqz v7, :cond_5c

    .line 1142
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1144
    :cond_5c
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1147
    :cond_64
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v7, :cond_a4

    .line 1148
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_74

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8a

    .line 1149
    :cond_74
    new-instance v6, Lcom/google/android/music/store/InvalidDataException;

    const-string v7, "Song title must not be empty"

    invoke-direct {v6, v7}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2           #hasAlbumArtist:Z
    .end local v3           #hasTrackArtist:Z
    :cond_7c
    move v2, v7

    .line 1131
    goto :goto_22

    .restart local v2       #hasAlbumArtist:Z
    :cond_7e
    move v3, v7

    .line 1132
    goto :goto_33

    .line 1135
    .restart local v3       #hasTrackArtist:Z
    :cond_80
    if-nez v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 1136
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    goto :goto_3c

    .line 1152
    :cond_8a
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1153
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a4

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_a4

    .line 1154
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1158
    :cond_a4
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v7, :cond_c2

    .line 1159
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1160
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c2

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_c2

    .line 1161
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1165
    :cond_c2
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    if-eqz v7, :cond_d6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    if-eqz v7, :cond_d6

    iget-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_d6

    iget-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_112

    .line 1168
    :cond_d6
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1169
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-eqz v7, :cond_f0

    .line 1170
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1172
    :cond_f0
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1174
    iget v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eq v7, v6, :cond_10a

    iget v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-eq v7, v6, :cond_10a

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19a

    .line 1177
    :cond_10a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1178
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1188
    :cond_112
    :goto_112
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_11e

    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_199

    .line 1189
    :cond_11e
    const/16 v4, 0x1f

    .line 1190
    .local v4, separator:C
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1191
    .local v1, buffer:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1192
    const/4 v0, 0x0

    .line 1193
    .local v0, albumIdHasArtist:Z
    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eqz v6, :cond_136

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_140

    .line 1195
    :cond_136
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    const/4 v0, 0x1

    .line 1199
    :cond_140
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_150

    .line 1200
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1203
    :cond_150
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_199

    .line 1204
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1208
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_18f

    if-eqz v0, :cond_186

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18f

    .line 1211
    :cond_186
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1213
    :cond_18f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    .local v5, songKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1217
    .end local v0           #albumIdHasArtist:Z
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #separator:C
    .end local v5           #songKey:Ljava/lang/String;
    :cond_199
    return-void

    .line 1180
    :cond_19a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1181
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-eqz v6, :cond_1b4

    .line 1182
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1184
    :cond_1b4
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    goto/16 :goto_112
.end method

.method public final setDiscCount(S)V
    .registers 2
    .parameter "discCount"

    .prologue
    .line 693
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 694
    return-void
.end method

.method public final setDiscPosition(S)V
    .registers 2
    .parameter "discPosition"

    .prologue
    .line 701
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 702
    return-void
.end method

.method public final setDurationInMilliSec(J)V
    .registers 3
    .parameter "durationInMilliSec"

    .prologue
    .line 666
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 667
    return-void
.end method

.method public final setFileType(I)V
    .registers 2
    .parameter "fileType"

    .prologue
    .line 475
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 476
    return-void
.end method

.method public final setGenre(Ljava/lang/String;)V
    .registers 4
    .parameter "genre"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 634
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 638
    :cond_11
    return-void
.end method

.method public final setLocalCopyType(I)V
    .registers 2
    .parameter "localCopyType"

    .prologue
    .line 496
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 497
    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 480
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 481
    return-void
.end method

.method public final setRating(I)V
    .registers 2
    .parameter "rating"

    .prologue
    .line 791
    invoke-static {p1}, Lcom/google/android/music/store/MusicFile;->throwIfInvalidRating(I)V

    .line 792
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 793
    return-void
.end method

.method public final setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 467
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 468
    return-void
.end method

.method public final setStoreAlbumId(Ljava/lang/String;)V
    .registers 2
    .parameter "storeAlbumId"

    .prologue
    .line 822
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 823
    return-void
.end method

.method public final setStoreSongId(Ljava/lang/String;)V
    .registers 2
    .parameter "storeSongId"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 808
    return-void
.end method

.method public final setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V
    .registers 2
    .parameter "normalizer"

    .prologue
    .line 839
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 840
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 529
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 533
    :cond_11
    return-void
.end method

.method public final setTrackArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "trackArtist"

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    .line 541
    return-void
.end method

.method public final setTrackPositionInAlbum(S)V
    .registers 2
    .parameter "trackPositionInAlbum"

    .prologue
    .line 650
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 651
    return-void
.end method

.method public final setTrackType(I)V
    .registers 2
    .parameter "trackType"

    .prologue
    .line 431
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 432
    return-void
.end method

.method public final setYear(S)V
    .registers 2
    .parameter "year"

    .prologue
    .line 658
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 659
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 392
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v1, "sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "addedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v1, "fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v1, "localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v1, "localCopyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, "localCopyStorageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyStorageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, "artistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, "albumArtist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, "albumArtistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "composer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, "genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, "year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "artLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 414
    const-string v1, "storeSongId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_185
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 417
    const-string v1, "storeAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_19e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "fullUpdateStatement"
    .parameter "db"

    .prologue
    .line 1102
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Music file ID must be known in order to update db record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1109
    const/16 v0, 0x2e

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1113
    iget-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    if-eqz v0, :cond_34

    .line 1114
    const-string v0, "ARTWORK"

    const-string v1, "AlbumId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1117
    :cond_34
    return-void
.end method
