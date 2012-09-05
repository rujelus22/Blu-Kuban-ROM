.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .local v0, count:I
    add-int v1, p1, p2

    .line 599
    .local v1, newI:I
    :goto_6
    if-ltz v1, :cond_1b

    if-ge v1, v0, :cond_1b

    .line 600
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 601
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_18

    instance-of v3, v2, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_19

    .line 606
    .end local v2           #newV:Landroid/view/View;
    :cond_18
    :goto_18
    return-object v2

    .line 604
    .restart local v2       #newV:Landroid/view/View;
    :cond_19
    add-int/2addr v1, p2

    .line 605
    goto :goto_6

    .line 606
    .end local v2           #newV:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .registers 3
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, p:Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_f

    .line 78
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 80
    :cond_f
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 4
    .parameter "container"
    .parameter "index"

    .prologue
    .line 123
    check-cast p0, Lcom/android/launcher2/PagedView;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_13

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_13
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .registers 4
    .parameter "container"
    .parameter "i"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 561
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 7
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 572
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 573
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_e
    if-ge v2, v1, :cond_1a

    .line 575
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 577
    :cond_1a
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 587
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 26
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 626
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v15

    .line 627
    .local v15, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 628
    .local v8, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    .line 629
    .local v2, cellCountX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    .line 630
    .local v3, cellCountY:I
    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 631
    .local v11, row:I
    add-int v9, v11, p3

    .line 632
    .local v9, newRow:I
    if-ltz v9, :cond_af

    if-ge v9, v3, :cond_af

    .line 633
    const v4, 0x7f7fffff

    .line 634
    .local v4, closestDistance:F
    const/4 v5, -0x1

    .line 635
    .local v5, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 636
    .local v7, index:I
    if-gez p3, :cond_8c

    const/4 v6, -0x1

    .line 637
    .local v6, endIndex:I
    :goto_27
    if-eq v7, v6, :cond_a2

    .line 638
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 639
    .local v10, newV:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 640
    .local v14, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_93

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v11, :cond_91

    const/4 v12, 0x1

    .line 641
    .local v12, satisfiesRow:Z
    :goto_40
    if-eqz v12, :cond_87

    instance-of v0, v10, Lcom/android/launcher2/BubbleTextView;

    move/from16 v16, v0

    if-nez v16, :cond_4e

    instance-of v0, v10, Lcom/android/launcher2/FolderIcon;

    move/from16 v16, v0

    if-eqz v16, :cond_87

    .line 643
    :cond_4e
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    iget v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    iget v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v13, v0

    .line 645
    .local v13, tmpDistance:F
    cmpg-float v16, v13, v4

    if-gez v16, :cond_87

    .line 646
    move v5, v7

    .line 647
    move v4, v13

    .line 650
    .end local v13           #tmpDistance:F
    :cond_87
    if-gt v7, v6, :cond_9f

    .line 651
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 636
    .end local v6           #endIndex:I
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_8c
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_27

    .line 640
    .restart local v6       #endIndex:I
    .restart local v10       #newV:Landroid/view/View;
    .restart local v14       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_91
    const/4 v12, 0x0

    goto :goto_40

    :cond_93
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v11, :cond_9d

    const/4 v12, 0x1

    goto :goto_40

    :cond_9d
    const/4 v12, 0x0

    goto :goto_40

    .line 653
    .restart local v12       #satisfiesRow:Z
    :cond_9f
    add-int/lit8 v7, v7, -0x1

    goto :goto_27

    .line 656
    .end local v10           #newV:Landroid/view/View;
    .end local v12           #satisfiesRow:Z
    .end local v14           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_a2
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v5, v0, :cond_af

    .line 657
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 660
    .end local v4           #closestDistance:F
    .end local v5           #closestIndex:I
    .end local v6           #endIndex:I
    .end local v7           #index:I
    :goto_ae
    return-object v16

    :cond_af
    const/16 v16, 0x0

    goto :goto_ae
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 6
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 610
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 611
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 615
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 27
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_70

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 287
    .local v10, itemContainer:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 288
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, countX:I
    move-object/from16 v22, v16

    .line 289
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 298
    .local v7, countY:I
    :goto_28
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    .line 299
    .local v5, container:Lcom/android/launcher2/PagedView;
    invoke-static {v5}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 300
    .local v17, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TabWidget;

    .line 301
    .local v18, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 302
    .local v9, iconIndex:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 303
    .local v11, itemCount:I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v15

    .line 304
    .local v15, pageIndex:I
    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    .line 306
    .local v14, pageCount:I
    rem-int v20, v9, v6

    .line 307
    .local v20, x:I
    div-int v21, v9, v6

    .line 309
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 310
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_89

    const/4 v8, 0x1

    .line 311
    .local v8, handleKeyEvent:Z
    :goto_68
    const/4 v12, 0x0

    .line 314
    .local v12, newParent:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 315
    .local v3, child:Landroid/view/View;
    const/16 v19, 0x0

    .line 316
    .local v19, wasHandled:Z
    sparse-switch p1, :sswitch_data_1d0

    .line 434
    :goto_6f
    return v19

    .line 291
    .end local v2           #action:I
    .end local v3           #child:Landroid/view/View;
    .end local v5           #container:Lcom/android/launcher2/PagedView;
    .end local v6           #countX:I
    .end local v7           #countY:I
    .end local v8           #handleKeyEvent:Z
    .end local v9           #iconIndex:I
    .end local v10           #itemContainer:Landroid/view/ViewGroup;
    .end local v11           #itemCount:I
    .end local v12           #newParent:Landroid/view/ViewGroup;
    .end local v14           #pageCount:I
    .end local v15           #pageIndex:I
    .end local v16           #parentLayout:Landroid/view/ViewGroup;
    .end local v17           #tabHost:Landroid/widget/TabHost;
    .end local v18           #tabs:Landroid/widget/TabWidget;
    .end local v19           #wasHandled:Z
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_70
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16       #parentLayout:Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10       #itemContainer:Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 292
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6       #countX:I
    move-object/from16 v22, v16

    .line 293
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7       #countY:I
    goto :goto_28

    .line 310
    .restart local v2       #action:I
    .restart local v5       #container:Lcom/android/launcher2/PagedView;
    .restart local v9       #iconIndex:I
    .restart local v11       #itemCount:I
    .restart local v14       #pageCount:I
    .restart local v15       #pageIndex:I
    .restart local v17       #tabHost:Landroid/widget/TabHost;
    .restart local v18       #tabs:Landroid/widget/TabWidget;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_89
    const/4 v8, 0x0

    goto :goto_68

    .line 318
    .restart local v3       #child:Landroid/view/View;
    .restart local v8       #handleKeyEvent:Z
    .restart local v12       #newParent:Landroid/view/ViewGroup;
    .restart local v19       #wasHandled:Z
    :sswitch_8b
    if-eqz v8, :cond_9a

    .line 320
    if-lez v9, :cond_9d

    .line 321
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 333
    :cond_9a
    :goto_9a
    const/16 v19, 0x1

    .line 334
    goto :goto_6f

    .line 323
    :cond_9d
    if-lez v15, :cond_9a

    .line 324
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 325
    if-eqz v12, :cond_9a

    .line 326
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 327
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 328
    if-eqz v3, :cond_9a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_9a

    .line 336
    :sswitch_c2
    if-eqz v8, :cond_d5

    .line 338
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_d8

    .line 339
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 351
    :cond_d5
    :goto_d5
    const/16 v19, 0x1

    .line 352
    goto :goto_6f

    .line 341
    :cond_d8
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d5

    .line 342
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 343
    if-eqz v12, :cond_d5

    .line 344
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 345
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 346
    if-eqz v3, :cond_d5

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_d5

    .line 354
    :sswitch_fd
    if-eqz v8, :cond_10e

    .line 356
    if-lez v21, :cond_112

    .line 357
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 358
    .local v13, newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 363
    .end local v13           #newiconIndex:I
    :cond_10e
    :goto_10e
    const/16 v19, 0x1

    .line 364
    goto/16 :goto_6f

    .line 360
    :cond_112
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_10e

    .line 366
    :sswitch_116
    if-eqz v8, :cond_133

    .line 368
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_133

    .line 369
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 370
    .restart local v13       #newiconIndex:I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 373
    .end local v13           #newiconIndex:I
    :cond_133
    const/16 v19, 0x1

    .line 374
    goto/16 :goto_6f

    .line 377
    :sswitch_137
    if-eqz v8, :cond_141

    move-object v4, v5

    .line 379
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 380
    .local v4, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 382
    .end local v4           #clickListener:Landroid/view/View$OnClickListener;
    :cond_141
    const/16 v19, 0x1

    .line 383
    goto/16 :goto_6f

    .line 385
    :sswitch_145
    if-eqz v8, :cond_167

    .line 388
    if-lez v15, :cond_16b

    .line 389
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 390
    if-eqz v12, :cond_167

    .line 391
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 392
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_167

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 399
    :cond_167
    :goto_167
    const/16 v19, 0x1

    .line 400
    goto/16 :goto_6f

    .line 396
    :cond_16b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_167

    .line 402
    :sswitch_177
    if-eqz v8, :cond_19d

    .line 405
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_1a1

    .line 406
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 407
    if-eqz v12, :cond_19d

    .line 408
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 409
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 410
    if-eqz v3, :cond_19d

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 416
    :cond_19d
    :goto_19d
    const/16 v19, 0x1

    .line 417
    goto/16 :goto_6f

    .line 413
    :cond_1a1
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_19d

    .line 419
    :sswitch_1ad
    if-eqz v8, :cond_1ba

    .line 421
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 423
    :cond_1ba
    const/16 v19, 0x1

    .line 424
    goto/16 :goto_6f

    .line 426
    :sswitch_1be
    if-eqz v8, :cond_1cb

    .line 428
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 430
    :cond_1cb
    const/16 v19, 0x1

    .line 431
    goto/16 :goto_6f

    .line 316
    nop

    :sswitch_data_1d0
    .sparse-switch
        0x13 -> :sswitch_fd
        0x14 -> :sswitch_116
        0x15 -> :sswitch_8b
        0x16 -> :sswitch_c2
        0x17 -> :sswitch_137
        0x42 -> :sswitch_137
        0x5c -> :sswitch_145
        0x5d -> :sswitch_177
        0x7a -> :sswitch_1ad
        0x7b -> :sswitch_1be
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 88
    .local v4, tabHost:Landroid/widget/TabHost;
    const v6, 0x1020011

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    .local v1, contents:Landroid/view/ViewGroup;
    const v6, 0x7f060008

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, shop:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 93
    .local v0, action:I
    if-eq v0, v2, :cond_20

    .line 94
    .local v2, handleKeyEvent:Z
    :goto_1b
    const/4 v5, 0x0

    .line 95
    .local v5, wasHandled:Z
    packed-switch p1, :pswitch_data_34

    .line 116
    :cond_1f
    :goto_1f
    :pswitch_1f
    return v5

    .line 93
    .end local v2           #handleKeyEvent:Z
    .end local v5           #wasHandled:Z
    :cond_20
    const/4 v2, 0x0

    goto :goto_1b

    .line 97
    .restart local v2       #handleKeyEvent:Z
    .restart local v5       #wasHandled:Z
    :pswitch_22
    if-eqz v2, :cond_29

    .line 99
    if-eq p0, v3, :cond_29

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 103
    :cond_29
    const/4 v5, 0x1

    .line 104
    goto :goto_1f

    .line 106
    :pswitch_2b
    if-eqz v2, :cond_1f

    .line 108
    if-ne p0, v3, :cond_1f

    .line 109
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 110
    const/4 v5, 0x1

    goto :goto_1f

    .line 95
    :pswitch_data_34
    .packed-switch 0x14
        :pswitch_2b
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 822
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    .line 823
    .local v5, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 824
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 825
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v6, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 827
    .local v6, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 828
    .local v0, action:I
    if-eq v0, v8, :cond_22

    move v2, v8

    .line 829
    .local v2, handleKeyEvent:Z
    :goto_1d
    const/4 v7, 0x0

    .line 830
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_7e

    .line 898
    :goto_21
    return v7

    .line 828
    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_22
    const/4 v2, 0x0

    goto :goto_1d

    .line 832
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_24
    if-eqz v2, :cond_2f

    .line 834
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 835
    .local v4, newIcon:Landroid/view/View;
    if-eqz v4, :cond_2f

    .line 836
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 839
    .end local v4           #newIcon:Landroid/view/View;
    :cond_2f
    const/4 v7, 0x1

    .line 840
    goto :goto_21

    .line 842
    :sswitch_31
    if-eqz v2, :cond_3c

    .line 844
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 845
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_3e

    .line 846
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 851
    .end local v4           #newIcon:Landroid/view/View;
    :cond_3c
    :goto_3c
    const/4 v7, 0x1

    .line 852
    goto :goto_21

    .line 848
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_3e
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3c

    .line 854
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_42
    if-eqz v2, :cond_4d

    .line 856
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 857
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_4d

    .line 858
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 861
    .end local v4           #newIcon:Landroid/view/View;
    :cond_4d
    const/4 v7, 0x1

    .line 862
    goto :goto_21

    .line 864
    :sswitch_4f
    if-eqz v2, :cond_5a

    .line 866
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 867
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_5c

    .line 868
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 873
    .end local v4           #newIcon:Landroid/view/View;
    :cond_5a
    :goto_5a
    const/4 v7, 0x1

    .line 874
    goto :goto_21

    .line 870
    .restart local v4       #newIcon:Landroid/view/View;
    :cond_5c
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_5a

    .line 876
    .end local v4           #newIcon:Landroid/view/View;
    :sswitch_60
    if-eqz v2, :cond_6b

    .line 878
    invoke-static {v3, v5, v9, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 879
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_6b

    .line 880
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 883
    .end local v4           #newIcon:Landroid/view/View;
    :cond_6b
    const/4 v7, 0x1

    .line 884
    goto :goto_21

    .line 886
    :sswitch_6d
    if-eqz v2, :cond_7c

    .line 888
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    invoke-static {v3, v5, v8, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 890
    .restart local v4       #newIcon:Landroid/view/View;
    if-eqz v4, :cond_7c

    .line 891
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 894
    .end local v4           #newIcon:Landroid/view/View;
    :cond_7c
    const/4 v7, 0x1

    .line 895
    goto :goto_21

    .line 830
    :sswitch_data_7e
    .sparse-switch
        0x13 -> :sswitch_42
        0x14 -> :sswitch_4f
        0x15 -> :sswitch_24
        0x16 -> :sswitch_31
        0x7a -> :sswitch_60
        0x7b -> :sswitch_6d
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .registers 18
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 496
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 497
    .local v9, parent:Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 498
    .local v5, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f060019

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 499
    .local v11, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 500
    .local v2, buttonIndex:I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 501
    .local v1, buttonCount:I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 507
    .local v8, pageIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 508
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_2e

    const/4 v4, 0x1

    .line 509
    .local v4, handleKeyEvent:Z
    :goto_29
    const/4 v10, 0x0

    .line 510
    .local v10, wasHandled:Z
    packed-switch p1, :pswitch_data_7c

    .line 553
    :goto_2d
    return v10

    .line 508
    .end local v4           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_29

    .line 512
    .restart local v4       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :pswitch_30
    if-eqz v4, :cond_3d

    .line 514
    if-lez v2, :cond_3f

    .line 515
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 520
    :cond_3d
    :goto_3d
    const/4 v10, 0x1

    .line 521
    goto :goto_2d

    .line 517
    :cond_3f
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3d

    .line 523
    :pswitch_45
    if-eqz v4, :cond_54

    .line 525
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_56

    .line 526
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 531
    :cond_54
    :goto_54
    const/4 v10, 0x1

    .line 532
    goto :goto_2d

    .line 528
    :cond_56
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_54

    .line 534
    :pswitch_5c
    if-eqz v4, :cond_73

    .line 536
    invoke-virtual {v11, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 537
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 538
    .local v3, children:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 539
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_75

    .line 540
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 545
    .end local v3           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_73
    :goto_73
    const/4 v10, 0x1

    .line 546
    goto :goto_2d

    .line 542
    .restart local v3       #children:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_75
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_73

    .line 549
    .end local v3           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :pswitch_79
    const/4 v10, 0x1

    .line 550
    goto :goto_2d

    .line 510
    nop

    :pswitch_data_7c
    .packed-switch 0x13
        :pswitch_5c
        :pswitch_79
        :pswitch_30
        :pswitch_45
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 17
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutChildren;

    .line 668
    .local v8, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 669
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 670
    .local v11, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 671
    .local v3, launcher:Landroid/view/ViewGroup;
    const v12, 0x7f060022

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 672
    .local v9, tabs:Landroid/view/ViewGroup;
    const v12, 0x7f060021

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 673
    .local v2, hotseat:Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 674
    .local v7, pageIndex:I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 676
    .local v6, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 677
    .local v0, action:I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_3f

    const/4 v1, 0x1

    .line 678
    .local v1, handleKeyEvent:Z
    :goto_3a
    const/4 v10, 0x0

    .line 679
    .local v10, wasHandled:Z
    sparse-switch p1, :sswitch_data_138

    .line 815
    :cond_3e
    :goto_3e
    return v10

    .line 677
    .end local v1           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_3f
    const/4 v1, 0x0

    goto :goto_3a

    .line 681
    .restart local v1       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :sswitch_41
    if-eqz v1, :cond_4d

    .line 683
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 684
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_4f

    .line 685
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 700
    .end local v5           #newIcon:Landroid/view/View;
    :cond_4d
    :goto_4d
    const/4 v10, 0x1

    .line 701
    goto :goto_3e

    .line 687
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_4f
    if-lez v7, :cond_4d

    .line 688
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 689
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 691
    if-eqz v5, :cond_66

    .line 692
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4d

    .line 695
    :cond_66
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4d

    .line 703
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_6c
    if-eqz v1, :cond_78

    .line 705
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 706
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_7a

    .line 707
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 721
    .end local v5           #newIcon:Landroid/view/View;
    :cond_78
    :goto_78
    const/4 v10, 0x1

    .line 722
    goto :goto_3e

    .line 709
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_7a
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_78

    .line 710
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 711
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 712
    if-eqz v5, :cond_90

    .line 713
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_78

    .line 716
    :cond_90
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_78

    .line 724
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_96
    if-eqz v1, :cond_3e

    .line 726
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 727
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_a4

    .line 728
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 729
    const/4 v10, 0x1

    goto :goto_3e

    .line 731
    :cond_a4
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_3e

    .line 736
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_a8
    if-eqz v1, :cond_3e

    .line 738
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 739
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_b6

    .line 740
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 741
    const/4 v10, 0x1

    goto :goto_3e

    .line 742
    :cond_b6
    if-eqz v2, :cond_3e

    .line 743
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_3e

    .line 748
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_bc
    if-eqz v1, :cond_d1

    .line 751
    if-lez v7, :cond_da

    .line 752
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 753
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 754
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_d4

    .line 755
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 767
    .end local v5           #newIcon:Landroid/view/View;
    :cond_d1
    :goto_d1
    const/4 v10, 0x1

    .line 768
    goto/16 :goto_3e

    .line 758
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_d4
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_d1

    .line 761
    .end local v5           #newIcon:Landroid/view/View;
    :cond_da
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 762
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_d1

    .line 763
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_d1

    .line 770
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_e6
    if-eqz v1, :cond_fd

    .line 773
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_106

    .line 774
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 775
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 776
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_100

    .line 777
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 790
    .end local v5           #newIcon:Landroid/view/View;
    :cond_fd
    :goto_fd
    const/4 v10, 0x1

    .line 791
    goto/16 :goto_3e

    .line 780
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_100
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_fd

    .line 783
    .end local v5           #newIcon:Landroid/view/View;
    :cond_106
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 785
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_fd

    .line 786
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_fd

    .line 793
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_115
    if-eqz v1, :cond_122

    .line 795
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 796
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_122

    .line 797
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 800
    .end local v5           #newIcon:Landroid/view/View;
    :cond_122
    const/4 v10, 0x1

    .line 801
    goto/16 :goto_3e

    .line 803
    :sswitch_125
    if-eqz v1, :cond_135

    .line 805
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 807
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_135

    .line 808
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 811
    .end local v5           #newIcon:Landroid/view/View;
    :cond_135
    const/4 v10, 0x1

    .line 812
    goto/16 :goto_3e

    .line 679
    :sswitch_data_138
    .sparse-switch
        0x13 -> :sswitch_96
        0x14 -> :sswitch_a8
        0x15 -> :sswitch_41
        0x16 -> :sswitch_6c
        0x5c -> :sswitch_bc
        0x5d -> :sswitch_e6
        0x7a -> :sswitch_115
        0x7b -> :sswitch_125
    .end sparse-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .registers 26
    .parameter "w"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/PagedViewGridLayout;

    .line 138
    .local v13, parent:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 139
    .local v7, container:Lcom/android/launcher2/PagedView;
    invoke-static {v7}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v14

    .line 140
    .local v14, tabHost:Landroid/widget/TabHost;
    const v21, 0x1020013

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TabWidget;

    .line 141
    .local v15, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 142
    .local v18, widgetIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v17

    .line 143
    .local v17, widgetCount:I
    invoke-virtual {v7, v13}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v12

    .line 144
    .local v12, pageIndex:I
    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    .line 145
    .local v11, pageCount:I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 146
    .local v3, cellCountX:I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 147
    .local v4, cellCountY:I
    rem-int v19, v18, v3

    .line 148
    .local v19, x:I
    div-int v20, v18, v3

    .line 150
    .local v20, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 151
    .local v2, action:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_52

    const/4 v8, 0x1

    .line 152
    .local v8, handleKeyEvent:Z
    :goto_4a
    const/4 v9, 0x0

    .line 155
    .local v9, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 156
    .local v5, child:Landroid/view/View;
    const/16 v16, 0x0

    .line 157
    .local v16, wasHandled:Z
    sparse-switch p1, :sswitch_data_17e

    .line 274
    :goto_51
    return v16

    .line 151
    .end local v5           #child:Landroid/view/View;
    .end local v8           #handleKeyEvent:Z
    .end local v9           #newParent:Landroid/view/ViewGroup;
    .end local v16           #wasHandled:Z
    :cond_52
    const/4 v8, 0x0

    goto :goto_4a

    .line 159
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #handleKeyEvent:Z
    .restart local v9       #newParent:Landroid/view/ViewGroup;
    .restart local v16       #wasHandled:Z
    :sswitch_54
    if-eqz v8, :cond_63

    .line 161
    if-lez v18, :cond_66

    .line 162
    add-int/lit8 v21, v18, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 173
    :cond_63
    :goto_63
    const/16 v16, 0x1

    .line 174
    goto :goto_51

    .line 164
    :cond_66
    if-lez v12, :cond_63

    .line 165
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 166
    if-eqz v9, :cond_63

    .line 167
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 168
    if-eqz v5, :cond_63

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_63

    .line 176
    :sswitch_84
    if-eqz v8, :cond_99

    .line 178
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_9c

    .line 179
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 190
    :cond_99
    :goto_99
    const/16 v16, 0x1

    .line 191
    goto :goto_51

    .line 181
    :cond_9c
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_99

    .line 182
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 183
    if-eqz v9, :cond_99

    .line 184
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 185
    if-eqz v5, :cond_99

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_99

    .line 193
    :sswitch_ba
    if-eqz v8, :cond_cd

    .line 195
    if-lez v20, :cond_d0

    .line 196
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v3

    add-int v10, v21, v19

    .line 197
    .local v10, newWidgetIndex:I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 198
    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 203
    .end local v10           #newWidgetIndex:I
    :cond_cd
    :goto_cd
    const/16 v16, 0x1

    .line 204
    goto :goto_51

    .line 200
    :cond_d0
    invoke-virtual {v15}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_cd

    .line 206
    :sswitch_d4
    if-eqz v8, :cond_f3

    .line 208
    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_f3

    .line 209
    add-int/lit8 v21, v17, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v3

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 210
    .restart local v10       #newWidgetIndex:I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 211
    if-eqz v5, :cond_f3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 214
    .end local v10           #newWidgetIndex:I
    :cond_f3
    const/16 v16, 0x1

    .line 215
    goto/16 :goto_51

    .line 218
    :sswitch_f7
    if-eqz v8, :cond_101

    move-object v6, v7

    .line 220
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 221
    .local v6, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 223
    .end local v6           #clickListener:Landroid/view/View$OnClickListener;
    :cond_101
    const/16 v16, 0x1

    .line 224
    goto/16 :goto_51

    .line 226
    :sswitch_105
    if-eqz v8, :cond_120

    .line 229
    if-lez v12, :cond_124

    .line 230
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 231
    if-eqz v9, :cond_11b

    .line 232
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 237
    :cond_11b
    :goto_11b
    if-eqz v5, :cond_120

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 239
    :cond_120
    const/16 v16, 0x1

    .line 240
    goto/16 :goto_51

    .line 235
    :cond_124
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_11b

    .line 242
    :sswitch_12d
    if-eqz v8, :cond_14c

    .line 245
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_150

    .line 246
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 247
    if-eqz v9, :cond_147

    .line 248
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 253
    :cond_147
    :goto_147
    if-eqz v5, :cond_14c

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 255
    :cond_14c
    const/16 v16, 0x1

    .line 256
    goto/16 :goto_51

    .line 251
    :cond_150
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_147

    .line 258
    :sswitch_159
    if-eqz v8, :cond_168

    .line 260
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 261
    if-eqz v5, :cond_168

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 263
    :cond_168
    const/16 v16, 0x1

    .line 264
    goto/16 :goto_51

    .line 266
    :sswitch_16c
    if-eqz v8, :cond_179

    .line 268
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 270
    :cond_179
    const/16 v16, 0x1

    .line 271
    goto/16 :goto_51

    .line 157
    nop

    :sswitch_data_17e
    .sparse-switch
        0x13 -> :sswitch_ba
        0x14 -> :sswitch_d4
        0x15 -> :sswitch_54
        0x16 -> :sswitch_84
        0x17 -> :sswitch_f7
        0x42 -> :sswitch_f7
        0x5c -> :sswitch_105
        0x5d -> :sswitch_12d
        0x7a -> :sswitch_159
        0x7b -> :sswitch_16c
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 441
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_9

    .line 489
    :goto_8
    return v7

    .line 443
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 444
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 445
    .local v5, tabHost:Landroid/widget/TabHost;
    const v8, 0x1020011

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 447
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 448
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 450
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 451
    .local v0, action:I
    if-eq v0, v2, :cond_31

    .line 452
    .local v2, handleKeyEvent:Z
    :goto_2a
    const/4 v7, 0x0

    .line 453
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_6e

    goto :goto_8

    .line 478
    :pswitch_2f
    const/4 v7, 0x1

    .line 479
    goto :goto_8

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_31
    move v2, v7

    .line 451
    goto :goto_2a

    .line 455
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_33
    if-eqz v2, :cond_40

    .line 457
    if-lez v6, :cond_40

    .line 458
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 461
    :cond_40
    const/4 v7, 0x1

    .line 462
    goto :goto_8

    .line 464
    :pswitch_42
    if-eqz v2, :cond_51

    .line 466
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_53

    .line 467
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 474
    :cond_51
    :goto_51
    const/4 v7, 0x1

    .line 475
    goto :goto_8

    .line 469
    :cond_53
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_51

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_51

    .line 481
    :pswitch_66
    if-eqz v2, :cond_6b

    .line 483
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 485
    :cond_6b
    const/4 v7, 0x1

    .line 486
    goto :goto_8

    .line 453
    nop

    :pswitch_data_6e
    .packed-switch 0x13
        :pswitch_2f
        :pswitch_66
        :pswitch_33
        :pswitch_42
    .end packed-switch
.end method
