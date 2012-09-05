.class public Lcom/sec/android/app/twlauncher/WidgetPreview;
.super Landroid/widget/FrameLayout;
.source "WidgetPreview.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 80
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 7
    .parameter "canvas"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v2, :cond_21

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    .local v1, myCanvas:Landroid/graphics/Canvas;
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 70
    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 74
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #myCanvas:Landroid/graphics/Canvas;
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 75
    const/4 v2, 0x0

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 88
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/WidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 96
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildCount()I

    move-result v5

    .line 47
    .local v5, count:I
    if-lez v5, :cond_28

    .line 48
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 50
    .local v4, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 52
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v2, v6, 0x2

    .line 53
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    div-int/lit8 v3, v6, 0x2

    .line 55
    .local v3, childTop:I
    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 57
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v4           #childWidth:I
    :cond_28
    return-void
.end method
