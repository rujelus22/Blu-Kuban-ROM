.class public Lcom/samsung/swift/service/media/ScaleRequest;
.super Lcom/samsung/swift/service/media/Request;
.source "ScaleRequest.java"


# static fields
.field private static final TRACE_LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-class v0, Lcom/samsung/swift/service/media/ScaleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/media/ScaleRequest;->TRACE_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/media/Request;-><init>(J)V

    .line 107
    return-void
.end method


# virtual methods
.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method public process()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    .line 144
    invoke-super {p0}, Lcom/samsung/swift/service/media/Request;->process()V

    .line 145
    sget-object v1, Lcom/samsung/swift/service/media/ScaleRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "ScaleRequest::process()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ScaleRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_65

    .line 155
    :try_start_17
    new-instance v9, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    .local v9, src:Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ScaleRequest;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ScaleRequest;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    .local v7, dest:Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .local v5, matrix:Landroid/graphics/Matrix;
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v9, v7, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 162
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 164
    if-eqz v8, :cond_57

    .line 166
    invoke-virtual {p0, v8}, Lcom/samsung/swift/service/media/ScaleRequest;->send(Landroid/graphics/Bitmap;)V
    :try_end_57
    .catchall {:try_start_17 .. :try_end_57} :catchall_66

    .line 170
    :cond_57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v10, :cond_65

    .line 172
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_60
    if-eqz v8, :cond_65

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #dest:Landroid/graphics/RectF;
    .end local v9           #src:Landroid/graphics/RectF;
    :cond_65
    return-void

    .line 170
    :catchall_66
    move-exception v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v10, :cond_75

    .line 172
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_70
    if-eqz v8, :cond_75

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_75
    throw v1
.end method

.method public native setHeight(I)V
.end method

.method public native setWidth(I)V
.end method
