.class public Lcom/dropbox/android/widget/RotatableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# instance fields
.field protected a:Z

.field private b:F

.field private c:F

.field private final d:Ljava/util/ArrayList;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->a:Z

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setWillNotDraw(Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->a:Z

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setWillNotDraw(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->a:Z

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setWillNotDraw(Z)V

    .line 40
    return-void
.end method

.method private a(IIII)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    return v0
.end method

.method private b()F
    .registers 3

    .prologue
    .line 69
    iget v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->c:F

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->b:F

    goto :goto_9
.end method

.method private c(II)[I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    invoke-direct {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->b()F

    move-result v2

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 79
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 80
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 81
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method


# virtual methods
.method public final a()F
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->b:F

    return v0
.end method

.method protected final a(II)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildCount()I

    move-result v9

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 111
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 112
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 114
    invoke-direct {p0, v1, v5}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v2

    .line 115
    aget v6, v2, v3

    aget v2, v2, v10

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v6

    .line 116
    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 117
    int-to-float v0, v5

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v8, v3

    move v6, v3

    move v7, v3

    .line 119
    :goto_33
    if-ge v8, v9, :cond_62

    .line 120
    invoke-virtual {p0, v8}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getConsiderGoneChildrenWhenMeasuring()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_d9

    :cond_47
    move-object v0, p0

    move v5, v3

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/RotatableFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 119
    :goto_5c
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v6, v0

    move v7, v1

    goto :goto_33

    .line 129
    :cond_62
    invoke-direct {p0, v6, v7}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v0

    .line 130
    aget v1, v0, v3

    aget v0, v0, v10

    invoke-direct {p0, v6, v7, v1, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v0

    .line 131
    int-to-float v1, v6

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 132
    int-to-float v2, v7

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 135
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    .line 136
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 139
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 140
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_af

    .line 145
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 149
    :cond_af
    invoke-static {v0, p1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setMeasuredDimension(II)V

    .line 152
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredHeight()I

    move-result v2

    aget v3, v0, v3

    aget v0, v0, v10

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    .line 157
    return-void

    :cond_d9
    move v0, v6

    move v1, v7

    goto :goto_5c
.end method

.method protected final a(ZIIII)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildCount()I

    move-result v5

    .line 288
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v3

    .line 289
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    .line 291
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v1

    .line 292
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int v7, v0, v2

    .line 295
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v2, v4, v8}, Lcom/dropbox/android/widget/RotatableFrameLayout;->onSizeChanged(IIII)V

    .line 297
    const/4 v0, 0x0

    move v4, v0

    :goto_25
    if-ge v4, v5, :cond_a9

    .line 298
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 299
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_71

    .line 300
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 303
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 305
    int-to-float v2, v9

    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    sub-float/2addr v11, v12

    mul-float/2addr v2, v11

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 306
    int-to-float v11, v10

    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    div-int/lit8 v11, v11, 0x2

    .line 311
    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 313
    const/4 v13, -0x1

    if-eq v12, v13, :cond_aa

    .line 314
    and-int/lit8 v13, v12, 0x7

    .line 315
    and-int/lit8 v12, v12, 0x70

    .line 317
    packed-switch v13, :pswitch_data_ae

    .line 329
    :pswitch_61
    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v3

    add-int/2addr v2, v13

    .line 332
    :goto_65
    sparse-switch v12, :sswitch_data_bc

    .line 344
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    .line 348
    :goto_6c
    add-int/2addr v9, v2

    add-int/2addr v10, v0

    invoke-virtual {v8, v2, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 297
    :cond_71
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_25

    .line 319
    :pswitch_75
    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v3

    add-int/2addr v2, v13

    .line 320
    goto :goto_65

    .line 322
    :pswitch_7a
    sub-int v2, v6, v3

    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v13

    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v13

    sub-int/2addr v2, v9

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    .line 324
    goto :goto_65

    .line 326
    :pswitch_87
    sub-int v13, v6, v9

    iget v14, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v13, v14

    sub-int v2, v13, v2

    .line 327
    goto :goto_65

    .line 334
    :sswitch_8f
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    .line 335
    goto :goto_6c

    .line 337
    :sswitch_94
    sub-int v11, v7, v1

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v11

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 339
    goto :goto_6c

    .line 341
    :sswitch_a1
    sub-int v12, v7, v10

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v12, v0

    sub-int/2addr v0, v11

    .line 342
    goto :goto_6c

    .line 351
    :cond_a9
    return-void

    :cond_aa
    move v0, v1

    move v2, v3

    goto :goto_6c

    .line 317
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_61
        :pswitch_75
        :pswitch_61
        :pswitch_87
    .end packed-switch

    .line 332
    :sswitch_data_bc
    .sparse-switch
        0x10 -> :sswitch_94
        0x30 -> :sswitch_8f
        0x50 -> :sswitch_a1
    .end sparse-switch
.end method

.method protected final b(II)V
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildCount()I

    move-result v11

    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_14

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x4000

    if-eq v0, v1, :cond_ab

    :cond_14
    const/4 v0, 0x1

    move v6, v0

    .line 165
    :goto_16
    iget-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    const/4 v9, 0x0

    .line 168
    const/4 v8, 0x0

    .line 169
    const/4 v7, 0x0

    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 174
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 175
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 178
    invoke-direct {p0, v1, v4}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v2

    .line 179
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v10, 0x1

    aget v2, v2, v10

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v5

    .line 180
    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 181
    int-to-float v0, v4

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 183
    const/4 v0, 0x0

    move v10, v0

    :goto_4c
    if-ge v10, v11, :cond_af

    .line 184
    invoke-virtual {p0, v10}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 185
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasureAllChildren()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1a7

    .line 187
    :cond_60
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/RotatableFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 188
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v7, v3}, Lcom/dropbox/android/widget/RotatableFrameLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 195
    if-eqz v6, :cond_a1

    .line 196
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9c

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_a1

    .line 198
    :cond_9c
    iget-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    move v0, v3

    move v1, v5

    move v3, v9

    .line 183
    :goto_a4
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v7, v0

    move v8, v1

    move v9, v3

    goto :goto_4c

    .line 162
    :cond_ab
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_16

    .line 205
    :cond_af
    invoke-direct {p0, v9, v8}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v9, v8, v1, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v0

    .line 207
    int-to-float v1, v9

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 208
    int-to-float v2, v8

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 211
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 212
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 215
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 218
    invoke-static {v1, p1, v7}, Lcom/dropbox/android/widget/RotatableFrameLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 219
    shl-int/lit8 v2, v7, 0x10

    invoke-static {v0, p2, v2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->resolveSizeAndState(III)I

    move-result v0

    .line 220
    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setMeasuredDimension(II)V

    .line 222
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/dropbox/android/widget/RotatableFrameLayout;->c(II)[I

    move-result-object v2

    .line 224
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v2, v2, v6

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(IIII)F

    move-result v2

    iput v2, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    .line 229
    iget v2, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v4, v1

    .line 230
    iget v1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 239
    const/4 v0, 0x1

    if-le v6, v0, :cond_1a6

    .line 240
    const/4 v0, 0x0

    move v3, v0

    :goto_12a
    if-ge v3, v6, :cond_1a6

    .line 241
    iget-object v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 247
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_17a

    .line 248
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v2, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v7

    const/high16 v7, 0x4000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 259
    :goto_156
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_190

    .line 260
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v7, v1

    const/high16 v7, 0x4000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 271
    :goto_173
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 240
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12a

    .line 253
    :cond_17a
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v7

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v2, v7}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    goto :goto_156

    .line 265
    :cond_190
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, v7, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_173

    .line 274
    :cond_1a6
    return-void

    :cond_1a7
    move v0, v7

    move v1, v8

    move v3, v9

    goto/16 :goto_a4
.end method

.method protected final b(ZIIII)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildCount()I

    move-result v3

    .line 357
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingLeft()I

    move-result v4

    .line 358
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 360
    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingTop()I

    move-result v6

    .line 361
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 364
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/dropbox/android/widget/RotatableFrameLayout;->onSizeChanged(IIII)V

    .line 366
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    if-ge v2, v3, :cond_b0

    .line 367
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 368
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_78

    .line 369
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 371
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 372
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 374
    int-to-float v1, v9

    const/high16 v11, 0x3f80

    iget v12, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    sub-float/2addr v11, v12

    mul-float/2addr v1, v11

    float-to-int v1, v1

    div-int/lit8 v11, v1, 0x2

    .line 375
    int-to-float v1, v10

    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->e:F

    sub-float/2addr v12, v13

    mul-float/2addr v1, v12

    float-to-int v1, v1

    div-int/lit8 v12, v1, 0x2

    .line 380
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    const/4 v13, -0x1

    if-ne v1, v13, :cond_5c

    .line 383
    const/16 v1, 0x33

    .line 387
    :cond_5c
    const/4 v13, 0x0

    invoke-static {v1, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 388
    and-int/lit8 v14, v1, 0x70

    .line 390
    and-int/lit8 v1, v13, 0x7

    packed-switch v1, :pswitch_data_b2

    .line 402
    :pswitch_68
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    add-int/2addr v1, v11

    .line 405
    :goto_6c
    sparse-switch v14, :sswitch_data_c0

    .line 417
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    add-int/2addr v0, v12

    .line 420
    :goto_73
    add-int/2addr v9, v1

    add-int/2addr v10, v0

    invoke-virtual {v8, v1, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 366
    :cond_78
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 392
    :pswitch_7c
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    add-int/2addr v1, v11

    .line 393
    goto :goto_6c

    .line 395
    :pswitch_81
    sub-int v1, v5, v4

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v11

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    .line 397
    goto :goto_6c

    .line 399
    :pswitch_8e
    sub-int v1, v5, v9

    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v11

    .line 400
    goto :goto_6c

    .line 407
    :sswitch_95
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    add-int/2addr v0, v12

    .line 408
    goto :goto_73

    .line 410
    :sswitch_9a
    sub-int v11, v7, v6

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v6

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    .line 412
    goto :goto_73

    .line 414
    :sswitch_a8
    sub-int v11, v7, v10

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    sub-int/2addr v0, v12

    .line 415
    goto :goto_73

    .line 423
    :cond_b0
    return-void

    .line 390
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_81
        :pswitch_68
        :pswitch_7c
        :pswitch_68
        :pswitch_8e
    .end packed-switch

    .line 405
    :sswitch_data_c0
    .sparse-switch
        0x10 -> :sswitch_9a
        0x30 -> :sswitch_95
        0x50 -> :sswitch_a8
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    .line 427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget v0, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->b:F

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dropbox/android/widget/RotatableFrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 429
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 430
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 431
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    .line 279
    invoke-virtual/range {p0 .. p5}, Lcom/dropbox/android/widget/RotatableFrameLayout;->b(ZIIII)V

    .line 283
    :goto_9
    return-void

    .line 281
    :cond_a
    invoke-virtual/range {p0 .. p5}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(ZIIII)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_a

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->b(II)V

    .line 97
    :goto_9
    return-void

    .line 95
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/widget/RotatableFrameLayout;->a(II)V

    goto :goto_9
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dropbox/android/widget/RotatableFrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support foreground drawables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRotationBackport(F)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->b:F

    .line 57
    return-void
.end method

.method public setRotationMaxBackport(F)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/dropbox/android/widget/RotatableFrameLayout;->c:F

    .line 53
    return-void
.end method
