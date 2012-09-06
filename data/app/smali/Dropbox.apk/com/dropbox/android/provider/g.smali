.class public Lcom/dropbox/android/provider/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dropbox/android/provider/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/provider/g;->b:Lcom/dropbox/android/provider/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 78
    const-string v0, "db.db"

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 79
    return-void
.end method

.method public static a()Lcom/dropbox/android/provider/g;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/dropbox/android/provider/g;->b:Lcom/dropbox/android/provider/g;

    if-nez v0, :cond_a

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 74
    :cond_a
    sget-object v0, Lcom/dropbox/android/provider/g;->b:Lcom/dropbox/android/provider/g;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 194
    if-nez p0, :cond_4

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/dropbox/android/provider/g;->b:Lcom/dropbox/android/provider/g;

    if-nez v0, :cond_c

    .line 64
    new-instance v0, Lcom/dropbox/android/provider/g;

    invoke-direct {v0, p0}, Lcom/dropbox/android/provider/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/provider/g;->b:Lcom/dropbox/android/provider/g;

    .line 68
    return-void

    .line 66
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 461
    const-string v0, "dropbox"

    const-string v1, "path is NULL or canon_path is NULL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 220
    packed-switch p2, :pswitch_data_198

    .line 326
    :goto_6
    :pswitch_6
    :try_start_6
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_8c

    .line 328
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    return-void

    .line 223
    :pswitch_d
    :try_start_d
    const-string v0, "ALTER TABLE dropbox ADD COLUMN local_hash TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v0, "DROP INDEX IF EXISTS parent_path"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    const-string v0, "DROP INDEX IF EXISTS path"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    const-string v0, "ALTER TABLE dropbox ADD COLUMN canon_path TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "ALTER TABLE dropbox ADD COLUMN canon_parent_path TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v0, "CREATE INDEX canon_parent_path ON dropbox (canon_parent_path)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const-string v0, "CREATE UNIQUE INDEX canon_path ON dropbox (canon_path)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 232
    const-string v1, "dropbox"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "path"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "parent_path"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 233
    :goto_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 234
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 235
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 238
    const-string v5, "canon_path"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "canon_parent_path"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "dropbox"

    const-string v3, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_d .. :try_end_8b} :catchall_8c

    goto :goto_4e

    .line 328
    :catchall_8c
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 242
    :cond_91
    :try_start_91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    const-string v0, "ALTER TABLE dropbox ADD COLUMN encoding TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp/dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;)V

    .line 249
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 250
    invoke-static {}, Lcom/dropbox/android/util/ab;->l()Ljava/io/File;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 252
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.dropboxthumbs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 253
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 255
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dropbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_6

    .line 260
    :pswitch_125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 261
    const-string v1, "revision"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "local_revision"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "dropbox"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 267
    :pswitch_141
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_6

    .line 274
    :pswitch_146
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_6

    .line 278
    :pswitch_14b
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_6

    .line 284
    :pswitch_150
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_6

    .line 289
    :pswitch_155
    invoke-static {}, Lcom/dropbox/android/util/ab;->i()Ljava/io/File;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/dropbox/android/util/ab;->j()Ljava/io/File;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lcom/dropbox/android/provider/g;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 292
    sget-object v2, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    const-string v3, "Migrated old dropbox folder to new."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_16a
    invoke-static {p1, v0, v1}, Lcom/dropbox/android/provider/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;)V

    goto/16 :goto_6

    .line 294
    :cond_16f
    sget-object v2, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    const-string v3, "No folder migration attempted."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    .line 301
    :pswitch_177
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 305
    const-string v0, "DROP TABLE IF EXISTS camera_sync"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    :pswitch_17f
    const-string v0, "pending_upload"

    .line 313
    const-string v0, "DROP TABLE IF EXISTS pending_upload"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 316
    :pswitch_186
    invoke-static {p1}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 318
    :pswitch_189
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    :pswitch_18c
    const-string v0, "camera_upload_gallery"

    .line 321
    const-string v0, "DROP TABLE IF EXISTS camera_upload_gallery"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->g(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_196
    .catchall {:try_start_91 .. :try_end_196} :catchall_8c

    goto/16 :goto_6

    .line 220
    :pswitch_data_198
    .packed-switch 0x15
        :pswitch_d
        :pswitch_125
        :pswitch_141
        :pswitch_6
        :pswitch_146
        :pswitch_14b
        :pswitch_150
        :pswitch_155
        :pswitch_177
        :pswitch_17f
        :pswitch_17f
        :pswitch_186
        :pswitch_189
        :pswitch_18c
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    :goto_0
    if-ge p2, p3, :cond_8

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/provider/g;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 209
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 211
    :cond_8
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;Ljava/io/File;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    const/4 v8, 0x0

    .line 362
    const-string v1, "dropbox"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    const-string v3, "_data NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 364
    if-nez v1, :cond_25

    .line 365
    sget-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    const-string v1, "updateDatabaseLocalPaths: null Cursor."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_24
    return-void

    .line 368
    :cond_25
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 369
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move v0, v8

    .line 370
    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 371
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 372
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 375
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 376
    const-string v8, "_data"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v8, "dropbox"

    const-string v9, "_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 379
    const/4 v8, 0x1

    if-eq v7, v8, :cond_c2

    .line 380
    sget-object v8, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": Tried to change "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 383
    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_32

    .line 386
    :cond_c6
    sget-object v4, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected path root: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 389
    :cond_e0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 390
    sget-object v1, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated local paths in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 342
    :cond_d
    sget-object v1, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    const-string v2, "Folder migration was not needed."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_14
    return v0

    .line 349
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_38

    .line 350
    sget-object v1, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to migrate something that wasn\'t a folder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 353
    :cond_38
    sget-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_84

    .line 355
    sget-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent of destination doesn\'t exist; creating it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_84
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    goto :goto_14
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter

    .prologue
    .line 333
    const-string v0, "dropbox"

    const-string v1, "local_revision NOT NULL AND path IS NULL"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 394
    const-string v0, "CREATE TABLE IF NOT EXISTS camera_upload (_id INTEGER PRIMARY KEY AUTOINCREMENT, local_hash TEXT, server_hash TEXT, uploaded INTEGER DEFAULT 0, ignored INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    const-string v0, "CREATE INDEX IF NOT EXISTS camera_upload_local_hash_index ON camera_upload (local_hash)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const-string v0, "CREATE INDEX IF NOT EXISTS camera_upload_server_hash_index ON camera_upload (server_hash)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v0, "CREATE INDEX IF NOT EXISTS camera_upload_uploaded_index ON camera_upload (uploaded)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "CREATE INDEX IF NOT EXISTS camera_upload_ignored_index ON camera_upload (ignored)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->c:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->c:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->f:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->f:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->g:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/f;->g:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->c:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->c:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/d;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS thumbnail_info ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->a:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->a:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS thumbnail_path_size_index ON thumbnail_info ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private static g(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS camera_upload_gallery_v2 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/c;->b:Lcom/dropbox/android/provider/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/c;->b:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Lcom/dropbox/android/provider/i; {:try_start_0 .. :try_end_3} :catch_5

    .line 190
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 186
    :catch_5
    move-exception v0

    .line 187
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    const-string v1, "Creating new Dropbox database."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "CREATE TABLE dropbox (_id INTEGER PRIMARY KEY AUTOINCREMENT, _data TEXT, modified TEXT, bytes INTEGER, revision TEXT, hash TEXT, icon TEXT, is_dir INTEGER, path TEXT , canon_path TEXT, root TEXT, size TEXT, mime_type TEXT, thumb_exists INTEGER, parent_path TEXT, canon_parent_path TEXT, _display_name TEXT COLLATE NOCASE, is_favorite INTEGER, local_modified INTEGER, local_bytes INTEGER, local_revision TEXT, local_hash TEXT, accessed INTEGER, encoding TEXT, sync_status INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    const-string v0, "CREATE INDEX canon_parent_path ON dropbox (canon_parent_path)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE UNIQUE INDEX canon_path ON dropbox (canon_path)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/dropbox/android/provider/g;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 122
    invoke-static {p1}, Lcom/dropbox/android/provider/g;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/dropbox/android/provider/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/provider/i;-><init>(Lcom/dropbox/android/provider/h;)V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    if-ge p3, p2, :cond_9

    .line 130
    new-instance v0, Lcom/dropbox/android/provider/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/provider/i;-><init>(Lcom/dropbox/android/provider/h;)V

    throw v0

    .line 137
    :cond_9
    const/16 v0, 0x11

    if-ge p2, v0, :cond_14

    .line 139
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->e()V

    .line 148
    :cond_14
    const/16 v0, 0x14

    if-gt p2, v0, :cond_53

    .line 149
    sget-object v0, Lcom/dropbox/android/provider/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "DROP TABLE IF EXISTS dropbox"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "DROP INDEX IF EXISTS parent_path"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v0, "DROP INDEX IF EXISTS path"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/dropbox/android/provider/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    :goto_52
    return-void

    .line 162
    :cond_53
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/provider/g;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_52
.end method
