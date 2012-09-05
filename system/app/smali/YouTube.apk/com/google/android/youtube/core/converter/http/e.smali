.class public final Lcom/google/android/youtube/core/converter/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/b;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/converter/http/e;-><init>(Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(IZZLandroid/graphics/Bitmap$Config;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-lez p1, :cond_14

    const/4 v0, 0x1

    :goto_6
    const-string v1, "desiredWidth must be > 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 86
    iput p1, p0, Lcom/google/android/youtube/core/converter/http/e;->a:I

    .line 87
    iput-boolean p2, p0, Lcom/google/android/youtube/core/converter/http/e;->b:Z

    .line 88
    iput-boolean p3, p0, Lcom/google/android/youtube/core/converter/http/e;->c:Z

    .line 89
    iput-object p4, p0, Lcom/google/android/youtube/core/converter/http/e;->d:Landroid/graphics/Bitmap$Config;

    .line 90
    return-void

    .line 85
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/google/android/youtube/core/converter/http/e;->a:I

    .line 36
    iput-boolean v0, p0, Lcom/google/android/youtube/core/converter/http/e;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/android/youtube/core/converter/http/e;->c:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/e;->d:Landroid/graphics/Bitmap$Config;

    .line 39
    return-void
.end method

.method private static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    const/4 v0, 0x1

    .line 150
    :goto_1
    shr-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_8

    .line 151
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_8
    return v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 15
    check-cast p1, [B

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, p1

    invoke-static {p1, v5, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gez v0, :cond_1f

    move-object v0, v2

    :cond_15
    :goto_15
    if-nez v0, :cond_82

    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "failed to decode bitmap"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget v0, p0, Lcom/google/android/youtube/core/converter/http/e;->a:I

    if-nez v0, :cond_38

    move v0, v1

    :goto_24
    iget-boolean v4, p0, Lcom/google/android/youtube/core/converter/http/e;->b:Z

    if-nez v4, :cond_41

    iget-boolean v4, p0, Lcom/google/android/youtube/core/converter/http/e;->c:Z

    if-nez v4, :cond_41

    if-ne v0, v1, :cond_41

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/e;->d:Landroid/graphics/Bitmap$Config;

    if-nez v1, :cond_41

    array-length v0, p1

    invoke-static {p1, v5, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_15

    :cond_38
    iget v0, p0, Lcom/google/android/youtube/core/converter/http/e;->a:I

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v4}, Lcom/google/android/youtube/core/converter/http/e;->a(II)I

    move-result v0

    goto :goto_24

    :cond_41
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/e;->d:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/converter/http/e;->c:Z

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    array-length v0, p1

    invoke-static {p1, v5, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/converter/http/e;->b:Z

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f10

    mul-float/2addr v1, v2

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    sub-float v1, v2, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-lez v1, :cond_15

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    if-lez v2, :cond_15

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v5, v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    goto :goto_15

    :cond_82
    return-object v0
.end method
