.class public final Lcom/sec/android/framework/draw/sprites/c;
.super Lcom/sec/android/framework/draw/sprites/AbstractSprite;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:I

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/Point;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/c;->b:I

    add-int/lit8 v0, v0, 0x0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/c;->b:I

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/c;->computeBounds()Landroid/graphics/RectF;

    .line 81
    return-void
.end method

.method public final a(FFII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/sprites/c;->a()V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 94
    return-void
.end method

.method public final computeBounds()Landroid/graphics/RectF;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->d:Landroid/graphics/RectF;

    .line 28
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final dispose()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public final render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-virtual {p0, p2}, Lcom/sec/android/framework/draw/sprites/c;->isHitted(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44
    :cond_13
    :goto_13
    return-void

    .line 37
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 39
    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 38
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 42
    const-string v1, "DIOTEK/DRAW"

    const-string v3, "render : %d * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/framework/draw/sprites/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_13
.end method

.method public final toXML()Ljava/lang/StringBuilder;
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string v3, "<image point=\"%s,%s\" size=\"%d,%d\" angle=\"%d\" visible=\"%d\" extraData=\"%s\"/>"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/c;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/c;->f:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 122
    iget v6, p0, Lcom/sec/android/framework/draw/sprites/c;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/sec/android/framework/draw/sprites/c;->c:Z

    if-eqz v6, :cond_71

    :goto_44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_67

    const-string v5, "&"

    const-string v6, "&amp;"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "<"

    const-string v6, "&lt;"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ">"

    const-string v6, "&gt;"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_67
    aput-object v0, v4, v1

    .line 119
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    return-object v2

    :cond_71
    move v0, v1

    .line 122
    goto :goto_44
.end method
