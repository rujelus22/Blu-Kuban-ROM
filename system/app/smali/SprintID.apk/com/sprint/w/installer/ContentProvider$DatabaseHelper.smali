.class Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 152
    const-string v0, "content.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 153
    return-void
.end method

.method private addExtrasColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 346
    :try_start_0
    const-string v1, "ALTER TABLE favorites ADD extras BLOB;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isMotoMB855()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->convertMotoExtras(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_e} :catch_14

    .line 354
    :cond_e
    :goto_e
    :try_start_e
    const-string v1, "ALTER TABLE favorites ADD l_id INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_13} :catch_1f

    .line 358
    :goto_13
    return-void

    .line 350
    :catch_14
    move-exception v0

    .line 351
    .local v0, e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE favorites ADD extras failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 355
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1f
    move-exception v0

    .line 356
    .restart local v0       #e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE favorites ADD l_id failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method private alterForVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 221
    :try_start_0
    const-string v1, "ALTER TABLE packs ADD isDefault INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_15

    .line 226
    :goto_5
    :try_start_5
    const-string v1, "ALTER TABLE packs ADD isLocked INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_a} :catch_20

    .line 231
    :goto_a
    :try_start_a
    const-string v1, "ALTER TABLE downloads ADD isDefault INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_f} :catch_2b

    .line 236
    :goto_f
    :try_start_f
    const-string v1, "ALTER TABLE downloads ADD isLocked INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_14} :catch_36

    .line 240
    :goto_14
    return-void

    .line 222
    :catch_15
    move-exception v0

    .line 223
    .local v0, e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE packs ADD isDefault failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 227
    .end local v0           #e:Landroid/database/SQLException;
    :catch_20
    move-exception v0

    .line 228
    .restart local v0       #e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE packs ADD isLocked failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 232
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2b
    move-exception v0

    .line 233
    .restart local v0       #e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE downloads ADD isDefault failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 237
    .end local v0           #e:Landroid/database/SQLException;
    :catch_36
    move-exception v0

    .line 238
    .restart local v0       #e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE downloads ADD isLocked failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private alterPacksTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 200
    :try_start_0
    const-string v1, "ALTER TABLE packs ADD swIcon BLOB;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 204
    :goto_5
    return-void

    .line 201
    :catch_6
    move-exception v0

    .line 202
    .local v0, e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE packs ADD swIcon failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private alterPacksTablePSIID(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 208
    :try_start_0
    const-string v1, "ALTER TABLE packs ADD psiId TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 212
    :goto_5
    return-void

    .line 209
    :catch_6
    move-exception v0

    .line 210
    .local v0, e:Landroid/database/SQLException;
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v1

    const-string v2, "ALTER TABLE packs ADD psiId failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private convertMotoExtras(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 19
    .parameter "db"

    .prologue
    .line 303
    const/4 v9, 0x0

    .line 304
    .local v9, cur:Landroid/database/Cursor;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "itemData"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "profileNum"

    aput-object v2, v3, v1

    .line 308
    .local v3, projection:[Ljava/lang/String;
    :try_start_13
    const-string v2, "favorites"

    const-string v4, "itemData NOT NULL OR profileNum NOT NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 309
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 310
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 311
    .local v14, idId:I
    const-string v1, "itemData"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 312
    .local v13, idData:I
    const-string v1, "profileNum"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 314
    .local v15, idNum:I
    :cond_39
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, id:Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_89

    const/4 v11, 0x0

    .line 316
    .local v11, data:Ljava/lang/String;
    :goto_44
    invoke-interface {v9, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8e

    const/16 v16, 0x0

    .line 318
    .local v16, profNumber:Ljava/lang/Integer;
    :goto_4c
    if-nez v11, :cond_50

    if-eqz v16, :cond_7d

    .line 319
    :cond_50
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "itemData"

    invoke-virtual {v10, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "profileNum"

    move-object/from16 v0, v16

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    invoke-static {v10}, Lcom/sprint/w/installer/ContentValuesFactory;->forDB(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v10

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_68
    .catchall {:try_start_13 .. :try_end_68} :catchall_9c

    .line 327
    :try_start_68
    const-string v1, "favorites"

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7a
    .catchall {:try_start_68 .. :try_end_7a} :catchall_97

    .line 332
    :try_start_7a
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 335
    .end local v10           #cv:Landroid/content/ContentValues;
    :cond_7d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_9c

    move-result v1

    if-nez v1, :cond_39

    .line 338
    .end local v11           #data:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #idData:I
    .end local v14           #idId:I
    .end local v15           #idNum:I
    .end local v16           #profNumber:Ljava/lang/Integer;
    :cond_83
    if-eqz v9, :cond_88

    .line 339
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_88
    return-void

    .line 315
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #idData:I
    .restart local v14       #idId:I
    .restart local v15       #idNum:I
    :cond_89
    :try_start_89
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_44

    .line 316
    .restart local v11       #data:Ljava/lang/String;
    :cond_8e
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_4c

    .line 332
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v16       #profNumber:Ljava/lang/Integer;
    :catchall_97
    move-exception v1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_9c

    .line 338
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #data:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #idData:I
    .end local v14           #idId:I
    .end local v15           #idNum:I
    .end local v16           #profNumber:Ljava/lang/Integer;
    :catchall_9c
    move-exception v1

    if-eqz v9, :cond_a2

    .line 339
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v1
.end method

.method private createDeliveryTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE IF NOT EXISTS delivery ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "deliveryId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "timeUpdated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TIMESTAMP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "packId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "author"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "verName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "verCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "flagSend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "errMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 195
    const-string v0, "CREATE TABLE IF NOT EXISTS downloads (_id INTEGER PRIMARY KEY AUTOINCREMENT,packId STRING, title TEXT, filepath TEXT, detailsIntent TEXT, installIntent TEXT, percentComplete INTEGER, isDefault INTEGER, isLocked INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 171
    const-string v0, "CREATE TABLE IF NOT EXISTS favorites (_id INTEGER PRIMARY KEY AUTOINCREMENT,packId STRING, title TEXT, intent TEXT, itemType INTEGER, iconType INTEGER, iconPackage TEXT, iconResource TEXT, icon BLOB, container INTEGER, screen INTEGER, cellX INTEGER, cellY INTEGER, spanX INTEGER, spanY INTEGER, appWidgetId TEXT, isShortcut INTEGER, uri TEXT, displayMode INTEGER, l_id INTEGER, extras BLOB);"

    .line 173
    .local v0, sql:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private createPacksTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 167
    const-string v0, "CREATE TABLE packs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,id TEXT,psiId TEXT,verName TEXT,verCode INTEGER,descr TEXT,author TEXT,contEmail TEXT,contUrl TEXT,contPhone TEXT,icon BLOB,swIcon BLOB,srcUrl TEXT,isDefault INTEGER,isLocked INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private fixFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 215
    const-string v0, "DROP TABLE favorites;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    return-void
.end method

.method private updateDownloadPaths(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 25
    .parameter "db"

    .prologue
    .line 244
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v21, vals:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 247
    .local v10, cur:Landroid/database/Cursor;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "packId"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "filepath"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "installIntent"

    aput-object v3, v4, v2

    .line 251
    .local v4, projection:[Ljava/lang/String;
    :try_start_18
    const-string v3, "downloads"

    const-string v5, "filepath LIKE \'%sdcard%\' OR installIntent LIKE \'%sdcard%\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 253
    const-string v2, "packId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 254
    .local v13, idxId:I
    const-string v2, "filepath"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 255
    .local v15, idxpathId:I
    const-string v2, "installIntent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 257
    .local v14, idxintentId:I
    :cond_3e
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, id:Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 259
    .local v19, path:Ljava/lang/String;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 260
    .local v16, intent:Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v20, rec:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "packId"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v2, "filepath"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "installIntent"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 267
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map;

    .line 268
    .local v18, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "packId"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #id:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 269
    .restart local v12       #id:Ljava/lang/String;
    const-string v2, "filepath"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #path:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 270
    .restart local v19       #path:Ljava/lang/String;
    const-string v2, "installIntent"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #intent:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 272
    .restart local v16       #intent:Ljava/lang/String;
    const-string v2, "."

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 275
    const-string v2, "&path="

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    const-string v3, ".spk"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, intentArg:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 279
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v22, values:Landroid/content/ContentValues;
    const-string v2, "filepath"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "installIntent"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_112
    .catchall {:try_start_18 .. :try_end_112} :catchall_12b

    .line 285
    :try_start_112
    const-string v2, "downloads"

    const-string v3, "packId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_126
    .catchall {:try_start_112 .. :try_end_126} :catchall_132

    .line 290
    :try_start_126
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_12b

    goto/16 :goto_79

    .line 295
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #idxId:I
    .end local v14           #idxintentId:I
    .end local v15           #idxpathId:I
    .end local v16           #intent:Ljava/lang/String;
    .end local v17           #intentArg:Ljava/lang/String;
    .end local v18           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #rec:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_12b
    move-exception v2

    if-eqz v10, :cond_131

    .line 296
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_131
    throw v2

    .line 290
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #idxId:I
    .restart local v14       #idxintentId:I
    .restart local v15       #idxpathId:I
    .restart local v16       #intent:Ljava/lang/String;
    .restart local v17       #intentArg:Ljava/lang/String;
    .restart local v18       #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19       #path:Ljava/lang/String;
    .restart local v20       #rec:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22       #values:Landroid/content/ContentValues;
    :catchall_132
    move-exception v2

    :try_start_133
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_137
    .catchall {:try_start_133 .. :try_end_137} :catchall_12b

    .line 295
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #idxId:I
    .end local v14           #idxintentId:I
    .end local v15           #idxpathId:I
    .end local v16           #intent:Ljava/lang/String;
    .end local v17           #intentArg:Ljava/lang/String;
    .end local v18           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #rec:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_137
    if-eqz v10, :cond_13c

    .line 296
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_13c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 157
    invoke-static {}, Lcom/sprint/w/installer/ContentProvider;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Creating new database"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 159
    const-string v0, "CREATE TABLE components (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,package TEXT,packId TEXT,packName TEXT,packVersion INTEGER,itemType INTEGER,path TEXT,keep TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createPacksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createDeliveryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 362
    const/4 v0, 0x2

    if-ge p2, v0, :cond_6

    .line 363
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createPacksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_6
    const/4 v0, 0x3

    if-ge p2, v0, :cond_c

    .line 366
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 368
    :cond_c
    const/4 v0, 0x4

    if-ge p2, v0, :cond_12

    .line 369
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->alterPacksTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 371
    :cond_12
    const/4 v0, 0x5

    if-ge p2, v0, :cond_18

    .line 372
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->fixFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 374
    :cond_18
    const/4 v0, 0x6

    if-ge p2, v0, :cond_1e

    .line 375
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 377
    :cond_1e
    const/4 v0, 0x7

    if-ge p2, v0, :cond_24

    .line 378
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->createDeliveryTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    :cond_24
    const/16 v0, 0x8

    if-ge p2, v0, :cond_2b

    .line 381
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->alterPacksTablePSIID(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 383
    :cond_2b
    const/16 v0, 0x9

    if-ge p2, v0, :cond_32

    .line 384
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->alterForVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 386
    :cond_32
    const/16 v0, 0xa

    if-ge p2, v0, :cond_39

    .line 387
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->updateDownloadPaths(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 389
    :cond_39
    const/16 v0, 0xb

    if-ge p2, v0, :cond_40

    .line 390
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/ContentProvider$DatabaseHelper;->addExtrasColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 392
    :cond_40
    return-void
.end method
