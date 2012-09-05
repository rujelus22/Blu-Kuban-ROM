.class public Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;
.super Landroid/widget/FrameLayout;
.source "ClipDeleteView.java"


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mDeleteViewBg:Landroid/view/View;

.field private mDragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

.field private mMovingView:Landroid/view/View;

.field private srcColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->srcColor:I

    .line 45
    return-void
.end method


# virtual methods
.method public onDragEnd(FF)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 80
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 81
    .local v0, myPos:[I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 83
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_30

    aget v1, v0, v2

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_30

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    invoke-interface {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;->viewDelete()V

    .line 90
    :goto_23
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    .line 92
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->setVisibility(I)V

    .line 93
    return-void

    .line 88
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;->viewDropped(FF)V

    goto :goto_23
.end method

.method public onDragStart(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mMovingView:Landroid/view/View;

    .line 97
    return-void
.end method

.method public onDragging(FFLandroid/graphics/Paint;)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    const/4 v2, 0x1

    .line 58
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 59
    .local v0, myPos:[I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 61
    aget v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3a

    aget v1, v0, v2

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3a

    .line 63
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->srcColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 65
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->stopAutoScoll()V

    .line 77
    :goto_39
    return-void

    .line 68
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mMovingView:Landroid/view/View;

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->viewDragged(FFLandroid/view/View;)V

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto :goto_39
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDeleteViewBg:Landroid/view/View;

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, ltextView:Landroid/widget/TextView;
    return-void
.end method

.method public setDragView(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;)V
    .registers 2
    .parameter "dragView"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;->mDragView:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;

    .line 101
    return-void
.end method
