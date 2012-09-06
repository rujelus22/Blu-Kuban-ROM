.class public Lcom/google/android/apps/plus/views/CirclesButton;
.super Landroid/view/ViewGroup;
.source "CirclesButton.java"


# instance fields
.field private final mCircleCountText:Landroid/widget/TextView;

.field private final mCircleIcon:Landroid/graphics/drawable/Drawable;

.field private final mCircleIconSpacing:I

.field private mCircleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCirclesText:Landroid/widget/TextView;

.field private mFixedText:Ljava/lang/String;

.field private final mLabelSpacing:I

.field private mPadding:Landroid/graphics/Rect;

.field private final mSb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CirclesButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x7f0f0051

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/CirclesButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x10

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    .line 53
    sget-object v2, Lcom/google/android/apps/plus/R$styleable;->CircleButton:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIconSpacing:I

    .line 56
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_ba

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, textColor:I
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 65
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 67
    :cond_3a
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 68
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mFixedText:Ljava/lang/String;

    .line 70
    :cond_46
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 75
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    const v3, 0x1030046

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    if-eqz v1, :cond_91

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_91
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->addView(Landroid/view/View;)V

    .line 88
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    const v3, 0x1030046

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/CirclesButton;->addView(Landroid/view/View;)V

    .line 94
    return-void

    .line 60
    :array_ba
    .array-data 0x4
        0x98t 0x0t 0x1t 0x1t
        0x4ft 0x1t 0x1t 0x1t
        0x6ft 0x1t 0x1t 0x1t
    .end array-data
.end method

.method private appendCirclesText(Ljava/lang/StringBuilder;I)V
    .registers 9
    .parameter "sb"
    .parameter "circleCount"

    .prologue
    .line 227
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne p2, v5, :cond_20

    .line 228
    iget-object v2, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    .line 249
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p2, :cond_4b

    .line 250
    if-lez v0, :cond_14

    .line 251
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 235
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p2, :cond_a

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, maxLength:I
    const/4 v4, -0x1

    .line 239
    .local v4, maxLengthIndex:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_47

    .line 240
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 241
    .local v1, length:I
    if-lt v1, v3, :cond_44

    .line 242
    move v3, v1

    .line 243
    move v4, v0

    .line 239
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 246
    .end local v1           #length:I
    :cond_47
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 256
    .end local v3           #maxLength:I
    .end local v4           #maxLengthIndex:I
    :cond_4b
    iget-object v5, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_58

    .line 257
    const-string v5, ",\u2026"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_58
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 292
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 266
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 267
    .local v1, iconHeight:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 268
    .local v3, iconWidth:I
    sub-int v6, p5, p3

    sub-int/2addr v6, v1

    div-int/lit8 v2, v6, 0x2

    .line 269
    .local v2, iconTop:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    add-int v9, v2, v1

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIconSpacing:I

    add-int v4, v6, v7

    .line 272
    .local v4, leftBound:I
    sub-int v6, p4, p2

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v7

    .line 274
    .local v5, rightBound:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_56

    .line 275
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 276
    .local v0, countWidth:I
    sub-int/2addr v5, v0

    .line 277
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v8, v5, v0

    sub-int v9, p5, p3

    iget-object v10, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 279
    iget v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    sub-int/2addr v5, v6

    .line 282
    .end local v0           #countWidth:I
    :cond_56
    iget-object v6, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v8, p5, p3

    iget-object v9, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 283
    return-void
.end method

.method protected onMeasure(II)V
    .registers 29
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    if-nez v21, :cond_46

    .line 108
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CirclesButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 110
    .local v3, background:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_24

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 114
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CirclesButton;->getPaddingLeft()I

    move-result v15

    .line 115
    .local v15, paddingLeft:I
    if-eqz v15, :cond_34

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v15, v0, Landroid/graphics/Rect;->left:I

    .line 119
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CirclesButton;->getPaddingRight()I

    move-result v16

    .line 120
    .local v16, paddingRight:I
    if-eqz v16, :cond_46

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 125
    .end local v3           #background:Landroid/graphics/drawable/Drawable;
    .end local v15           #paddingLeft:I
    .end local v16           #paddingRight:I
    :cond_46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 126
    .local v13, myWidth:I
    const/high16 v21, -0x8000

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 127
    .local v6, height:I
    move/from16 v19, v13

    .line 128
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 129
    .local v7, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIconSpacing:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 133
    .local v20, widthExceptLabel:I
    if-nez v13, :cond_17e

    const v10, 0x7fffffff

    .line 137
    .local v10, maxLabelWidth:I
    :goto_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mFixedText:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_182

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mFixedText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, -0x8000

    move/from16 v0, v22

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 142
    .local v8, labelWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :goto_ca
    add-int v19, v8, v20

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleIconSpacing:I

    move/from16 v22, v0

    add-int v9, v21, v22

    .line 205
    .local v9, leftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v18, v19, v21

    .line 207
    .local v18, rightBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getVisibility()I

    move-result v21

    if-nez v21, :cond_143

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 209
    .local v5, countWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->measure(II)V

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v5

    sub-int v18, v18, v21

    .line 216
    .end local v5           #countWidth:I
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    sub-int v22, v18, v9

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    const/high16 v24, 0x4000

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->measure(II)V

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/google/android/apps/plus/views/CirclesButton;->setMeasuredDimension(II)V

    .line 222
    return-void

    .line 133
    .end local v8           #labelWidth:I
    .end local v9           #leftBound:I
    .end local v10           #maxLabelWidth:I
    .end local v18           #rightBound:I
    :cond_17e
    sub-int v10, v13, v20

    goto/16 :goto_89

    .line 144
    .restart local v10       #maxLabelWidth:I
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 146
    .local v4, circleCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/views/CirclesButton;->appendCirclesText(Ljava/lang/StringBuilder;I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    .line 150
    .local v11, measuredTextWidth:I
    if-gt v11, v10, :cond_1dc

    .line 151
    move v8, v11

    .line 152
    .restart local v8       #labelWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 153
    .end local v8           #labelWidth:I
    :cond_1dc
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_20f

    .line 154
    move v8, v10

    .line 157
    .restart local v8       #labelWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, -0x8000

    move/from16 v0, v22

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 165
    .end local v8           #labelWidth:I
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/CirclesButton;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 168
    .local v17, resources:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 169
    .restart local v5       #countWidth:I
    add-int/lit8 v14, v4, -0x1

    .local v14, nameCount:I
    :goto_225
    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v14, v0, :cond_2ba

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/google/android/apps/plus/views/CirclesButton;->appendCirclesText(Ljava/lang/StringBuilder;I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    .line 176
    sub-int v12, v4, v14

    .line 177
    .local v12, moreCircles:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const v22, 0x7f0e0025

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleCountText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v11

    add-int v21, v21, v5

    move/from16 v0, v21

    if-gt v0, v10, :cond_2f3

    .line 187
    .end local v12           #moreCircles:I
    :cond_2ba
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v11

    add-int v21, v21, v5

    move/from16 v0, v21

    if-le v0, v10, :cond_2e7

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    sub-int v11, v21, v5

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mCirclesText:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/high16 v22, -0x8000

    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->measure(II)V

    .line 196
    :cond_2e7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/CirclesButton;->mLabelSpacing:I

    move/from16 v21, v0

    add-int v21, v21, v11

    add-int v8, v21, v5

    .restart local v8       #labelWidth:I
    goto/16 :goto_ca

    .line 169
    .end local v8           #labelWidth:I
    .restart local v12       #moreCircles:I
    :cond_2f3
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_225
.end method

.method public setCircles(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, circleNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CirclesButton;->mCircleNames:Ljava/util/ArrayList;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CirclesButton;->requestLayout()V

    .line 100
    return-void
.end method
