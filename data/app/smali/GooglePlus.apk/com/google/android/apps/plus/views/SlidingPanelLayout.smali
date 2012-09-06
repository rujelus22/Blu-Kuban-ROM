.class public Lcom/google/android/apps/plus/views/SlidingPanelLayout;
.super Lcom/google/android/apps/plus/views/ScrollableViewGroup;
.source "SlidingPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/SlidingPanelLayout$1;,
        Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;,
        Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

.field private mMaxNavigationBarWidth:I

.field private mMinNavigationBarWidth:I

.field private mNavigationBarWidth:I

.field private mNavigationBarWidthPercent:I

.field private mOpen:Z

.field private mPanel:Landroid/view/View;

.field private mShadow:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setBackgroundColor(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setVertical(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setBackgroundColor(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setVertical(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setBackgroundColor(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setVertical(Z)V

    .line 54
    return-void
.end method

.method private isScrolling()Z
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getScroll()I

    move-result v0

    .line 155
    .local v0, scroll:I
    if-eqz v0, :cond_d

    iget v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v1, v1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    if-nez v0, :cond_6

    .line 108
    :goto_5
    return-void

    .line 106
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->smoothScrollTo(I)V

    goto :goto_5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getScrollX()I

    move-result v0

    .line 241
    .local v0, scrollX:I
    if-gez v0, :cond_1b

    .line 242
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mShadowWidth:I

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    :cond_1b
    return-void
.end method

.method public getNavigationBarWidth()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onFinishInflate()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should have exactly one child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mPanel:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mShadowWidth:I

    .line 81
    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mMinNavigationBarWidth:I

    .line 83
    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mMaxNavigationBarWidth:I

    .line 85
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidthPercent:I

    .line 87
    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 88
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    if-nez v2, :cond_6

    .line 131
    :cond_5
    :goto_5
    return v1

    .line 123
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 124
    .local v0, x:F
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_5

    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    const/4 v1, 0x1

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mPanel:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 193
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_17

    .line 194
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    if-nez v0, :cond_18

    .line 195
    invoke-virtual {p0, v3, v3}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->scrollTo(II)V

    .line 200
    :cond_17
    :goto_17
    return-void

    .line 197
    :cond_18
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->scrollTo(II)V

    goto :goto_17
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 174
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 175
    .local v0, height:I
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onMeasure(II)V

    .line 176
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mPanel:Landroid/view/View;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 179
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidthPercent:I

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mMinNavigationBarWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mMaxNavigationBarWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    .line 183
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollLimits(II)V

    .line 184
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 307
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;

    .line 308
    .local v0, ss:Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 309
    iget-boolean v1, v0, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    .line 310
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 311
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 299
    invoke-super {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 300
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 301
    .local v0, ss:Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    iput-boolean v2, v0, Lcom/google/android/apps/plus/views/SlidingPanelLayout$SavedState;->open:Z

    .line 302
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter "scroll"
    .parameter "top"
    .parameter "oldLeft"
    .parameter "oldTop"

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onScrollChanged(IIII)V

    .line 221
    if-nez p1, :cond_12

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

    if-eqz v0, :cond_11

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;->onPanelClosed()V

    .line 231
    :cond_11
    :goto_11
    return-void

    .line 226
    :cond_12
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v0, v0

    if-ne p1, v0, :cond_11

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

    if-eqz v0, :cond_11

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;->onPanelOpened()V

    goto :goto_11
.end method

.method protected onScrollFinished(I)V
    .registers 3
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 207
    if-gez p1, :cond_a

    .line 208
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->smoothScrollTo(I)V

    .line 213
    :goto_9
    return-void

    .line 210
    :cond_a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->smoothScrollTo(I)V

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    if-nez v2, :cond_6

    .line 150
    :cond_5
    :goto_5
    return v1

    .line 143
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 146
    .local v0, x:F
    iget v2, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_17

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    :cond_17
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_5
.end method

.method public open()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    if-eqz v0, :cond_6

    .line 99
    :goto_5
    return-void

    .line 95
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mOpen:Z

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setScrollEnabled(Z)V

    .line 98
    iget v0, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mNavigationBarWidth:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->smoothScrollTo(I)V

    goto :goto_5
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->performClick()Z

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->close()V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public setOnSlidingPanelStateChange(Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->mListener:Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;

    .line 64
    return-void
.end method
