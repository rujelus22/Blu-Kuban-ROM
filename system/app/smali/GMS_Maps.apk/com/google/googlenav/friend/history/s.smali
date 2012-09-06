.class public Lcom/google/googlenav/friend/history/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/t;

.field private final b:LaT/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LaT/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/googlenav/friend/history/t;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/history/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    .line 54
    iput-object p2, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    .line 55
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 193
    const-string v0, "SELECT %s FROM %s WHERE %s=\"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "static_image"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "static_map_cache"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "static_map_url"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/t;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    invoke-virtual {v2, p1}, LaT/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/friend/history/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_1e
    return-object v0

    .line 181
    :cond_1f
    const-string v0, "static_image"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 182
    iget-object v2, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    invoke-virtual {v2, v0}, LaT/b;->b([B)[B

    move-result-object v2

    .line 183
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e
.end method

.method a([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 202
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/aL;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    const-string v1, "location_history"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    const-string v1, "static_map_cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public declared-synchronized a(Lcom/google/googlenav/friend/history/b;)V
    .registers 7
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/b;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    const-string v2, "location_history"

    const-string v3, "start_time_millis= ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 82
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 83
    const-string v3, "start_time_millis"

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/b;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_3a

    .line 85
    :try_start_1a
    const-string v3, "response_proto"

    iget-object v4, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    invoke-virtual {p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, LaT/b;->a([B)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_29} :catch_3d

    .line 90
    :try_start_29
    const-string v3, "location_history"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3a

    move-result-wide v1

    .line 92
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_38

    const/4 v0, 0x1

    :cond_38
    :goto_38
    monitor-exit p0

    return v0

    .line 81
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :catch_3d
    move-exception v1

    goto :goto_38
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v2, "static_map_url"

    iget-object v3, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    invoke-virtual {v3, p1}, LaT/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/google/googlenav/friend/history/s;->a(Landroid/graphics/drawable/BitmapDrawable;)[B

    move-result-object v2

    .line 106
    const-string v3, "static_image"

    iget-object v4, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    invoke-virtual {v4, v2}, LaT/b;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 107
    const-string v2, "static_map_cache"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 109
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method a(Landroid/graphics/drawable/BitmapDrawable;)[B
    .registers 6
    .parameter

    .prologue
    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/google/googlenav/friend/history/b;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/google/googlenav/friend/history/s;->a:Lcom/google/googlenav/friend/history/t;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/t;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT %s FROM %s WHERE %s=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "response_proto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "location_history"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "start_time_millis"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/history/b;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_39
    :goto_39
    return-object v0

    .line 146
    :cond_3a
    iget-object v2, p0, Lcom/google/googlenav/friend/history/s;->b:LaT/b;

    const-string v3, "response_proto"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, LaT/b;->b([B)[B

    move-result-object v2

    .line 149
    if-eqz v2, :cond_39

    .line 154
    :try_start_4c
    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/history/s;->a([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_59
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_54

    move-result-object v0

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 155
    :catch_54
    move-exception v2

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_39

    :catchall_59
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
