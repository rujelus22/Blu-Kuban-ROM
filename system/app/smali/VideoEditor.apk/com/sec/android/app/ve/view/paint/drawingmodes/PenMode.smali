.class public Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;
.super Lcom/sec/android/framework/draw/modes/PenMode;
.source "PenMode.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/framework/draw/modes/PenMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPoints(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Landroid/graphics/RectF;
    .registers 15
    .parameter "context"
    .parameter "event"

    .prologue
    .line 15
    new-instance v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    .line 16
    .local v3, touchPoint:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getStrokeInput()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Tablet:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_51

    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 17
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getCorrectionPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 18
    .local v4, correctionPoint:Landroid/graphics/PointF;
    :goto_15
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 19
    .local v2, refreshRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;->stroke:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v5

    .line 20
    .local v5, strokeType:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 22
    .local v9, canvasRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 23
    .local v10, historySize:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2b
    if-lt v11, v10, :cond_57

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 31
    iget v0, v9, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    .line 32
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;->processTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Landroid/graphics/PointF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;FJ)V

    .line 35
    return-object v2

    .line 17
    .end local v2           #refreshRect:Landroid/graphics/RectF;
    .end local v4           #correctionPoint:Landroid/graphics/PointF;
    .end local v5           #strokeType:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .end local v9           #canvasRect:Landroid/graphics/Rect;
    .end local v10           #historySize:I
    .end local v11           #i:I
    :cond_51
    new-instance v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v4}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    goto :goto_15

    .line 24
    .restart local v2       #refreshRect:Landroid/graphics/RectF;
    .restart local v4       #correctionPoint:Landroid/graphics/PointF;
    .restart local v5       #strokeType:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .restart local v9       #canvasRect:Landroid/graphics/Rect;
    .restart local v10       #historySize:I
    .restart local v11       #i:I
    :cond_57
    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 25
    iget v0, v9, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 27
    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v6

    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    .line 26
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;->processTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/RectF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Landroid/graphics/PointF;Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;FJ)V

    .line 23
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b
.end method
