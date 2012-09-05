.class public Lcom/samsung/swift/service/media/RotateRequest;
.super Lcom/samsung/swift/service/media/Request;
.source "RotateRequest.java"


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/media/Request;-><init>(J)V

    .line 102
    return-void
.end method


# virtual methods
.method public native getRotation()I
.end method

.method protected process()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    .line 125
    invoke-super {p0}, Lcom/samsung/swift/service/media/Request;->process()V

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 133
    .local v7, rotatedBitmap:Landroid/graphics/Bitmap;
    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/RotateRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_32

    .line 138
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/RotateRequest;->getRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 144
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 146
    if-eqz v7, :cond_32

    .line 148
    invoke-virtual {p0, v7}, Lcom/samsung/swift/service/media/RotateRequest;->send(Landroid/graphics/Bitmap;)V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_41

    .line 154
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v8, :cond_40

    .line 156
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    :cond_3b
    if-eqz v7, :cond_40

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_40
    return-void

    .line 154
    :catchall_41
    move-exception v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_50

    .line 156
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    :cond_4b
    if-eqz v7, :cond_50

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_50
    throw v1
.end method

.method public native setRotation(I)V
.end method
