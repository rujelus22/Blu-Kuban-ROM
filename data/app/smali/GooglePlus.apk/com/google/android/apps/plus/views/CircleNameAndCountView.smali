.class public Lcom/google/android/apps/plus/views/CircleNameAndCountView;
.super Landroid/view/ViewGroup;
.source "CircleNameAndCountView.java"


# instance fields
.field private mCountTextView:Landroid/view/View;

.field private mNameTextView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 38
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    .line 39
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 114
    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 115
    .local v1, nameWidth:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 116
    .local v0, nameHeight:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    .line 117
    .local v3, textTop:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->getPaddingLeft()I

    move-result v2

    .line 118
    .local v2, textLeft:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 119
    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3d

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    add-int v5, v2, v1

    add-int v6, v2, v1

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 124
    :cond_3d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 47
    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->resolveSize(II)I

    move-result v11

    .line 48
    .local v11, width:I
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->resolveSize(II)I

    move-result v4

    .line 50
    .local v4, height:I
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_85

    const/4 v2, 0x1

    .line 51
    .local v2, countVisible:Z
    :goto_17
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 53
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 54
    .local v6, nameWidth:I
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 56
    .local v5, nameHeight:I
    const/4 v3, 0x0

    .line 57
    .local v3, countWidth:I
    const/4 v1, 0x0

    .line 58
    .local v1, countHeight:I
    if-eqz v2, :cond_41

    .line 59
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 60
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 61
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 64
    :cond_41
    add-int v10, v6, v3

    .line 65
    .local v10, totalTextWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->getPaddingLeft()I

    move-result v7

    .line 66
    .local v7, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->getPaddingRight()I

    move-result v8

    .line 67
    .local v8, paddingRight:I
    add-int v12, v10, v7

    add-int v9, v12, v8

    .line 69
    .local v9, textWidthWithPadding:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_ae

    .line 86
    :cond_56
    :goto_56
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mNameTextView:Landroid/view/View;

    const/high16 v13, 0x4000

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 90
    if-eqz v2, :cond_7a

    .line 91
    iget-object v12, p0, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->mCountTextView:Landroid/view/View;

    const/high16 v13, 0x4000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, 0x4000

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 96
    :cond_7a
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_bc

    .line 106
    :goto_81
    invoke-virtual {p0, v11, v4}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->setMeasuredDimension(II)V

    .line 107
    return-void

    .line 50
    .end local v1           #countHeight:I
    .end local v2           #countVisible:Z
    .end local v3           #countWidth:I
    .end local v5           #nameHeight:I
    .end local v6           #nameWidth:I
    .end local v7           #paddingLeft:I
    .end local v8           #paddingRight:I
    .end local v9           #textWidthWithPadding:I
    .end local v10           #totalTextWidth:I
    :cond_85
    const/4 v2, 0x0

    goto :goto_17

    .line 71
    .restart local v1       #countHeight:I
    .restart local v2       #countVisible:Z
    .restart local v3       #countWidth:I
    .restart local v5       #nameHeight:I
    .restart local v6       #nameWidth:I
    .restart local v7       #paddingLeft:I
    .restart local v8       #paddingRight:I
    .restart local v9       #textWidthWithPadding:I
    .restart local v10       #totalTextWidth:I
    :sswitch_87
    move v11, v9

    .line 72
    goto :goto_56

    .line 75
    :sswitch_89
    if-eqz v11, :cond_8d

    if-ge v9, v11, :cond_56

    .line 76
    :cond_8d
    move v11, v9

    goto :goto_56

    .line 81
    :sswitch_8f
    sub-int v12, v11, v7

    sub-int/2addr v12, v8

    sub-int/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_56

    .line 99
    :sswitch_9d
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CircleNameAndCountView;->getPaddingBottom()I

    move-result v13

    add-int v4, v12, v13

    .line 100
    goto :goto_81

    .line 69
    nop

    :sswitch_data_ae
    .sparse-switch
        -0x80000000 -> :sswitch_89
        0x0 -> :sswitch_87
        0x40000000 -> :sswitch_8f
    .end sparse-switch

    .line 96
    :sswitch_data_bc
    .sparse-switch
        -0x80000000 -> :sswitch_9d
        0x0 -> :sswitch_9d
    .end sparse-switch
.end method
