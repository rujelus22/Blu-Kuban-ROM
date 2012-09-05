.class public Lcom/cooliris/wallpaper/RandomDataSource;
.super Ljava/lang/Object;
.source "RandomDataSource.java"

# interfaces
.implements Lcom/cooliris/wallpaper/Slideshow$DataSource;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapForIndex(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "currentSlideshowCounter"

    .prologue
    const/4 v11, 0x0

    .line 33
    invoke-static {p1}, Lcom/cooliris/cache/CacheService;->getImageList(Landroid/content/Context;)Lcom/cooliris/cache/ImageList;

    move-result-object v8

    .line 36
    .local v8, list:Lcom/cooliris/cache/ImageList;
    iget-object v0, v8, Lcom/cooliris/cache/ImageList;->ids:[J

    if-nez v0, :cond_a

    .line 54
    :cond_9
    :goto_9
    return-object v11

    .line 38
    :cond_a
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    .line 39
    .local v9, random:D
    iget-object v0, v8, Lcom/cooliris/cache/ImageList;->ids:[J

    array-length v0, v0

    int-to-double v2, v0

    mul-double/2addr v9, v2

    .line 40
    double-to-int v7, v9

    .line 41
    .local v7, index:I
    iget-object v0, v8, Lcom/cooliris/cache/ImageList;->thumbids:[J

    aget-wide v4, v0, v7

    .line 42
    .local v4, cacheId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v8, Lcom/cooliris/cache/ImageList;->ids:[J

    aget-wide v2, v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, uri:Ljava/lang/String;
    const/4 v11, 0x0

    .line 45
    .local v11, retVal:Landroid/graphics/Bitmap;
    const/16 v2, 0x400

    const/16 v3, 0x400

    const/4 v6, 0x0

    move-object v0, p1

    :try_start_36
    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 47
    if-eqz v11, :cond_9

    .line 48
    iget-object v0, v8, Lcom/cooliris/cache/ImageList;->orientation:[I

    aget v0, v0, v7

    invoke-static {v11, v0}, Lcom/cooliris/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_43} :catch_49
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_43} :catch_47
    .catch Ljava/net/URISyntaxException; {:try_start_36 .. :try_end_43} :catch_45

    move-result-object v11

    goto :goto_9

    .line 52
    :catch_45
    move-exception v0

    goto :goto_9

    .line 51
    :catch_47
    move-exception v0

    goto :goto_9

    .line 50
    :catch_49
    move-exception v0

    goto :goto_9
.end method
