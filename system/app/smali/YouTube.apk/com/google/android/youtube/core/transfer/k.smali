.class final Lcom/google/android/youtube/core/transfer/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 128
    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/google/android/youtube/core/transfer/b;
    .registers 7
    .parameter

    .prologue
    .line 253
    new-instance v2, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v2}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    .line 254
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    :try_start_19
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3f

    .line 258
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_d

    .line 286
    :catch_27
    move-exception v1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read bundle entry for key "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_d

    .line 259
    :cond_3f
    :try_start_3f
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_4d

    .line 260
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;I)V

    goto :goto_d

    .line 261
    :cond_4d
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_5b

    .line 262
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;J)V

    goto :goto_d

    .line 263
    :cond_5b
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_69

    .line 264
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Z)V

    goto :goto_d

    .line 265
    :cond_69
    instance-of v4, v1, [B

    if-eqz v4, :cond_73

    .line 266
    check-cast v1, [B

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;[B)V

    goto :goto_d

    .line 267
    :cond_73
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_85

    .line 270
    check-cast v1, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-static {v1, v4, v5}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;[B)V

    goto :goto_d

    .line 272
    :cond_85
    instance-of v4, v1, Lcom/google/android/youtube/core/model/Video;

    if-eqz v4, :cond_94

    .line 276
    const-string v4, "video_id"

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 277
    :cond_94
    instance-of v4, v1, Ljava/lang/Enum;

    if-eqz v4, :cond_a3

    .line 279
    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 280
    :cond_a3
    instance-of v4, v1, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;

    if-eqz v4, :cond_ae

    .line 281
    check-cast v1, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/transfer/ConvertibleSerializable;->convertToPrimitives(Lcom/google/android/youtube/core/transfer/b;)V

    goto/16 :goto_d

    .line 284
    :cond_ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t convert bundle entry of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to primitives"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_ce} :catch_27

    goto/16 :goto_d

    .line 290
    :cond_d0
    return-object v2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    const-string v0, "DROP TABLE IF EXISTS transfers"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    const-string v0, "CREATE TABLE transfers (file_path TEXT PRIMARY KEY,network_uri TEXT,status INTEGER,status_reason INTEGER,bytes_transferred BIGINT,bytes_total BIGINT,extras BLOB,output_extras BLOB)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    new-instance v1, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v1}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/b;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 191
    const-string v1, "transfers"

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 206
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

    .line 209
    :try_start_21
    const-string v0, "file_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 210
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 211
    :goto_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 212
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 214
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_55

    .line 216
    :try_start_3e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 217
    const/4 v7, 0x0

    array-length v9, v4

    invoke-virtual {v6, v4, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 218
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 219
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 220
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_51} :catch_5a

    .line 224
    :goto_51
    :try_start_51
    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_2b

    .line 227
    :catchall_55
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 221
    :catch_5a
    move-exception v4

    .line 222
    :try_start_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unmarshall parcel for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_55

    goto :goto_51

    .line 227
    :cond_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 233
    :try_start_8f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/os/Bundle;)Lcom/google/android/youtube/core/transfer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/b;->a()[B

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 234
    const-string v4, "transfers"

    const-string v5, "file_path = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_b3} :catch_b4

    goto :goto_7d

    .line 235
    :catch_b4
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 237
    instance-of v4, v3, Ljava/io/InvalidClassException;

    if-eqz v4, :cond_ec

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Incompatible class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ec

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.youtube.core.model.Video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 243
    const-string v3, "Error unpacking a transfer"

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    const-string v3, "transfers"

    const-string v4, "file_path = ?"

    new-array v5, v11, [Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v10

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7d

    .line 246
    :cond_ec
    throw v0

    .line 249
    :cond_ed
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 133
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
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

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 138
    const/4 v0, 0x6

    if-ne p3, v0, :cond_55

    const/4 v0, 0x1

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVersion should be 6 but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 140
    if-ge p2, v4, :cond_57

    .line 142
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    const-string v0, "INSERT INTO transfers SELECT file_path, network_uri, status, 0, bytes_downloaded, bytes_total, NULL, NULL FROM downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "DROP TABLE downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string v0, "extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 156
    const-string v0, "output_extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 174
    :cond_54
    :goto_54
    return-void

    .line 138
    :cond_55
    const/4 v0, 0x0

    goto :goto_25

    .line 157
    :cond_57
    if-ne p2, v4, :cond_6e

    .line 158
    const-string v0, "ALTER TABLE transfers ADD COLUMN output_extras BLOB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "ALTER TABLE transfers ADD COLUMN status_reason INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v0, "output_extras"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/transfer/k;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 163
    const-string v0, "extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/k;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_54

    .line 166
    :cond_6e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_77

    .line 167
    const-string v0, "ALTER TABLE transfers ADD COLUMN status_reason INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v1

    .line 171
    :cond_77
    if-ne p2, v1, :cond_54

    .line 172
    const-string v0, "output_extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/k;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 173
    const-string v0, "extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/k;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_54
.end method
