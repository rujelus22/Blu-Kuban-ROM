.class public Lcom/samsung/swift/service/media/CropRequest;
.super Lcom/samsung/swift/service/media/Request;
.source "CropRequest.java"


# static fields
.field private static final TRACE_LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const-class v0, Lcom/samsung/swift/service/media/CropRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/media/CropRequest;->TRACE_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/media/Request;-><init>(J)V

    .line 104
    return-void
.end method


# virtual methods
.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method public native getX()I
.end method

.method public native getY()I
.end method

.method public process()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xe

    .line 182
    invoke-super {p0}, Lcom/samsung/swift/service/media/Request;->process()V

    .line 183
    sget-object v2, Lcom/samsung/swift/service/media/CropRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "CropRequest::process()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, cropedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a4

    .line 194
    :try_start_17
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getY()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_5d

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_71

    .line 201
    :cond_5d
    const-string v2, "Cannot crop. target size bigger than source image"

    invoke-virtual {p0, v2}, Lcom/samsung/swift/service/media/CropRequest;->sendError(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_17 .. :try_end_62} :catchall_94

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_70

    .line 213
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_6b
    if-eqz v1, :cond_70

    :goto_6d
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_70
    :goto_70
    return-void

    .line 205
    :cond_71
    :try_start_71
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/CropRequest;->getHeight()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/media/CropRequest;->send(Landroid/graphics/Bitmap;)V
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_94

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_70

    .line 213
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_91
    if-eqz v1, :cond_70

    goto :goto_6d

    .line 211
    :catchall_94
    move-exception v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_a3

    .line 213
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_9e
    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_a3
    throw v2

    .line 220
    :cond_a4
    const-string v2, "BitmapFactory returned a null pointer"

    invoke-virtual {p0, v2}, Lcom/samsung/swift/service/media/CropRequest;->sendError(Ljava/lang/String;)V

    goto :goto_70
.end method

.method public native setHeight(I)V
.end method

.method public native setWidth(I)V
.end method

.method public native setX(I)V
.end method

.method public native setY(I)V
.end method
