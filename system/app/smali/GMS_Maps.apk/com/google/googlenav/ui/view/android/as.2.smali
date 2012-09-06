.class public Lcom/google/googlenav/ui/view/android/aS;
.super Lcom/google/googlenav/ui/view/android/bl;
.source "SourceFile"

# interfaces
.implements Lah/p;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private c:Lcom/google/googlenav/ui/aQ;

.field private d:Ljava/lang/CharSequence;

.field private e:Z


# direct methods
.method private a(Lcom/google/googlenav/ui/view/v;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 879
    move v1, v0

    .line 880
    :goto_2
    iget-object v2, p1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 881
    iget-object v2, p1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aS;->b(Lcom/google/googlenav/ui/bd;)I

    move-result v2

    .line 882
    if-le v1, v2, :cond_14

    .line 880
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    move v1, v2

    .line 882
    goto :goto_11

    .line 884
    :cond_16
    return v1
.end method

.method private a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401ec

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 704
    iget-object v1, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/C;->c:Lcom/google/googlenav/ui/view/t;

    if-eqz v1, :cond_2f

    .line 705
    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 706
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/C;->c:Lcom/google/googlenav/ui/view/t;

    iget v4, p1, Lcom/google/googlenav/ui/view/s;->c:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/t;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 709
    :cond_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v2, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/C;Landroid/webkit/WebViewClient;)V

    .line 711
    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/u;)Landroid/view/View;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a1

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 197
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 198
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/view/u;Landroid/widget/AbsListView;)Landroid/view/View;

    .line 199
    iget-boolean v2, p1, Lcom/google/googlenav/ui/view/u;->u:Z

    if-eqz v2, :cond_4c

    .line 200
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 201
    new-instance v2, Lcom/google/googlenav/ui/view/android/S;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aS;->g:Lcom/google/googlenav/ui/g;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget v2, p1, Lcom/google/googlenav/ui/view/u;->w:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 212
    :goto_39
    const v2, 0x7f10002e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 214
    invoke-virtual {p0, v6, p1, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/widget/AbsListView;)V

    .line 217
    return-object v0

    .line 205
    :cond_4c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aS;->g:Lcom/google/googlenav/ui/g;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;Landroid/widget/ListView;)V

    .line 207
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 208
    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/u;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_39
.end method

.method private a(Lcom/google/googlenav/ui/view/z;)Landroid/view/View;
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401e7

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 665
    const v1, 0x7f10049f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move v2, v3

    .line 668
    :goto_1a
    iget-object v4, p1, Lcom/google/googlenav/ui/view/z;->h:[Lcom/google/googlenav/ui/view/B;

    array-length v4, v4

    if-ge v2, v4, :cond_79

    .line 670
    if-eqz v2, :cond_2b

    .line 671
    new-instance v4, Landroid/widget/TextView;

    sget-object v5, Lcom/google/googlenav/ui/view/android/aS;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    :cond_2b
    iget-object v4, p1, Lcom/google/googlenav/ui/view/z;->h:[Lcom/google/googlenav/ui/view/B;

    aget-object v5, v4, v2

    .line 677
    iget-object v8, v5, Lcom/google/googlenav/ui/view/B;->a:[Lcom/google/googlenav/ui/aW;

    .line 678
    if-eqz v8, :cond_70

    array-length v4, v8

    if-lez v4, :cond_70

    move v4, v7

    .line 679
    :goto_37
    if-eqz v4, :cond_4e

    .line 680
    new-instance v9, Landroid/widget/TextView;

    sget-object v10, Lcom/google/googlenav/ui/view/android/aS;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 681
    invoke-static {v8}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    :cond_4e
    iget-object v8, v5, Lcom/google/googlenav/ui/view/B;->b:[Lcom/google/googlenav/ui/view/A;

    .line 688
    if-nez v2, :cond_72

    if-nez v4, :cond_72

    if-eqz v8, :cond_72

    array-length v4, v8

    if-ne v4, v7, :cond_72

    move v4, v7

    .line 690
    :goto_5a
    if-eqz v4, :cond_74

    sget-object v4, Lcom/google/googlenav/ui/aV;->ag:Lcom/google/googlenav/ui/aV;

    move-object v5, v4

    .line 692
    :goto_5f
    if-eqz v8, :cond_76

    array-length v4, v8

    if-lez v4, :cond_76

    move v4, v3

    .line 693
    :goto_65
    array-length v9, v8

    if-ge v4, v9, :cond_76

    .line 694
    aget-object v9, v8, v4

    invoke-direct {p0, v9, v1, v5}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/A;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V

    .line 693
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_70
    move v4, v3

    .line 678
    goto :goto_37

    :cond_72
    move v4, v3

    .line 688
    goto :goto_5a

    :cond_74
    move-object v5, v6

    .line 690
    goto :goto_5f

    .line 668
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 699
    :cond_79
    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bd;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 482
    if-eqz p1, :cond_f

    .line 483
    if-nez p3, :cond_10

    .line 484
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 485
    if-eqz p2, :cond_f

    .line 486
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 537
    :cond_f
    :goto_f
    return-void

    .line 489
    :cond_10
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 490
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 491
    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    :cond_2c
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->l()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 495
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 496
    const v0, 0x7f100429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 497
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    :cond_48
    const v0, 0x7f100428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    if-eqz v0, :cond_84

    .line 501
    iget-object v1, p3, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_c3

    if-eqz p4, :cond_c3

    move v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_84

    .line 506
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 507
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 513
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 517
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_f

    .line 525
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->m()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 529
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_c3
    move v1, v3

    .line 502
    goto :goto_65

    .line 532
    :cond_c5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f
.end method

.method public static a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 434
    if-nez p1, :cond_1a

    const/4 v0, 0x0

    move-object v2, v0

    .line 435
    :goto_4
    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 436
    const v1, 0x7f100195

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 438
    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 439
    return-void

    .line 434
    :cond_1a
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->E:Lat/B;

    move-object v2, v0

    goto :goto_4
.end method

.method private a(Lcom/google/googlenav/ui/view/A;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    if-eqz p1, :cond_9

    .line 599
    iget-object v0, p1, Lcom/google/googlenav/ui/view/A;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/googlenav/ui/view/A;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/googlenav/ui/view/android/aS;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V

    .line 601
    :cond_9
    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 450
    .line 452
    if-eqz p2, :cond_25

    .line 453
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    .line 454
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 457
    :goto_b
    if-eqz p0, :cond_16

    .line 458
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setLocationProvider(Lan/h;)V

    .line 459
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setInitialVisibility(Lat/B;)V

    .line 460
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setDestination(Lat/B;)V

    .line 463
    :cond_16
    if-eqz p1, :cond_24

    .line 464
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setOrientationProvider(LaB/h;)V

    .line 465
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->setLocationProvider(Lan/h;)V

    .line 466
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setInitialVisibility(Lat/B;)V

    .line 467
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setDestination(Lat/B;)V

    .line 469
    :cond_24
    return-void

    :cond_25
    move-object v1, v0

    goto :goto_b
.end method

.method private a(Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x11

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    if-eqz v0, :cond_9c

    .line 223
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 224
    const v0, 0x7f090007

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 231
    :cond_15
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v0, v0, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v0, v4, :cond_2b

    .line 232
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 233
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 234
    const/high16 v0, 0x4000

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 236
    :cond_2b
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v5

    .line 237
    if-eqz v1, :cond_58

    .line 238
    const v0, 0x7f100030

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 239
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v3, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v5

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 243
    iget-object v1, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v1, v1, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v1, v4, :cond_58

    .line 244
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    :cond_58
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v4

    .line 248
    if-eqz v1, :cond_78

    .line 249
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f100031

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v4

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 252
    :cond_78
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v6

    .line 253
    if-eqz v1, :cond_98

    .line 254
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    const v0, 0x7f10003f

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v6

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 257
    :cond_98
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    :cond_9b
    :goto_9b
    return-void

    .line 258
    :cond_9c
    if-eqz p2, :cond_9b

    .line 259
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 616
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    .line 617
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401e6

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 620
    if-nez p4, :cond_38

    .line 621
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :goto_1c
    const/4 v2, 0x0

    .line 630
    :try_start_1d
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_22} :catch_44

    .line 646
    :goto_22
    if-eqz v1, :cond_34

    .line 648
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 649
    new-instance v2, Lcom/google/googlenav/ui/view/android/aT;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/view/android/aT;-><init>(Lcom/google/googlenav/ui/view/android/aS;Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v5, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 658
    :cond_34
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    :cond_37
    return-void

    .line 623
    :cond_38
    invoke-static {p1, p4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 632
    :catch_44
    move-exception v3

    .line 633
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6c

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 638
    :try_start_60
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/net/MalformedURLException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_22

    .line 640
    :catch_66
    move-exception v1

    .line 642
    const-string v3, "UI"

    invoke-static {v3, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6c
    move v1, v2

    goto :goto_22
.end method

.method private a(Lcom/google/googlenav/ui/bd;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 407
    if-nez p1, :cond_4

    .line 410
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private b(Lcom/google/googlenav/ui/bd;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 866
    if-nez p1, :cond_4

    .line 872
    :goto_3
    return v0

    .line 869
    :cond_4
    new-instance v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/android/aS;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 870
    iget-object v2, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 872
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto :goto_3
.end method

.method private v()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 161
    iget-object v1, v0, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 164
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_d
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->f:I

    packed-switch v0, :pswitch_data_28

    .line 122
    :cond_11
    :goto_11
    return-void

    .line 111
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    .line 114
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    .line 109
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 126
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 127
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 129
    :cond_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->o()V

    .line 130
    return-void
.end method

.method public P_()V
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->i()Lcom/google/googlenav/ui/view/p;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/p;->a(Lcom/google/googlenav/ui/view/r;)V

    .line 181
    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/p;->a(Lcom/google/googlenav/ui/view/r;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->l()V

    .line 183
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/view/u;Landroid/widget/AbsListView;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-nez v0, :cond_a

    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    if-nez v0, :cond_a

    .line 388
    const/4 v0, 0x0

    .line 403
    :goto_9
    return-object v0

    .line 391
    :cond_a
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget v1, p3, Lcom/google/googlenav/ui/view/u;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/t;I)Landroid/view/View;

    move-result-object v2

    .line 394
    invoke-virtual {p0, v2, p3}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 396
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-eqz v0, :cond_2b

    .line 397
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v1, v0, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    .line 398
    iget-object v0, v1, Lcom/google/googlenav/ui/bd;->E:Lat/B;

    if-eqz v0, :cond_2d

    move-object v0, v1

    :goto_22
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 401
    check-cast p4, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p4, v2, v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2b
    move-object v0, v2

    .line 403
    goto :goto_9

    .line 398
    :cond_2d
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    goto :goto_22
.end method

.method protected a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/t;I)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    packed-switch p3, :pswitch_data_56

    .line 564
    :pswitch_3
    const v0, 0x7f0400a5

    .line 568
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 572
    const v1, 0x7f10024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 573
    if-eqz v2, :cond_1e

    .line 574
    iget-boolean v1, p2, Lcom/google/googlenav/ui/view/t;->d:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    :cond_1e
    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    .line 578
    const v2, 0x7f100244

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    .line 579
    const v3, 0x7f100380

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    .line 581
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v4, p2, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    .line 583
    return-object v0

    .line 546
    :pswitch_3f
    const v0, 0x7f0400aa

    .line 547
    goto :goto_6

    .line 551
    :pswitch_43
    const v0, 0x7f0400b1

    .line 552
    goto :goto_6

    .line 554
    :pswitch_47
    const v0, 0x7f0400ab

    .line 555
    goto :goto_6

    .line 557
    :pswitch_4b
    const v0, 0x7f0400b2

    .line 558
    goto :goto_6

    .line 561
    :pswitch_4f
    const v0, 0x7f0400b0

    .line 562
    goto :goto_6

    .line 574
    :cond_53
    const/16 v1, 0x8

    goto :goto_1b

    .line 543
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_43
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_47
        :pswitch_3
        :pswitch_3
        :pswitch_4f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method protected a(Lcom/google/googlenav/ui/view/p;)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 715
    iget v0, p1, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_1c

    .line 726
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 717
    :pswitch_7
    check-cast p1, Lcom/google/googlenav/ui/view/u;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/u;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 720
    :pswitch_e
    check-cast p1, Lcom/google/googlenav/ui/view/z;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/z;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 723
    :pswitch_15
    check-cast p1, Lcom/google/googlenav/ui/view/s;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 715
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_e
        :pswitch_15
    .end packed-switch
.end method

.method protected a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->i:[Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_26

    .line 275
    const v0, 0x7f10009e

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 276
    if-eqz v0, :cond_26

    .line 277
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->i:[Lcom/google/googlenav/ui/aW;

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_27

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_26
    return-void

    .line 279
    :cond_27
    const/16 v1, 0x8

    goto :goto_23
.end method

.method protected a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 892
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    if-eqz v0, :cond_e0

    .line 893
    const v0, 0x7f100024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 894
    if-eqz v0, :cond_e0

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 901
    :cond_44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x190

    move v2, v1

    .line 904
    :goto_51
    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 906
    if-eqz v1, :cond_e1

    .line 907
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 909
    if-eqz v1, :cond_e1

    .line 910
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 913
    :goto_67
    iget-object v5, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v5, v5, Lcom/google/googlenav/ui/view/v;->a:I

    div-int/2addr v2, v5

    sub-int v1, v2, v1

    .line 916
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/v;)I

    move-result v2

    if-lt v1, v2, :cond_b1

    move v1, v4

    .line 917
    :goto_77
    new-array v4, v6, [I

    fill-array-data v4, :array_e4

    .line 919
    new-array v5, v6, [I

    fill-array-data v5, :array_f0

    move v2, v3

    .line 921
    :goto_82
    array-length v6, v4

    if-ge v2, v6, :cond_b3

    .line 922
    aget v6, v4, v2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aget v7, v5, v2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v8, v8, v2

    invoke-direct {p0, v6, v7, v8, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bd;Z)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 901
    :cond_9d
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_51

    :cond_b1
    move v1, v3

    .line 916
    goto :goto_77

    .line 926
    :cond_b3
    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 927
    if-eqz v1, :cond_dd

    .line 928
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v2

    iget-object v4, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v4, v4, Lcom/google/googlenav/ui/view/v;->d:Lag/g;

    invoke-virtual {v2, v1, v4}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 930
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v2, v2, Lcom/google/googlenav/ui/view/v;->c:I

    if-eqz v2, :cond_dd

    .line 932
    const v2, 0x7f1001a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v2, v2, Lcom/google/googlenav/ui/view/v;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 936
    :cond_dd
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 939
    :cond_e0
    return-void

    :cond_e1
    move v1, v3

    goto :goto_67

    .line 917
    nop

    :array_e4
    .array-data 0x4
        0x9ct 0x1t 0x10t 0x7ft
        0x9et 0x1t 0x10t 0x7ft
        0xa0t 0x1t 0x10t 0x7ft
        0x49t 0x2t 0x10t 0x7ft
    .end array-data

    .line 919
    :array_f0
    .array-data 0x4
        0x5dt 0x2t 0x10t 0x7ft
        0x5et 0x2t 0x10t 0x7ft
        0x5ft 0x2t 0x10t 0x7ft
        0x60t 0x2t 0x10t 0x7ft
    .end array-data
.end method

.method protected a(Landroid/widget/AbsListView;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 286
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 288
    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 343
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 371
    :cond_3
    :goto_3
    return-void

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 350
    if-eqz v0, :cond_39

    .line 351
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aQ;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    instance-of v0, v0, Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 355
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    if-eqz v1, :cond_2a

    .line 357
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    invoke-interface {v0}, Lcom/google/googlenav/ui/b;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 358
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    .line 360
    :cond_2a
    if-eqz v0, :cond_3

    .line 361
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 362
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    goto :goto_3

    .line 364
    :cond_33
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/util/List;)Ljava/lang/String;

    goto :goto_3

    .line 369
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    goto :goto_3
.end method

.method protected a_(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 830
    iget-object v1, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-nez v1, :cond_9

    .line 838
    :goto_8
    return-void

    .line 834
    :cond_9
    const v1, 0x7f100243

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    .line 835
    const v2, 0x7f100244

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    .line 836
    const v3, 0x7f100380

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    .line 837
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aS;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_8
.end method

.method protected b(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 859
    const v1, 0x7f10002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 860
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_22

    .line 146
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 136
    :pswitch_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/p;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 139
    :pswitch_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/z;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/z;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 142
    :pswitch_19
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/s;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 134
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method protected c(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 948
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    .line 950
    if-eqz v0, :cond_c

    iget v1, v0, Lcom/google/googlenav/ui/view/p;->b:I

    if-eq v1, v2, :cond_d

    .line 1009
    :cond_c
    :goto_c
    return-void

    .line 954
    :cond_d
    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_d4

    goto :goto_c

    .line 990
    :sswitch_17
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 957
    :sswitch_23
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 960
    :sswitch_2d
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 963
    :sswitch_37
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 966
    :sswitch_41
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 969
    :sswitch_4b
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 972
    :sswitch_55
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 975
    :sswitch_5f
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 978
    :sswitch_69
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 981
    :sswitch_75
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 984
    :sswitch_81
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 987
    :sswitch_8d
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 993
    :sswitch_9a
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 996
    :sswitch_a7
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 999
    :sswitch_b4
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 1003
    :sswitch_c1
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 1006
    :sswitch_ca
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/t;->c:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 955
    nop

    :sswitch_data_d4
    .sparse-switch
        0x7f100001 -> :sswitch_17
        0x7f100002 -> :sswitch_9a
        0x7f100003 -> :sswitch_a7
        0x7f100004 -> :sswitch_b4
        0x7f100005 -> :sswitch_69
        0x7f100006 -> :sswitch_75
        0x7f100007 -> :sswitch_81
        0x7f100008 -> :sswitch_8d
        0x7f100030 -> :sswitch_4b
        0x7f100031 -> :sswitch_55
        0x7f10003f -> :sswitch_5f
        0x7f10019c -> :sswitch_23
        0x7f10019e -> :sswitch_2d
        0x7f1001a0 -> :sswitch_37
        0x7f100242 -> :sswitch_c1
        0x7f100243 -> :sswitch_c1
        0x7f100249 -> :sswitch_41
        0x7f100380 -> :sswitch_ca
    .end sparse-switch
.end method

.method protected m()V
    .registers 3

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aS;->e:Z

    if-eqz v0, :cond_8

    .line 733
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 777
    :cond_7
    :goto_7
    return-void

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 742
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/p;->d()Z

    move-result v1

    if-nez v1, :cond_7

    .line 748
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/p;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 749
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;)V

    .line 753
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 754
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->o()V

    .line 758
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 759
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 760
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->h()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 761
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->a_(Landroid/view/View;)V

    .line 763
    :cond_47
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->i()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 764
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aS;->b(Landroid/view/View;)V

    .line 766
    :cond_52
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->j()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 767
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 772
    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->a()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 773
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->invalidateOptionsMenu()V

    .line 776
    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->e()V

    goto :goto_7
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 310
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 791
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_32

    .line 792
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_68

    .line 798
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 799
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_25

    .line 800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->requestWindowFeature(I)Z

    .line 822
    :cond_25
    :goto_25
    return-void

    .line 794
    :pswitch_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aS;->v()V

    goto :goto_25

    .line 803
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 806
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 808
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 809
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_25

    .line 816
    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f1002eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 818
    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 819
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->i()Lcom/google/googlenav/ui/view/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 792
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aS;->c(Landroid/view/View;)V

    .line 944
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->n()V

    .line 945
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/widget/AdapterView;I)V

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    if-eqz v0, :cond_c

    .line 317
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/aQ;)Z

    .line 320
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->n()V

    .line 321
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/widget/AdapterView;I)V

    .line 326
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aS;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aS;->b(Lcom/google/googlenav/ui/aQ;)Z

    move-result v0

    .line 331
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aS;->n()V

    .line 332
    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/widget/AdapterView;I)V

    .line 294
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter

    .prologue
    .line 298
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/aS;->a(Landroid/widget/AdapterView;I)V

    .line 299
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 173
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/googlenav/ui/view/android/bl;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aS;->d:Ljava/lang/CharSequence;

    .line 175
    return-void
.end method
