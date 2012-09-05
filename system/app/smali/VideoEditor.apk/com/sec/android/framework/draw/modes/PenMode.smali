.class public Lcom/sec/android/framework/draw/modes/PenMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/modes/IModeState;


# instance fields
.field public algorithmTime:J

.field protected cursorPaint:Landroid/graphics/Paint;

.field protected drawingTime:J

.field protected paint:Landroid/graphics/Paint;

.field public renderingTime:J

.field protected stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field protected touchID:I

.field protected vectorLimit:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method protected addPoints(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 343
    new-instance v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    .line 344
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getStrokeInput()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v1

    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Tablet:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v1, v2, :cond_2d

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 345
    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCorrectionPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 346
    :goto_17
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v5

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move v1, v0

    .line 351
    :goto_27
    if-lt v1, v7, :cond_33

    move v1, v6

    .line 358
    :cond_2a
    if-ne v1, v6, :cond_3e

    .line 371
    :goto_2c
    return-object v2

    .line 345
    :cond_2d
    new-instance v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    goto :goto_17

    .line 352
    :cond_33
    iget v8, p0, Lcom/sec/android/framework/draw/modes/PenMode;->touchID:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v8, v9, :cond_2a

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 361
    :cond_3e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    move v9, v0

    .line 362
    :goto_43
    if-lt v9, v10, :cond_5e

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/framework/draw/modes/PenMode;->processTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Landroid/graphics/PointF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;FJ)V

    goto :goto_2c

    .line 363
    :cond_5e
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 364
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    .line 365
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    .line 364
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/framework/draw/modes/PenMode;->processTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Landroid/graphics/PointF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;FJ)V

    .line 362
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_43
.end method

.method protected drawCursorPoint(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-nez v0, :cond_5

    .line 418
    :cond_4
    :goto_4
    return-void

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 415
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 416
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected drawLineSegment(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 398
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isPartialRenderable()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_12

    .line 399
    :cond_d
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayer(ILandroid/graphics/RectF;)V

    .line 401
    :cond_12
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v1, v2, :cond_1d

    const/4 v0, 0x0

    .line 403
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 404
    iget-object v3, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v4, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v3, v0, v4, p2}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 406
    iget-wide v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    sub-long v0, v3, v1

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    .line 407
    return-void
.end method

.method public getLayerID(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)I
    .registers 3
    .parameter

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method protected makeCachedStrokeSprite(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 290
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 291
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 293
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 294
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 296
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 298
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_4a

    .line 299
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 301
    :cond_4a
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_56

    .line 302
    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 304
    :cond_56
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, v1, Lcom/sec/android/framework/draw/AbstractStage;->cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

    new-instance v2, Lcom/sec/android/framework/draw/sprites/b;

    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/framework/draw/sprites/b;-><init>(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/framework/draw/sprites/a;->a(Lcom/sec/android/framework/draw/sprites/b;)V

    .line 307
    return-void
.end method

.method public onActivate(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    if-eqz p2, :cond_11

    .line 45
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayers()V

    .line 46
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprites(I)V

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate()V

    .line 52
    :goto_10
    return-void

    .line 50
    :cond_11
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/modes/PenMode;->onFinishJob(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    goto :goto_10
.end method

.method public onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    if-eqz v0, :cond_16

    .line 79
    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    :cond_16
    if-eqz v1, :cond_1d

    .line 81
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->drawCursorPoint(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method public onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, p3}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_e

    .line 67
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    :cond_e
    if-nez p3, :cond_13

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->drawCursorPoint(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V

    .line 71
    :cond_13
    return-void
.end method

.method public onFinishJob(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 5
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 340
    :cond_c
    :goto_c
    return-void

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    .line 338
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1, v0}, Lcom/sec/android/framework/draw/AbstractStage;->mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate(Landroid/graphics/RectF;)V

    goto :goto_c
.end method

.method public onLayout(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Rect;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayers()V

    .line 57
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprites(I)V

    .line 59
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate()V

    .line 60
    return-void
.end method

.method protected onTouchCancelEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-nez v0, :cond_b

    .line 311
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 328
    :goto_a
    return-object v0

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Tablet:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_1a

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchUpEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_a

    .line 316
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    .line 317
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0, v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    .line 319
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->getSprites()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 320
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v2}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayer(I)V

    .line 322
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->isUndoable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 323
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->getUndoList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 325
    :cond_41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->touchID:I

    .line 328
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto :goto_a
.end method

.method protected onTouchDownEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    .line 154
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getStrokeVectorLimitation()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->vectorLimit:J

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->touchID:I

    .line 157
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getStrokeInput()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v3

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 160
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getStrokeType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/Setting;->getStrokeParameter()Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v2

    .line 161
    iget-object v4, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v4}, Lcom/sec/android/framework/draw/Setting;->getStrokeWidth()F

    move-result v4

    iget-object v5, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/Setting;->getStrokeColor()I

    move-result v5

    .line 160
    invoke-interface/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createStrokeSprite(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 163
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v3, v0, :cond_91

    .line 164
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getHandPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    .line 171
    :goto_59
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_6b

    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->isEraserDrawn()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 172
    :cond_6b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    .line 181
    :goto_6e
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/framework/draw/AbstractStage;->addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    iget-wide v2, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    sub-long/2addr v0, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    .line 185
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 186
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0, v8}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->enableTrackingPoints(Z)V

    .line 189
    :cond_8c
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->addPoints(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 167
    :cond_91
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletSpeedParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getTabletPressureParameter()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    goto :goto_59

    .line 174
    :cond_a8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_6e
.end method

.method public onTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_102

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v0

    .line 110
    :goto_d
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 111
    const-string v0, "DIOTEK/DRAW"

    const-string v1, "engine : (points : %d pts) (algorithm : %d ms) (rendering : %d ms)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 111
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    .line 118
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_b1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b1

    .line 119
    iget-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->vectorLimit:J

    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_b1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    .line 120
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchUpEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    .line 123
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchDownEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 126
    const-string v0, "DIOTEK/DRAW"

    const-string v1, "stroke is splitted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_b1
    invoke-virtual {v8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 131
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v8}, Lcom/sec/android/framework/draw/AbstractStage;->mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 132
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getUpdateCanvas()Lcom/sec/android/framework/draw/View;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_fe

    .line 134
    invoke-virtual {v1}, Lcom/sec/android/framework/draw/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_f4

    .line 136
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 137
    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 138
    invoke-interface {v2, v1, v3}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 149
    :cond_d6
    :goto_d6
    const/4 v0, 0x1

    return v0

    .line 94
    :pswitch_d8
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchDownEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v8, v0

    .line 95
    goto/16 :goto_d

    .line 97
    :pswitch_df
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchMoveEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v8, v0

    .line 98
    goto/16 :goto_d

    .line 100
    :pswitch_e6
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchUpEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v8, v0

    .line 101
    goto/16 :goto_d

    .line 103
    :pswitch_ed
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->onTouchCancelEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    move-object v8, v0

    .line 104
    goto/16 :goto_d

    .line 141
    :cond_f4
    invoke-virtual {p1, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate(Landroid/graphics/RectF;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/framework/draw/View;->lastInvalidateTime:J

    goto :goto_d6

    .line 145
    :cond_fe
    invoke-virtual {p1, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate(Landroid/graphics/RectF;)V

    goto :goto_d6

    .line 92
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_e6
        :pswitch_df
        :pswitch_ed
    .end packed-switch
.end method

.method protected onTouchMoveEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-nez v0, :cond_a

    .line 194
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 195
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->addPoints(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_9
.end method

.method protected onTouchUpEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 199
    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-nez v2, :cond_d

    .line 200
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 258
    :goto_c
    return-object v0

    .line 202
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0x8

    .line 203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v2, v0

    .line 205
    :goto_1c
    if-lt v2, v5, :cond_29

    move v2, v3

    .line 212
    :cond_1f
    if-eq v2, v3, :cond_23

    if-eq v4, v2, :cond_34

    .line 213
    :cond_23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto :goto_c

    .line 206
    :cond_29
    iget v6, p0, Lcom/sec/android/framework/draw/modes/PenMode;->touchID:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v6, v7, :cond_1f

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 215
    :cond_34
    iput v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->touchID:I

    .line 217
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/PenMode;->addPoints(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isPartialRenderable()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_50

    .line 219
    :cond_4b
    iget-object v3, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayer(ILandroid/graphics/RectF;)V

    .line 221
    :cond_50
    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v3

    sget-object v4, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v3, v4, :cond_ea

    .line 223
    :goto_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 224
    iget-object v5, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v6, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v5, v0, v6, v2}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 226
    iget-wide v7, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    sub-long v3, v5, v3

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 228
    iget-object v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 230
    iget-wide v7, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    sub-long v3, v5, v3

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 234
    iget-object v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isPartialRenderable()Z

    move-result v5

    if-eqz v5, :cond_98

    iget-object v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->cursorPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_9d

    .line 235
    :cond_98
    iget-object v5, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v5, v1, v2}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayer(ILandroid/graphics/RectF;)V

    .line 236
    :cond_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 237
    iget-object v7, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v8, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v7, v0, v8, v2}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 239
    iget-wide v9, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    sub-long v5, v7, v5

    add-long/2addr v5, v9

    iput-wide v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    .line 241
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    .line 247
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getCacheTime()I

    move-result v0

    int-to-long v0, v0

    .line 249
    iget-object v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v5

    sget-object v6, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v5, v6, :cond_dd

    .line 250
    iget-object v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isPartialRenderable()Z

    move-result v5

    if-eqz v5, :cond_da

    iget-wide v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->drawingTime:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_da

    .line 251
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/modes/PenMode;->makeCachedStrokeSprite(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    .line 252
    :cond_da
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/modes/PenMode;->strokeToFixedLayer(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    .line 255
    :cond_dd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    iget-wide v5, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    sub-long/2addr v0, v3

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    move-object v0, v2

    .line 258
    goto/16 :goto_c

    :cond_ea
    move v0, v1

    .line 221
    goto/16 :goto_5a
.end method

.method protected processTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Landroid/graphics/PointF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;FJ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 379
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, p3}, Lcom/sec/android/framework/draw/AbstractStage;->mapToScene(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    move-result-object v2

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 382
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    iget v1, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x437f

    mul-float/2addr v3, p6

    move-wide v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJ)Z

    move-result v0

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 385
    iget-wide v3, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    sub-long/2addr v1, v6

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->algorithmTime:J

    .line 387
    if-eqz v0, :cond_4b

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 389
    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    move-result-object v2

    .line 390
    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 391
    invoke-virtual {p0, p1, v2, p5}, Lcom/sec/android/framework/draw/modes/PenMode;->drawLineSegment(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 393
    iget-wide v4, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    sub-long v0, v2, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sec/android/framework/draw/modes/PenMode;->renderingTime:J

    .line 395
    :cond_4b
    return-void
.end method

.method protected strokeToFixedLayer(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 262
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v6}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 264
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 265
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 267
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 268
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 269
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 272
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_4b

    .line 273
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 275
    :cond_4b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_57

    .line 276
    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 278
    :cond_57
    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1, v4}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerCanvas(I)Landroid/graphics/Canvas;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 280
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 281
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 284
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0, v6}, Lcom/sec/android/framework/draw/AbstractStage;->clearLayer(I)V

    .line 285
    return-void
.end method
