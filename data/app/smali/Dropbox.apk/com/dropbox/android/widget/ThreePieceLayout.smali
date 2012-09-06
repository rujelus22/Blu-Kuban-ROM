.class public Lcom/dropbox/android/widget/ThreePieceLayout;
.super Landroid/widget/LinearLayout;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildCount()I

    move-result v0

    .line 101
    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dropbox/android/widget/ThreePieceLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have 3 children!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_26
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingLeft()I

    move-result v3

    .line 106
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 108
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingTop()I

    move-result v2

    .line 109
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 121
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    const/4 v9, -0x1

    if-eq v1, v9, :cond_145

    .line 123
    and-int/lit8 v1, v1, 0x70

    .line 124
    sparse-switch v1, :sswitch_data_148

    .line 136
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 139
    :goto_5e
    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v9

    .line 142
    add-int v9, v3, v7

    .line 143
    iget v10, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v0, v9, v0

    add-int/2addr v8, v1

    invoke-virtual {v6, v10, v1, v0, v8}, Landroid/view/View;->layout(IIII)V

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 150
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 153
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 157
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    const/4 v11, -0x1

    if-eq v1, v11, :cond_142

    .line 159
    and-int/lit8 v1, v1, 0x70

    .line 160
    sparse-switch v1, :sswitch_data_156

    .line 172
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 175
    :goto_91
    iget v11, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v11

    iget v11, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v11

    .line 177
    sub-int v11, v4, v8

    .line 179
    iget v12, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v11

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v0, v4, v0

    add-int/2addr v10, v1

    invoke-virtual {v6, v12, v1, v0, v10}, Landroid/view/View;->layout(IIII)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 187
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 194
    iget v12, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    const/4 v13, -0x1

    if-eq v12, v13, :cond_c4

    .line 196
    and-int/lit8 v12, v12, 0x70

    .line 197
    sparse-switch v12, :sswitch_data_164

    .line 209
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    .line 212
    :cond_c4
    :goto_c4
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v1

    .line 219
    sub-int v1, v4, v3

    .line 221
    if-le v7, v8, :cond_132

    .line 222
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 223
    add-int v1, v3, v5

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    :goto_dc
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v0, v1, v0

    add-int v1, v2, v10

    invoke-virtual {v6, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 230
    return-void

    .line 126
    :sswitch_e9
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 127
    goto/16 :goto_5e

    .line 129
    :sswitch_ee
    sub-int v1, v5, v2

    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v9

    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v9

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 131
    goto/16 :goto_5e

    .line 133
    :sswitch_fc
    sub-int v1, v5, v8

    iget v9, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v9

    .line 134
    goto/16 :goto_5e

    .line 162
    :sswitch_103
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 163
    goto :goto_91

    .line 165
    :sswitch_107
    sub-int v1, v5, v2

    iget v11, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v11

    iget v11, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v11

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 167
    goto/16 :goto_91

    .line 169
    :sswitch_115
    sub-int v1, v5, v10

    iget v11, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v11

    .line 170
    goto/16 :goto_91

    .line 199
    :sswitch_11c
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    .line 200
    goto :goto_c4

    .line 202
    :sswitch_120
    sub-int/2addr v5, v2

    iget v12, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v12

    iget v12, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v12

    sub-int/2addr v5, v10

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 204
    goto :goto_c4

    .line 206
    :sswitch_12c
    sub-int v2, v5, v10

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v5

    .line 207
    goto :goto_c4

    .line 225
    :cond_132
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 226
    sub-int v3, v1, v5

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_dc

    :cond_142
    move v1, v2

    goto/16 :goto_91

    :cond_145
    move v1, v2

    goto/16 :goto_5e

    .line 124
    :sswitch_data_148
    .sparse-switch
        0x10 -> :sswitch_ee
        0x30 -> :sswitch_e9
        0x50 -> :sswitch_fc
    .end sparse-switch

    .line 160
    :sswitch_data_156
    .sparse-switch
        0x10 -> :sswitch_107
        0x30 -> :sswitch_103
        0x50 -> :sswitch_115
    .end sparse-switch

    .line 197
    :sswitch_data_164
    .sparse-switch
        0x10 -> :sswitch_120
        0x30 -> :sswitch_11c
        0x50 -> :sswitch_12c
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildCount()I

    move-result v0

    .line 56
    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dropbox/android/widget/ThreePieceLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have 3 children!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_29
    invoke-virtual {p0, v3}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_cd

    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/ThreePieceLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    iget v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    add-int v7, v3, v0

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 73
    :goto_56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_81

    .line 75
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    .line 76
    invoke-virtual/range {v4 .. v9}, Lcom/dropbox/android/widget/ThreePieceLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 77
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    add-int/2addr v7, v0

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 81
    :cond_81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_ad

    .line 83
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move v8, p2

    move v9, v3

    .line 84
    invoke-virtual/range {v4 .. v9}, Lcom/dropbox/android/widget/ThreePieceLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v7, v0

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    :cond_ad
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    .line 90
    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/ThreePieceLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 92
    invoke-static {v0, p1}, Lcom/dropbox/android/widget/ThreePieceLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/dropbox/android/widget/ThreePieceLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/ThreePieceLayout;->setMeasuredDimension(II)V

    .line 94
    return-void

    :cond_cd
    move v7, v3

    move v1, v3

    goto :goto_56
.end method
