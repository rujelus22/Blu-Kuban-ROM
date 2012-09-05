.class public final Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;
.super Ljava/lang/Object;
.source "BytesToBitmapResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<[B",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cropToWidescreen:Z

.field private final desiredWidth:I

.field private final purgeable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(IZZ)V
    .registers 6
    .parameter "desiredWidth"
    .parameter "cropToWidescreen"
    .parameter "purgeable"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-lez p1, :cond_12

    const/4 v0, 0x1

    :goto_6
    const-string v1, "desiredWidth must be > 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    iput p1, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    .line 66
    iput-boolean p2, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    .line 67
    iput-boolean p3, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->purgeable:Z

    .line 68
    return-void

    .line 64
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "purgeable"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    .line 35
    iput-boolean v0, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    .line 36
    iput-boolean p1, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->purgeable:Z

    .line 37
    return-void
.end method

.method private static calculateScale(II)I
    .registers 3
    .parameter "desiredWidth"
    .parameter "actualWidth"

    .prologue
    .line 126
    const/4 v0, 0x1

    .line 127
    .local v0, scale:I
    :goto_1
    shr-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_8

    .line 128
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_8
    return v0
.end method

.method private decode([B)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 79
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 82
    array-length v8, p1

    invoke-static {p1, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gez v8, :cond_13

    .line 121
    :cond_12
    :goto_12
    return-object v0

    .line 88
    :cond_13
    iget v8, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    if-nez v8, :cond_28

    move v6, v7

    .line 89
    .local v6, scale:I
    :goto_18
    iget-boolean v8, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    if-nez v8, :cond_31

    iget-boolean v8, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->purgeable:Z

    if-nez v8, :cond_31

    if-ne v6, v7, :cond_31

    .line 90
    array-length v7, p1

    invoke-static {p1, v10, v7, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    .line 88
    .end local v6           #scale:I
    :cond_28
    iget v8, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->desiredWidth:I

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8, v9}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->calculateScale(II)I

    move-result v6

    goto :goto_18

    .line 92
    .restart local v6       #scale:I
    :cond_31
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    iget-boolean v7, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->purgeable:Z

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 95
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 96
    array-length v7, p1

    invoke-static {p1, v10, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v7, p0, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->cropToWidescreen:Z

    if-eqz v7, :cond_12

    if-eqz v0, :cond_12

    .line 102
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f10

    mul-float v3, v7, v8

    .line 105
    .local v3, desiredHeight:F
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    .line 106
    .local v1, cropHeight:I
    if-lez v1, :cond_12

    .line 111
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v8, v1, 0x2

    sub-int v5, v7, v8

    .line 112
    .local v5, roundedHeight:I
    if-lez v5, :cond_12

    .line 118
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v10, v1, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    .local v2, cropped:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    .line 121
    goto :goto_12
.end method


# virtual methods
.method public convertResponse([B)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->decode([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_e

    .line 73
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v2, "failed to decode bitmap"

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_e
    return-object v0
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;->convertResponse([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
