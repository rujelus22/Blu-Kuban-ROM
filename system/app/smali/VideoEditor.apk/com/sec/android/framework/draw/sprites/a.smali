.class public final Lcom/sec/android/framework/draw/sprites/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/framework/draw/sprites/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/sec/android/framework/draw/Setting;


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/Setting;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/a;->b:Lcom/sec/android/framework/draw/Setting;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/a;->b:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_2b

    const/4 v0, 0x0

    :goto_11
    if-lt v0, v2, :cond_17

    .line 74
    :goto_13
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/a;->interrupt()V

    .line 75
    return-void

    .line 66
    :cond_17
    :try_start_17
    aget-object v3, v1, v0

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_28} :catch_2b

    .line 66
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 71
    :catch_2b
    move-exception v0

    const-string v0, "DIOTEK/DRAW"

    const-string v1, "StrokeSpriteCacheBuilder : cacheDirectory is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/b;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 60
    :goto_5
    return-void

    .line 56
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method public final run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 26
    .line 29
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/b;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_75
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_9} :catch_4b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_5e

    .line 31
    :try_start_9
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/a;->b:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/Setting;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 34
    const-string v3, "cachedSprite"

    const-string v4, ".png"

    invoke-static {v3, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 35
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 36
    iget-object v4, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 37
    iget-object v3, v0, Lcom/sec/android/framework/draw/sprites/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setStrokeCache(Ljava/lang/String;)V

    .line 38
    const-string v1, "DIOTEK/DRAW"

    const-string v3, "StrokeSpriteCacheBuilder : creating cache file is a success"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_85
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_3d} :catch_8e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3d} :catch_8c

    .line 45
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iput-object v2, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 39
    :catch_4b
    move-exception v0

    move-object v1, v2

    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_8a

    .line 45
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iput-object v2, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 43
    :catch_5e
    move-exception v0

    move-object v0, v2

    :goto_60
    :try_start_60
    const-string v1, "DIOTEK/DRAW"

    const-string v3, "StrokeSpriteCacheBuilder : creating cache file is a failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_85

    .line 45
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iput-object v2, v0, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 44
    :catchall_75
    move-exception v0

    move-object v1, v2

    .line 45
    :goto_77
    if-eqz v1, :cond_84

    iget-object v3, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_84

    .line 46
    iget-object v3, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iput-object v2, v1, Lcom/sec/android/framework/draw/sprites/b;->b:Landroid/graphics/Bitmap;

    .line 49
    :cond_84
    throw v0

    .line 44
    :catchall_85
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_77

    :catchall_8a
    move-exception v0

    goto :goto_77

    .line 43
    :catch_8c
    move-exception v1

    goto :goto_60

    .line 39
    :catch_8e
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4d
.end method
