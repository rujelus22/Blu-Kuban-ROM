.class public Lcom/sec/android/app/lcdtest/CameraImageView;
.super Landroid/app/Activity;
.source "CameraImageView.java"


# static fields
.field private static mRotatedBitmap:Landroid/graphics/Bitmap;

.field private static vgaDispBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private Isfrontcam:Z

.field private final TAG:Ljava/lang/String;

.field private bgPic:Landroid/graphics/Bitmap;

.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private filePath:Ljava/lang/String;

.field private image:Landroid/widget/ImageView;

.field private image_src:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "CameraImageView"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->Isfrontcam:Z

    return-void
.end method

.method private FlipVerticalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "originalBitmap"

    .prologue
    const/4 v1, 0x0

    .line 149
    if-nez p1, :cond_c

    .line 150
    const-string v0, "CameraImageView"

    const-string v1, "rotateBitmap - originalBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v7, 0x0

    .line 162
    :goto_b
    return-object v7

    .line 155
    :cond_c
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 157
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 162
    .local v7, flipedBitmap:Landroid/graphics/Bitmap;
    goto :goto_b
.end method

.method private calculateSampleSize(I)I
    .registers 4
    .parameter "imageWidth"

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 104
    .local v0, res:I
    const/16 v1, 0xa00

    if-lt p1, v1, :cond_7

    .line 105
    const/4 v0, 0x4

    .line 111
    :goto_6
    return v0

    .line 106
    :cond_7
    const/16 v1, 0x500

    if-lt p1, v1, :cond_d

    .line 107
    const/4 v0, 0x2

    goto :goto_6

    .line 109
    :cond_d
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private deleteCameraFile(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 115
    if-nez p1, :cond_a

    .line 116
    const-string v2, "CameraImageView"

    const-string v3, "deleteCameraFile - path is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_9
    return-void

    .line 120
    :cond_a
    const/4 v1, 0x0

    .line 121
    .local v1, result:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, delFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 126
    :goto_1a
    const-string v2, "CameraImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 125
    :cond_33
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method private getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p1, :cond_b

    .line 79
    const-string v3, "CameraImageView"

    const-string v4, "getBitmapFromFile - path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_a
    return-object v2

    .line 83
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 85
    const-string v3, "CameraImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapFromFile - file is not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 89
    :cond_2f
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/lcdtest/CameraImageView;->calculateSampleSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_a
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "originalBitmap"

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p1, :cond_c

    .line 131
    const-string v0, "CameraImageView"

    const-string v1, "rotateBitmap - originalBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v7, 0x0

    .line 145
    :goto_b
    return-object v7

    .line 136
    :cond_c
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-boolean v0, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->Isfrontcam:Z

    if-eqz v0, :cond_5a

    .line 138
    const/high16 v0, 0x4387

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 142
    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 144
    .local v7, rotatedBitmap:Landroid/graphics/Bitmap;
    const-string v0, "CameraImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateBitmap: WH["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 140
    .end local v7           #rotatedBitmap:Landroid/graphics/Bitmap;
    :cond_5a
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->setContentView(I)V

    .line 32
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 33
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image:Landroid/widget/ImageView;

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "capture_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image_src:[B

    .line 37
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image_src:[B

    if-nez v1, :cond_45

    .line 38
    const-string v1, "CameraImageView"

    const-string v2, "onCreate - filePath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->finish()V

    .line 41
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image_src:[B

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image_src:[B

    array-length v2, v2

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->bgPic:Landroid/graphics/Bitmap;

    .line 50
    :goto_50
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_7c

    .line 53
    const-string v1, "frontcam"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->Isfrontcam:Z

    .line 55
    const-string v1, "CameraImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Isfrontcam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->Isfrontcam:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->bgPic:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_ab

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->bgPic:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/lcdtest/CameraImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    .line 60
    sget-object v1, Lcom/sec/android/app/lcdtest/CameraImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->FlipVerticalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/lcdtest/CameraImageView;->vgaDispBitmap:Landroid/graphics/Bitmap;

    .line 62
    iget-boolean v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->Isfrontcam:Z

    if-eqz v1, :cond_ec

    .line 63
    const-string v1, "CameraImageView"

    const-string v2, "Isfrontcam"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/lcdtest/CameraImageView;->vgaDispBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_ab
    :goto_ab
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "D710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->deleteCameraFile(Ljava/lang/String;)V

    .line 74
    :cond_c0
    const-string v1, "CameraImageView"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 43
    .end local v0           #myExtras:Landroid/os/Bundle;
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bg_filepath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->filePath:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->filePath:Ljava/lang/String;

    if-nez v1, :cond_e2

    .line 45
    const-string v1, "CameraImageView"

    const-string v2, "onCreate - filePath is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->finish()V

    .line 48
    :cond_e2
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/lcdtest/CameraImageView;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->bgPic:Landroid/graphics/Bitmap;

    goto/16 :goto_50

    .line 67
    .restart local v0       #myExtras:Landroid/os/Bundle;
    :cond_ec
    const-string v1, "CameraImageView"

    const-string v2, "Not Isfrontcam"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/CameraImageView;->image:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/lcdtest/CameraImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_ab
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CameraImageView;->finish()V

    .line 168
    const/4 v0, 0x1

    return v0
.end method
