.class public Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;
.super Ljava/lang/Object;
.source "TimestampedFrameDebugDrawer.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;


# static fields
.field private static final DEBUG_TEXT_SIZE:I = 0x10


# instance fields
.field private final borderText:Lcom/google/android/apps/unveil/env/BorderedText;

.field private final cachedJpeg:[B

.field private cachedThumbnail:Lcom/google/android/apps/unveil/env/Picture;

.field private final frameNum:I

.field private final isBlurred:Z

.field private final metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

.field private final rotationAngle:I

.field private final size:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)V
    .registers 5
    .parameter "timestampedFrame"
    .parameter "cachedJpeg"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/apps/unveil/env/BorderedText;

    const/high16 v1, 0x4180

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/BorderedText;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->borderText:Lcom/google/android/apps/unveil/env/BorderedText;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRotationAngle()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->rotationAngle:I

    .line 48
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->isBlurred()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->isBlurred:Z

    .line 51
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->frameNum:I

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->cachedJpeg:[B

    .line 53
    return-void
.end method

.method private static createThumbnail([BIIZ)Lcom/google/android/apps/unveil/env/Picture;
    .registers 12
    .parameter "cachedJpeg"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "rotate"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 136
    if-nez p0, :cond_5

    .line 153
    :cond_4
    :goto_4
    return-object v4

    .line 140
    :cond_5
    invoke-static {p0, v5}, Lcom/google/android/apps/unveil/env/PictureFactory;->createJpeg([BI)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 142
    .local v3, original:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 146
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v6, v3}, Lcom/google/android/apps/unveil/env/Size;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v7, v0}, Lcom/google/android/apps/unveil/env/Size;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_39

    const/16 v4, 0x5a

    :goto_23
    invoke-static {v6, v7, v4}, Lcom/google/android/apps/unveil/env/ImageUtils;->getTransformationMatrix(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 150
    .local v2, matrix:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 153
    invoke-static {v0, v5}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v4

    goto :goto_4

    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #matrix:Landroid/graphics/Matrix;
    :cond_39
    move v4, v5

    .line 147
    goto :goto_23
.end method

.method private drawResults(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .registers 12
    .parameter "canvas"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x3f80

    .line 157
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v6

    iget-object v5, v6, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    .line 158
    .local v5, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 159
    .local v4, resultId:Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/results/ResultItem;

    .line 161
    .local v3, result:Lcom/google/android/apps/unveil/results/ResultItem;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v1, p:Landroid/graphics/Paint;
    const/high16 v6, 0x4000

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    const v6, -0xff0100

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_10

    .line 169
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 170
    .local v2, rect:Landroid/graphics/RectF;
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 171
    invoke-virtual {p1, v2, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_10

    .line 174
    .end local v1           #p:Landroid/graphics/Paint;
    .end local v2           #rect:Landroid/graphics/RectF;
    .end local v3           #result:Lcom/google/android/apps/unveil/results/ResultItem;
    .end local v4           #resultId:Ljava/lang/String;
    :cond_5c
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;II)V
    .registers 13
    .parameter "canvas"
    .parameter "dstX"
    .parameter "dstY"

    .prologue
    .line 198
    const/high16 v0, -0x1

    .line 199
    .local v0, color:I
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_37

    .line 200
    const v0, -0xff0100

    .line 204
    :cond_11
    :goto_11
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->borderText:Lcom/google/android/apps/unveil/env/BorderedText;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/unveil/env/BorderedText;->setInteriorColor(I)V

    .line 206
    add-int/lit8 v3, p2, 0x4

    .line 207
    .local v3, xPos:I
    move v4, p3

    .line 208
    .local v4, yPos:I
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getDebugText()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, line:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x12

    .line 210
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->borderText:Lcom/google/android/apps/unveil/env/BorderedText;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, p1, v6, v7, v2}, Lcom/google/android/apps/unveil/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto :goto_21

    .line 201
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #xPos:I
    .end local v4           #yPos:I
    :cond_37
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getQuerySentMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_11

    .line 202
    const/16 v0, -0x100

    goto :goto_11

    .line 212
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #xPos:I
    .restart local v4       #yPos:I
    :cond_48
    return-void
.end method

.method private getCachedJpeg()[B
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->cachedJpeg:[B

    return-object v0
.end method

.method private getDebugText()Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 181
    .local v0, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->frameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->isBlurred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getCachedJpeg()[B

    move-result-object v1

    if-eqz v1, :cond_82

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getCachedJpeg()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lcl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getEncodeFinishedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_82
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getDebugText()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 191
    return-object v0
.end method

.method private getHeight()I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    return v0
.end method

.method private getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    return-object v0
.end method

.method private declared-synchronized getThumbnail(IIZ)Lcom/google/android/apps/unveil/env/Picture;
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "rotate"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->cachedThumbnail:Lcom/google/android/apps/unveil/env/Picture;

    if-nez v0, :cond_f

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getCachedJpeg()[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->createThumbnail([BIIZ)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->cachedThumbnail:Lcom/google/android/apps/unveil/env/Picture;

    .line 131
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->cachedThumbnail:Lcom/google/android/apps/unveil/env/Picture;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getWidth()I
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    return v0
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;IF)V
    .registers 16
    .parameter "canvas"
    .parameter "offset"
    .parameter "thumbnailWidth"

    .prologue
    const/4 v4, 0x0

    const/high16 v11, 0x4000

    .line 78
    monitor-enter p0

    :try_start_4
    iget v9, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->rotationAngle:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->rotationAngle:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_11

    :cond_10
    const/4 v4, 0x1

    .line 80
    .local v4, portraitRotation:Z
    :cond_11
    if-eqz v4, :cond_73

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getHeight()I

    move-result v9

    :goto_17
    int-to-float v9, v9

    div-float v6, p3, v9

    .line 83
    .local v6, scaleFactor:F
    if-eqz v4, :cond_78

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getWidth()I

    move-result v9

    :goto_20
    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v8, v9

    .line 86
    .local v8, thumbnailHeight:I
    int-to-float v9, p2

    mul-float/2addr v9, p3

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 87
    .local v1, dstX:I
    const/4 v2, 0x0

    .line 89
    .local v2, dstY:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .local v3, p:Landroid/graphics/Paint;
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getCachedJpeg()[B

    move-result-object v9

    if-eqz v9, :cond_7d

    .line 92
    float-to-int v9, p3

    invoke-direct {p0, v9, v8, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getThumbnail(IIZ)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 94
    .local v7, thumbnail:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_45

    .line 95
    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v9, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    .end local v7           #thumbnail:Landroid/graphics/Bitmap;
    :cond_45
    :goto_45
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v5, resultMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 109
    if-eqz v4, :cond_66

    .line 110
    neg-int v9, v8

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    neg-float v10, p3

    div-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    iget v9, p0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->rotationAngle:I

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 112
    div-float v9, p3, v11

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 116
    :cond_66
    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 118
    invoke-direct {p0, p1, v5}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->drawResults(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 121
    invoke-direct {p0, p1, v1, v8}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_71
    .catchall {:try_start_4 .. :try_end_71} :catchall_90

    .line 122
    monitor-exit p0

    return-void

    .line 80
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #p:Landroid/graphics/Paint;
    .end local v5           #resultMatrix:Landroid/graphics/Matrix;
    .end local v6           #scaleFactor:F
    .end local v8           #thumbnailHeight:I
    :cond_73
    :try_start_73
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getWidth()I

    move-result v9

    goto :goto_17

    .line 83
    .restart local v6       #scaleFactor:F
    :cond_78
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;->getHeight()I

    move-result v9

    goto :goto_20

    .line 98
    .restart local v1       #dstX:I
    .restart local v2       #dstY:I
    .restart local v3       #p:Landroid/graphics/Paint;
    .restart local v8       #thumbnailHeight:I
    :cond_7d
    const v9, -0xbbbbbc

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    const/4 v9, 0x0

    int-to-float v10, v1

    add-float/2addr v10, p3

    float-to-int v10, v10

    invoke-direct {v0, v1, v9, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    .local v0, dstRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_90

    goto :goto_45

    .line 78
    .end local v0           #dstRect:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #p:Landroid/graphics/Paint;
    .end local v4           #portraitRotation:Z
    .end local v6           #scaleFactor:F
    .end local v8           #thumbnailHeight:I
    :catchall_90
    move-exception v9

    monitor-exit p0

    throw v9
.end method
