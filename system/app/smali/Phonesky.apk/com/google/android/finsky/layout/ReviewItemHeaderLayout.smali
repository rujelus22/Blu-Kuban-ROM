.class public Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "ReviewItemHeaderLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingTop()I

    move-result v10

    .line 78
    .local v10, top:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingBottom()I

    move-result v0

    .line 79
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getHeight()I

    move-result v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v0

    div-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    .line 80
    .local v4, middleY:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v3

    .line 82
    .local v3, left:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 83
    .local v5, rating:Landroid/widget/RatingBar;
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 84
    .local v1, info:Landroid/view/ViewGroup;
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 86
    .local v8, time:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_56

    .line 87
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v7, v4, v11

    .line 88
    .local v7, ratingTop:I
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v5, v3, v7, v11, v12}, Landroid/widget/RatingBar;->layout(IIII)V

    .line 91
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    .local v6, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v11

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 96
    .end local v6           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #ratingTop:I
    :cond_56
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v2, v4, v11

    .line 97
    .local v2, infoTop:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 99
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v3, v11

    .line 101
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v9, v4, v11

    .line 102
    .local v9, timeTop:I
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v8, v3, v9, v11, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 104
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 37
    .local v4, paddedWidth:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 38
    .local v10, widthSpecMode:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingLeft()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getPaddingRight()I

    move-result v12

    sub-int v3, v11, v12

    .line 40
    .local v3, nonpaddedWidth:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RatingBar;

    .line 41
    .local v5, rating:Landroid/widget/RatingBar;
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 42
    .local v1, info:Landroid/view/ViewGroup;
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 46
    .local v8, time:Landroid/widget/TextView;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewGroup;->measure(II)V

    .line 47
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 49
    .local v2, infoWidth:I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 50
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    .line 52
    .local v9, timeWidth:I
    const/4 v7, 0x0

    .line 53
    .local v7, ratingWidth:I
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_57

    .line 54
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/widget/RatingBar;->measure(II)V

    .line 55
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    .local v6, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v11

    iget v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v7, v11, v12

    .line 60
    .end local v6           #ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_57
    add-int v11, v2, v9

    add-int v0, v11, v7

    .line 64
    .local v0, combinedWidth:I
    if-eqz v10, :cond_6c

    if-le v0, v3, :cond_6c

    .line 65
    sub-int v11, v3, v9

    sub-int/2addr v11, v7

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/view/ViewGroup;->measure(II)V

    .line 69
    :cond_6c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {p0, v4, v11}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setMeasuredDimension(II)V

    .line 73
    return-void
.end method
