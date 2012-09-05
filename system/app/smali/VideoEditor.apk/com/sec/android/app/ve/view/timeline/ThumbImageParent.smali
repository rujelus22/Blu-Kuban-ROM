.class public Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;
.super Landroid/widget/LinearLayout;
.source "ThumbImageParent.java"


# instance fields
.field private firstRectRight:I

.field private paint:Landroid/graphics/Paint;

.field private secondRectLeft:I

.field private videoClipViewGroup:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->firstRectRight:I

    .line 26
    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->secondRectLeft:I

    .line 30
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 38
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v1

    if-ne v1, v2, :cond_59

    .line 39
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_2b

    .line 40
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    const v3, 0x7f070006

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    :cond_2b
    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->firstRectRight:I

    if-eq v1, v5, :cond_59

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->secondRectLeft:I

    if-eq v1, v5, :cond_59

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->firstRectRight:I

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #rect:Landroid/graphics/Rect;
    iget v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->secondRectLeft:I

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .restart local v0       #rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_59
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 34
    return-void
.end method

.method public setCurrentEndTime(F)V
    .registers 7
    .parameter "endTime"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 68
    .local v2, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 69
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7d

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 70
    .local v1, scale:F
    div-float v3, p1, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->secondRectLeft:I

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->invalidate()V

    .line 73
    return-void
.end method

.method public setCurrentStartTime(F)V
    .registers 7
    .parameter "currentStartTime"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 58
    .local v2, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 59
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7d

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 60
    .local v1, scale:F
    div-float v3, p1, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->firstRectRight:I

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->invalidate()V

    .line 64
    return-void
.end method

.method public setParent(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter "videoClipViewGroup"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->videoClipViewGroup:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 78
    return-void
.end method
