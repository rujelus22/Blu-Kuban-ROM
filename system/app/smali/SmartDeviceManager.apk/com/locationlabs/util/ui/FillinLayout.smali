.class public Lcom/locationlabs/util/ui/FillinLayout;
.super Landroid/view/ViewGroup;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/locationlabs/util/ui/FillinLayout$a;
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    instance-of v0, p1, Lcom/locationlabs/util/ui/FillinLayout$a;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 86
    new-instance v0, Lcom/locationlabs/util/ui/FillinLayout$a;

    invoke-direct {v0}, Lcom/locationlabs/util/ui/FillinLayout$a;-><init>()V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getChildCount()I

    move-result v0

    .line 96
    sub-int v1, p4, p2

    .line 97
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingLeft()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingTop()I

    move-result v3

    .line 100
    const/4 v4, 0x0

    move v10, v4

    move v4, v2

    move v2, v10

    :goto_12
    if-ge v2, v0, :cond_48

    .line 101
    invoke-virtual {p0, v2}, Lcom/locationlabs/util/ui/FillinLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 102
    const/16 v6, 0x8

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v6, v7, :cond_45

    .line 103
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 105
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8}, Lcom/locationlabs/util/ui/FillinLayout$a;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/locationlabs/util/ui/FillinLayout$a;

    move-result-object v8

    .line 106
    add-int v9, v4, v6

    if-le v9, v1, :cond_3b

    .line 107
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingLeft()I

    move-result v4

    .line 108
    iget v9, p0, Lcom/locationlabs/util/ui/FillinLayout;->a:I

    add-int/2addr v3, v9

    .line 110
    :cond_3b
    add-int v9, v4, v6

    add-int/2addr v7, v3

    invoke-virtual {v5, v4, v3, v9, v7}, Landroid/view/View;->layout(IIII)V

    .line 111
    iget v5, v8, Lcom/locationlabs/util/ui/FillinLayout$a;->a:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 100
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 114
    :cond_48
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/high16 v12, -0x8000

    const/4 v11, 0x0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 47
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingLeft()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingTop()I

    move-result v3

    .line 49
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getChildCount()I

    move-result v4

    move v5, v2

    move v6, v11

    move v2, v11

    .line 51
    :goto_2e
    if-ge v2, v4, :cond_79

    .line 52
    invoke-virtual {p0, v2}, Lcom/locationlabs/util/ui/FillinLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_71

    .line 54
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8}, Lcom/locationlabs/util/ui/FillinLayout$a;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/locationlabs/util/ui/FillinLayout$a;

    move-result-object v8

    .line 56
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v12, :cond_74

    .line 57
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 63
    :goto_4e
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 67
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v10, v8, Lcom/locationlabs/util/ui/FillinLayout$a;->b:I

    add-int/2addr v7, v10

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 69
    add-int v7, v5, v9

    if-le v7, v0, :cond_6d

    .line 70
    invoke-virtual {p0}, Lcom/locationlabs/util/ui/FillinLayout;->getPaddingLeft()I

    move-result v5

    .line 71
    add-int/2addr v3, v6

    .line 74
    :cond_6d
    iget v7, v8, Lcom/locationlabs/util/ui/FillinLayout$a;->a:I

    add-int/2addr v7, v9

    add-int/2addr v5, v7

    .line 51
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 60
    :cond_74
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_4e

    .line 77
    :cond_79
    iput v6, p0, Lcom/locationlabs/util/ui/FillinLayout;->a:I

    .line 79
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_83

    .line 80
    add-int v1, v6, v3

    .line 82
    :cond_83
    invoke-virtual {p0, v0, v1}, Lcom/locationlabs/util/ui/FillinLayout;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method
