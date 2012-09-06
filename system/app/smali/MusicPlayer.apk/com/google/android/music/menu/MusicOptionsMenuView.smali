.class public Lcom/google/android/music/menu/MusicOptionsMenuView;
.super Landroid/view/ViewGroup;
.source "MusicOptionsMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/menu/MusicOptionsMenuView$1;,
        Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;,
        Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;
    }
.end annotation


# instance fields
.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/google/android/music/menu/MusicMenu;

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHasStaleChildren:Z

    .line 46
    sget-object v3, Lcom/google/android/music/R$styleable;->MusicMenuView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x42

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mRowHeight:I

    .line 50
    const/4 v3, 0x5

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxItemsPerRow:I

    .line 51
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxRows:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, resource:Landroid/content/res/Resources;
    const v3, 0x7f0200a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 57
    const v3, 0x7f0200a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 62
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5a

    .line 63
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    .line 65
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    if-ne v3, v5, :cond_5a

    iput v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    .line 68
    :cond_5a
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6c

    .line 69
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    .line 71
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    if-ne v3, v5, :cond_6c

    iput v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    .line 73
    :cond_6c
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxRows:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayout:[I

    .line 76
    invoke-virtual {p0, v6}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setWillNotDraw(Z)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setFocusableInTouchMode(Z)V

    .line 81
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setDescendantFocusability(I)V

    .line 83
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private addItemView(Lcom/google/android/music/menu/MusicOptionsMenuItemView;)V
    .registers 6
    .parameter "itemView"

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 201
    const-string v1, "MusicOptionsMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The itemView already has a parent, need to remove this parent. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    .line 203
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->getTextAppropriateLayoutParams()Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :goto_36
    return-void

    .line 207
    :cond_37
    const-string v1, "MusicOptionsMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add an itemView since its parent is not a ViewGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private calculateItemFittingMetadata(I)V
    .registers 9
    .parameter "width"

    .prologue
    .line 421
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxItemsPerRow:I

    .line 422
    .local v3, maxNumItemsPerRow:I
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildCount()I

    move-result v4

    .line 423
    .local v4, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v4, :cond_27

    .line 424
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .line 426
    .local v2, lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    const/4 v5, 0x1

    iput v5, v2, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 427
    move v0, v3

    .local v0, curNumItemsPerRow:I
    :goto_17
    if-lez v0, :cond_21

    .line 430
    iget v5, v2, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v0

    if-ge v5, v6, :cond_24

    .line 432
    iput v0, v2, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 423
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 428
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 437
    .end local v0           #curNumItemsPerRow:I
    .end local v2           #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    :cond_27
    return-void
.end method

.method private doItemsFit()Z
    .registers 12

    .prologue
    const/4 v9, 0x1

    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, itemPos:I
    iget-object v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayout:[I

    .line 168
    .local v4, layout:[I
    iget v7, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayoutNumRows:I

    .line 169
    .local v7, numRows:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_7
    if-ge v8, v7, :cond_27

    .line 170
    aget v6, v4, v8

    .line 176
    .local v6, numItemsOnRow:I
    if-ne v6, v9, :cond_12

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 169
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 181
    :cond_12
    move v3, v6

    .local v3, itemsOnRowCounter:I
    move v2, v1

    .end local v1           #itemPos:I
    .local v2, itemPos:I
    :goto_14
    if-lez v3, :cond_2c

    .line 183
    add-int/lit8 v1, v2, 0x1

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    invoke-virtual {p0, v2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .line 185
    .local v5, lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    iget v10, v5, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v10, v6, :cond_28

    .line 186
    const/4 v9, 0x0

    .line 191
    .end local v0           #child:Landroid/view/View;
    .end local v3           #itemsOnRowCounter:I
    .end local v5           #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    .end local v6           #numItemsOnRow:I
    :cond_27
    return v9

    .line 182
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #itemsOnRowCounter:I
    .restart local v5       #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    .restart local v6       #numItemsOnRow:I
    :cond_28
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #itemPos:I
    .restart local v2       #itemPos:I
    goto :goto_14

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    :cond_2c
    move v1, v2

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    goto :goto_f
.end method

.method private layoutItems(I)V
    .registers 7
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildCount()I

    move-result v1

    .line 96
    .local v1, numItems:I
    if-nez v1, :cond_a

    .line 97
    iput v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayoutNumRows:I

    .line 122
    :cond_9
    return-void

    .line 102
    :cond_a
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxItemsPerRow:I

    div-int v3, v1, v3

    iget v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxItemsPerRow:I

    rem-int v4, v1, v4

    if-eqz v4, :cond_15

    const/4 v2, 0x1

    :cond_15
    add-int v0, v3, v2

    .line 109
    .local v0, curNumRows:I
    :goto_17
    iget v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMaxRows:I

    if-gt v0, v2, :cond_9

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->layoutItemsUsingGravity(II)V

    .line 112
    if-ge v0, v1, :cond_9

    .line 117
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->doItemsFit()Z

    move-result v2

    if-nez v2, :cond_9

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private layoutItemsUsingGravity(II)V
    .registers 9
    .parameter "numRows"
    .parameter "numItems"

    .prologue
    .line 133
    div-int v2, p2, p1

    .line 134
    .local v2, numBaseItemsPerRow:I
    rem-int v3, p2, p1

    .line 141
    .local v3, numLeftoverItems:I
    sub-int v4, p1, v3

    .line 143
    .local v4, rowsThatGetALeftoverItem:I
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayout:[I

    .line 144
    .local v1, layout:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, p1, :cond_18

    .line 145
    aput v2, v1, v0

    .line 148
    if-lt v0, v4, :cond_15

    .line 149
    aget v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v0

    .line 144
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 153
    :cond_18
    iput p1, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayoutNumRows:I

    .line 154
    return-void
.end method

.method private positionChildren(II)V
    .registers 26
    .parameter "menuWidth"
    .parameter "menuHeight"

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 247
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 250
    :cond_22
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayoutNumRows:I

    .line 251
    .local v14, numRows:I
    add-int/lit8 v15, v14, -0x1

    .line 252
    .local v15, numRowsMinus1:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayout:[I

    .line 255
    .local v13, numItemsForRow:[I
    const/4 v9, 0x0

    .line 257
    .local v9, itemPos:I
    const/4 v6, 0x0

    .line 262
    .local v6, childLayoutParams:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    const/4 v11, 0x0

    .line 266
    .local v11, itemTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    add-int/lit8 v18, v14, -0x1

    mul-int v17, v17, v18

    sub-int v17, p2, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 269
    .local v7, itemHeight:F
    const/16 v16, 0x0

    .local v16, row:I
    :goto_47
    move/from16 v0, v16

    if-ge v0, v14, :cond_154

    .line 271
    const/4 v8, 0x0

    .line 274
    .local v8, itemLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    aget v18, v13, v16

    add-int/lit8 v18, v18, -0x1

    mul-int v17, v17, v18

    sub-int v17, p1, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aget v18, v13, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 277
    .local v12, itemWidth:F
    const/4 v10, 0x0

    .local v10, itemPosOnRow:I
    :goto_69
    aget v17, v13, v16

    move/from16 v0, v17

    if-ge v10, v0, :cond_101

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 280
    .local v5, child:Landroid/view/View;
    float-to-int v0, v12

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    float-to-int v0, v7

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V

    .line 284
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #childLayoutParams:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    check-cast v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .line 285
    .restart local v6       #childLayoutParams:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    float-to-int v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->left:I

    .line 286
    add-float v17, v8, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->right:I

    .line 287
    float-to-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->top:I

    .line 288
    add-float v17, v11, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->bottom:I

    .line 291
    add-float/2addr v8, v12

    .line 292
    add-int/lit8 v9, v9, 0x1

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    float-to-int v0, v8

    move/from16 v19, v0

    float-to-int v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v8

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-float v22, v11, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v8, v8, v17

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_69

    .line 308
    .end local v5           #child:Landroid/view/View;
    :cond_101
    if-eqz v6, :cond_107

    .line 309
    move/from16 v0, p1

    iput v0, v6, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->right:I

    .line 312
    :cond_107
    add-float/2addr v11, v7

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_150

    move/from16 v0, v16

    if-ge v0, v15, :cond_150

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    float-to-int v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v11, v11, v17

    .line 269
    :cond_150
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_47

    .line 322
    .end local v8           #itemLeft:F
    .end local v10           #itemPosOnRow:I
    .end local v12           #itemWidth:F
    :cond_154
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 402
    instance-of v0, p1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 396
    new-instance v0, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 5

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, root:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 506
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_18
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 373
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1d

    .line 375
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 376
    .local v2, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_1d

    .line 377
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 382
    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 383
    if-eqz v0, :cond_3a

    .line 385
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 386
    .restart local v2       #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1       #i:I
    :goto_29
    if-ltz v1, :cond_3a

    .line 387
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 391
    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_6
    if-ltz v2, :cond_20

    .line 360
    invoke-virtual {p0, v2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 361
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;

    .line 365
    .local v1, childLayoutParams:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    iget v3, v1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->left:I

    iget v4, v1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->top:I

    iget v5, v1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->right:I

    iget v6, v1, Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 359
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 368
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLayoutParams:Lcom/google/android/music/menu/MusicOptionsMenuView$LayoutParams;
    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-boolean v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHasStaleChildren:Z

    if-eqz v3, :cond_a

    .line 327
    iput-boolean v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHasStaleChildren:Z

    .line 330
    invoke-virtual {p0, v4}, Lcom/google/android/music/menu/MusicOptionsMenuView;->updateChildren(Z)V

    .line 333
    :cond_a
    const v3, 0x7fffffff

    invoke-static {v3, p1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->resolveSize(II)I

    move-result v2

    .line 334
    .local v2, measuredWidth:I
    invoke-direct {p0, v2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->calculateItemFittingMetadata(I)V

    .line 335
    invoke-direct {p0, v2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->layoutItems(I)V

    .line 339
    iget v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mLayoutNumRows:I

    .line 340
    .local v1, layoutNumRows:I
    iget v3, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mRowHeight:I

    iget v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mHorizontalDividerHeight:I

    sub-int v0, v3, v4

    .line 344
    .local v0, desiredHeight:I
    invoke-static {v0, p2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setMeasuredDimension(II)V

    .line 348
    if-lez v1, :cond_37

    .line 349
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/music/menu/MusicOptionsMenuView;->positionChildren(II)V

    .line 351
    :cond_37
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 456
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;

    .line 457
    .local v0, ss:Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 459
    iget v2, v0, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_13

    .line 467
    :cond_12
    :goto_12
    return-void

    .line 463
    :cond_13
    iget v2, v0, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v2}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 464
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_12

    .line 465
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 443
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, focusedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_1f

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v0, :cond_1c

    .line 447
    new-instance v3, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;

    invoke-direct {v3, v2, v1}, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 451
    :goto_1b
    return-object v3

    .line 445
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 451
    :cond_1f
    new-instance v3, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Lcom/google/android/music/menu/MusicOptionsMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    goto :goto_1b
.end method

.method public updateChildren(Z)V
    .registers 8
    .parameter "cleared"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->removeAllViews()V

    .line 224
    iget-object v5, p0, Lcom/google/android/music/menu/MusicOptionsMenuView;->mMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v5}, Lcom/google/android/music/menu/MusicMenu;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 225
    .local v1, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 230
    .local v3, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v3, :cond_22

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicOptionsMenuItem;

    .line 232
    .local v2, menuItem:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicOptionsMenuItem;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    .line 234
    .local v4, view:Lcom/google/android/music/menu/MusicOptionsMenuItemView;
    invoke-direct {p0, v4}, Lcom/google/android/music/menu/MusicOptionsMenuView;->addItemView(Lcom/google/android/music/menu/MusicOptionsMenuItemView;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 236
    .end local v2           #menuItem:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    .end local v4           #view:Lcom/google/android/music/menu/MusicOptionsMenuItemView;
    :cond_22
    return-void
.end method
