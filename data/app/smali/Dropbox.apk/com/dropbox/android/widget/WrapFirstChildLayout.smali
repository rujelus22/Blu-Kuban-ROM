.class public Lcom/dropbox/android/widget/WrapFirstChildLayout;
.super Landroid/view/ViewGroup;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 48
    :goto_6
    if-ge v0, v2, :cond_1e

    .line 49
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1b

    .line 51
    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 48
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 54
    :cond_1e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/16 v6, 0x8

    .line 24
    invoke-virtual {p0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getChildCount()I

    move-result v1

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_9
    if-ge v0, v1, :cond_25

    .line 27
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_47

    .line 29
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->setMeasuredDimension(II)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 35
    :cond_25
    invoke-virtual {p0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 36
    invoke-virtual {p0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 37
    :goto_35
    if-ge v0, v1, :cond_4a

    .line 38
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/WrapFirstChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_44

    .line 40
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    .line 37
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 26
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 43
    :cond_4a
    return-void
.end method
