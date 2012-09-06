.class public final Ldbxyzptlk/s/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x4b

    iput v0, p0, Ldbxyzptlk/s/a;->a:I

    .line 65
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Ldbxyzptlk/s/a;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 68
    new-instance v0, Ldbxyzptlk/v/t;

    invoke-direct {v0}, Ldbxyzptlk/v/t;-><init>()V

    invoke-virtual {v0, p2}, Ldbxyzptlk/v/t;->a(I)Ldbxyzptlk/v/t;

    move-result-object v0

    invoke-virtual {v0, p3}, Ldbxyzptlk/v/t;->b(I)Ldbxyzptlk/v/t;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/v/t;->a()Ldbxyzptlk/v/t;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/v/t;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/droidfu/imagecache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/s/a;->b:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldbxyzptlk/s/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/s/a;->d:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldbxyzptlk/s/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    monitor-enter p0

    :try_start_2
    check-cast p1, Ljava/lang/String;

    .line 111
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_2c

    .line 113
    if-eqz v0, :cond_10

    .line 131
    :goto_e
    monitor-exit p0

    return-object v0

    .line 118
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Ldbxyzptlk/s/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    if-nez v0, :cond_26

    move-object v0, v1

    .line 124
    goto :goto_e

    .line 126
    :cond_26
    iget-object v1, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2c

    goto :goto_e

    .line 110
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2f
    move-object v0, v1

    .line 131
    goto :goto_e
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Ldbxyzptlk/s/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 137
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 139
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 141
    iget-object v0, p0, Ldbxyzptlk/s/a;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Ldbxyzptlk/s/a;->a:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 143
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_16} :catch_1f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_24

    .line 151
    :goto_16
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 145
    :catch_1f
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 147
    :catch_24
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16
.end method

.method public final b(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Ldbxyzptlk/s/a;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/s/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Ldbxyzptlk/s/a;->b(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Ldbxyzptlk/s/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
