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

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_INTEGER:Ljava/lang/Integer;

    .line 31
    const/16 v0, 0xc

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

    sput-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 60
    const/16 v0, 0x2d

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

    sput-object v0, Lcom/google/android/music/store/MusicFile;->FULL_PROJECTION:[Ljava/lang/String;

    .line 299
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Id"

    aput-object v1, v0, v3

    const-string v1, "LocalCopyType"

    aput-object v1, v0, v4

    const-string v1, "LocalCopyPath"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    .line 308
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

    .line 22
    invoke-direct {p0}, Lcom/google/android/music/store/Syncable;-><init>()V

    .line 325
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 327
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 330
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 335
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 337
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 350
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 365
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    return-void
.end method

.method public static compileDeleteByLocalIdStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 1179
    const-string v0, "delete from MUSIC where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileFullUpdateStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 898
    const-string v0, "update MUSIC set SourceAccount=?, SourceId=?, _sync_version=?, Size=?, FileType=?, FileDate=?, LocalCopyPath=?, LocalCopyType=?, Title=?, Album=?, Artist=?, AlbumArtist=?, AlbumArtistOrigin=?, Composer=?, Genre=?, Year=?, Duration=?, TrackCount=?, TrackNumber=?, DiscCount=?, DiscNumber=?, Compilation=?, BitRate=?, AlbumArtLocation=?, SongId=?, AlbumId=?, AlbumArtistId=?, GenreId=?, CanonicalName=?, CanonicalAlbum=?, CanonicalAlbumArtist=?, CanonicalGenre=?, PlayCount=?, LastPlayDate=?, LocalCopySize=?, LocalCopyBitrate=?, TrackType=?, ArtistOrigin=?, ArtistId=?, CanonicalArtist=?, Rating=?, _sync_dirty=?, StoreId=?,StoreAlbumId=? where Id=?"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static compileMusicInsertStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "db"

    .prologue
    .line 894
    const-string v0, "insert into MUSIC ( SourceAccount, SourceId, _sync_version, Size, FileType, FileDate, LocalCopyPath, LocalCopyType, Title, Album, Artist, AlbumArtist, AlbumArtistOrigin, Composer, Genre, Year, Duration, TrackCount, TrackNumber, DiscCount, DiscNumber, Compilation, BitRate, AlbumArtLocation, SongId, AlbumId, AlbumArtistId, GenreId, CanonicalName, CanonicalAlbum, CanonicalAlbumArtist, CanonicalGenre, PlayCount, LastPlayDate, LocalCopySize, LocalCopyBitrate, TrackType, ArtistOrigin, ArtistId, CanonicalArtist, Rating, _sync_dirty, StoreId, StoreAlbumId) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Landroid/database/sqlite/SQLiteStatement;J)V
    .registers 4
    .parameter "deleteByLocalIdStatement"
    .parameter "localId"

    .prologue
    .line 1239
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1240
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1241
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1242
    return-void
.end method

.method public static final deleteAndGetLocalCacheFilepath(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/String;
    .registers 17
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"

    .prologue
    .line 1191
    const/4 v12, 0x0

    .line 1192
    .local v12, id:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1193
    .local v11, filepath:Ljava/lang/String;
    const-string v1, "MUSIC"

    sget-object v2, Lcom/google/android/music/store/MusicFile;->DELETE_PROJECTION:[Ljava/lang/String;

    const-string v3, "SourceAccount=? AND SourceId=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1201
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_48

    :try_start_21
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1202
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1203
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1205
    .local v10, cacheType:I
    const/16 v0, 0x12c

    if-eq v10, v0, :cond_48

    .line 1206
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1207
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1208
    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_62

    move-result v0

    if-nez v0, :cond_48

    .line 1209
    const/4 v11, 0x0

    .line 1215
    .end local v10           #cacheType:I
    :cond_48
    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1218
    if-eqz v12, :cond_61

    .line 1219
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v12, v13, v0

    .line 1220
    .local v13, idArgs:[Ljava/lang/String;
    const-string v0, "MUSIC"

    const-string v1, "Id=?"

    invoke-virtual {p0, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1221
    const-string v0, "SHOULDKEEPON"

    const-string v1, "MusicId=?"

    invoke-virtual {p0, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1224
    .end local v13           #idArgs:[Ljava/lang/String;
    :cond_61
    return-object v11

    .line 1215
    :catchall_62
    move-exception v0

    invoke-static {v9}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static deleteByLocalId(Landroid/content/Context;J)V
    .registers 11
    .parameter "context"
    .parameter "localId"

    .prologue
    .line 1256
    const/4 v1, 0x0

    .line 1257
    .local v1, deleteStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 1258
    .local v3, success:Z
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1259
    .local v2, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v2}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1261
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    invoke-static {v0}, Lcom/google/android/music/store/MusicFile;->compileDeleteByLocalIdStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1262
    invoke-static {v1, p1, p2}, Lcom/google/android/music/store/MusicFile;->delete(Landroid/database/sqlite/SQLiteStatement;J)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 1263
    const/4 v3, 0x1

    .line 1265
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1266
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1269
    if-eqz v3, :cond_25

    .line 1270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1273
    :cond_25
    return-void

    .line 1265
    :catchall_26
    move-exception v4

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/sqlite/SQLiteProgram;)V

    .line 1266
    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    throw v4
.end method

.method public static getMusicFilesToSync(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .registers 11
    .parameter "db"
    .parameter "sourceAccount"

    .prologue
    const/4 v5, 0x0

    .line 1315
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

    .line 1337
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

    .line 1647
    invoke-static {}, Lcom/google/android/music/store/MusicFile;->getSummaryProjection()[Ljava/lang/String;

    move-result-object v2

    .line 1649
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1650
    const-string v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1655
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

    .line 1658
    if-eqz v2, :cond_2e

    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1659
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

    .line 1673
    :catchall_47
    move-exception v0

    :goto_48
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1674
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 1662
    :cond_4f
    if-nez p1, :cond_61

    .line 1663
    :try_start_51
    new-instance p1, Lcom/google/android/music/store/MusicFile;

    invoke-direct {p1}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .line 1668
    :goto_56
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/music/store/MusicFile;->populateFromSummary(Landroid/database/Cursor;I)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_47

    .line 1673
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1674
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object p1

    .line 1665
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Lcom/google/android/music/store/MusicFile;->reset()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_47

    goto :goto_56

    .line 1673
    :catchall_65
    move-exception v0

    move-object v2, v8

    goto :goto_48
.end method

.method static getSummaryProjection()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 1401
    sget-object v0, Lcom/google/android/music/store/MusicFile;->SUMMARY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 11
    .parameter "statement"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 911
    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_19

    .line 912
    :cond_11
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Source id must be set before saving to DB"

    invoke-direct {v3, v4}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 915
    :cond_19
    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    move v1, v3

    .line 916
    .local v1, hasStoreSongId:Z
    :goto_22
    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-eq v5, v3, :cond_2a

    iget v5, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    if-ne v5, v6, :cond_64

    :cond_2a
    move v2, v3

    .line 918
    .local v2, storeTrack:Z
    :goto_2b
    if-eqz v1, :cond_66

    if-nez v2, :cond_66

    .line 919
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store song id is set for track that is not promo or purchase. Store song id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ServerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #hasStoreSongId:Z
    .end local v2           #storeTrack:Z
    :cond_62
    move v1, v4

    .line 915
    goto :goto_22

    .restart local v1       #hasStoreSongId:Z
    :cond_64
    move v2, v4

    .line 916
    goto :goto_2b

    .line 925
    .restart local v2       #storeTrack:Z
    :cond_66
    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a6

    move v0, v3

    .line 926
    .local v0, hasStoreAlbumId:Z
    :goto_6f
    if-eqz v0, :cond_a8

    if-nez v2, :cond_a8

    .line 927
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store album ID is set for track that is not promo or purchase. Store album ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ServerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #hasStoreAlbumId:Z
    :cond_a6
    move v0, v4

    .line 925
    goto :goto_6f

    .line 933
    .restart local v0       #hasStoreAlbumId:Z
    :cond_a8
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->setDerivedFields()V

    .line 935
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 937
    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 938
    const/16 v3, 0x25

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 939
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {p1, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 940
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    if-nez v3, :cond_235

    .line 941
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 946
    :goto_c8
    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 947
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 949
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 951
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23c

    .line 952
    :cond_e7
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 956
    :goto_ea
    const/16 v3, 0x8

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 957
    const/16 v3, 0x24

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 959
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_243

    const-string v3, ""

    :goto_102
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 960
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-nez v3, :cond_247

    const-string v3, ""

    :goto_10d
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 961
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-nez v3, :cond_24b

    const-string v3, ""

    :goto_118
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 963
    const/16 v3, 0x26

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 965
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-nez v3, :cond_24f

    const-string v3, ""

    :goto_12b
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 967
    const/16 v3, 0xd

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 968
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    if-nez v3, :cond_253

    const-string v3, ""

    :goto_13e
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 969
    const/16 v4, 0xf

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-nez v3, :cond_257

    const-string v3, ""

    :goto_149
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 970
    const/16 v3, 0x10

    iget-short v4, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 971
    const/16 v3, 0x11

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 972
    const/16 v3, 0x12

    iget-short v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 973
    const/16 v3, 0x13

    iget-short v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 974
    const/16 v3, 0x14

    iget-short v4, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 975
    const/16 v3, 0x15

    iget-short v4, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 976
    const/16 v5, 0x16

    iget-boolean v3, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    if-eqz v3, :cond_25b

    const-wide/16 v3, 0x1

    :goto_183
    invoke-virtual {p1, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 977
    const/16 v3, 0x17

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 978
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    if-eqz v3, :cond_19a

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25f

    .line 979
    :cond_19a
    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 983
    :goto_19f
    const/16 v3, 0x19

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 984
    const/16 v3, 0x1a

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 985
    const/16 v3, 0x1b

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 986
    const/16 v3, 0x27

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 987
    const/16 v3, 0x1c

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 988
    const/16 v4, 0x1d

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v3, :cond_268

    const-string v3, ""

    :goto_1ca
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 990
    const/16 v4, 0x1e

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v3, :cond_26c

    const-string v3, ""

    :goto_1d5
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 992
    const/16 v4, 0x1f

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    if-nez v3, :cond_270

    const-string v3, ""

    :goto_1e0
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 994
    const/16 v4, 0x28

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    if-nez v3, :cond_274

    const-string v3, ""

    :goto_1eb
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 996
    const/16 v4, 0x20

    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    if-nez v3, :cond_278

    const-string v3, ""

    :goto_1f6
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 998
    const/16 v3, 0x21

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 999
    const/16 v3, 0x22

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1000
    const/16 v3, 0x23

    iget-wide v4, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1001
    const/16 v3, 0x29

    iget v4, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    int-to-long v4, v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1002
    const/16 v5, 0x2a

    iget-boolean v3, p0, Lcom/google/android/music/store/MusicFile;->mNeedsSync:Z

    if-eqz v3, :cond_27c

    const-wide/16 v3, 0x1

    :goto_21f
    invoke-virtual {p1, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1004
    if-eqz v1, :cond_27f

    .line 1005
    const/16 v3, 0x2b

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1009
    :goto_22b
    if-eqz v0, :cond_285

    .line 1010
    const/16 v3, 0x2c

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1014
    :goto_234
    return-void

    .line 943
    :cond_235
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    invoke-virtual {p1, v7, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_c8

    .line 954
    :cond_23c
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {p1, v8, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_ea

    .line 959
    :cond_243
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    goto/16 :goto_102

    .line 960
    :cond_247
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    goto/16 :goto_10d

    .line 961
    :cond_24b
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    goto/16 :goto_118

    .line 965
    :cond_24f
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    goto/16 :goto_12b

    .line 968
    :cond_253
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    goto/16 :goto_13e

    .line 969
    :cond_257
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    goto/16 :goto_149

    .line 976
    :cond_25b
    const-wide/16 v3, 0x0

    goto/16 :goto_183

    .line 981
    :cond_25f
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_19f

    .line 988
    :cond_268
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    goto/16 :goto_1ca

    .line 990
    :cond_26c
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    goto/16 :goto_1d5

    .line 992
    :cond_270
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    goto/16 :goto_1e0

    .line 994
    :cond_274
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    goto/16 :goto_1eb

    .line 996
    :cond_278
    iget-object v3, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    goto/16 :goto_1f6

    .line 1002
    :cond_27c
    const-wide/16 v3, 0x0

    goto :goto_21f

    .line 1007
    :cond_27f
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_22b

    .line 1012
    :cond_285
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_234
.end method

.method public static readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;
    .registers 14
    .parameter "db"
    .parameter "sourceAccount"
    .parameter "sourceId"
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 1285
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

    .line 1291
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1293
    if-nez p3, :cond_27

    .line 1294
    new-instance v9, Lcom/google/android/music/store/MusicFile;

    invoke-direct {v9}, Lcom/google/android/music/store/MusicFile;-><init>()V

    .end local p3
    .local v9, file:Lcom/google/android/music/store/MusicFile;
    move-object p3, v9

    .line 1296
    .end local v9           #file:Lcom/google/android/music/store/MusicFile;
    .restart local p3
    :cond_27
    invoke-virtual {p3, v8}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_33

    .line 1302
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
    .line 1361
    .local p1, musicIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1373
    :cond_8
    :goto_8
    return-void

    .line 1365
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1366
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "PlayCount"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1369
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "Id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1370
    invoke-static {v0, p1}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuffer;Ljava/util/Collection;)Ljava/lang/StringBuffer;

    .line 1372
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

    .line 564
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 565
    :cond_e
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 566
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 568
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 569
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 570
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 572
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

    .line 1384
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1385
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "Id=?"

    .line 1386
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    .line 1387
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

    .line 1389
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 1391
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1393
    const-string v6, "PlayCount"

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    const-string v5, "MUSIC"

    const-string v6, "Id=?"

    invoke-virtual {p0, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e

    .line 1397
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

    .line 520
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, p2, :cond_d

    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 521
    :cond_d
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 522
    iput p2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 524
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 525
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-ne v0, v2, :cond_2d

    .line 527
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-ne v0, v2, :cond_28

    .line 528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both track artist and album artist can\'t be derived"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_28
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 534
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

    .line 827
    if-nez p0, :cond_f

    .line 828
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 832
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 828
    goto :goto_c

    .line 829
    :cond_f
    if-nez p1, :cond_19

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    move v0, v1

    goto :goto_c

    .line 832
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
    .line 802
    if-ltz p0, :cond_5

    const/4 v0, 0x5

    if-le p0, v0, :cond_24

    .line 804
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

    .line 808
    :cond_24
    return-void
.end method


# virtual methods
.method public final forceAlbumArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtist"

    .prologue
    .line 553
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public final getAlbumArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    return-wide v0
.end method

.method public final getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public final getComposer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscCount()S
    .registers 2

    .prologue
    .line 665
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    return v0
.end method

.method public final getDiscPosition()S
    .registers 2

    .prologue
    .line 673
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    return v0
.end method

.method public final getDurationInMilliSec()J
    .registers 3

    .prologue
    .line 638
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    return-wide v0
.end method

.method public final getGenre()Ljava/lang/String;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCopyPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalCopyType()I
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    return v0
.end method

.method public final getLocalId()J
    .registers 3

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v0
.end method

.method public final getRating()I
    .registers 2

    .prologue
    .line 759
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    return v0
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    return-wide v0
.end method

.method public final getStoreAlbumId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreSongId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackPositionInAlbum()S
    .registers 2

    .prologue
    .line 622
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    return v0
.end method

.method public final getTrackType()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    return v0
.end method

.method public final getYear()S
    .registers 2

    .prologue
    .line 630
    iget-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    return v0
.end method

.method public final insertMusicFile(Landroid/database/sqlite/SQLiteStatement;)J
    .registers 8
    .parameter "musicInsert"

    .prologue
    .line 1027
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    .line 1028
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "MusicFile already created. Forgot to call reset()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1031
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1033
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1034
    .local v0, insertedId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    .line 1035
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to insert into MUSIC"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1037
    :cond_25
    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1040
    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    return-wide v2
.end method

.method public isPurchasedTrack()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 432
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

    .line 1629
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

    .line 1634
    if-eqz v1, :cond_27

    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1635
    invoke-virtual {p0, v1}, Lcom/google/android/music/store/MusicFile;->populateFromFullProjectionCursor(Landroid/database/Cursor;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_46

    .line 1640
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1642
    return-void

    .line 1637
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

    .line 1640
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

    .line 1427
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1428
    const/16 v0, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 1429
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1430
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1431
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1432
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    .line 1437
    :goto_29
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1438
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 1439
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 1440
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1441
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1442
    const/16 v0, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 1443
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1444
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1445
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1446
    const/16 v0, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 1447
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1448
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1449
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 1450
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 1451
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 1452
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1453
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 1454
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 1455
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 1456
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 1457
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_179

    move v0, v1

    :goto_ce
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 1458
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 1459
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 1460
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 1464
    :goto_e0
    iput-boolean v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 1465
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1466
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1467
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1468
    const/16 v0, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1469
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1470
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1471
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1472
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1473
    const/16 v0, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1474
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1475
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 1476
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 1477
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 1478
    const/16 v0, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 1479
    const/16 v0, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_184

    :goto_15a
    iput-boolean v1, p0, Lcom/google/android/music/store/MusicFile;->mNeedsSync:Z

    .line 1480
    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 1481
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 1485
    :goto_166
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 1486
    iput-object v5, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 1490
    :goto_170
    return-void

    .line 1434
    :cond_171
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceVersion:Ljava/lang/String;

    goto/16 :goto_29

    :cond_179
    move v0, v2

    .line 1457
    goto/16 :goto_ce

    .line 1462
    :cond_17c
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    goto/16 :goto_e0

    :cond_184
    move v1, v2

    .line 1479
    goto :goto_15a

    .line 1483
    :cond_186
    const/16 v0, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    goto :goto_166

    .line 1488
    :cond_18f
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    goto :goto_170
.end method

.method populateFromSummary(Landroid/database/Cursor;I)V
    .registers 5
    .parameter "c"
    .parameter "columnOffset"

    .prologue
    .line 1410
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 1411
    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    .line 1412
    add-int/lit8 v0, p2, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    .line 1413
    add-int/lit8 v0, p2, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 1414
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 1415
    add-int/lit8 v0, p2, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 1416
    add-int/lit8 v0, p2, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 1417
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 1418
    add-int/lit8 v0, p2, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 1419
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 1420
    add-int/lit8 v0, p2, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 1421
    add-int/lit8 v0, p2, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 1422
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 837
    invoke-super {p0}, Lcom/google/android/music/store/Syncable;->reset()V

    .line 838
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    .line 839
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 840
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 841
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 842
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 843
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 844
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    .line 845
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 846
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopySize:J

    .line 847
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyBitrate:I

    .line 848
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mPlayCount:I

    .line 849
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLastPlayDate:J

    .line 850
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 851
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    .line 852
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    .line 853
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    .line 854
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    .line 855
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 856
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 857
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 858
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 859
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackCountInAlbum:S

    .line 860
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 861
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 862
    iput-short v0, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 863
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mCompilation:Z

    .line 864
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mBitrate:I

    .line 865
    iput-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 866
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 867
    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 868
    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 869
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 870
    iput-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 871
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFile;->resetDerivedFields()V

    .line 872
    return-void
.end method

.method public resetDerivedFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 880
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 881
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 882
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 883
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 884
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 885
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 886
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 887
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 888
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 889
    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 890
    return-void
.end method

.method public final setAddedTime(J)V
    .registers 6
    .parameter "addedTime"

    .prologue
    .line 440
    const-wide v0, 0x4977387000L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0x3bb2cc3d800L

    cmp-long v0, p1, v0

    if-lez v0, :cond_2a

    .line 441
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

    .line 443
    :cond_2a
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    .line 444
    return-void
.end method

.method public setAlbumArtLocation(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtLocation"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    .line 653
    :cond_b
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public final setAlbumArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "albumArtist"

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 550
    return-void
.end method

.method public final setAlbumName(Ljava/lang/String;)V
    .registers 5
    .parameter "albumName"

    .prologue
    const-wide/16 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 585
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    .line 586
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 588
    iput-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 590
    :cond_13
    return-void
.end method

.method public final setComposer(Ljava/lang/String;)V
    .registers 2
    .parameter "composer"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    .line 602
    return-void
.end method

.method setDerivedFields()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x1f

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    .line 1078
    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    if-nez v8, :cond_11

    .line 1079
    new-instance v8, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v8}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    iput-object v8, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 1081
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

    .line 1082
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

    .line 1083
    .local v3, hasTrackArtist:Z
    :goto_33
    if-nez v2, :cond_80

    if-eqz v3, :cond_80

    .line 1084
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/google/android/music/store/MusicFile;->setAlbumArtist(Ljava/lang/String;I)V

    .line 1089
    :cond_3c
    :goto_3c
    iget-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_64

    .line 1090
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1091
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    if-eqz v7, :cond_5c

    .line 1092
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 1094
    :cond_5c
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 1097
    :cond_64
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    if-nez v7, :cond_a4

    .line 1098
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_74

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8a

    .line 1099
    :cond_74
    new-instance v6, Lcom/google/android/music/store/InvalidDataException;

    const-string v7, "Song title must not be empty"

    invoke-direct {v6, v7}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2           #hasAlbumArtist:Z
    .end local v3           #hasTrackArtist:Z
    :cond_7c
    move v2, v7

    .line 1081
    goto :goto_22

    .restart local v2       #hasAlbumArtist:Z
    :cond_7e
    move v3, v7

    .line 1082
    goto :goto_33

    .line 1085
    .restart local v3       #hasTrackArtist:Z
    :cond_80
    if-nez v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 1086
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    goto :goto_3c

    .line 1102
    :cond_8a
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1103
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a4

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_a4

    .line 1104
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 1108
    :cond_a4
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    if-nez v7, :cond_c2

    .line 1109
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1110
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c2

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_c2

    .line 1111
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    .line 1115
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

    .line 1118
    :cond_d6
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v8, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1119
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f0

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    if-eqz v7, :cond_f0

    .line 1120
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    .line 1122
    :cond_f0
    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    .line 1124
    iget v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eq v7, v6, :cond_10a

    iget v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    if-eq v7, v6, :cond_10a

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19a

    .line 1127
    :cond_10a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1128
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistId:J

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistId:J

    .line 1138
    :cond_112
    :goto_112
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_11e

    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_199

    .line 1139
    :cond_11e
    const/16 v4, 0x1f

    .line 1140
    .local v4, separator:C
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x100

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1141
    .local v1, buffer:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1142
    const/4 v0, 0x0

    .line 1143
    .local v0, albumIdHasArtist:Z
    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    if-eqz v6, :cond_136

    iget v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_140

    .line 1145
    :cond_136
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    const/4 v0, 0x1

    .line 1149
    :cond_140
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_150

    .line 1150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mAlbumId:J

    .line 1153
    :cond_150
    iget-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_199

    .line 1154
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1156
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-short v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1158
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

    .line 1161
    :cond_186
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    :cond_18f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1164
    .local v5, songKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 1167
    .end local v0           #albumIdHasArtist:Z
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #separator:C
    .end local v5           #songKey:Ljava/lang/String;
    :cond_199
    return-void

    .line 1130
    :cond_19a
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    iget-object v7, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1131
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b4

    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    if-eqz v6, :cond_1b4

    .line 1132
    iget-object v6, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTrackArtist:Ljava/lang/String;

    .line 1134
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
    .line 669
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscCount:S

    .line 670
    return-void
.end method

.method public final setDiscPosition(S)V
    .registers 2
    .parameter "discPosition"

    .prologue
    .line 677
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mDiscPosition:S

    .line 678
    return-void
.end method

.method public final setDurationInMilliSec(J)V
    .registers 3
    .parameter "durationInMilliSec"

    .prologue
    .line 642
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mDurationInMilliSec:J

    .line 643
    return-void
.end method

.method public final setFileType(I)V
    .registers 2
    .parameter "fileType"

    .prologue
    .line 459
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 460
    return-void
.end method

.method public final setGenre(Ljava/lang/String;)V
    .registers 4
    .parameter "genre"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 610
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mGenreId:J

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalGenre:Ljava/lang/String;

    .line 614
    :cond_11
    return-void
.end method

.method public final setLocalCopyType(I)V
    .registers 2
    .parameter "localCopyType"

    .prologue
    .line 480
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    .line 481
    return-void
.end method

.method public final setMimeType(Ljava/lang/String;)V
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 464
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    .line 465
    return-void
.end method

.method public final setRating(I)V
    .registers 2
    .parameter "rating"

    .prologue
    .line 767
    invoke-static {p1}, Lcom/google/android/music/store/MusicFile;->throwIfInvalidRating(I)V

    .line 768
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    .line 769
    return-void
.end method

.method public final setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 451
    iput-wide p1, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    .line 452
    return-void
.end method

.method public final setStoreAlbumId(Ljava/lang/String;)V
    .registers 2
    .parameter "storeAlbumId"

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    .line 799
    return-void
.end method

.method public final setStoreSongId(Ljava/lang/String;)V
    .registers 2
    .parameter "storeSongId"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public final setTagNormalizer(Lcom/google/android/music/store/TagNormalizer;)V
    .registers 2
    .parameter "normalizer"

    .prologue
    .line 815
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mNormalizer:Lcom/google/android/music/store/TagNormalizer;

    .line 816
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/music/store/MusicFile;->stringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 505
    iput-object p1, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MusicFile;->mCanonicalTitle:Ljava/lang/String;

    .line 507
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mSongId:J

    .line 509
    :cond_11
    return-void
.end method

.method public final setTrackArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "trackArtist"

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MusicFile;->setTrackArtist(Ljava/lang/String;I)V

    .line 517
    return-void
.end method

.method public final setTrackPositionInAlbum(S)V
    .registers 2
    .parameter "trackPositionInAlbum"

    .prologue
    .line 626
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    .line 627
    return-void
.end method

.method public final setTrackType(I)V
    .registers 2
    .parameter "trackType"

    .prologue
    .line 415
    iput p1, p0, Lcom/google/android/music/store/MusicFile;->mTrackType:I

    .line 416
    return-void
.end method

.method public final setYear(S)V
    .registers 2
    .parameter "year"

    .prologue
    .line 634
    iput-short p1, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    .line 635
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 377
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v1, "account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v1, "sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v1, "addedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mAddedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/store/MusicFile;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v1, "fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mFileType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v1, "localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v1, "localCopyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mLocalCopyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v1, "artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v1, "artistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v1, "albumArtist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v1, "albumArtistOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtistOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v1, "album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v1, "composer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mComposer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v1, "genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mTrackPositionInAlbum:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v1, "year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lcom/google/android/music/store/MusicFile;->mYear:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v1, "artLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v1, "rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MusicFile;->mRating:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_174

    .line 398
    const-string v1, "storeSongId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mStoreSongId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    :cond_174
    iget-object v1, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18d

    .line 401
    const-string v1, "storeAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/store/MusicFile;->mStoreAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_18d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final updateMusicFile(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "fullUpdateStatement"
    .parameter "db"

    .prologue
    .line 1052
    iget-wide v0, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1053
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Music file ID must be known in order to update db record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MusicFile;->prepareInsertOrFullUpdate(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1059
    const/16 v0, 0x2d

    iget-wide v1, p0, Lcom/google/android/music/store/MusicFile;->mLocalId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1061
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1063
    iget-boolean v0, p0, Lcom/google/android/music/store/MusicFile;->mAlbumArtLocationChanged:Z

    if-eqz v0, :cond_34

    .line 1064
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

    .line 1067
    :cond_34
    return-void
.end method
