.class public Lcom/sprint/dsa/pack/DbPacks;
.super Ljava/lang/Object;
.source "DbPacks.java"


# static fields
.field public static final DB_COL_PACK_ID:Ljava/lang/String; = "pack_id"

.field public static final DB_COL_PACK_ID_TYPE:Ljava/lang/String; = "TEXT"

.field public static final TAG:Ljava/lang/String; = "SprintZone_Packs"


# instance fields
.field protected mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    :try_start_6
    new-instance v0, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v2, "zone.db"

    invoke-direct {v0, p1, v2}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .local v0, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 34
    .end local v0           #dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    :goto_13
    return-void

    .line 31
    :catch_14
    move-exception v1

    .line 32
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SprintZone_Packs"

    const-string v3, "Failed to Open DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    iput-object p1, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "packId"

    .prologue
    .line 391
    const-string v0, "pack_id = ?"

    .line 392
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 394
    .local v1, whereValues:[Ljava/lang/String;
    const-string v2, "packs_tbl"

    const-string v3, "pack_id = ?"

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    invoke-static {p0, p1}, Lcom/sprint/dsa/pack/DbPacks;->deleteStyles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 397
    invoke-static {p0, p1}, Lcom/sprint/dsa/pack/DbPacks;->deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public static deleteAll(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 5
    .parameter "db"
    .parameter "exceptId"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/sprint/dsa/pack/DbPacks;->getPackIds(Landroid/database/sqlite/SQLiteDatabase;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, oldPackIds:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-lt v0, v2, :cond_a

    .line 95
    array-length v2, v1

    return v2

    .line 85
    :cond_a
    if-eqz p1, :cond_14

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    :cond_14
    aget-object v2, v1, v0

    invoke-static {p0, v2}, Lcom/sprint/dsa/pack/DbPacks;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 84
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected static deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "packId"

    .prologue
    .line 410
    const-string v0, "pack_id = ?"

    .line 411
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 413
    .local v2, whereValues:[Ljava/lang/String;
    const-string v3, "packs_strings_tbl"

    const-string v4, "pack_id = ?"

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 416
    .local v1, count:I
    return-void
.end method

.method protected static deleteStyles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "packId"

    .prologue
    .line 401
    const-string v0, "pack_id = ?"

    .line 402
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 404
    .local v2, whereValues:[Ljava/lang/String;
    const-string v3, "packs_styles_tbl"

    const-string v4, "pack_id = ?"

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 407
    .local v1, count:I
    return-void
.end method

.method public static getActiveId(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 10
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 124
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pack_id"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "active"

    aput-object v1, v2, v0

    .line 125
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "active = 1"

    .line 127
    .local v3, selection:Ljava/lang/String;
    const-string v1, "packs_tbl"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 130
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2d

    move-result-object v4

    .line 136
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 133
    :goto_28
    return-object v4

    .line 136
    :cond_29
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    goto :goto_28

    .line 135
    :catchall_2d
    move-exception v0

    .line 136
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 137
    throw v0
.end method

.method public static getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v2, "zone.db"

    invoke-direct {v1, p0, v2}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 48
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method

.method public static getPackCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 5
    .parameter "context"

    .prologue
    .line 177
    new-instance v2, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v3, "zone.db"

    invoke-direct {v2, p0, v3}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    .local v2, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 179
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/sprint/dsa/pack/DbPacks;->getPackCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0
.end method

.method public static getPackCursor(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .registers 9
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string v7, "active desc"

    .line 185
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "packs_tbl"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPackIds(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 142
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v3, "zone.db"

    invoke-direct {v1, p0, v3}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/sprint/dsa/pack/DbPacks;->getPackIds(Landroid/database/sqlite/SQLiteDatabase;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, ids:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    return-object v2
.end method

.method public static getPackIds(Landroid/database/sqlite/SQLiteDatabase;)[Ljava/lang/String;
    .registers 13
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 154
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pack_id"

    aput-object v0, v2, v1

    .line 156
    .local v2, columns:[Ljava/lang/String;
    const-string v7, "active desc"

    .line 158
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "packs_tbl"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    .local v8, c:Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 161
    .local v11, rows:I
    new-array v10, v11, [Ljava/lang/String;

    .line 163
    .local v10, ids:[Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_32

    .line 164
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1f
    if-lt v9, v11, :cond_25

    .line 172
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 169
    return-object v10

    .line 165
    :cond_25
    const/4 v0, 0x0

    :try_start_26
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 166
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_32

    .line 164
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 171
    .end local v9           #i:I
    .end local v10           #ids:[Ljava/lang/String;
    .end local v11           #rows:I
    :catchall_32
    move-exception v0

    .line 172
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 173
    throw v0
.end method

.method public static readActive(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sprint/dsa/pack/Pack;
    .registers 3
    .parameter "db"

    .prologue
    .line 193
    invoke-static {p0}, Lcom/sprint/dsa/pack/DbPacks;->getActiveId(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, activeId:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sprint/dsa/pack/DbPacks;->readPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;

    move-result-object v1

    return-object v1
.end method

.method public static readAll(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sprint/dsa/pack/Packs;
    .registers 7
    .parameter "db"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/sprint/dsa/pack/DbPacks;->getPackIds(Landroid/database/sqlite/SQLiteDatabase;)[Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, packIds:[Ljava/lang/String;
    new-instance v3, Lcom/sprint/dsa/pack/Packs;

    invoke-direct {v3}, Lcom/sprint/dsa/pack/Packs;-><init>()V

    .line 204
    .local v3, packs:Lcom/sprint/dsa/pack/Packs;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_b
    if-lt v4, v5, :cond_e

    .line 208
    return-object v3

    .line 204
    :cond_e
    aget-object v1, v2, v4

    .line 205
    .local v1, packId:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sprint/dsa/pack/DbPacks;->readPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;

    move-result-object v0

    .line 206
    .local v0, pack:Lcom/sprint/dsa/pack/Pack;
    invoke-virtual {v3, v0}, Lcom/sprint/dsa/pack/Packs;->add(Lcom/sprint/dsa/pack/Pack;)V

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_b
.end method

.method protected static readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/pack/Pack;)V
    .registers 7
    .parameter "c"
    .parameter "pack"

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v4, "pack_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    .line 303
    const-string v4, "name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    .line 304
    const-string v4, "version"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/sprint/dsa/pack/Pack;->version:Ljava/lang/String;

    .line 305
    const-string v4, "active"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_32

    const/4 v3, 0x1

    :cond_32
    iput-boolean v3, p1, Lcom/sprint/dsa/pack/Pack;->active:Z

    .line 307
    const-string v3, "alertIcon"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 308
    .local v2, iconByte:[B
    if-eqz v2, :cond_48

    .line 310
    const/4 v3, 0x0

    :try_start_41
    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/sprint/dsa/pack/Pack;->alertIcon:Landroid/graphics/Bitmap;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_48} :catch_5d

    .line 316
    :cond_48
    :goto_48
    const-string v3, "backgroundImage"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 317
    .local v0, backByte:[B
    if-eqz v0, :cond_5c

    .line 319
    const/4 v3, 0x0

    :try_start_55
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_5c} :catch_66

    .line 324
    :cond_5c
    :goto_5c
    return-void

    .line 311
    .end local v0           #backByte:[B
    :catch_5d
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "SprintZone_Packs"

    const-string v4, "Exception decoding icon"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 320
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #backByte:[B
    :catch_66
    move-exception v1

    .line 321
    .restart local v1       #e:Ljava/lang/RuntimeException;
    const-string v3, "SprintZone_Packs"

    const-string v4, "Exception decoding icon"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method

.method public static readPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;
    .registers 12
    .parameter "db"
    .parameter "packId"

    .prologue
    const/4 v5, 0x0

    .line 272
    const-string v3, "pack_id = ?"

    .line 273
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, selectionArgs:[Ljava/lang/String;
    move-object v2, v5

    .line 274
    check-cast v2, [Ljava/lang/String;

    .line 276
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "packs_tbl"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 278
    .local v8, c:Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 281
    new-instance v9, Lcom/sprint/dsa/pack/Pack;

    invoke-direct {v9}, Lcom/sprint/dsa/pack/Pack;-><init>()V

    .line 282
    .local v9, pack:Lcom/sprint/dsa/pack/Pack;
    invoke-static {v8, v9}, Lcom/sprint/dsa/pack/DbPacks;->readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/pack/Pack;)V

    .line 283
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 285
    invoke-static {p0, v9}, Lcom/sprint/dsa/pack/DbPacks;->readStyles(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V

    .line 286
    invoke-static {p0, v9}, Lcom/sprint/dsa/pack/DbPacks;->readStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_35

    .line 297
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 293
    .end local v9           #pack:Lcom/sprint/dsa/pack/Pack;
    :goto_2f
    return-object v9

    .line 297
    :cond_30
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    move-object v9, v5

    .line 293
    goto :goto_2f

    .line 296
    :catchall_35
    move-exception v0

    .line 297
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 298
    throw v0
.end method

.method protected static readStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    .registers 18
    .parameter "db"
    .parameter "pack"

    .prologue
    .line 358
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 359
    .local v3, columns:[Ljava/lang/String;
    const-string v4, "pack_id = ?"

    .line 360
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    aput-object v2, v5, v1

    .line 361
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 363
    .local v8, orderBy:Ljava/lang/String;
    const-string v2, "packs_strings_tbl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 366
    .local v9, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 367
    .local v14, numRows:I
    const-string v1, "name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 368
    .local v10, colName:I
    const-string v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 371
    .local v11, colValue:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_47

    .line 372
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2e
    if-lt v12, v14, :cond_34

    .line 381
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 383
    return-void

    .line 373
    :cond_34
    :try_start_34
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 374
    .local v13, name:Ljava/lang/String;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, value:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Lcom/sprint/dsa/pack/Pack;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_47

    .line 372
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    .line 380
    .end local v10           #colName:I
    .end local v11           #colValue:I
    .end local v12           #i:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #numRows:I
    .end local v15           #value:Ljava/lang/String;
    :catchall_47
    move-exception v1

    .line 381
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 382
    throw v1
.end method

.method protected static readStyles(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    .registers 23
    .parameter "db"
    .parameter "pack"

    .prologue
    .line 327
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/String;

    .line 328
    .local v6, columns:[Ljava/lang/String;
    const-string v7, "pack_id = ?"

    .line 329
    .local v7, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    aput-object v5, v8, v4

    .line 330
    .local v8, selectionArgs:[Ljava/lang/String;
    const-string v11, "tag asc"

    .line 332
    .local v11, orderBy:Ljava/lang/String;
    const-string v5, "packs_styles_tbl"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 335
    .local v12, c:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 336
    .local v18, numRows:I
    const-string v4, "tag"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 337
    .local v14, colTag:I
    const-string v4, "name"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 338
    .local v13, colName:I
    const-string v4, "value"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 342
    .local v15, colValue:I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_5d

    .line 343
    const/16 v16, 0x0

    .local v16, i:I
    :goto_36
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_40

    .line 353
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 355
    return-void

    .line 344
    :cond_40
    :try_start_40
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 345
    .local v19, tag:Ljava/lang/String;
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 346
    .local v17, name:Ljava/lang/String;
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 347
    .local v20, value:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sprint/dsa/pack/Pack;->addStyleAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_5d

    .line 343
    add-int/lit8 v16, v16, 0x1

    goto :goto_36

    .line 352
    .end local v13           #colName:I
    .end local v14           #colTag:I
    .end local v15           #colValue:I
    .end local v16           #i:I
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #numRows:I
    .end local v19           #tag:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :catchall_5d
    move-exception v4

    .line 353
    invoke-static {v12}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 354
    throw v4
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    .registers 10
    .parameter "db"
    .parameter "pack"

    .prologue
    const/4 v7, 0x0

    .line 238
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "pack_id"

    iget-object v6, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v5, "name"

    iget-object v6, p1, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->alertIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2d

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->alertIcon:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 247
    const-string v5, "alertIcon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 250
    .end local v0           #out:Ljava/io/ByteArrayOutputStream;
    :cond_2d
    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_46

    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    .restart local v0       #out:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 253
    const-string v5, "backgroundImage"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 256
    .end local v0           #out:Ljava/io/ByteArrayOutputStream;
    :cond_46
    const-string v4, "pack_id = ?"

    .line 257
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    aput-object v5, v3, v7

    .line 258
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v5, "packs_tbl"

    invoke-virtual {p0, v5, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 259
    .local v1, updated:I
    if-nez v1, :cond_5d

    .line 260
    const-string v5, "packs_tbl"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 263
    :cond_5d
    invoke-static {p0, p1}, Lcom/sprint/dsa/pack/DbPacks;->saveStyles(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V

    .line 264
    invoke-static {p0, p1}, Lcom/sprint/dsa/pack/DbPacks;->saveStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V

    .line 265
    return-void
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Packs;)V
    .registers 3
    .parameter "db"
    .parameter "packs"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sprint/dsa/pack/DbPacks;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Packs;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Packs;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "packs"
    .parameter "activeId"

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/sprint/dsa/pack/Packs;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 227
    if-eqz p2, :cond_13

    .line 228
    invoke-static {p0, p2}, Lcom/sprint/dsa/pack/DbPacks;->setActive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 230
    :cond_13
    return-void

    .line 222
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/pack/Pack;

    .line 223
    .local v0, pack:Lcom/sprint/dsa/pack/Pack;
    invoke-static {p0, v0}, Lcom/sprint/dsa/pack/DbPacks;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V

    goto :goto_8
.end method

.method protected static saveStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    .registers 8
    .parameter "db"
    .parameter "pack"

    .prologue
    .line 420
    iget-object v3, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sprint/dsa/pack/DbPacks;->deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 423
    iget-object v1, p1, Lcom/sprint/dsa/pack/Pack;->strings:Ljava/util/Map;

    .line 424
    .local v1, strings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v2, values:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 435
    return-void

    .line 425
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    .local v0, name:Ljava/lang/String;
    const-string v3, "pack_id"

    iget-object v5, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v5, "value"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v3, "packs_strings_tbl"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Insert database: packs_strings_tbl : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_14
.end method

.method protected static saveStyles(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V
    .registers 10
    .parameter "db"
    .parameter "pack"

    .prologue
    .line 439
    iget-object v4, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/sprint/dsa/pack/DbPacks;->deleteStyles(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p1, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 463
    return-void

    .line 446
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/dsa/pack/Style;

    .line 447
    .local v2, style:Lcom/sprint/dsa/pack/Style;
    invoke-virtual {v2}, Lcom/sprint/dsa/pack/Style;->getAttrs()Ljava/util/Map;

    move-result-object v0

    .line 449
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    .local v1, name:Ljava/lang/String;
    const-string v4, "pack_id"

    iget-object v7, p1, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v4, "tag"

    iget-object v7, v2, Lcom/sprint/dsa/pack/Style;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v4, "name"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v7, "value"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v4, "packs_styles_tbl"

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Insert database: packs_styles_tbl : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2a
.end method

.method public static setActive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 12
    .parameter "db"
    .parameter "packId"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 102
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, notActiveValues:Landroid/content/ContentValues;
    const-string v7, "active"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v7, "packs_tbl"

    invoke-virtual {p0, v7, v1, v9, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, activeValues:Landroid/content/ContentValues;
    const-string v7, "active"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v4, "pack_id = ?"

    .line 111
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v6

    .line 113
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v7, "packs_tbl"

    invoke-virtual {p0, v7, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 116
    .local v2, updated:I
    if-ne v2, v5, :cond_33

    :goto_32
    return v5

    :cond_33
    move v5, v6

    goto :goto_32
.end method

.method public static setPackIds(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "db"
    .parameter "packIds"
    .parameter "versions"
    .parameter "activeId"

    .prologue
    .line 53
    if-eqz p1, :cond_10

    .line 55
    const-string v2, "default"

    invoke-static {p0, v2}, Lcom/sprint/dsa/pack/DbPacks;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, p1

    if-lt v0, v2, :cond_16

    .line 73
    .end local v0           #i:I
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_10
    if-eqz p3, :cond_15

    .line 74
    invoke-static {p0, p3}, Lcom/sprint/dsa/pack/DbPacks;->setActive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 76
    :cond_15
    return-void

    .line 60
    .restart local v0       #i:I
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_16
    const-string v2, "pack_id"

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p2, :cond_26

    .line 62
    const-string v2, "version"

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_26
    const-string v2, "packs_tbl"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 42
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3
    .parameter "packId"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/sprint/dsa/pack/DbPacks;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public deleteAll(Ljava/lang/String;)I
    .registers 3
    .parameter "exceptId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/sprint/dsa/pack/DbPacks;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getActiveId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/sprint/dsa/pack/DbPacks;->getActiveId(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackIds()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/sprint/dsa/pack/DbPacks;->getPackIds(Landroid/database/sqlite/SQLiteDatabase;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readActive()Lcom/sprint/dsa/pack/Pack;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/sprint/dsa/pack/DbPacks;->readActive(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sprint/dsa/pack/Pack;

    move-result-object v0

    return-object v0
.end method

.method public readAll()Lcom/sprint/dsa/pack/Packs;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/sprint/dsa/pack/DbPacks;->readAll(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sprint/dsa/pack/Packs;

    move-result-object v0

    return-object v0
.end method

.method public readPack(Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;
    .registers 3
    .parameter "packId"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/sprint/dsa/pack/DbPacks;->readPack(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/sprint/dsa/pack/Pack;)V
    .registers 3
    .parameter "pack"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/sprint/dsa/pack/DbPacks;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Pack;)V

    .line 234
    return-void
.end method

.method public save(Lcom/sprint/dsa/pack/Packs;)V
    .registers 4
    .parameter "packs"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sprint/dsa/pack/DbPacks;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sprint/dsa/pack/DbPacks;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/pack/Packs;Ljava/lang/String;)V

    .line 214
    return-void
.end method
