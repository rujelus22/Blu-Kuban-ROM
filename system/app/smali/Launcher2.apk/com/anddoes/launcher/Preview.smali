.class public Lcom/anddoes/launcher/Preview;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/Preview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/anddoes/launcher/Preview;->e:I

    .line 22
    iput v0, p0, Lcom/anddoes/launcher/Preview;->f:I

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/anddoes/launcher/Preview;->g:[F

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/Preview;->b:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/cc;I)I
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 149
    iget v2, p1, Lcom/anddoes/launcher/cc;->a:I

    iget v3, p1, Lcom/anddoes/launcher/cc;->b:I

    .line 150
    iget v4, p1, Lcom/anddoes/launcher/cc;->c:I

    iget v5, p1, Lcom/anddoes/launcher/cc;->d:I

    iget-object v6, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    iget-object v0, p0, Lcom/anddoes/launcher/Preview;->g:[F

    .line 149
    if-nez v0, :cond_13

    const/4 v0, 0x2

    new-array v0, v0, [F

    :cond_13
    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v2, v7

    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v3, v7

    sub-int/2addr v2, v4

    sub-int/2addr v3, v5

    invoke-virtual {v6}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-virtual {v6}, Lcom/anddoes/launcher/bx;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v0, v9

    iput-object v0, p0, Lcom/anddoes/launcher/Preview;->g:[F

    .line 151
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 154
    iget-object v0, p0, Lcom/anddoes/launcher/Preview;->g:[F

    aget v0, v0, v1

    .line 155
    iget-object v4, p0, Lcom/anddoes/launcher/Preview;->g:[F

    aget v4, v4, v9

    .line 158
    iget v5, p0, Lcom/anddoes/launcher/Preview;->d:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_94

    .line 159
    const/4 v5, 0x0

    add-float/2addr v0, v5

    iget v5, p0, Lcom/anddoes/launcher/Preview;->d:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/anddoes/launcher/Preview;->b:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 161
    :goto_72
    iget v2, p0, Lcom/anddoes/launcher/Preview;->c:I

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_85

    .line 162
    int-to-float v1, p2

    add-float/2addr v1, v4

    iget v2, p0, Lcom/anddoes/launcher/Preview;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/anddoes/launcher/Preview;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 164
    :cond_85
    iget v2, p0, Lcom/anddoes/launcher/Preview;->e:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getChildCount()I

    move-result v1

    .line 166
    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_93

    .line 167
    add-int/lit8 v0, v1, -0x2

    .line 170
    :cond_93
    return v0

    :cond_94
    move v0, v1

    goto :goto_72
.end method

.method public final a(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/Preview;->detachViewFromParent(Landroid/view/View;)V

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/anddoes/launcher/Preview;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getChildCount()I

    move-result v4

    .line 137
    const/4 v2, 0x0

    :goto_5
    if-lt v2, v4, :cond_8

    .line 146
    return-void

    .line 138
    :cond_8
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b7

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/jq;

    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->a:I

    if-ne v1, v3, :cond_bb

    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_26
    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/anddoes/launcher/Preview;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/anddoes/launcher/Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/anddoes/launcher/Preview;->f:I

    mul-int/2addr v9, v8

    sub-int/2addr v6, v9

    iget v9, p0, Lcom/anddoes/launcher/Preview;->b:I

    iget v10, p0, Lcom/anddoes/launcher/Preview;->f:I

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    sub-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/anddoes/launcher/Preview;->c:I

    iget v6, p0, Lcom/anddoes/launcher/Preview;->e:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/anddoes/launcher/Preview;->b:I

    iget v9, p0, Lcom/anddoes/launcher/Preview;->e:I

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v6, v9

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/anddoes/launcher/Preview;->d:I

    iget v3, p0, Lcom/anddoes/launcher/Preview;->f:I

    div-int v3, v1, v3

    iget v6, p0, Lcom/anddoes/launcher/Preview;->e:I

    rem-int/2addr v1, v6

    iget v6, p0, Lcom/anddoes/launcher/Preview;->d:I

    mul-int v9, v7, v1

    add-int/2addr v6, v9

    iget v9, p0, Lcom/anddoes/launcher/Preview;->b:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/anddoes/launcher/Preview;->c:I

    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    iget v8, p0, Lcom/anddoes/launcher/Preview;->b:I

    mul-int/2addr v3, v8

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v0, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v6, Lcom/anddoes/launcher/jq;->b:I

    if-ne v0, v6, :cond_c5

    int-to-float v0, v7

    add-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    sub-float v1, v3, v1

    :goto_95
    new-instance v3, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v0, v1, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    iget v0, v3, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, v3, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    .line 142
    iget v6, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 143
    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 141
    invoke-virtual {v5, v0, v1, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 137
    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 140
    :cond_bb
    iget v1, v0, Lcom/anddoes/launcher/jq;->e:I

    sget v3, Lcom/anddoes/launcher/jq;->b:I

    if-ne v1, v3, :cond_c8

    iget v1, p0, Lcom/anddoes/launcher/Preview;->a:I

    goto/16 :goto_26

    :cond_c5
    move v0, v1

    move v1, v3

    goto :goto_95

    :cond_c8
    move v1, v2

    goto/16 :goto_26
.end method
