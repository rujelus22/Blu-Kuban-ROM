.class public Lcom/android/browser/view/PieListView;
.super Lcom/android/browser/view/BasePieView;
.source "PieListView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "ctx"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/browser/view/BasePieView;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    iget v3, p0, Lcom/android/browser/view/BasePieView;->mWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    iget v4, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/browser/view/PieListView;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 67
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 68
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, v7, p1}, Lcom/android/browser/view/PieListView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_22

    .line 71
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #view:Landroid/view/View;
    :cond_32
    return-void
.end method

.method protected findChildAt(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 75
    iget v1, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    div-int v0, v1, v2

    .line 76
    .local v0, ix:I
    return v0
.end method

.method public layout(IIZF)V
    .registers 7
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "left"
    .parameter "angle"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/view/BasePieView;->layout(IIZF)V

    .line 44
    invoke-virtual {p0}, Lcom/android/browser/view/PieListView;->buildViews()V

    .line 45
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mWidth:I

    .line 46
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    iget-object v1, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    .line 47
    if-eqz p3, :cond_2b

    const/4 v0, 0x0

    :goto_18
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    .line 48
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    .line 49
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 50
    invoke-virtual {p0}, Lcom/android/browser/view/PieListView;->layoutChildrenLinear()V

    .line 52
    :cond_2a
    return-void

    .line 47
    :cond_2b
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    neg-int v0, v0

    goto :goto_18
.end method

.method protected layoutChildrenLinear()V
    .registers 8

    .prologue
    .line 55
    iget-object v4, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 56
    .local v1, n:I
    iget v2, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    .line 57
    .local v2, top:I
    iget-object v4, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 58
    .local v3, view:Landroid/view/View;
    iget v4, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    iget v5, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    iget v6, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 59
    iget v4, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    add-int/2addr v2, v4

    goto :goto_e

    .line 61
    .end local v3           #view:Landroid/view/View;
    :cond_2b
    return-void
.end method
