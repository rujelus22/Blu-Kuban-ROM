.class Lcom/google/android/picasasync/PicasaSyncHelper;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;,
        Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    }
.end annotation


# static fields
.field private static final ALBUM_PROJECTION_ID_DATE:[Ljava/lang/String;

.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID_DATE_INDEX:[Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mLockManager:Lcom/google/android/picasasync/SyncLockManager;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_PROJECTION_ID_DATE:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    const-string v1, "display_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_DATE_INDEX:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/google/android/picasasync/SyncLockManager;

    invoke-direct {v0}, Lcom/google/android/picasasync/SyncLockManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .registers 7
    .parameter "db"
    .parameter "albumId"

    .prologue
    .line 431
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 432
    .local v0, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v2, "album_id=?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    sget-object v1, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    return v1
.end method

.method private deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 13
    .parameter "db"
    .parameter "userId"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 159
    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v0

    .line 161
    .local v4, userIdArgs:[Ljava/lang/String;
    :try_start_9
    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_35

    move-result-object v9

    .line 164
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_18
    new-array v8, v0, [Ljava/lang/String;

    .line 165
    .local v8, albumIdArgs:[Ljava/lang/String;
    :goto_1a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 167
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v1, "album_id=?"

    invoke-virtual {p1, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_30

    goto :goto_1a

    .line 170
    .end local v8           #albumIdArgs:[Ljava/lang/String;
    :catchall_30
    move-exception v0

    :try_start_31
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    .line 176
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_35
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 170
    .restart local v8       #albumIdArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_3a
    :try_start_3a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v1, "user_id=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    const-string v1, "_id=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_3a .. :try_end_4e} :catchall_35

    .line 176
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    return-void
.end method

.method private static getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 3
    .parameter "context"

    .prologue
    .line 547
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/google/android/picasasync/PicasaSyncHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;

    if-nez v0, :cond_e

    .line 84
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 86
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 23
    .parameter "context"
    .parameter "user"

    .prologue
    .line 213
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v9, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 217
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_PROJECTION_ID_DATE:[Ljava/lang/String;

    const-string v4, "user_id=?"

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date_updated"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 222
    .local v13, cursor:Landroid/database/Cursor;
    :goto_29
    :try_start_29
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 223
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 224
    .local v3, id:J
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 225
    .local v5, dateEdited:J
    new-instance v2, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>(JJI)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_43

    goto :goto_29

    .line 228
    .end local v3           #id:J
    .end local v5           #dateEdited:J
    :catchall_43
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_48
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 233
    new-instance v7, Lcom/google/android/picasasync/PicasaSyncHelper$1;

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object v11, v1

    move-object/from16 v12, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/picasasync/PicasaSyncHelper$1;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/UserEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V

    .line 256
    .local v7, handler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    const/16 v17, 0x1

    .line 257
    .local v17, result:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5d
    const/4 v2, 0x1

    if-gt v14, v2, :cond_6f

    .line 258
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v7}, Lcom/google/android/picasasync/PicasaApi;->getAlbums(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I

    move-result v17

    .line 259
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_a7

    .line 264
    :cond_6f
    packed-switch v17, :pswitch_data_d0

    .line 276
    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 279
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 280
    .local v16, metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v2, :cond_7d

    .line 281
    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 282
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v2, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    iput-wide v10, v2, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_7d

    .line 260
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 257
    add-int/lit8 v14, v14, 0x1

    goto :goto_5d

    .line 266
    :pswitch_ad
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    iput-wide v10, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 286
    :goto_bb
    :pswitch_bb
    return-void

    .line 269
    :pswitch_bc
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    iput-wide v10, v2, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_bb

    .line 285
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_cb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    goto :goto_bb

    .line 264
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_ad
        :pswitch_bc
    .end packed-switch
.end method

.method private syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    .registers 24
    .parameter "context"
    .parameter "album"

    .prologue
    .line 343
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v10, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 347
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_DATE_INDEX:[Ljava/lang/String;

    const-string v4, "album_id=?"

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date_updated"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 353
    .local v14, cursor:Landroid/database/Cursor;
    :goto_29
    :try_start_29
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 354
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 355
    .local v3, id:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 356
    .local v5, dateEdited:J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 357
    .local v7, displayIndex:I
    new-instance v2, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>(JJI)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_47

    goto :goto_29

    .line 360
    .end local v3           #id:J
    .end local v5           #dateEdited:J
    .end local v7           #displayIndex:I
    :catchall_47
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 363
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 366
    new-instance v8, Lcom/google/android/picasasync/PicasaSyncHelper$2;

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object v12, v1

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/picasasync/PicasaSyncHelper$2;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/AlbumEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V

    .line 391
    .local v8, handler:Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    const/16 v18, 0x3

    .line 392
    .local v18, result:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_61
    const/4 v2, 0x1

    if-gt v15, v2, :cond_73

    .line 393
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v8}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I

    move-result v18

    .line 394
    const/4 v2, 0x2

    move/from16 v0, v18

    if-eq v0, v2, :cond_a4

    .line 399
    :cond_73
    packed-switch v18, :pswitch_data_dc

    .line 411
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_7a
    :goto_7a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 412
    .local v17, metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v2, :cond_7a

    .line 413
    sget-object v2, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, v17

    iget-wide v11, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 414
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v2, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v19, 0x1

    add-long v11, v11, v19

    iput-wide v11, v2, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_7a

    .line 395
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #metadata:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 392
    add-int/lit8 v15, v15, 0x1

    goto :goto_61

    .line 401
    :pswitch_aa
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v19, 0x1

    add-long v11, v11, v19

    iput-wide v11, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 427
    :goto_b8
    :pswitch_b8
    return-void

    .line 404
    :pswitch_b9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v2, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v19, 0x1

    add-long v11, v11, v19

    iput-wide v11, v2, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_b8

    .line 420
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_c8
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/google/android/picasasync/AlbumEntry;->photosDirty:Z

    .line 421
    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    goto :goto_b8

    .line 399
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_aa
        :pswitch_b9
    .end packed-switch
.end method


# virtual methods
.method public createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .registers 4
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 439
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;
    .registers 11
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 186
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UserEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UserEntry;-><init>()V

    invoke-virtual {v0, v8, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UserEntry;
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_36

    .line 190
    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_34
    move-object v0, v5

    .line 186
    goto :goto_30

    .line 190
    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getUsers()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/UserEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 528
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 530
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 533
    .local v8, cursor:Landroid/database/Cursor;
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 534
    sget-object v1, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v2, Lcom/google/android/picasasync/UserEntry;

    invoke-direct {v2}, Lcom/google/android/picasasync/UserEntry;-><init>()V

    invoke-virtual {v1, v8, v2}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_31

    goto :goto_1c

    .line 537
    :catchall_31
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 539
    return-object v9
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public isPicasaAccount(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 552
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "service_lh2"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public notifyAlbumsChange()V
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 97
    return-void
.end method

.method public notifyPhotosChange()V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 102
    return-void
.end method

.method public syncAccounts(Ljava/lang/String;)V
    .registers 23
    .parameter "authority"

    .prologue
    .line 105
    const-string v2, "PicasaSync"

    const-string v3, "sync account database"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 110
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v19, obsoleteAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 114
    .local v11, cursor:Landroid/database/Cursor;
    :goto_21
    :try_start_21
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 115
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, id:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, account:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_37

    goto :goto_21

    .line 120
    .end local v9           #account:Ljava/lang/String;
    .end local v15           #id:Ljava/lang/String;
    :catchall_37
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v13

    .line 125
    .local v13, googleAccounts:[Landroid/accounts/Account;
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accounts in DB="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v13, :cond_d1

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v17

    .line 128
    .local v17, isMaster:Z
    move-object v10, v13

    .local v10, arr$:[Landroid/accounts/Account;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_76
    move/from16 v0, v18

    if-ge v14, v0, :cond_d1

    aget-object v9, v10, v14

    .line 129
    .local v9, account:Landroid/accounts/Account;
    iget-object v2, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_cb

    const/16 v16, 0x1

    .line 130
    .local v16, isAccountInDb:Z
    :goto_88
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_ce

    const/16 v20, 0x1

    .line 131
    .local v20, syncable:Z
    :goto_92
    if-eqz v17, :cond_c8

    if-nez v16, :cond_c8

    if-eqz v20, :cond_c8

    .line 134
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add account to DB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Lcom/google/android/picasasync/UserEntry;

    iget-object v5, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/UserEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 128
    :cond_c8
    add-int/lit8 v14, v14, 0x1

    goto :goto_76

    .line 129
    .end local v16           #isAccountInDb:Z
    .end local v20           #syncable:Z
    :cond_cb
    const/16 v16, 0x0

    goto :goto_88

    .line 130
    .restart local v16       #isAccountInDb:Z
    :cond_ce
    const/16 v20, 0x0

    goto :goto_92

    .line 142
    .end local v9           #account:Landroid/accounts/Account;
    .end local v10           #arr$:[Landroid/accounts/Account;
    .end local v14           #i$:I
    .end local v16           #isAccountInDb:Z
    .end local v17           #isMaster:Z
    .end local v18           #len$:I
    :cond_d1
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_128

    .line 143
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_df
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 144
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_df

    .line 147
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    .line 155
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_128
    return-void
.end method

.method public syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 10
    .parameter "context"
    .parameter "user"

    .prologue
    .line 196
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaSyncHelper.syncAlbums "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 198
    .local v2, statsId:I
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_29} :catch_41

    move-result-object v1

    .line 200
    .local v1, lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_2a
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4a

    move-result v3

    if-eqz v3, :cond_37

    .line 203
    :try_start_30
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 204
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_36} :catch_41

    .line 209
    .end local v1           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2           #statsId:I
    :goto_36
    return-void

    .line 201
    .restart local v1       #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2       #statsId:I
    :cond_37
    :try_start_37
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4a

    .line 203
    :try_start_3a
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 204
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_36

    .line 206
    .end local v1           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2           #statsId:I
    :catch_41
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_36

    .line 203
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2       #statsId:I
    :catchall_4a
    move-exception v3

    :try_start_4b
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 204
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_52} :catch_41
.end method

.method public syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    .registers 10
    .parameter "context"
    .parameter "album"

    .prologue
    .line 321
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaSyncHelper.syncPhotos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_20} :catch_45

    move-result v2

    .line 324
    .local v2, statsId:I
    :try_start_21
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v4, 0x2

    iget-wide v5, p2, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_53

    move-result-object v1

    .line 326
    .local v1, lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_2e
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4e

    move-result v3

    if-eqz v3, :cond_3b

    .line 329
    :try_start_34
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_53

    .line 332
    :try_start_37
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_45

    .line 337
    .end local v1           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2           #statsId:I
    :goto_3a
    return-void

    .line 327
    .restart local v1       #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2       #statsId:I
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4e

    .line 329
    :try_start_3e
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_53

    .line 332
    :try_start_41
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_3a

    .line 334
    .end local v1           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2           #statsId:I
    :catch_45
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3a

    .line 329
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2       #statsId:I
    :catchall_4e
    move-exception v3

    :try_start_4f
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    throw v3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 332
    .end local v1           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :catchall_53
    move-exception v3

    :try_start_54
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_58} :catch_45
.end method

.method public syncPhotosForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .registers 15
    .parameter "context"
    .parameter "user"

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v10, p2, Lcom/google/android/picasasync/UserEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 307
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {v8}, Lcom/google/android/picasasync/AlbumEntry;-><init>()V

    .line 309
    .local v8, album:Lcom/google/android/picasasync/AlbumEntry;
    :cond_28
    :try_start_28
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 310
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v9, v8}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 311
    invoke-virtual {p0, p1, v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_40

    move-result v0

    if-eqz v0, :cond_28

    .line 315
    :cond_3c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 317
    return-void

    .line 315
    :catchall_40
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
