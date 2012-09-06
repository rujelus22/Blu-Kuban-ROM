.class Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;,
        Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;
    }
.end annotation


# static fields
.field private static final PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

.field private final mEtagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mEtagMap:Ljava/util/HashMap;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    .line 62
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "userId"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 120
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 122
    .local v0, userIdArgs:[Ljava/lang/String;
    :try_start_9
    sget-object v1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v2, "user_id=?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    sget-object v1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    const-string v2, "_id=?"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1e

    .line 126
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    return-void

    .line 126
    :catchall_1e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 3
    .parameter "context"

    .prologue
    .line 341
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const-class v1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    .line 56
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->sInstance:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private syncPhotosForUploadInternal(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;Lcom/google/android/apps/plus/iu/UserEntry;)V
    .registers 28
    .parameter "context"
    .parameter "user"

    .prologue
    .line 163
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/google/android/apps/plus/iu/UserEntry;->account:Ljava/lang/String;

    .line 164
    .local v10, account:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v14, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 168
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 170
    :try_start_14
    sget-object v3, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

    const-string v5, "user_id=?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/apps/plus/iu/UserEntry;->id:J

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_53

    move-result-object v11

    .line 173
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5b

    .line 175
    :goto_33
    :try_start_33
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 176
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 177
    .local v19, id:J
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 178
    .local v12, dateEdited:J
    new-instance v4, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;

    move-wide/from16 v0, v19

    invoke-direct {v4, v0, v1, v12, v13}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;-><init>(JJ)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4e

    goto :goto_33

    .line 181
    .end local v12           #dateEdited:J
    .end local v19           #id:J
    :catchall_4e
    move-exception v4

    :try_start_4f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 185
    .end local v11           #cursor:Landroid/database/Cursor;
    :catchall_53
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 181
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_58
    :try_start_58
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_53

    .line 185
    :cond_5b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/apps/plus/iu/UserEntry;->id:J

    .line 191
    .local v6, userId:J
    new-instance v3, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$1;

    move-object/from16 v4, p0

    move-object v5, v14

    move-object v8, v2

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$1;-><init>(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;Ljava/util/ArrayList;JLandroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;)V

    .line 213
    .local v3, handler:Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mEtagMap:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 214
    .local v15, etag:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object v15, v16, v4

    .line 216
    .local v16, etagHolder:[Ljava/lang/String;
    const/16 v22, 0x3

    .line 217
    .local v22, result:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_83
    const/4 v4, 0x1

    move/from16 v0, v17

    if-gt v0, v4, :cond_a1

    .line 218
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/apps/plus/iu/PicasaApi;

    move-object/from16 v0, v16

    invoke-virtual {v4, v10, v0, v3}, Lcom/google/android/apps/plus/iu/PicasaApi;->getUploadedPhotos(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)I

    move-result v22

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mEtagMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v16, v5

    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/4 v4, 0x2

    move/from16 v0, v22

    if-eq v0, v4, :cond_d2

    .line 225
    :cond_a1
    packed-switch v22, :pswitch_data_f6

    .line 237
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_a8
    :goto_a8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;

    .line 238
    .local v21, metadata:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v4, :cond_a8

    .line 239
    sget-object v4, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v4, v2, v8, v9}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 240
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v23, 0x1

    add-long v8, v8, v23

    iput-wide v8, v4, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_a8

    .line 221
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #metadata:Lcom/google/android/apps/plus/iu/PicasaSyncHelper$EntryMetadata;
    :cond_d2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 217
    add-int/lit8 v17, v17, 0x1

    goto :goto_83

    .line 227
    :pswitch_d8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v23, 0x1

    add-long v8, v8, v23

    iput-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 243
    :cond_e6
    :goto_e6
    :pswitch_e6
    return-void

    .line 230
    :pswitch_e7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v23, 0x1

    add-long v8, v8, v23

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_e6

    .line 225
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_d8
        :pswitch_e7
    .end packed-switch
.end method


# virtual methods
.method public createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;
    .registers 4
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 246
    new-instance v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;-><init>(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public findUser(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UserEntry;
    .registers 11
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

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

    .line 135
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/apps/plus/iu/UserEntry;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/UserEntry;-><init>()V

    invoke-virtual {v0, v8, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/UserEntry;
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_36

    .line 139
    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_34
    move-object v0, v5

    .line 135
    goto :goto_30

    .line 139
    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public syncAccounts()V
    .registers 23

    .prologue
    .line 65
    const-string v3, "PicasaSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 66
    const-string v3, "PicasaSync"

    const-string v4, "sync account database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 72
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v20, obsoleteAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 76
    .local v13, cursor:Landroid/database/Cursor;
    :goto_2a
    :try_start_2a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 77
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 78
    .local v17, id:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, account:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_42

    goto :goto_2a

    .line 82
    .end local v10           #account:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    :catchall_42
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_47
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v15

    .line 87
    .local v15, googleAccounts:[Landroid/accounts/Account;
    const-string v3, "PicasaSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 88
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accounts in DB="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_77
    if-eqz v15, :cond_e5

    .line 91
    const-string v12, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 92
    .local v12, authority:Ljava/lang/String;
    move-object v11, v15

    .local v11, arr$:[Landroid/accounts/Account;
    array-length v0, v11

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_81
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_e5

    aget-object v10, v11, v16

    .line 93
    .local v10, account:Landroid/accounts/Account;
    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_df

    const/16 v18, 0x1

    .line 94
    .local v18, isAccountInDb:Z
    :goto_95
    const-string v3, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v10, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e2

    const/16 v21, 0x1

    .line 95
    .local v21, syncable:Z
    :goto_9f
    if-nez v18, :cond_dc

    if-eqz v21, :cond_dc

    .line 98
    const-string v3, "PicasaSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 99
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add account to DB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_c8
    sget-object v3, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/plus/iu/UserEntry;

    iget-object v6, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/UserEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 92
    :cond_dc
    add-int/lit8 v16, v16, 0x1

    goto :goto_81

    .line 93
    .end local v18           #isAccountInDb:Z
    .end local v21           #syncable:Z
    :cond_df
    const/16 v18, 0x0

    goto :goto_95

    .line 94
    .restart local v18       #isAccountInDb:Z
    :cond_e2
    const/16 v21, 0x0

    goto :goto_9f

    .line 108
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #arr$:[Landroid/accounts/Account;
    .end local v12           #authority:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #isAccountInDb:Z
    .end local v19           #len$:I
    :cond_e5
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_134

    .line 109
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_f3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 110
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "PicasaSync"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 111
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_128
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_f3

    .line 116
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_134
    return-void
.end method

.method public syncUploadedPhotos(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;Lcom/google/android/apps/plus/iu/UserEntry;)V
    .registers 5
    .parameter "context"
    .parameter "user"

    .prologue
    .line 149
    const-string v1, "PicasaSyncHelper.syncPhotosForUpload"

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, statsId:I
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    move-result v1

    if-eqz v1, :cond_10

    .line 155
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    .line 157
    :goto_f
    return-void

    .line 153
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->syncPhotosForUploadInternal(Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;Lcom/google/android/apps/plus/iu/UserEntry;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 155
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto :goto_f

    :catchall_17
    move-exception v1

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    throw v1
.end method
