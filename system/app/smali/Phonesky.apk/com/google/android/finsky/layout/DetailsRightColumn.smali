.class public Lcom/google/android/finsky/layout/DetailsRightColumn;
.super Landroid/widget/LinearLayout;
.source "DetailsRightColumn.java"


# instance fields
.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private toApplyRightMargin(Landroid/view/View;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 35
    .local v0, childId:I
    const v1, 0x7f0800da

    if-eq v0, v1, :cond_10

    const v1, 0x7f0800db

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private toApplyRightPadding(Landroid/view/View;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 40
    .local v0, childId:I
    const v1, 0x7f0800db

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, totalHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4e

    .line 49
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/DetailsRightColumn;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1a

    .line 48
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 53
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 54
    .local v1, childWidth:I
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->toApplyRightMargin(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 55
    iget v4, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    sub-int/2addr v1, v4

    .line 57
    :cond_27
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/DetailsRightColumn;->toApplyRightPadding(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    :cond_3e
    const/high16 v4, 0x4000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_17

    .line 66
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    :cond_4e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method

.method public setRightMargin(I)V
    .registers 2
    .parameter "rightMargin"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsRightColumn;->mRightMargin:I

    .line 31
    return-void
.end method
