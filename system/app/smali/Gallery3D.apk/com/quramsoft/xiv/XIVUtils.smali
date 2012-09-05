.class public Lcom/quramsoft/xiv/XIVUtils;
.super Ljava/lang/Object;
.source "XIVUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static mLargeThumbnailSize:I

.field private static mMinithumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mZoomResoltionSize:I

.field private static volatile singleton:Lcom/quramsoft/xiv/XIVUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const/16 v0, 0x600

    sput v0, Lcom/quramsoft/xiv/XIVUtils;->mLargeThumbnailSize:I

    .line 54
    const/16 v0, 0x800

    sput v0, Lcom/quramsoft/xiv/XIVUtils;->mZoomResoltionSize:I

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "orientation"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/quramsoft/xiv/XIVUtils;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/quramsoft/xiv/XIVUtils;->mMinithumbMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCache(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 1393
    const-string v0, "_%d.cache"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final checkHiresImage(Lcom/cooliris/media/Texture;)Lcom/cooliris/media/Texture;
    .registers 1
    .parameter "hires"

    .prologue
    .line 538
    return-object p0
.end method

.method public static computeLowerboundSampleValue(III)I
    .registers 5
    .parameter "wdt"
    .parameter "hgt"
    .parameter "maxSize"

    .prologue
    .line 857
    const/4 v1, 0x1

    .line 859
    .local v1, sampleValue:I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 861
    .local v0, maxRes:I
    :goto_5
    if-gt v0, p2, :cond_8

    .line 866
    return v1

    .line 863
    :cond_8
    shr-int/lit8 v0, v0, 0x1

    .line 864
    shl-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private static computeSampleSize(Ljava/io/InputStream;II)I
    .registers 6
    .parameter "stream"
    .parameter "maxResolutionX"
    .parameter "maxResolutionY"

    .prologue
    .line 527
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 528
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 529
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 533
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1}, Lcom/quramsoft/xiv/XIVUtils;->computeLowerboundSampleValue(III)I

    move-result v1

    return v1
.end method

.method public static createFromCache(JI)Landroid/graphics/Bitmap;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 291
    .line 293
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 296
    invoke-static {p2}, Lcom/quramsoft/xiv/XIVUtils;->getPreferedConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 297
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 299
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_8a

    .line 301
    const-string v2, "hires-image-cache"

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 304
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 306
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hires-image-cache"

    invoke-static {v3}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 393
    :goto_5e
    return-object v1

    .line 322
    :cond_5f
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 323
    invoke-static {v2, v3}, Lcom/quramsoft/xiv/XIVCoder;->ParseVCodecFromFile(Ljava/lang/String;[I)I

    move-result v4

    if-lez v4, :cond_85

    .line 325
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseFastCodec()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 331
    invoke-static {v2, v0}, Lcom/quramsoft/xiv/XIVCoder;->DecodeImageFromFileLite(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    :goto_7d
    move-object v1, v0

    .line 391
    goto :goto_5e

    .line 335
    :cond_7f
    invoke-static {v2, v0}, Lcom/quramsoft/xiv/XIVCoder;->DecodeImageFromFile(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    goto :goto_7d

    .line 392
    :catch_83
    move-exception v0

    goto :goto_5e

    .line 344
    :cond_85
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_88} :catch_83

    move-result-object v0

    goto :goto_7d

    :cond_8a
    move-object v0, v1

    goto :goto_7d
.end method

.method public static final createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 642
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 644
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 648
    const/4 v0, 0x0

    .line 650
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x0

    move v3, v1

    .line 652
    :goto_22
    if-nez v3, :cond_29

    .line 653
    const/4 v0, 0x0

    .line 819
    :cond_25
    :goto_25
    return-object v0

    .line 650
    :cond_26
    const/4 v1, 0x1

    move v3, v1

    goto :goto_22

    .line 656
    :cond_29
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isEnabled:Z

    if-eqz v1, :cond_140

    if-eqz v3, :cond_140

    .line 659
    const/4 v1, 0x0

    .line 662
    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 663
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 664
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "mime_type"

    aput-object v8, v6, v7

    .line 662
    invoke-static {v2, v5, v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 666
    if-eqz v1, :cond_13b

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 667
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 671
    const/4 v1, 0x0

    .line 673
    sget-boolean v6, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v6, :cond_77

    .line 674
    const-string v6, "XIVUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Create From URI : File Path = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_77
    if-eqz v2, :cond_13b

    const-string v6, "jpeg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_89

    const-string v6, "jpg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 679
    :cond_89
    const/4 v2, 0x3

    new-array v6, v2, [I

    .line 681
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseSkia()Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 683
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 684
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 685
    const/4 v7, 0x1

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 686
    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 687
    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v8, v6, v7

    .line 688
    const/4 v7, 0x1

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, v6, v7

    .line 689
    const/4 v2, 0x2

    const/4 v7, 0x1

    aput v7, v6, v2

    .line 698
    :goto_ae
    const/4 v2, 0x2

    aget v2, v6, v2

    if-eqz v2, :cond_120

    .line 700
    const/4 v0, 0x0

    aget v0, v6, v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 701
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 704
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2, p2}, Lcom/quramsoft/xiv/XIVUtils;->computeLowerboundSampleValue(III)I

    move-result v0

    .line 706
    if-nez v0, :cond_1cd

    .line 707
    const/4 v0, 0x1

    move v2, v0

    .line 709
    :goto_c9
    const/4 v0, 0x0

    aget v0, v6, v0

    div-int/2addr v0, v2

    .line 710
    const/4 v7, 0x1

    aget v6, v6, v7

    div-int/2addr v6, v2

    .line 713
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 715
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 716
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 717
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 718
    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_e5
    .catchall {:try_start_30 .. :try_end_e5} :catchall_f4

    move-result-object v0

    .line 745
    :goto_e6
    if-eqz v0, :cond_13b

    .line 752
    if-eqz v1, :cond_25

    .line 753
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_25

    .line 693
    :cond_ef
    const/4 v2, 0x1

    :try_start_f0
    invoke-static {v5, v6, v2}, Lcom/quramsoft/xiv/XIVCoder;->ParseImageFromFile(Ljava/lang/String;[II)I
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    goto :goto_ae

    .line 751
    :catchall_f4
    move-exception v0

    .line 752
    if-eqz v1, :cond_fa

    .line 753
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 755
    :cond_fa
    throw v0

    .line 722
    :cond_fb
    :try_start_fb
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseSkia()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 724
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 725
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 726
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 728
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 729
    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e6

    .line 733
    :cond_114
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v0, v6, v7, v2}, Lcom/quramsoft/xiv/XIVCoder;->DecodeJPEGFromFile(Ljava/lang/String;Landroid/graphics/Bitmap;III)I

    goto :goto_e6

    .line 742
    :cond_120
    const-string v2, "XIVUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createFromUri <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> decode failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catchall {:try_start_fb .. :try_end_13a} :catchall_f4

    goto :goto_e6

    .line 752
    :cond_13b
    if-eqz v1, :cond_140

    .line 753
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_140
    const/4 v1, 0x0

    .line 761
    const-string v2, "content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_151

    .line 762
    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 764
    :cond_151
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 765
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v5, 0x4000

    .line 764
    invoke-direct {v1, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 769
    :cond_164
    if-eqz v1, :cond_1c5

    .line 770
    invoke-static {v1, p2, p3}, Lcom/quramsoft/xiv/XIVUtils;->computeSampleSize(Ljava/io/InputStream;II)I

    move-result v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 776
    const/4 v1, 0x0

    .line 777
    const-string v2, "content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17d

    .line 778
    const-string v2, "file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 780
    :cond_17d
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 781
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v5, 0x4000

    .line 780
    invoke-direct {v1, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 785
    :cond_190
    if-eqz v1, :cond_1a7

    .line 786
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 788
    new-instance v0, Lcom/quramsoft/xiv/XIVUtils$1;

    const-string v2, "BitmapTimeoutThread"

    invoke-direct {v0, v2, v4}, Lcom/quramsoft/xiv/XIVUtils$1;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 799
    const/4 v0, 0x0

    invoke-static {v1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 803
    :cond_1a7
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 812
    :goto_1af
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isEnabled:Z

    if-nez v1, :cond_25

    .line 814
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1ba

    if-nez v3, :cond_25

    :cond_1ba
    if-eqz v0, :cond_25

    .line 815
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v1, p2, v1

    invoke-static {p4, p5, v0, v1}, Lcom/quramsoft/xiv/XIVUtils;->writeToCache(JLandroid/graphics/Bitmap;I)Z

    goto/16 :goto_25

    .line 772
    :cond_1c5
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 807
    :cond_1c8
    invoke-static {p1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide p4

    goto :goto_1af

    :cond_1cd
    move v2, v0

    goto/16 :goto_c9
.end method

.method public static final createFromUriEx(Landroid/content/Context;Lcom/cooliris/media/Texture;Ljava/lang/String;JLorg/apache/http/conn/ClientConnectionManager;Lcom/cooliris/media/MediaItem;Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;)Landroid/graphics/Bitmap;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 551
    .line 554
    const/4 v9, 0x0

    .line 555
    const/4 v7, 0x0

    .line 556
    const-string v1, "content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 557
    const/4 v8, 0x0

    .line 559
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 560
    const-string v5, "_data"

    aput-object v5, v3, v4

    .line 561
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 559
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_97

    move-result-object v2

    .line 562
    if-eqz v2, :cond_be

    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_be

    .line 563
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_b5
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_b7

    move-result-object v9

    move-object v1, v9

    .line 569
    :goto_34
    if-eqz v2, :cond_39

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 577
    :cond_39
    :goto_39
    if-eqz v1, :cond_b9

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, ".odf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, ".o4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, ".o4v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 578
    :cond_5b
    const/4 v1, 0x1

    move v8, v1

    .line 581
    :goto_5d
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getLargeThumbnailSize()I

    move-result v3

    .line 582
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getLargeThumbnailSize()I

    move-result v4

    .line 584
    sget-object v1, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->ZOOM_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    move-object/from16 v0, p7

    if-ne v0, v1, :cond_73

    .line 586
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getZoomResolutionSize()I

    move-result v3

    .line 587
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getZoomResolutionSize()I

    move-result v4

    .line 591
    :cond_73
    invoke-static {}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->createInfo()Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    move-result-object v1

    iput-object v1, p1, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    .line 592
    iget-object v1, p1, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    invoke-static {v1}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->setCurrentInfo(Lcom/quramsoft/xiv/XIVLargeThumnailInfo;)V

    .line 607
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v5, p3

    .line 604
    invoke-static/range {v1 .. v7}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 618
    if-nez v8, :cond_96

    .line 620
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v2

    invoke-static {v1, p3, p4, p2, v2}, Lcom/quramsoft/xiv/XIVUtils;->writeMediumnailCache(Landroid/graphics/Bitmap;JLjava/lang/String;I)Z

    move-result v2

    .line 621
    if-eqz p6, :cond_96

    .line 622
    move-object/from16 v0, p6

    iput-boolean v2, v0, Lcom/cooliris/media/MediaItem;->mMediumnailReady:Z

    .line 636
    :cond_96
    return-object v1

    .line 566
    :catch_97
    move-exception v1

    move-object v2, v8

    .line 567
    :goto_99
    :try_start_99
    const-string v3, "XIVUtils"

    const-string v4, "createFromUri: Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_b5

    .line 569
    if-eqz v2, :cond_bb

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v1, v9

    goto :goto_39

    .line 568
    :catchall_a7
    move-exception v1

    move-object v2, v8

    .line 569
    :goto_a9
    if-eqz v2, :cond_ae

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_ae
    throw v1

    .line 574
    :cond_af
    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 568
    :catchall_b5
    move-exception v1

    goto :goto_a9

    .line 566
    :catch_b7
    move-exception v1

    goto :goto_99

    :cond_b9
    move v8, v7

    goto :goto_5d

    :cond_bb
    move-object v1, v9

    goto/16 :goto_39

    :cond_be
    move-object v1, v9

    goto/16 :goto_34
.end method

.method public static decodeFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IILcom/quramsoft/xiv/XIVErrorInfo;)Landroid/graphics/Bitmap;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1105
    .line 1109
    const/4 v3, 0x0

    .line 1113
    if-eqz p5, :cond_1d

    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseCancelDecoding()Z

    move-result v1

    move v6, v1

    .line 1114
    :goto_8
    if-eqz v6, :cond_11

    .line 1115
    sget-object v1, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_ERROR:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/quramsoft/xiv/XIVErrorInfo;->setResult(Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;)V

    .line 1119
    :cond_11
    const-string v1, "content://media/external/images/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1121
    const/4 v1, 0x0

    .line 1288
    :cond_1c
    :goto_1c
    return-object v1

    .line 1113
    :cond_1d
    const/4 v1, 0x0

    move v6, v1

    goto :goto_8

    .line 1125
    :cond_20
    const/4 v2, 0x0

    .line 1127
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1128
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1129
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_data"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "mime_type"

    aput-object v8, v5, v7

    .line 1127
    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1131
    if-eqz v2, :cond_21d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 1132
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1133
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1135
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_1da

    .line 1136
    const/4 v2, 0x0

    .line 1140
    if-eqz v7, :cond_54

    if-nez v1, :cond_5b

    .line 1280
    :cond_54
    if-eqz v2, :cond_59

    .line 1281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1142
    :cond_59
    const/4 v1, 0x0

    goto :goto_1c

    .line 1145
    :cond_5b
    :try_start_5b
    const-string v4, "jpeg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6b

    const-string v4, "jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 1147
    :cond_6b
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 1149
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseSkia()Z

    move-result v4

    if-eqz v4, :cond_1d4

    .line 1151
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1152
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1153
    const/4 v5, 0x1

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1154
    invoke-static {v7, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1155
    const/4 v5, 0x0

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v8, v1, v5

    .line 1156
    const/4 v5, 0x1

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v4, v1, v5

    .line 1157
    const/4 v4, 0x2

    const/4 v5, 0x1

    aput v5, v1, v4

    .line 1164
    :goto_90
    const/4 v4, 0x1

    .line 1166
    const/4 v5, 0x2

    aget v5, v1, v5

    if-eqz v5, :cond_1fe

    .line 1168
    const/4 v5, 0x0

    aget v8, v1, v5

    .line 1169
    const/4 v5, 0x1

    aget v9, v1, v5

    .line 1170
    move/from16 v0, p4

    int-to-float v1, v0

    .line 1171
    if-le v8, v9, :cond_a4

    .line 1172
    move/from16 v0, p3

    int-to-float v1, v0

    .line 1174
    :cond_a4
    move/from16 v0, p3

    int-to-float v5, v0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1e1

    :goto_ab
    move/from16 v0, p4

    int-to-float v5, v0

    .line 1175
    int-to-float v10, v8

    div-float v1, v10, v1

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v1, v10

    .line 1176
    int-to-float v10, v9

    div-float v5, v10, v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    .line 1177
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1178
    invoke-static {v1}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v1

    .line 1180
    if-eqz v1, :cond_21a

    move v5, v1

    .line 1184
    :goto_cb
    div-int v10, v8, v5

    .line 1185
    div-int v11, v9, v5

    .line 1187
    sget-boolean v4, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v4, :cond_104

    .line 1188
    const-string v4, "XIVUtils"

    const-string v12, "decodeFromUri : TW: %d TH: %d W: %d H: %d ratio: %d"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v14

    const/4 v8, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v8

    const/4 v8, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v8

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_104
    const/4 v4, 0x0

    .line 1194
    const/4 v1, 0x0

    check-cast v1, [B

    .line 1195
    invoke-static {v7}, Lcom/cooliris/cache/CacheService;->getExifthumbnail(Ljava/lang/String;)[B

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_163

    .line 1198
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1199
    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1200
    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1201
    const/4 v9, 0x0

    array-length v12, v1

    invoke-static {v1, v9, v12, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1203
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1204
    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1205
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1207
    sget-boolean v13, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v13, :cond_148

    .line 1208
    const-string v13, "XIVUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ExifWidth = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " ExifHeight = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_148
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lt v12, v8, :cond_163

    .line 1212
    const/4 v3, 0x0

    array-length v8, v1

    invoke-static {v1, v3, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1213
    if-eqz v3, :cond_163

    .line 1215
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v1, :cond_161

    .line 1216
    const-string v1, "XIVUtils"

    const-string v4, "Use Exif for LTN"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_161
    const/4 v1, 0x1

    move v4, v1

    .line 1222
    :cond_163
    const/4 v1, 0x0

    .line 1224
    if-nez v4, :cond_1f0

    .line 1226
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_171

    .line 1227
    const-string v3, "XIVUtils"

    const-string v4, "No use Exif for LTN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_171
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseSkia()Z

    move-result v3

    if-eqz v3, :cond_1e5

    .line 1231
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1234
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1235
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1236
    if-eqz v6, :cond_18d

    .line 1238
    invoke-static {}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->getCurrentInfo()Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_18d

    .line 1240
    invoke-virtual {v1, v3}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->setLargeThumnailOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 1242
    :cond_18d
    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v16, v1

    move-object v1, v3

    move-object/from16 v3, v16

    .line 1254
    :goto_196
    if-nez v1, :cond_1f6

    .line 1255
    const-string v4, "XIVUtils"

    const-string v5, "bitmap == null "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    if-eqz v3, :cond_1ae

    invoke-virtual {v3}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->isDecodingCanceled()Z

    move-result v3

    if-eqz v3, :cond_1ae

    .line 1258
    sget-object v3, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/quramsoft/xiv/XIVErrorInfo;->setResult(Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;)V

    .line 1265
    :cond_1ae
    :goto_1ae
    if-eqz v1, :cond_1cd

    .line 1267
    sget-boolean v3, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v3, :cond_1ca

    .line 1268
    const-string v3, "XIVUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LTN Decoding success: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_1ca
    const/4 v3, 0x1

    sput-boolean v3, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLTNPreload:Z
    :try_end_1cd
    .catchall {:try_start_5b .. :try_end_1cd} :catchall_1da

    .line 1280
    :cond_1cd
    :goto_1cd
    if-eqz v2, :cond_1c

    .line 1281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c

    .line 1161
    :cond_1d4
    const/4 v4, 0x1

    :try_start_1d5
    invoke-static {v7, v1, v4}, Lcom/quramsoft/xiv/XIVCoder;->ParseImageFromFile(Ljava/lang/String;[II)I
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1da

    goto/16 :goto_90

    .line 1279
    :catchall_1da
    move-exception v1

    .line 1280
    if-eqz v2, :cond_1e0

    .line 1281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1283
    :cond_1e0
    throw v1

    :cond_1e1
    move/from16 p4, p3

    .line 1174
    goto/16 :goto_ab

    .line 1248
    :cond_1e5
    :try_start_1e5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1249
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v7, v3, v4, v6, v5}, Lcom/quramsoft/xiv/XIVCoder;->DecodeJPEGFromFile(Ljava/lang/String;Landroid/graphics/Bitmap;III)I

    :cond_1f0
    move-object/from16 v16, v1

    move-object v1, v3

    move-object/from16 v3, v16

    goto :goto_196

    .line 1262
    :cond_1f6
    sget-object v3, Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;->RESULT_SUCCESS:Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/quramsoft/xiv/XIVErrorInfo;->setResult(Lcom/quramsoft/xiv/XIVErrorInfo$XIVResult;)V

    goto :goto_1ae

    .line 1275
    :cond_1fe
    const-string v1, "XIVUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createFromUri <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> decode failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catchall {:try_start_1e5 .. :try_end_218} :catchall_1da

    move-object v1, v3

    goto :goto_1cd

    :cond_21a
    move v5, v4

    goto/16 :goto_cb

    :cond_21d
    move-object v1, v3

    goto :goto_1cd
.end method

.method public static destroyInstance()V
    .registers 3

    .prologue
    .line 82
    :try_start_0
    const-class v2, Lcom/quramsoft/xiv/XIVUtils;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_14

    .line 83
    :try_start_3
    sget-object v1, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    if-eqz v1, :cond_f

    .line 85
    sget-object v1, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V

    .line 86
    const/4 v1, 0x0

    sput-object v1, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    .line 82
    :cond_f
    monitor-exit v2

    .line 93
    .local v0, e:Ljava/lang/Throwable;
    :goto_10
    return-void

    .line 82
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_14} :catch_14

    .line 89
    :catch_14
    move-exception v0

    .line 91
    .restart local v0       #e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method public static getInstance()Lcom/quramsoft/xiv/XIVUtils;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    if-nez v0, :cond_13

    .line 100
    const-class v1, Lcom/quramsoft/xiv/XIVUtils;

    monitor-enter v1

    .line 103
    :try_start_7
    sget-object v0, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    if-nez v0, :cond_12

    .line 105
    new-instance v0, Lcom/quramsoft/xiv/XIVUtils;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVUtils;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    .line 100
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 109
    :cond_13
    sget-object v0, Lcom/quramsoft/xiv/XIVUtils;->singleton:Lcom/quramsoft/xiv/XIVUtils;

    return-object v0

    .line 100
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getLargeThumbnailSize()I
    .registers 1

    .prologue
    .line 1435
    sget v0, Lcom/quramsoft/xiv/XIVUtils;->mLargeThumbnailSize:I

    return v0
.end method

.method public static getMediumnailBitmap(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://media/external/images/media/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 982
    const-string v0, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 985
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 986
    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 987
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 985
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_69

    move-result-object v1

    .line 988
    if-eqz v1, :cond_dc

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_dc

    .line 989
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 990
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3f} :catch_d7

    move-result-object v0

    .line 995
    :goto_40
    if-eqz v1, :cond_45

    .line 996
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1003
    :cond_45
    :goto_45
    if-eqz v0, :cond_87

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, ".odf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, ".o4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, ".o4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_67
    move-object v0, v7

    .line 1042
    :cond_68
    :goto_68
    return-object v0

    .line 992
    :catch_69
    move-exception v0

    move-object v1, v7

    .line 993
    :goto_6b
    :try_start_6b
    const-string v2, "XIVUtils"

    const-string v3, "createFromUri: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_d5

    .line 995
    if-eqz v1, :cond_d9

    .line 996
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    goto :goto_45

    .line 994
    :catchall_79
    move-exception v0

    move-object v1, v7

    .line 995
    :goto_7b
    if-eqz v1, :cond_80

    .line 996
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 998
    :cond_80
    throw v0

    .line 1000
    :cond_81
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 1007
    :cond_87
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v2

    .line 1013
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v2

    :try_start_91
    invoke-static/range {v0 .. v6}, Lcom/quramsoft/xiv/XIVUtils;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_d1
    .catch Ljava/net/URISyntaxException; {:try_start_91 .. :try_end_94} :catch_cd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_94} :catch_c4

    move-result-object v0

    .line 1018
    :try_start_95
    const-string v1, "content"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1025
    :goto_9d
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 1026
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v1

    if-ne v2, v1, :cond_68

    .line 1027
    invoke-static {p3, p4, v0, v2}, Lcom/quramsoft/xiv/XIVUtils;->writeToCache(JLandroid/graphics/Bitmap;I)Z
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_ac} :catch_ad
    .catch Ljava/net/URISyntaxException; {:try_start_95 .. :try_end_ac} :catch_bf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_95 .. :try_end_ac} :catch_cb

    goto :goto_68

    .line 1033
    :catch_ad
    move-exception v1

    .line 1034
    :goto_ae
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 1022
    :cond_b2
    :try_start_b2
    invoke-static {v8}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide p3

    goto :goto_9d

    .line 1029
    :cond_b7
    const-string v1, "XIVUtils"

    const-string v2, "do not save hi-res-cache as low Storage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_be} :catch_ad
    .catch Ljava/net/URISyntaxException; {:try_start_b2 .. :try_end_be} :catch_bf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b2 .. :try_end_be} :catch_cb

    goto :goto_68

    .line 1035
    :catch_bf
    move-exception v1

    .line 1036
    :goto_c0
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_68

    .line 1038
    :catch_c4
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 1039
    :goto_c7
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_68

    .line 1038
    :catch_cb
    move-exception v1

    goto :goto_c7

    .line 1035
    :catch_cd
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_c0

    .line 1033
    :catch_d1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_ae

    .line 994
    :catchall_d5
    move-exception v0

    goto :goto_7b

    .line 992
    :catch_d7
    move-exception v0

    goto :goto_6b

    :cond_d9
    move-object v0, v7

    goto/16 :goto_45

    :cond_dc
    move-object v0, v7

    goto/16 :goto_40
.end method

.method public static getMediumnailBitmap(Landroid/content/Context;Lcom/cooliris/media/MediaItem;Z)Landroid/graphics/Bitmap;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1048
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v3

    .line 1050
    invoke-virtual {p1}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v0

    if-nez v0, :cond_46

    if-eqz p2, :cond_46

    .line 1052
    const/4 v0, 0x0

    .line 1054
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUsePriorityControl()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1056
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 1057
    const/16 v1, -0x10

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1061
    :cond_20
    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1063
    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    .line 1067
    :goto_30
    invoke-static {v1, v2, v3}, Lcom/quramsoft/xiv/XIVUtils;->createFromCache(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1069
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUsePriorityControl()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1071
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_3d
    move-object v0, v1

    .line 1080
    :goto_3e
    return-object v0

    .line 1065
    :cond_3f
    iget-object v1, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_30

    .line 1080
    :cond_46
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public static getPreferedConfig(I)Landroid/graphics/Bitmap$Config;
    .registers 2
    .parameter "maxResolution"

    .prologue
    .line 187
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 176
    return-object p0
.end method

.method public static getTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;IIIZZ)Lcom/cooliris/media/Texture;
    .registers 12
    .parameter "view"
    .parameter "displayItem"
    .parameter "thumbnailTexture"
    .parameter "selectedSlot"
    .parameter "selectedSlotToUse"
    .parameter "selectedSlotIndex"
    .parameter "slideshowMode"
    .parameter "isUseCameraCurrentSlot"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, texture:Lcom/cooliris/media/Texture;
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_9

    .line 206
    const/4 v2, 0x0

    .line 237
    :goto_8
    return-object v2

    .line 209
    :cond_9
    if-nez p6, :cond_2f

    .line 212
    if-nez p2, :cond_13

    .line 214
    invoke-virtual {p1, v0}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v1

    :goto_11
    move-object v2, v1

    .line 237
    goto :goto_8

    .line 218
    :cond_13
    iget v2, p1, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    if-eq p3, p4, :cond_1e

    .line 219
    :cond_1a
    sget-boolean v2, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->mLTNPreload:Z

    if-eqz v2, :cond_23

    .line 221
    :cond_1e
    invoke-virtual {p1, v0}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v1

    goto :goto_11

    .line 225
    :cond_23
    move-object v1, p2

    .line 227
    const/4 v2, 0x0

    iput v2, p1, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 228
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;

    move-result-object v2

    invoke-virtual {v2, p0, p5, p7}, Lcom/quramsoft/xiv/XIVSlotChecker;->setSlotInfo(Lcom/cooliris/media/RenderView;IZ)V

    goto :goto_11

    .line 234
    :cond_2f
    invoke-virtual {p1, v0}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v1

    goto :goto_11
.end method

.method public static getThumbnailTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/MediaItemTexture$Config;IIIZZ)Lcom/cooliris/media/Texture;
    .registers 14
    .parameter "view"
    .parameter "displayItem"
    .parameter "thumbnailConfig"
    .parameter "selectedSlot"
    .parameter "selectedSlotToUse"
    .parameter "selectedSlotIndex"
    .parameter "slideshowMode"
    .parameter "isUseCameraCurrentSlot"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, thumbnailTexture:Lcom/cooliris/media/Texture;
    invoke-virtual {p0}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    .local v0, context:Landroid/content/Context;
    if-nez p1, :cond_a

    .line 286
    :cond_9
    :goto_9
    return-object v3

    .line 255
    :cond_a
    if-nez p6, :cond_35

    .line 257
    iget v4, p1, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    if-ne v4, v5, :cond_26

    if-ne p3, p4, :cond_26

    .line 259
    invoke-virtual {p1, v0, p2}, Lcom/cooliris/media/DisplayItem;->getMediumnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v2

    .line 270
    :goto_16
    iget-object v1, p1, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 271
    .local v1, item:Lcom/cooliris/media/MediaItem;
    if-eqz v1, :cond_1e

    iget-boolean v4, v1, Lcom/cooliris/media/MediaItem;->mMediumnailReady:Z

    if-eqz v4, :cond_9

    .line 278
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 279
    invoke-virtual {p0, v2, v5}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .end local v1           #item:Lcom/cooliris/media/MediaItem;
    :goto_24
    move-object v3, v2

    .line 286
    goto :goto_9

    .line 263
    :cond_26
    invoke-virtual {p1, v0, p2}, Lcom/cooliris/media/DisplayItem;->getMediumnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v2

    .line 265
    const/4 v4, 0x0

    iput v4, p1, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 266
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;

    move-result-object v4

    invoke-virtual {v4, p0, p5, p7}, Lcom/quramsoft/xiv/XIVSlotChecker;->setSlotInfo(Lcom/cooliris/media/RenderView;IZ)V

    goto :goto_16

    .line 283
    :cond_35
    invoke-virtual {p1, v0, p2}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v2

    goto :goto_24
.end method

.method public static getTimeElapsedInSec(I)F
    .registers 2
    .parameter "state"

    .prologue
    .line 1399
    invoke-static {p0}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getTimeElapsedInSec(I)F

    move-result v0

    return v0
.end method

.method public static getZoomResolutionSize()I
    .registers 1

    .prologue
    .line 1443
    sget v0, Lcom/quramsoft/xiv/XIVUtils;->mZoomResoltionSize:I

    return v0
.end method

.method public static initialize()V
    .registers 0

    .prologue
    .line 74
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->destroyInstance()V

    .line 75
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->destroyInstance()V

    .line 76
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->destroyInstance()V

    .line 77
    return-void
.end method

.method public static invalidateCache(J)V
    .registers 3
    .parameter "crc64"

    .prologue
    .line 1388
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/cooliris/media/UriTexture;->invalidateCache(JI)V

    .line 1389
    return-void
.end method

.method public static requestFullImage([Lcom/cooliris/media/DisplayItem;IIII)Z
    .registers 10
    .parameter "displayItems"
    .parameter "slotId"
    .parameter "beginOfbufferedVisibleRage"
    .parameter "maxItemsPerSlot"
    .parameter "maxItemsDrawable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1404
    sub-int v4, p1, p2

    mul-int v1, v4, p3

    .line 1405
    .local v1, indexInDrawnArray:I
    if-ltz v1, :cond_e

    if-ge v1, p4, :cond_e

    .line 1406
    aget-object v0, p0, v1

    .line 1408
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v0, :cond_f

    .line 1415
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_e
    :goto_e
    return v2

    .line 1411
    .restart local v0       #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_f
    iput v3, v0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    move v2, v3

    .line 1412
    goto :goto_e
.end method

.method public static writeMediumnailCache(Landroid/graphics/Bitmap;JLjava/lang/String;I)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 876
    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "hires-image-cache"

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    const-string v0, "hires-image-cache"

    invoke-static {v0}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_41

    .line 885
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 887
    :cond_41
    if-eqz p0, :cond_ba

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_ba

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_ba

    .line 889
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 890
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 892
    invoke-static {v3, v4, p4}, Lcom/quramsoft/xiv/XIVUtils;->computeLowerboundSampleValue(III)I

    move-result v0

    .line 894
    if-gtz v0, :cond_64

    move v0, v1

    .line 897
    :cond_64
    div-int v2, v3, v0

    div-int v5, v4, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 899
    sget-boolean v2, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v2, :cond_a2

    .line 900
    const-string v2, "XIVUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "maxSize="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LTN_Width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LTN_Height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sampleSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_a2
    div-int v2, v3, v0

    .line 908
    div-int v0, v4, v0

    .line 911
    if-lez v3, :cond_ab

    if-nez v2, :cond_ab

    move v2, v1

    .line 913
    :cond_ab
    if-lez v4, :cond_b0

    if-nez v0, :cond_b0

    move v0, v1

    .line 916
    :cond_b0
    int-to-float v4, v2

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 917
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_bb

    .line 919
    const/4 v1, 0x0

    .line 972
    :cond_ba
    :goto_ba
    return v1

    .line 922
    :cond_bb
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 923
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 924
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 925
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 926
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 927
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 929
    invoke-virtual {v2, p0, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 938
    const-string v2, "content"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 946
    :goto_e1
    invoke-static {}, Lcom/cooliris/cache/CacheService;->checkLowStorageforCacheService()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 947
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->getMediumnailSize()I

    move-result v2

    if-ne p4, v2, :cond_f1

    .line 949
    invoke-static {p1, p2, v0, p4}, Lcom/quramsoft/xiv/XIVUtils;->writeToCache(JLandroid/graphics/Bitmap;I)Z

    move-result v1

    .line 954
    :cond_f1
    :goto_f1
    sget-boolean v2, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v2, :cond_125

    .line 955
    const-string v2, "XIVUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeToCache MTN: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxSideLength= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_125
    if-eq v0, p0, :cond_143

    .line 960
    sget-boolean v2, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v2, :cond_132

    .line 961
    const-string v2, "XIVUtils"

    const-string v3, "resizeBitmap is not equal to bitmap, so recycle it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_132
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_ba

    .line 942
    :cond_136
    invoke-static {p3}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_e1

    .line 951
    :cond_13b
    const-string v2, "XIVUtils"

    const-string v3, "do not save hi-res-cache as low Storage"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 967
    :cond_143
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_ba

    .line 968
    const-string v0, "XIVUtils"

    const-string v2, "resizeBitmap is equal to bitmap, so do NOT recycle it"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba
.end method

.method public static writeToCache(JLandroid/graphics/Bitmap;I)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    const-string v1, "hires-image-cache"

    invoke-static {v1}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 406
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hires-image-cache"

    invoke-static {v2}, Lcom/cooliris/cache/CacheService;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    if-eqz p2, :cond_e1

    if-eqz v2, :cond_e1

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-eqz v1, :cond_e1

    .line 409
    :try_start_46
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_56

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v3, :cond_b0

    .line 411
    :cond_56
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v1, :cond_69

    .line 413
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v3, :cond_e2

    .line 414
    const-string v1, "XIVUtils"

    const-string v3, "writeToCache : compressed by XIV(RGB565)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_69
    :goto_69
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b0

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_81

    .line 425
    const-string v3, "XIVUtils"

    const-string v4, "writeToCache : failed to create file"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_81
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 430
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/lit16 v1, v1, 0x400

    new-array v4, v1, [B

    .line 435
    invoke-static {}, Lcom/quramsoft/xiv/XIVPlatformConfig;->isUseFastCodec()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 437
    invoke-static {p2, v4}, Lcom/quramsoft/xiv/XIVCoder;->EncodeImageLite(Landroid/graphics/Bitmap;[B)I

    move-result v1

    .line 446
    :goto_9f
    if-lez v1, :cond_fd

    .line 448
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a5} :catch_f3

    .line 449
    const/4 v1, 0x1

    .line 451
    :goto_a6
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 452
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 454
    const/4 v0, 0x0

    check-cast v0, [B
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_fa

    move v0, v1

    .line 458
    :cond_b0
    if-nez v0, :cond_e1

    .line 460
    :try_start_b2
    sget-boolean v1, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v1, :cond_bd

    .line 461
    const-string v1, "XIVUtils"

    const-string v3, "writeToCache : compressed by BitmapFactory"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_bd
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 465
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 466
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 467
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 469
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 470
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 476
    :cond_e1
    :goto_e1
    return v0

    .line 415
    :cond_e2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v3, :cond_69

    .line 416
    const-string v1, "XIVUtils"

    const-string v3, "writeToCache : compressed by XIV(ARGB8888)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 472
    :catch_f3
    move-exception v1

    goto :goto_e1

    .line 441
    :cond_f5
    invoke-static {p2, v4}, Lcom/quramsoft/xiv/XIVCoder;->EncodeImage(Landroid/graphics/Bitmap;[B)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_f8} :catch_f3

    move-result v1

    goto :goto_9f

    .line 472
    :catch_fa
    move-exception v0

    move v0, v1

    goto :goto_e1

    :cond_fd
    move v1, v0

    goto :goto_a6
.end method


# virtual methods
.method public getBitmapConfig(Landroid/graphics/Bitmap$Config;IILcom/cooliris/media/Texture;)Landroid/graphics/Bitmap$Config;
    .registers 6
    .parameter "config"
    .parameter "width"
    .parameter "height"
    .parameter "texture"

    .prologue
    .line 170
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public needDither(I)Z
    .registers 3
    .parameter "maxResolution"

    .prologue
    .line 1421
    const/16 v0, 0x800

    if-ne p1, v0, :cond_6

    .line 1422
    const/4 v0, 0x1

    .line 1424
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setSlotInitInfo(Lcom/cooliris/media/GridDrawManager;Lcom/cooliris/media/GridCamera;[Lcom/cooliris/media/DisplayItem;II)V
    .registers 12
    .parameter "drawManager"
    .parameter "camera"
    .parameter "displayItems"
    .parameter "maxItemsPerSlot"
    .parameter "maxItemDrawables"

    .prologue
    .line 147
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_47

    .line 149
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_30

    .line 150
    const-string v0, "XIVUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSlotInitInfo : drawManager = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayItems = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_30
    if-eqz p3, :cond_47

    .line 153
    const-string v0, "XIVUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSlotInitInfo : displayItem\'s length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_47
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/quramsoft/xiv/XIVSlotChecker;->setInitInfo(Lcom/cooliris/media/GridDrawManager;Lcom/cooliris/media/GridCamera;[Lcom/cooliris/media/DisplayItem;II)V

    .line 156
    return-void
.end method

.method public setup(II)V
    .registers 3
    .parameter "largeThumbnailSize"
    .parameter "ZoomResolutionSize"

    .prologue
    .line 1428
    sput p1, Lcom/quramsoft/xiv/XIVUtils;->mLargeThumbnailSize:I

    .line 1429
    sput p2, Lcom/quramsoft/xiv/XIVUtils;->mZoomResoltionSize:I

    .line 1430
    return-void
.end method
