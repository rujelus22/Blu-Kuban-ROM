.class public Lcom/google/android/apps/plus/views/ExactLayout;
.super Landroid/view/ViewGroup;
.source "ExactLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static varargs getMaxHeight([Landroid/view/View;)I
    .registers 7
    .parameter "views"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, maxHeight:I
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 234
    .local v2, maxIndex:I
    move v0, v2

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_1b

    .line 235
    aget-object v3, p0, v0

    .line 237
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_18

    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 234
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 242
    .end local v3           #view:Landroid/view/View;
    :cond_1b
    return v1
.end method

.method public static measure(Landroid/view/View;IIII)V
    .registers 7
    .parameter "view"
    .parameter "width"
    .parameter "widthMode"
    .parameter "height"
    .parameter "heightMode"

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 206
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 208
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 210
    return-void
.end method

.method public static setCenterBounds(Landroid/view/View;II)V
    .registers 4
    .parameter "view"
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 198
    .local v0, lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    iput p2, v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->verticalBound:I

    .line 199
    iput p1, v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->horizontalBound:I

    .line 201
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method

.method public static setCorner(Landroid/view/View;II)V
    .registers 4
    .parameter "view"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 189
    .local v0, lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    iput p1, v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    .line 190
    iput p2, v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void
.end method

.method public static varargs verticallyCenter(I[Landroid/view/View;)V
    .registers 9
    .parameter "verticalBound"
    .parameter "views"

    .prologue
    .line 251
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 252
    .local v2, maxIndex:I
    const v3, 0x7fffffff

    .line 255
    .local v3, minTop:I
    move v0, v2

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_21

    .line 256
    aget-object v4, p1, v0

    .line 258
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1e

    .line 259
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 260
    .local v1, lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    iget v5, v1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 255
    .end local v1           #lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 265
    .end local v4           #view:Landroid/view/View;
    :cond_21
    move v0, v2

    :goto_22
    if-ltz v0, :cond_3b

    .line 266
    aget-object v4, p1, v0

    .line 268
    .restart local v4       #view:Landroid/view/View;
    if-eqz v4, :cond_38

    .line 269
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 270
    .restart local v1       #lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    iget v5, v1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    invoke-static {v4, v5, v3}, Lcom/google/android/apps/plus/views/ExactLayout;->setCorner(Landroid/view/View;II)V

    .line 273
    iget v5, v1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->horizontalBound:I

    invoke-static {v4, v5, p0}, Lcom/google/android/apps/plus/views/ExactLayout;->setCenterBounds(Landroid/view/View;II)V

    .line 265
    .end local v1           #lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 276
    .end local v4           #view:Landroid/view/View;
    :cond_3b
    return-void
.end method


# virtual methods
.method public addPadding(IIII)V
    .registers 9
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/ExactLayout;->setPadding(IIII)V

    .line 222
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 109
    instance-of v0, p1, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExactLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExactLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExactLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 167
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 104
    new-instance v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v0, :cond_55

    .line 84
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 86
    .local v5, targetView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 88
    .local v6, targetVisibility:I
    const/16 v9, 0x8

    if-eq v6, v9, :cond_52

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 91
    .local v4, lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 92
    .local v8, width:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 93
    .local v1, height:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingLeft()I

    move-result v9

    const/4 v10, 0x0

    iget v11, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->horizontalBound:I

    sub-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v3, v9, v10

    .line 94
    .local v3, leftPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingTop()I

    move-result v9

    const/4 v10, 0x0

    iget v11, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->verticalBound:I

    sub-int/2addr v11, v1

    div-int/lit8 v11, v11, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v7, v9, v10

    .line 96
    .local v7, topPadding:I
    iget v9, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    add-int/2addr v9, v3

    iget v10, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    add-int/2addr v10, v7

    iget v11, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    add-int/2addr v11, v3

    add-int/2addr v11, v8

    iget v12, v4, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    add-int/2addr v12, v1

    add-int/2addr v12, v7

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 83
    .end local v1           #height:I
    .end local v3           #leftPadding:I
    .end local v4           #lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    .end local v7           #topPadding:I
    .end local v8           #width:I
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 100
    .end local v5           #targetView:Landroid/view/View;
    .end local v6           #targetVisibility:I
    :cond_55
    return-void
.end method

.method protected onMeasure(II)V
    .registers 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 43
    const/4 v9, 0x0

    .line 44
    .local v9, maxHeight:I
    const/4 v10, 0x0

    .line 46
    .local v10, maxWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingLeft()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingRight()I

    move-result v21

    add-int v17, v20, v21

    .line 47
    .local v17, totalWidthPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getPaddingBottom()I

    move-result v21

    add-int v16, v20, v21

    .line 49
    .local v16, totalHeightPadding:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 50
    .local v19, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 51
    .local v6, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 52
    .local v18, width:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 54
    .local v5, height:I
    sub-int v20, v18, v17

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 56
    .local v12, paddedWidthMeasureSpec:I
    sub-int v20, v5, v16

    move/from16 v0, v20

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 59
    .local v11, paddedHeightMeasureSpec:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/google/android/apps/plus/views/ExactLayout;->measureChildren(II)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildCount()I

    move-result v4

    .local v4, childCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_42
    if-ge v7, v4, :cond_79

    .line 62
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 64
    .local v14, targetView:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    .line 66
    .local v15, targetVisibility:I
    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v15, v0, :cond_76

    .line 67
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    .line 69
    .local v8, lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    iget v0, v8, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    move/from16 v20, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v13, v20, v21

    .line 70
    .local v13, right:I
    iget v0, v8, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    move/from16 v20, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v3, v20, v21

    .line 72
    .local v3, bottom:I
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 73
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 61
    .end local v3           #bottom:I
    .end local v8           #lp:Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
    .end local v13           #right:I
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 77
    .end local v14           #targetView:Landroid/view/View;
    .end local v15           #targetVisibility:I
    :cond_79
    add-int v20, v10, v17

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/ExactLayout;->resolveSize(II)I

    move-result v20

    add-int v21, v9, v16

    move/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/ExactLayout;->resolveSize(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/ExactLayout;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method public onRecycle()V
    .registers 5

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ExactLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, targetView:Landroid/view/View;
    instance-of v3, v2, Lcom/google/android/apps/plus/views/Recyclable;

    if-eqz v3, :cond_14

    .line 175
    check-cast v2, Lcom/google/android/apps/plus/views/Recyclable;

    .end local v2           #targetView:Landroid/view/View;
    invoke-interface {v2}, Lcom/google/android/apps/plus/views/Recyclable;->onRecycle()V

    .line 171
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 178
    :cond_17
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExactLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method
