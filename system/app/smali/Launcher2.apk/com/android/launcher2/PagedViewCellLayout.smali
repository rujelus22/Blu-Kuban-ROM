.class public Lcom/android/launcher2/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewCellLayout"


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mHeightGap:I

.field private mMaxGap:I

.field private mOriginalCellHeight:I

.field private mOriginalCellWidth:I

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    .line 67
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    .line 69
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 70
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 72
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    .line 74
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {v1, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z
    .registers 8
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"

    .prologue
    .line 119
    move-object v0, p4

    .line 123
    .local v0, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_33

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_33

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_33

    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_33

    .line 127
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_21

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 128
    :cond_21
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_29

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iput v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 130
    :cond_29
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 131
    iget-object v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/4 v1, 0x1

    .line 135
    :goto_32
    return v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public calculateCellCount(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "maxCellCountX"
    .parameter "maxCellCountY"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 369
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellVSpan(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    .line 371
    return-void
.end method

.method public cancelLongPress()V
    .registers 4

    .prologue
    .line 107
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 111
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 115
    .end local v0           #child:Landroid/view/View;
    :cond_14
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 396
    instance-of v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method createHardwareLayers()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->createHardwareLayer()V

    .line 103
    return-void
.end method

.method destroyHardwareLayers()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->destroyHardwareLayer()V

    .line 98
    return-void
.end method

.method public enableCenteredContent(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 288
    return-void
.end method

.method public estimateCellHSpan(I)I
    .registers 8
    .parameter "width"

    .prologue
    .line 335
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 338
    .local v0, availWidth:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 341
    .local v1, n:I
    return v1
.end method

.method public estimateCellHeight(I)I
    .registers 3
    .parameter "vSpan"

    .prologue
    .line 386
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public estimateCellPosition(II)[I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public estimateCellVSpan(I)I
    .registers 8
    .parameter "height"

    .prologue
    .line 350
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 353
    .local v0, availHeight:I
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 356
    .local v1, n:I
    return v1
.end method

.method public estimateCellWidth(I)I
    .registers 3
    .parameter "hSpan"

    .prologue
    .line 378
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 391
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 401
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellCountForDimensions(II)[I
    .registers 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 310
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    .local v0, smallerSize:I
    add-int v3, p1, v0

    div-int v1, v3, v0

    .line 314
    .local v1, spanX:I
    add-int v3, p2, v0

    div-int v2, v3, v0

    .line 316
    .local v2, spanY:I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method public getCellCountX()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    return v0
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .registers 3
    .parameter "i"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    return-object v0
.end method

.method getContentHeight()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 245
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-lez v1, :cond_16

    .line 246
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 248
    :cond_16
    return v0
.end method

.method getContentWidth()I
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageChildCount()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 252
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-lez v1, :cond_16

    .line 253
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 255
    :cond_16
    return v0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .registers 3
    .parameter "v"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method onDragChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 326
    .local v0, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->isDragging:Z

    .line 327
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
    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 261
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_1f

    .line 262
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 266
    .end local v0           #child:Landroid/view/View;
    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 187
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 188
    .local v17, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 190
    .local v18, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 191
    .local v8, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 193
    .local v9, heightSpecSize:I
    if-eqz v17, :cond_14

    if-nez v8, :cond_1c

    .line 194
    :cond_14
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 197
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 198
    .local v14, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 200
    .local v13, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_178

    .line 201
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 202
    .local v7, hSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 203
    .local v16, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 204
    .local v6, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 205
    .local v15, vFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_170

    div-int v19, v6, v14

    :goto_86
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_174

    div-int v19, v15, v13

    :goto_9e
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 215
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :goto_c1
    move/from16 v12, v18

    .line 216
    .local v12, newWidth:I
    move v11, v9

    .line 217
    .local v11, newHeight:I
    const/high16 v19, -0x8000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_131

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 225
    :cond_131
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v5

    .line 226
    .local v5, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_136
    if-ge v10, v5, :cond_192

    .line 227
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 228
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 231
    .local v3, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 234
    .local v4, childheightMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 226
    add-int/lit8 v10, v10, 0x1

    goto :goto_136

    .line 205
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childWidthMeasureSpec:I
    .end local v4           #childheightMeasureSpec:I
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v11           #newHeight:I
    .end local v12           #newWidth:I
    .restart local v6       #hFreeSpace:I
    .restart local v7       #hSpace:I
    .restart local v15       #vFreeSpace:I
    .restart local v16       #vSpace:I
    :cond_170
    const/16 v19, 0x0

    goto/16 :goto_86

    .line 206
    :cond_174
    const/16 v19, 0x0

    goto/16 :goto_9e

    .line 210
    .end local v6           #hFreeSpace:I
    .end local v7           #hSpace:I
    .end local v15           #vFreeSpace:I
    .end local v16           #vSpace:I
    :cond_178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    goto/16 :goto_c1

    .line 237
    .restart local v5       #count:I
    .restart local v10       #i:I
    .restart local v11       #newHeight:I
    .restart local v12       #newWidth:I
    :cond_192
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 238
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 271
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v2

    .line 272
    .local v2, count:I
    if-lez v2, :cond_3c

    .line 274
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 276
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 277
    .local v3, numRows:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v5

    if-ge v3, v5, :cond_30

    .line 279
    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 281
    :cond_30
    if-nez v4, :cond_3b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3d

    :cond_3b
    const/4 v4, 0x1

    .line 283
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    .end local v3           #numRows:I
    :cond_3c
    :goto_3c
    return v4

    .line 281
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v3       #numRows:I
    :cond_3d
    const/4 v4, 0x0

    goto :goto_3c
.end method

.method public removeAllViewsOnPage()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->destroyHardwareLayers()V

    .line 142
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 147
    return-void
.end method

.method public resetChildrenOnKeyListeners()V
    .registers 5

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 154
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 155
    iget-object v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 157
    :cond_16
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setAlpha(F)V

    .line 92
    return-void
.end method

.method public setCellCount(II)V
    .registers 3
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    .line 296
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 297
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    .line 299
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 293
    return-void
.end method

.method public setGap(II)V
    .registers 4
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 302
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalWidthGap:I

    .line 303
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mOriginalHeightGap:I

    .line 304
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 305
    return-void
.end method
