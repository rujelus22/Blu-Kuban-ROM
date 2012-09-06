.class final Lcom/google/android/youtube/core/transfer/p;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 127
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/google/android/youtube/core/transfer/d;
    .registers 7
    .parameter

    .prologue
    .line 245
    new-instance v2, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v2}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    .line 246
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_27

    .line 249
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 250
    :cond_27
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_35

    .line 251
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;I)V

    goto :goto_d

    .line 252
    :cond_35
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_43

    .line 253
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;J)V

    goto :goto_d

    .line 254
    :cond_43
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_51

    .line 255
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Z)V

    goto :goto_d

    .line 256
    :cond_51
    instance-of v4, v1, [B

    if-eqz v4, :cond_5b

    .line 257
    check-cast v1, [B

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;[B)V

    goto :goto_d

    .line 258
    :cond_5b
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6d

    .line 261
    check-cast v1, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-static {v1, v4, v5}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;[B)V

    goto :goto_d

    .line 263
    :cond_6d
    instance-of v4, v1, Lcom/google/android/youtube/core/model/Video;

    if-eqz v4, :cond_7b

    .line 267
    const-string v0, "video_id"

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 268
    :cond_7b
    instance-of v4, v1, Ljava/lang/Enum;

    if-eqz v4, :cond_89

    .line 270
    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 271
    :cond_89
    instance-of v0, v1, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;

    if-eqz v0, :cond_94

    .line 272
    check-cast v1, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;->convertToPrimitives(Lcom/google/android/youtube/core/transfer/d;)V

    goto/16 :goto_d

    .line 275
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t convert bundle entry of type "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to primitives"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 278
    :cond_b2
    return-object v2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    const-string v0, "DROP TABLE IF EXISTS transfers"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v0, "CREATE TABLE transfers (file_path TEXT PRIMARY KEY,network_uri TEXT,status INTEGER,status_reason INTEGER,bytes_transferred BIGINT,bytes_total BIGINT,extras BLOB,output_extras BLOB)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    new-instance v1, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v1}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/d;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 190
    const-string v1, "transfers"

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v1, "transfers"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "file_path"

    aput-object v0, v2, v10

    aput-object p2, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 208
    :try_start_21
    const-string v0, "file_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 210
    :goto_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 211
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 213
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_55

    .line 215
    :try_start_3e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 216
    const/4 v7, 0x0

    array-length v9, v4

    invoke-virtual {v6, v4, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 217
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 218
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 219
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_51} :catch_5a

    .line 223
    :goto_51
    :try_start_51
    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_2b

    .line 226
    :catchall_55
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 220
    :catch_5a
    move-exception v4

    .line 221
    :try_start_5b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to unmarshall parcel for "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_55

    goto :goto_51

    .line 226
    :cond_6e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    :try_start_86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/os/Bundle;)Lcom/google/android/youtube/core/transfer/d;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_ae

    move-result-object v0

    .line 238
    :goto_90
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 239
    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/d;->a()[B

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 240
    const-string v4, "transfers"

    const-string v5, "file_path = ?"

    new-array v6, v11, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_79

    .line 233
    :catch_ae
    move-exception v0

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error unpacking bundle in column: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance v0, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    goto :goto_90

    .line 242
    :cond_c7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 137
    const/4 v0, 0x6

    if-ne p3, v0, :cond_4d

    const/4 v0, 0x1

    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newVersion should be 6 but is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->a(ZLjava/lang/Object;)V

    .line 139
    if-ge p2, v4, :cond_4f

    .line 141
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    const-string v0, "INSERT INTO transfers SELECT file_path, network_uri, status, 0, bytes_downloaded, bytes_total, NULL, NULL FROM downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v0, "DROP TABLE downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 155
    const-string v0, "output_extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 173
    :cond_4c
    :goto_4c
    return-void

    .line 137
    :cond_4d
    const/4 v0, 0x0

    goto :goto_21

    .line 156
    :cond_4f
    if-ne p2, v4, :cond_66

    .line 157
    const-string v0, "ALTER TABLE transfers ADD COLUMN output_extras BLOB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "ALTER TABLE transfers ADD COLUMN status_reason INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v0, "output_extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/p;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 162
    const-string v0, "extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/p;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4c

    .line 165
    :cond_66
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6f

    .line 166
    const-string v0, "ALTER TABLE transfers ADD COLUMN status_reason INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v1

    .line 170
    :cond_6f
    if-ne p2, v1, :cond_4c

    .line 171
    const-string v0, "output_extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/p;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 172
    const-string v0, "extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/p;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4c
.end method
