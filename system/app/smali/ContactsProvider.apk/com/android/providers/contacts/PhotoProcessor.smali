.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# instance fields
.field private mDisplayPhoto:Landroid/graphics/Bitmap;

.field private final mForceCropToSquare:Z

.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mOriginal:Landroid/graphics/Bitmap;

.field private mThumbnailPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 5
    .parameter "original"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .registers 5
    .parameter "original"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .parameter "forceCropToSquare"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 77
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    .line 78
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    .line 79
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    .line 80
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->process()V

    .line 81
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "originalBytes"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 61
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 7
    .parameter "originalBytes"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .parameter "forceCropToSquare"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 98
    return-void
.end method

.method private getCompressedBytes(Landroid/graphics/Bitmap;)[B
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 153
    .local v1, compressed:Z
    if-nez v1, :cond_17

    .line 154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to compress image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private getScaledBitmap(I)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "maxDim"

    .prologue
    .line 121
    iget-object v8, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 122
    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 123
    .local v3, width:I
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 124
    .local v4, height:I
    const/4 v1, 0x0

    .line 125
    .local v1, cropLeft:I
    const/4 v2, 0x0

    .line 126
    .local v2, cropTop:I
    iget-boolean v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    if-eqz v0, :cond_1d

    if-eq v3, v4, :cond_1d

    .line 128
    if-le v4, v3, :cond_40

    .line 129
    sub-int v0, v4, v3

    div-int/lit8 v2, v0, 0x2

    .line 130
    move v4, v3

    .line 136
    :cond_1d
    :goto_1d
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v7, v0, v6

    .line 137
    .local v7, scaleFactor:F
    float-to-double v9, v7

    const-wide/high16 v11, 0x3ff0

    cmpg-double v0, v9, v11

    if-ltz v0, :cond_30

    if-nez v1, :cond_30

    if-eqz v2, :cond_3f

    .line 139
    :cond_30
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 144
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_3f
    return-object v8

    .line 132
    .end local v7           #scaleFactor:F
    :cond_40
    sub-int v0, v3, v4

    div-int/lit8 v1, v0, 0x2

    .line 133
    move v3, v4

    goto :goto_1d
.end method

.method private process()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_c
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    .line 109
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method


# virtual methods
.method public getDisplayPhoto()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayPhotoBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxThumbnailPhotoDim()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method public getThumbnailPhotoBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method
