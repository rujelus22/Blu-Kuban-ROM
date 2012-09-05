.class public Lcom/android/browser/view/PieStackView;
.super Lcom/android/browser/view/BasePieView;
.source "PieStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/PieStackView$OnCurrentListener;
    }
.end annotation


# instance fields
.field private mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

.field private mMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/view/BasePieView;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mMinHeight:I

    .line 42
    return-void
.end method

.method private layoutChildrenLinear()V
    .registers 9

    .prologue
    .line 75
    iget-object v6, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, n:I
    iget v3, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    .line 77
    .local v3, top:I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2b

    const/4 v0, 0x0

    .line 78
    .local v0, dy:I
    :goto_c
    iget-object v6, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 79
    .local v4, view:Landroid/view/View;
    iget v5, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    .line 80
    .local v5, x:I
    iget v6, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 81
    add-int/2addr v3, v0

    .line 82
    goto :goto_12

    .line 77
    .end local v0           #dy:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #view:Landroid/view/View;
    .end local v5           #x:I
    :cond_2b
    iget v6, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    iget v7, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    div-int v0, v6, v7

    goto :goto_c

    .line 83
    .restart local v0       #dy:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_3e

    .line 88
    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 89
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v2, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    if-ge v0, v2, :cond_1d

    .line 90
    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 92
    :cond_1d
    add-int/lit8 v0, v1, -0x1

    :goto_1f
    iget v2, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    if-le v0, v2, :cond_31

    .line 93
    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 95
    :cond_31
    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 97
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3e
    return-void
.end method

.method protected findChildAt(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 101
    iget v1, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    div-int v0, v1, v2

    .line 102
    .local v0, ix:I
    return v0
.end method

.method public layout(IIZF)V
    .registers 8
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "left"
    .parameter "angle"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/view/BasePieView;->layout(IIZF)V

    .line 64
    invoke-virtual {p0}, Lcom/android/browser/view/PieStackView;->buildViews()V

    .line 65
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mWidth:I

    .line 66
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    iget-object v1, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/browser/view/PieStackView;->mMinHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    .line 67
    if-eqz p3, :cond_30

    const/4 v0, 0x5

    :goto_1d
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    .line 68
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    .line 69
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    .line 70
    invoke-direct {p0}, Lcom/android/browser/view/PieStackView;->layoutChildrenLinear()V

    .line 72
    :cond_2f
    return-void

    .line 67
    :cond_30
    iget v0, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    add-int/lit8 v0, v0, 0x5

    neg-int v0, v0

    goto :goto_1d
.end method

.method public setCurrent(I)V
    .registers 3
    .parameter "ix"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/browser/view/BasePieView;->setCurrent(I)V

    .line 51
    iget-object v0, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    if-eqz v0, :cond_12

    .line 52
    iget-object v0, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    invoke-interface {v0, p1}, Lcom/android/browser/view/PieStackView$OnCurrentListener;->onSetCurrent(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/view/PieStackView;->buildViews()V

    .line 54
    invoke-direct {p0}, Lcom/android/browser/view/PieStackView;->layoutChildrenLinear()V

    .line 56
    :cond_12
    return-void
.end method

.method public setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    .line 46
    return-void
.end method
