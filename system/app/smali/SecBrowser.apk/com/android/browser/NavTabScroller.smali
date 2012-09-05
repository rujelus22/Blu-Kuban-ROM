.class public Lcom/android/browser/NavTabScroller;
.super Lcom/android/browser/SecBrowserGallery;
.source "NavTabScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/NavTabScroller$OnLayoutListener;,
        Lcom/android/browser/NavTabScroller$OnRemoveListener;
    }
.end annotation


# static fields
.field private static mCamera:Landroid/graphics/Camera;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

.field private mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/browser/SecBrowserGallery;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/browser/SecBrowserGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/SecBrowserGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/NavTabScroller;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    sput-object v0, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    .line 81
    return-void
.end method


# virtual methods
.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/browser/SecBrowserGallery;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected finishScroller()V
    .registers 1

    .prologue
    .line 228
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 14
    .parameter "mChildView"
    .parameter "mTransform"

    .prologue
    const/4 v10, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getPaddingLeft()I

    move-result v7

    add-int v1, v6, v7

    .line 92
    .local v1, nCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 93
    .local v2, nChildCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 94
    .local v3, nChildWidth:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 96
    sget v6, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v6}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 97
    const/high16 v6, 0x42a0

    invoke-virtual {p2, v6}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 99
    sub-int v6, v1, v2

    int-to-float v6, v6

    int-to-float v7, v3

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 100
    .local v4, nRate:F
    sget-object v6, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    if-eqz v6, :cond_72

    .line 101
    sget-object v6, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->save()V

    .line 102
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 104
    .local v0, matrix:Landroid/graphics/Matrix;
    float-to-double v6, v4

    const-wide/high16 v8, 0x4069

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 105
    .local v5, zoomAmount:F
    sget-object v6, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6, v10, v10, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 107
    sget-object v6, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 109
    div-int/lit8 v6, v3, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 110
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    sget-object v6, Lcom/android/browser/NavTabScroller;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v6}, Landroid/graphics/Camera;->restore()V

    .line 113
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v5           #zoomAmount:F
    :cond_72
    const/4 v6, 0x1

    return v6
.end method

.method protected getScrollValue()I
    .registers 3

    .prologue
    .line 187
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :getScrollValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method handleDataChanged()V
    .registers 3

    .prologue
    .line 158
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :handleDataChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 160
    return-void
.end method

.method handleDataChanged(I)V
    .registers 7
    .parameter "newscroll"

    .prologue
    .line 163
    const-string v2, "Nav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavTabScroll :handleDataChanged(int newscroll) newscroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v2, -0x1

    if-ne p1, v2, :cond_36

    .line 167
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 168
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/browser/NavTabScroller;->getScrollValue()I

    move-result v1

    .line 169
    .local v1, scroll:I
    if-eq v1, v0, :cond_30

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/browser/NavTabScroller;->setSelection(I)V

    .line 178
    .end local v0           #count:I
    .end local v1           #scroll:I
    :goto_2a
    iget-object v2, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 179
    return-void

    .line 172
    .restart local v0       #count:I
    .restart local v1       #scroll:I
    :cond_30
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/NavTabScroller;->setSelection(I)V

    goto :goto_2a

    .line 176
    .end local v0           #count:I
    .end local v1           #scroll:I
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/browser/NavTabScroller;->setSelection(I)V

    goto :goto_2a
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 119
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/high16 v0, 0x4080

    div-float v0, p3, v0

    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/browser/SecBrowserGallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 138
    invoke-super/range {p0 .. p5}, Lcom/android/browser/SecBrowserGallery;->onLayout(ZIIII)V

    .line 139
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    if-eqz v0, :cond_16

    .line 141
    iget-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/android/browser/NavTabScroller$OnLayoutListener;->onLayout(IIII)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    .line 144
    :cond_16
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 127
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavTabScroll :onScroll distanceX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " distanceY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/SecBrowserGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method protected setAdapter(Landroid/widget/BaseAdapter;I)V
    .registers 6
    .parameter "adapter"
    .parameter "selection"

    .prologue
    .line 84
    const-string v0, "Nav"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavTabScroll :setAdapter selection ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mAdapter:Landroid/widget/BaseAdapter;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/browser/NavTabScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/browser/NavTabScroller;->handleDataChanged(I)V

    .line 88
    return-void
.end method

.method public setOnLayoutListener(Lcom/android/browser/NavTabScroller$OnLayoutListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 153
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :setOnLayoutListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mLayoutListener:Lcom/android/browser/NavTabScroller$OnLayoutListener;

    .line 155
    return-void
.end method

.method public setOnRemoveListener(Lcom/android/browser/NavTabScroller$OnRemoveListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 148
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :setOnRemoveListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/android/browser/NavTabScroller;->mRemoveListener:Lcom/android/browser/NavTabScroller$OnRemoveListener;

    .line 150
    return-void
.end method

.method protected setScrollValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 192
    const-string v0, "Nav"

    const-string v1, "NavTabScroll :setScrollValue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/browser/NavTabScroller;->setSelection(I)V

    .line 194
    return-void
.end method
