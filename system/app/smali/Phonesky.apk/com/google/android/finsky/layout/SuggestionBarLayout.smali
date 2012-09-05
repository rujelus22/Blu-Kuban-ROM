.class public Lcom/google/android/finsky/layout/SuggestionBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SuggestionBarLayout.java"


# instance fields
.field private suggestionArrow:Landroid/view/View;

.field private suggestionLine1:Landroid/view/View;

.field private suggestionLine2:Landroid/view/View;

.field private suggestionLineFull:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    .line 44
    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    .line 45
    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    .line 46
    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    .line 47
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 32
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v9

    .line 76
    .local v9, leftPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v14

    .line 77
    .local v14, rightPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingTop()I

    move-result v20

    .line 78
    .local v20, topPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingBottom()I

    move-result v7

    .line 81
    .local v7, bottomPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getHeight()I

    move-result v21

    sub-int v21, v21, v20

    sub-int v21, v21, v7

    div-int/lit8 v21, v21, 0x2

    add-int v13, v20, v21

    .line 82
    .local v13, middleY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 83
    .local v4, arrowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 84
    .local v5, arrowWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v22

    sub-int v22, v22, v14

    sub-int v22, v22, v5

    div-int/lit8 v23, v4, 0x2

    sub-int v23, v13, v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v24

    sub-int v24, v24, v14

    div-int/lit8 v25, v4, 0x2

    add-int v25, v25, v13

    invoke-virtual/range {v21 .. v25}, Landroid/view/View;->layout(IIII)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 89
    .local v12, lineFullWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 90
    .local v10, line1Width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 92
    .local v11, line2Width:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v21

    sub-int v21, v21, v9

    sub-int v21, v21, v14

    sub-int v6, v21, v5

    .line 93
    .local v6, availableTextWidth:I
    if-gt v12, v6, :cond_c0

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 99
    .local v15, textHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    move-object/from16 v21, v0

    div-int/lit8 v22, v15, 0x2

    sub-int v22, v13, v22

    add-int v23, v9, v12

    div-int/lit8 v24, v15, 0x2

    add-int v24, v24, v13

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 116
    .end local v15           #textHeight:I
    :goto_bf
    return-void

    .line 102
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 106
    .local v16, textHeight1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 107
    .local v17, textHeight2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .local v8, layoutMargin:I
    add-int v21, v16, v17

    add-int v21, v21, v8

    div-int/lit8 v21, v21, 0x2

    sub-int v18, v13, v21

    .line 110
    .local v18, textTop1:I
    add-int v21, v18, v16

    add-int v19, v21, v8

    .line 111
    .local v19, textTop2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    add-int v23, v18, v16

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    move-object/from16 v21, v0

    add-int v22, v9, v11

    add-int v23, v19, v17

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_bf
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 52
    .local v2, paddedWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v1

    .line 53
    .local v1, leftPadding:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v3

    .line 55
    .local v3, rightPadding:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    invoke-virtual {v5, v7, v7}, Landroid/view/View;->measure(II)V

    .line 57
    sub-int v5, v2, v1

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionArrow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 63
    .local v0, availableTextWidth:I
    const/high16 v5, -0x8000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 65
    .local v4, textViewWidthSpec:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLineFull:Landroid/view/View;

    invoke-virtual {v5, v7, v7}, Landroid/view/View;->measure(II)V

    .line 66
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine1:Landroid/view/View;

    invoke-virtual {v5, v4, v7}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->suggestionLine2:Landroid/view/View;

    invoke-virtual {v5, v4, v7}, Landroid/view/View;->measure(II)V

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setMeasuredDimension(II)V

    .line 71
    return-void
.end method
