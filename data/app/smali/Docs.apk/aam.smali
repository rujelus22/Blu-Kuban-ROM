.class public Laam;
.super Ljava/lang/Object;
.source "Views.java"


# direct methods
.method public static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 45
    if-nez v0, :cond_35

    .line 47
    invoke-virtual {p0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p0

    .line 51
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v4, v3

    .line 52
    :goto_10
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_31

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    const/4 v2, 0x0

    move v5, v2

    :goto_18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v5, v2, :cond_32

    .line 57
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2d

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_2b
    move-object v4, v2

    .line 65
    goto :goto_10

    .line 56
    :cond_2d
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_18

    .line 67
    :cond_31
    return-object v4

    :cond_32
    move-object v0, v3

    move-object v2, v4

    goto :goto_2b

    :cond_35
    move-object v1, v0

    goto :goto_b
.end method

.method public static a(Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 33
    return-void
.end method
