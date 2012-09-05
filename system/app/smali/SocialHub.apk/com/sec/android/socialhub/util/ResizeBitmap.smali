.class public Lcom/sec/android/socialhub/util/ResizeBitmap;
.super Ljava/lang/Object;
.source "ResizeBitmap.java"


# static fields
.field public static exceptionType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmap([BII)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "raw"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    const/4 v5, 0x0

    :try_start_b
    array-length v6, p0

    invoke-static {p0, v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_f} :catch_27

    move-result-object v0

    .line 65
    .local v0, bm:Landroid/graphics/Bitmap;
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v5, v6, :cond_18

    if-nez p2, :cond_33

    .line 66
    :cond_18
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v3, v5, p1

    .line 70
    .local v3, sampleSize:I
    :goto_1c
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 71
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    const/4 v5, 0x0

    :try_start_21
    array-length v6, p0

    invoke-static {p0, v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_25} :catch_38

    move-result-object v0

    .line 82
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v3           #sampleSize:I
    :goto_26
    return-object v0

    .line 58
    :catch_27
    move-exception v1

    .line 60
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v5, "ResizeBitmap"

    const-string v6, "getBitmap outOfMemory exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    sput v8, Lcom/sec/android/socialhub/util/ResizeBitmap;->exceptionType:I

    move-object v0, v4

    .line 62
    goto :goto_26

    .line 68
    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_33
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v3, v5, p2

    .restart local v3       #sampleSize:I
    goto :goto_1c

    .line 76
    :catch_38
    move-exception v1

    .line 78
    .restart local v1       #ex:Ljava/lang/OutOfMemoryError;
    const-string v5, "ResizeBitmap"

    const-string v6, "getBitmap outOfMemory exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    sput v8, Lcom/sec/android/socialhub/util/ResizeBitmap;->exceptionType:I

    move-object v0, v4

    .line 80
    goto :goto_26
.end method

.method public static getScaledRaw([BIILjava/lang/Long;)[B
    .registers 13
    .parameter "raw"
    .parameter "width"
    .parameter "maxSize"
    .parameter "FileSize"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 91
    invoke-static {p0, p1, v7}, Lcom/sec/android/socialhub/util/ResizeBitmap;->getBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, w:I
    const/4 v2, 0x0

    .line 95
    .local v2, h:I
    if-nez v0, :cond_b

    .line 153
    :goto_a
    return-object v6

    .line 100
    :cond_b
    if-lez p2, :cond_6b

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_4f

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v7, p2, :cond_46

    .line 103
    move v5, p2

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int v2, v7, v8

    .line 128
    :goto_29
    const/4 v4, 0x0

    .line 130
    .local v4, scaledBitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    :try_start_2b
    invoke-static {v0, v5, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_2e} :catch_87

    move-result-object v4

    .line 142
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v3, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_a

    .line 106
    .end local v3           #out:Ljava/io/ByteArrayOutputStream;
    .end local v4           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_29

    .line 110
    :cond_4f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, p2, :cond_62

    .line 111
    move v2, p2

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int/2addr v7, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int v5, v7, v8

    goto :goto_29

    .line 114
    :cond_62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_29

    .line 119
    :cond_6b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v7, p1, :cond_7e

    .line 120
    move v5, p1

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v7, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int v2, v7, v8

    goto :goto_29

    .line 123
    :cond_7e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_29

    .line 131
    .restart local v4       #scaledBitmap:Landroid/graphics/Bitmap;
    :catch_87
    move-exception v1

    .line 132
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "ResizeBitmap"

    const-string v8, "getScaledRaw outOfMemory exception "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v7, 0x1

    sput v7, Lcom/sec/android/socialhub/util/ResizeBitmap;->exceptionType:I

    goto/16 :goto_a
.end method
