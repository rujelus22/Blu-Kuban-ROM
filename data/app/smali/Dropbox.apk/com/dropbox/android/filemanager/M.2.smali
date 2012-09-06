.class final Lcom/dropbox/android/filemanager/M;
.super Lcom/dropbox/android/filemanager/L;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    .line 568
    return-void
.end method

.method private b(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 581
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 582
    invoke-static {}, Lcom/dropbox/android/util/aO;->a()[B

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 583
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/M;->d()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3, p3, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 587
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3, p3, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method protected final a(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/M;->b(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    if-nez v0, :cond_a

    .line 574
    invoke-super {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    :cond_a
    return-object v0
.end method
