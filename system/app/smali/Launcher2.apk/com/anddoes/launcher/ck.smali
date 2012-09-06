.class public final Lcom/anddoes/launcher/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    .line 673
    invoke-static {p0, p1}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 675
    invoke-static {v0, p2, p3}, Lcom/anddoes/launcher/ck;->a(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    .line 680
    invoke-static {p0, p1}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 682
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/anddoes/launcher/ck;->a(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;II)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 659
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 666
    :cond_4
    add-int/2addr p1, p2

    .line 661
    if-ltz p1, :cond_9

    if-lt p1, v1, :cond_b

    .line 668
    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return-object v0

    .line 662
    :cond_b
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 663
    instance-of v2, v0, Lcom/anddoes/launcher/BubbleTextView;

    if-nez v2, :cond_a

    instance-of v2, v0, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v2, :cond_4

    goto :goto_a
.end method

.method private static a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    check-cast p0, Lcom/anddoes/launcher/PagedView;

    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    instance-of v1, v0, Lcom/anddoes/launcher/PagedViewCellLayout;

    if-eqz v1, :cond_13

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    :cond_13
    return-object v0
.end method

.method private static a(Landroid/view/View;)Landroid/widget/TabHost;
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    :goto_4
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/widget/TabHost;

    if-eqz v1, :cond_d

    .line 80
    :cond_a
    check-cast v0, Landroid/widget/TabHost;

    return-object v0

    .line 78
    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->h()I

    move-result v1

    .line 630
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 631
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 632
    const/4 v0, 0x0

    :goto_e
    if-lt v0, v2, :cond_19

    .line 635
    new-instance v0, Lcom/anddoes/launcher/cl;

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/cl;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 647
    return-object v3

    .line 633
    :cond_19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method static a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-static {p0}, Lcom/anddoes/launcher/ck;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v3

    .line 90
    const v0, 0x1020011

    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 93
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 94
    if-eq v3, v1, :cond_22

    move v3, v1

    .line 96
    :goto_1d
    packed-switch p1, :pswitch_data_36

    :cond_20
    :pswitch_20
    move v0, v2

    .line 115
    :goto_21
    return v0

    :cond_22
    move v3, v2

    .line 94
    goto :goto_1d

    .line 98
    :pswitch_24
    if-eqz v3, :cond_2b

    .line 100
    if-eq p0, v4, :cond_2b

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_2b
    move v0, v1

    .line 105
    goto :goto_21

    .line 107
    :pswitch_2d
    if-eqz v3, :cond_20

    .line 110
    if-ne p0, v4, :cond_20

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move v0, v1

    .line 112
    goto :goto_21

    .line 96
    :pswitch_data_36
    .packed-switch 0x14
        :pswitch_2d
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method static a(Lcom/anddoes/launcher/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 486
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 533
    :goto_8
    return v3

    .line 489
    :cond_9
    invoke-virtual {p0}, Lcom/anddoes/launcher/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/FocusOnlyTabWidget;

    .line 490
    invoke-static {v0}, Lcom/anddoes/launcher/ck;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 491
    const v1, 0x1020011

    invoke-virtual {v5, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 492
    invoke-virtual {v0}, Lcom/anddoes/launcher/FocusOnlyTabWidget;->getTabCount()I

    move-result v6

    .line 493
    invoke-virtual {v0, p0}, Lcom/anddoes/launcher/FocusOnlyTabWidget;->a(Landroid/view/View;)I

    move-result v7

    .line 495
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 496
    if-eq v4, v2, :cond_31

    move v4, v2

    .line 498
    :goto_2b
    packed-switch p1, :pswitch_data_70

    move v0, v3

    :goto_2f
    move v3, v0

    .line 533
    goto :goto_8

    :cond_31
    move v4, v3

    .line 496
    goto :goto_2b

    .line 500
    :pswitch_33
    if-eqz v4, :cond_40

    .line 502
    if-lez v7, :cond_40

    .line 503
    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_40
    move v0, v2

    .line 507
    goto :goto_2f

    .line 509
    :pswitch_42
    if-eqz v4, :cond_51

    .line 512
    add-int/lit8 v1, v6, -0x1

    if-ge v7, v1, :cond_53

    .line 513
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_51
    :goto_51
    move v0, v2

    .line 522
    goto :goto_2f

    .line 515
    :cond_53
    invoke-virtual {p0}, Lcom/anddoes/launcher/AccessibleTabView;->getNextFocusRightId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_51

    .line 516
    invoke-virtual {p0}, Lcom/anddoes/launcher/AccessibleTabView;->getNextFocusRightId()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_51

    :pswitch_66
    move v0, v2

    .line 526
    goto :goto_2f

    .line 528
    :pswitch_68
    if-eqz v4, :cond_6d

    .line 530
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_6d
    move v0, v2

    .line 532
    goto :goto_2f

    .line 498
    nop

    :pswitch_data_70
    .packed-switch 0x13
        :pswitch_66
        :pswitch_68
        :pswitch_33
        :pswitch_42
    .end packed-switch
.end method

.method private static b(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 696
    .line 695
    invoke-static/range {p0 .. p1}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v9

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 697
    check-cast v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 700
    invoke-virtual {p0}, Lcom/anddoes/launcher/CellLayout;->i()I

    move-result v2

    .line 701
    iget v10, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    .line 702
    add-int v3, v10, p3

    .line 703
    if-ltz v3, :cond_8d

    if-ge v3, v2, :cond_8d

    .line 704
    const v3, 0x7f7fffff

    .line 705
    const/4 v5, -0x1

    .line 706
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 707
    if-gez p3, :cond_30

    const/4 v2, -0x1

    move v4, v2

    :goto_24
    move v7, v3

    .line 708
    :goto_25
    if-ne v6, v4, :cond_36

    .line 730
    if-ltz v5, :cond_8d

    .line 731
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 734
    :goto_2f
    return-object v1

    .line 707
    :cond_30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v2

    goto :goto_24

    .line 709
    :cond_36
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 711
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 710
    check-cast v3, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 712
    if-gez p3, :cond_80

    iget v8, v3, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    if-ge v8, v10, :cond_7e

    const/4 v8, 0x1

    :goto_49
    if-eqz v8, :cond_8f

    .line 715
    instance-of v8, v2, Lcom/anddoes/launcher/BubbleTextView;

    if-nez v8, :cond_53

    instance-of v2, v2, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v2, :cond_8f

    .line 716
    :cond_53
    iget v2, v3, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    .line 717
    iget v8, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->a:I

    .line 716
    sub-int/2addr v2, v8

    int-to-double v11, v2

    .line 717
    const-wide/high16 v13, 0x4000

    .line 716
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 718
    iget v2, v3, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    iget v3, v1, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v13, 0x4000

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 716
    add-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 719
    cmpg-float v3, v2, v7

    if-gez v3, :cond_8f

    move v3, v2

    move v2, v6

    .line 724
    :goto_77
    if-gt v6, v4, :cond_88

    .line 725
    add-int/lit8 v6, v6, 0x1

    move v5, v2

    move v7, v3

    goto :goto_25

    .line 712
    :cond_7e
    const/4 v8, 0x0

    goto :goto_49

    .line 713
    :cond_80
    iget v8, v3, Lcom/anddoes/launcher/CellLayout$LayoutParams;->b:I

    if-le v8, v10, :cond_86

    const/4 v8, 0x1

    goto :goto_49

    :cond_86
    const/4 v8, 0x0

    goto :goto_49

    .line 727
    :cond_88
    add-int/lit8 v6, v6, -0x1

    move v5, v2

    move v7, v3

    goto :goto_25

    .line 734
    :cond_8d
    const/4 v1, 0x0

    goto :goto_2f

    :cond_8f
    move v2, v5

    move v3, v7

    goto :goto_77
.end method

.method private static b(Landroid/view/ViewGroup;I)Lcom/anddoes/launcher/ba;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 619
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    return-object v0
.end method

.method static b(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/jk;

    if-eqz v0, :cond_74

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_6c

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    :goto_21
    move-object v1, v2

    .line 316
    check-cast v1, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->f()I

    move-result v3

    move-object v1, v2

    .line 317
    check-cast v1, Lcom/anddoes/launcher/PagedViewCellLayout;

    invoke-virtual {v1}, Lcom/anddoes/launcher/PagedViewCellLayout;->g()I

    move-result v1

    move-object v4, v0

    move-object v5, v2

    move v2, v1

    .line 326
    :goto_32
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/PagedView;

    .line 327
    invoke-static {v0}, Lcom/anddoes/launcher/ck;->a(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v1

    .line 328
    const v6, 0x1020013

    invoke-virtual {v1, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    .line 329
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 330
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 332
    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 331
    invoke-virtual {v0, v5}, Lcom/anddoes/launcher/PagedView;->c(I)I

    move-result v9

    .line 333
    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v10

    .line 335
    rem-int v11, v7, v3

    .line 336
    div-int v12, v7, v3

    .line 338
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 339
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8d

    const/4 v5, 0x1

    move v6, v5

    .line 340
    :goto_66
    const/4 v5, 0x0

    .line 346
    sparse-switch p1, :sswitch_data_192

    move v0, v5

    .line 474
    :goto_6b
    return v0

    .line 314
    :cond_6c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v1

    goto :goto_21

    .line 319
    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 320
    check-cast v1, Lcom/anddoes/launcher/jl;

    invoke-virtual {v1}, Lcom/anddoes/launcher/jl;->c()I

    move-result v2

    move-object v1, v0

    .line 321
    check-cast v1, Lcom/anddoes/launcher/jl;

    invoke-virtual {v1}, Lcom/anddoes/launcher/jl;->d()I

    move-result v1

    move v3, v2

    move-object v4, v0

    move-object v5, v0

    move v2, v1

    goto :goto_32

    .line 339
    :cond_8d
    const/4 v5, 0x0

    move v6, v5

    goto :goto_66

    .line 348
    :sswitch_90
    if-eqz v6, :cond_9d

    .line 351
    if-lez v7, :cond_9f

    .line 352
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 367
    :cond_9d
    :goto_9d
    const/4 v0, 0x1

    .line 368
    goto :goto_6b

    .line 354
    :cond_9f
    if-lez v9, :cond_9d

    .line 356
    add-int/lit8 v1, v9, -0x1

    .line 355
    invoke-static {v0, v1}, Lcom/anddoes/launcher/ck;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_9d

    .line 358
    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 360
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 359
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_9d

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_9d

    .line 370
    :sswitch_be
    if-eqz v6, :cond_cd

    .line 372
    add-int/lit8 v1, v8, -0x1

    if-ge v7, v1, :cond_cf

    .line 373
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 387
    :cond_cd
    :goto_cd
    const/4 v0, 0x1

    .line 388
    goto :goto_6b

    .line 375
    :cond_cf
    add-int/lit8 v1, v10, -0x1

    if-ge v9, v1, :cond_cd

    .line 377
    add-int/lit8 v1, v9, 0x1

    .line 376
    invoke-static {v0, v1}, Lcom/anddoes/launcher/ck;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_cd

    .line 379
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_cd

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_cd

    .line 390
    :sswitch_eb
    if-eqz v6, :cond_fa

    .line 393
    if-lez v12, :cond_fd

    .line 394
    add-int/lit8 v0, v12, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v11

    .line 395
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 400
    :cond_fa
    :goto_fa
    const/4 v0, 0x1

    .line 401
    goto/16 :goto_6b

    .line 397
    :cond_fd
    invoke-virtual {v1}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_fa

    .line 403
    :sswitch_101
    if-eqz v6, :cond_118

    .line 406
    add-int/lit8 v0, v2, -0x1

    if-ge v12, v0, :cond_118

    .line 407
    add-int/lit8 v0, v8, -0x1

    .line 408
    add-int/lit8 v1, v12, 0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v11

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 409
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 412
    :cond_118
    const/4 v0, 0x1

    .line 413
    goto/16 :goto_6b

    .line 416
    :sswitch_11b
    if-eqz v6, :cond_122

    .line 418
    check-cast v0, Landroid/view/View$OnClickListener;

    .line 419
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 421
    :cond_122
    const/4 v0, 0x1

    .line 422
    goto/16 :goto_6b

    .line 424
    :sswitch_125
    if-eqz v6, :cond_140

    .line 428
    if-lez v9, :cond_143

    .line 429
    add-int/lit8 v1, v9, -0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ck;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_140

    .line 431
    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 432
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_140

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 440
    :cond_140
    :goto_140
    const/4 v0, 0x1

    .line 441
    goto/16 :goto_6b

    .line 437
    :cond_143
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_140

    .line 443
    :sswitch_14c
    if-eqz v6, :cond_169

    .line 447
    add-int/lit8 v1, v10, -0x1

    if-ge v9, v1, :cond_16c

    .line 448
    add-int/lit8 v1, v9, 0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ck;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_169

    .line 450
    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 451
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_169

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 459
    :cond_169
    :goto_169
    const/4 v0, 0x1

    .line 460
    goto/16 :goto_6b

    .line 456
    :cond_16c
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_169

    .line 462
    :sswitch_176
    if-eqz v6, :cond_180

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 466
    :cond_180
    const/4 v0, 0x1

    .line 467
    goto/16 :goto_6b

    .line 469
    :sswitch_183
    if-eqz v6, :cond_18e

    .line 471
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 473
    :cond_18e
    const/4 v0, 0x1

    goto/16 :goto_6b

    .line 346
    nop

    :sswitch_data_192
    .sparse-switch
        0x13 -> :sswitch_eb
        0x14 -> :sswitch_101
        0x15 -> :sswitch_90
        0x16 -> :sswitch_be
        0x17 -> :sswitch_11b
        0x42 -> :sswitch_11b
        0x5c -> :sswitch_125
        0x5d -> :sswitch_14c
        0x7a -> :sswitch_176
        0x7b -> :sswitch_183
    .end sparse-switch
.end method

.method static c(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 546
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 547
    const v4, 0x7f080033

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/Workspace;

    .line 549
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 551
    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->w()I

    move-result v7

    .line 559
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 560
    if-eq v4, v2, :cond_2f

    move v4, v2

    .line 562
    :goto_2a
    packed-switch p1, :pswitch_data_7c

    move v0, v3

    .line 605
    :goto_2e
    return v0

    :cond_2f
    move v4, v3

    .line 560
    goto :goto_2a

    .line 564
    :pswitch_31
    if-eqz v4, :cond_3e

    .line 567
    if-lez v5, :cond_40

    .line 568
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3e
    :goto_3e
    move v0, v2

    .line 574
    goto :goto_2e

    .line 570
    :cond_40
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_3e

    .line 576
    :pswitch_46
    if-eqz v4, :cond_55

    .line 578
    add-int/lit8 v3, v6, -0x1

    if-ge v5, v3, :cond_57

    .line 579
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_55
    :goto_55
    move v0, v2

    .line 585
    goto :goto_2e

    .line 581
    :cond_57
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_55

    .line 587
    :pswitch_5d
    if-eqz v4, :cond_73

    .line 591
    invoke-virtual {v1, v7}, Lcom/anddoes/launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    check-cast v0, Lcom/anddoes/launcher/CellLayout;

    .line 592
    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->c()Lcom/anddoes/launcher/ba;

    move-result-object v3

    .line 593
    const/4 v4, -0x1

    invoke-static {v0, v3, v4, v2}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_75

    .line 595
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_73
    :goto_73
    move v0, v2

    .line 601
    goto :goto_2e

    .line 597
    :cond_75
    invoke-virtual {v1}, Lcom/anddoes/launcher/Workspace;->requestFocus()Z

    goto :goto_73

    :pswitch_79
    move v0, v2

    .line 604
    goto :goto_2e

    .line 562
    nop

    :pswitch_data_7c
    .packed-switch 0x13
        :pswitch_5d
        :pswitch_79
        :pswitch_31
        :pswitch_46
    .end packed-switch
.end method

.method static d(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x1

    .line 741
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    .line 742
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    .line 743
    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/Workspace;

    .line 744
    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 745
    const v4, 0x7f08003c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 747
    const v7, 0x7f08003b

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 746
    check-cast v3, Landroid/view/ViewGroup;

    .line 748
    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 749
    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->getChildCount()I

    move-result v9

    .line 751
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 752
    if-eq v7, v5, :cond_41

    move v7, v5

    .line 754
    :goto_3c
    sparse-switch p1, :sswitch_data_12a

    :cond_3f
    move v0, v6

    .line 897
    :goto_40
    return v0

    :cond_41
    move v7, v6

    .line 752
    goto :goto_3c

    .line 756
    :sswitch_43
    if-eqz v7, :cond_4e

    .line 759
    invoke-static {v1, v0, p0, v10}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 760
    if-eqz v0, :cond_50

    .line 761
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4e
    :goto_4e
    move v0, v5

    .line 778
    goto :goto_40

    .line 763
    :cond_50
    if-lez v8, :cond_4e

    .line 765
    add-int/lit8 v0, v8, -0x1

    .line 764
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ck;->b(Landroid/view/ViewGroup;I)Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v3

    .line 766
    invoke-static {v1, v0, v3, v10}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_66

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_4e

    .line 772
    :cond_66
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_4e

    .line 780
    :sswitch_6c
    if-eqz v7, :cond_77

    .line 783
    invoke-static {v1, v0, p0, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_79

    .line 785
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_77
    :goto_77
    move v0, v5

    .line 801
    goto :goto_40

    .line 787
    :cond_79
    add-int/lit8 v0, v9, -0x1

    if-ge v8, v0, :cond_77

    .line 789
    add-int/lit8 v0, v8, 0x1

    .line 788
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ck;->b(Landroid/view/ViewGroup;I)Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 790
    invoke-static {v1, v0, v10, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_8d

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_77

    .line 795
    :cond_8d
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_77

    .line 803
    :sswitch_93
    if-eqz v7, :cond_3f

    .line 806
    invoke-static {v1, v0, p0, v10}, Lcom/anddoes/launcher/ck;->b(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_a0

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9e
    :goto_9e
    move v0, v5

    .line 896
    goto :goto_40

    .line 811
    :cond_a0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    move v0, v6

    .line 814
    goto :goto_40

    .line 816
    :sswitch_a5
    if-eqz v7, :cond_3f

    .line 819
    invoke-static {v1, v0, p0, v5}, Lcom/anddoes/launcher/ck;->b(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_b1

    .line 821
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_9e

    .line 823
    :cond_b1
    if-eqz v3, :cond_3f

    .line 824
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    move v0, v6

    .line 827
    goto :goto_40

    .line 829
    :sswitch_b8
    if-eqz v7, :cond_cb

    .line 833
    if-lez v8, :cond_d4

    .line 835
    add-int/lit8 v0, v8, -0x1

    .line 834
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ck;->b(Landroid/view/ViewGroup;I)Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 836
    invoke-static {v1, v0, v10, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_ce

    .line 838
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_cb
    :goto_cb
    move v0, v5

    .line 851
    goto/16 :goto_40

    .line 841
    :cond_ce
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_cb

    .line 844
    :cond_d4
    invoke-static {v1, v0, v10, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_cb

    .line 846
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_cb

    .line 853
    :sswitch_de
    if-eqz v7, :cond_f3

    .line 857
    add-int/lit8 v3, v9, -0x1

    if-ge v8, v3, :cond_fc

    .line 859
    add-int/lit8 v0, v8, 0x1

    .line 858
    invoke-static {v2, v0}, Lcom/anddoes/launcher/ck;->b(Landroid/view/ViewGroup;I)Lcom/anddoes/launcher/ba;

    move-result-object v0

    .line 860
    invoke-static {v1, v0, v10, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_f6

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_f3
    :goto_f3
    move v0, v5

    .line 876
    goto/16 :goto_40

    .line 865
    :cond_f6
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v2, v0}, Lcom/anddoes/launcher/Workspace;->s(I)V

    goto :goto_f3

    .line 869
    :cond_fc
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v2

    .line 868
    invoke-static {v1, v0, v2, v10}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_f3

    .line 871
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_f3

    .line 878
    :sswitch_10a
    if-eqz v7, :cond_115

    .line 880
    invoke-static {v1, v0, v10, v5}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_115

    .line 882
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_115
    move v0, v5

    .line 886
    goto/16 :goto_40

    .line 888
    :sswitch_118
    if-eqz v7, :cond_9e

    .line 891
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v2

    .line 890
    invoke-static {v1, v0, v2, v10}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_9e

    .line 893
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_9e

    .line 754
    nop

    :sswitch_data_12a
    .sparse-switch
        0x13 -> :sswitch_93
        0x14 -> :sswitch_a5
        0x15 -> :sswitch_43
        0x16 -> :sswitch_6c
        0x5c -> :sswitch_b8
        0x5d -> :sswitch_de
        0x7a -> :sswitch_10a
        0x7b -> :sswitch_118
    .end sparse-switch
.end method

.method static e(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    .line 909
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CellLayout;

    .line 910
    invoke-virtual {v1}, Lcom/anddoes/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/anddoes/launcher/Folder;

    .line 911
    iget-object v5, v2, Lcom/anddoes/launcher/Folder;->h:Lcom/anddoes/launcher/FolderEditText;

    .line 913
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 914
    if-eq v2, v3, :cond_27

    move v2, v3

    .line 916
    :goto_22
    sparse-switch p1, :sswitch_data_84

    move v0, v4

    .line 981
    :goto_26
    return v0

    :cond_27
    move v2, v4

    .line 914
    goto :goto_22

    .line 918
    :sswitch_29
    if-eqz v2, :cond_34

    .line 920
    invoke-static {v1, v0, p0, v6}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_34

    .line 922
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_34
    move v0, v3

    .line 926
    goto :goto_26

    .line 928
    :sswitch_36
    if-eqz v2, :cond_41

    .line 930
    invoke-static {v1, v0, p0, v3}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 931
    if-eqz v0, :cond_43

    .line 932
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_41
    :goto_41
    move v0, v3

    .line 938
    goto :goto_26

    .line 934
    :cond_43
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_41

    .line 940
    :sswitch_47
    if-eqz v2, :cond_52

    .line 942
    invoke-static {v1, v0, p0, v6}, Lcom/anddoes/launcher/ck;->b(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 943
    if-eqz v0, :cond_52

    .line 944
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_52
    move v0, v3

    .line 948
    goto :goto_26

    .line 950
    :sswitch_54
    if-eqz v2, :cond_5f

    .line 952
    invoke-static {v1, v0, p0, v3}, Lcom/anddoes/launcher/ck;->b(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_61

    .line 954
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_5f
    :goto_5f
    move v0, v3

    .line 960
    goto :goto_26

    .line 956
    :cond_61
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5f

    .line 962
    :sswitch_65
    if-eqz v2, :cond_70

    .line 964
    invoke-static {v1, v0, v6, v3}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_70

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_70
    move v0, v3

    .line 970
    goto :goto_26

    .line 972
    :sswitch_72
    if-eqz v2, :cond_81

    .line 975
    invoke-virtual {v0}, Lcom/anddoes/launcher/ba;->getChildCount()I

    move-result v2

    .line 974
    invoke-static {v1, v0, v2, v6}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    .line 976
    if-eqz v0, :cond_81

    .line 977
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_81
    move v0, v3

    .line 980
    goto :goto_26

    .line 916
    nop

    :sswitch_data_84
    .sparse-switch
        0x13 -> :sswitch_47
        0x14 -> :sswitch_54
        0x15 -> :sswitch_29
        0x16 -> :sswitch_36
        0x7a -> :sswitch_65
        0x7b -> :sswitch_72
    .end sparse-switch
.end method
