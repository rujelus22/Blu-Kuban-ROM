.class public Lcom/google/googlenav/ui/view/android/aZ;
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

    .line 880
    move v1, v0

    .line 881
    :goto_2
    iget-object v2, p1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 882
    iget-object v2, p1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aZ;->b(Lcom/google/googlenav/ui/bd;)I

    move-result v2

    .line 883
    if-le v1, v2, :cond_14

    .line 881
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    move v1, v2

    .line 883
    goto :goto_11

    .line 885
    :cond_16
    return v1
.end method

.method private a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401ec

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 705
    iget-object v1, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/C;->c:Lcom/google/googlenav/ui/view/t;

    if-eqz v1, :cond_2f

    .line 706
    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 707
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/C;->c:Lcom/google/googlenav/ui/view/t;

    iget v4, p1, Lcom/google/googlenav/ui/view/s;->c:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/t;I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 710
    :cond_2f
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v2, p1, Lcom/google/googlenav/ui/view/s;->h:Lcom/google/googlenav/ui/view/C;

    invoke-virtual {v1, v0, v2, v5}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/C;Landroid/webkit/WebViewClient;)V

    .line 712
    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/u;)Landroid/view/View;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a1

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 198
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 199
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/view/u;Landroid/widget/AbsListView;)Landroid/view/View;

    .line 200
    iget-boolean v2, p1, Lcom/google/googlenav/ui/view/u;->u:Z

    if-eqz v2, :cond_4c

    .line 201
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 202
    new-instance v2, Lcom/google/googlenav/ui/view/android/S;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aZ;->g:Lcom/google/googlenav/ui/g;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget v2, p1, Lcom/google/googlenav/ui/view/u;->w:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 213
    :goto_39
    const v2, 0x7f10002e

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 215
    invoke-virtual {p0, v6, p1, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/widget/AbsListView;)V

    .line 218
    return-object v0

    .line 206
    :cond_4c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aZ;->g:Lcom/google/googlenav/ui/g;

    invoke-static {v2, p1, v3, v1}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/content/Context;Lcom/google/googlenav/ui/view/u;Lcom/google/googlenav/ui/g;Landroid/widget/ListView;)V

    .line 208
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 209
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

    .line 664
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401e7

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 666
    const v1, 0x7f10049f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move v2, v3

    .line 669
    :goto_1a
    iget-object v4, p1, Lcom/google/googlenav/ui/view/z;->h:[Lcom/google/googlenav/ui/view/B;

    array-length v4, v4

    if-ge v2, v4, :cond_79

    .line 671
    if-eqz v2, :cond_2b

    .line 672
    new-instance v4, Landroid/widget/TextView;

    sget-object v5, Lcom/google/googlenav/ui/view/android/aZ;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    :cond_2b
    iget-object v4, p1, Lcom/google/googlenav/ui/view/z;->h:[Lcom/google/googlenav/ui/view/B;

    aget-object v5, v4, v2

    .line 678
    iget-object v8, v5, Lcom/google/googlenav/ui/view/B;->a:[Lcom/google/googlenav/ui/aW;

    .line 679
    if-eqz v8, :cond_70

    array-length v4, v8

    if-lez v4, :cond_70

    move v4, v7

    .line 680
    :goto_37
    if-eqz v4, :cond_4e

    .line 681
    new-instance v9, Landroid/widget/TextView;

    sget-object v10, Lcom/google/googlenav/ui/view/android/aZ;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 682
    invoke-static {v8}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    :cond_4e
    iget-object v8, v5, Lcom/google/googlenav/ui/view/B;->b:[Lcom/google/googlenav/ui/view/A;

    .line 689
    if-nez v2, :cond_72

    if-nez v4, :cond_72

    if-eqz v8, :cond_72

    array-length v4, v8

    if-ne v4, v7, :cond_72

    move v4, v7

    .line 691
    :goto_5a
    if-eqz v4, :cond_74

    sget-object v4, Lcom/google/googlenav/ui/aV;->ag:Lcom/google/googlenav/ui/aV;

    move-object v5, v4

    .line 693
    :goto_5f
    if-eqz v8, :cond_76

    array-length v4, v8

    if-lez v4, :cond_76

    move v4, v3

    .line 694
    :goto_65
    array-length v9, v8

    if-ge v4, v9, :cond_76

    .line 695
    aget-object v9, v8, v4

    invoke-direct {p0, v9, v1, v5}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/A;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V

    .line 694
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_70
    move v4, v3

    .line 679
    goto :goto_37

    :cond_72
    move v4, v3

    .line 689
    goto :goto_5a

    :cond_74
    move-object v5, v6

    .line 691
    goto :goto_5f

    .line 669
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 700
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

    .line 483
    if-eqz p1, :cond_f

    .line 484
    if-nez p3, :cond_10

    .line 485
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    if-eqz p2, :cond_f

    .line 487
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_f
    :goto_f
    return-void

    .line 490
    :cond_10
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 491
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 492
    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 493
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    :cond_2c
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->l()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 496
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 497
    const v0, 0x7f100429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 500
    :cond_48
    const v0, 0x7f100428

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 501
    if-eqz v0, :cond_84

    .line 502
    iget-object v1, p3, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_c3

    if-eqz p4, :cond_c3

    move v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_84

    .line 507
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 508
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 509
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    :cond_84
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    iget-object v0, p3, Lcom/google/googlenav/ui/bd;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_f

    .line 526
    invoke-virtual {p3}, Lcom/google/googlenav/ui/bd;->m()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 530
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_c3
    move v1, v3

    .line 503
    goto :goto_65

    .line 533
    :cond_c5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f
.end method

.method public static a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 435
    if-nez p1, :cond_1a

    const/4 v0, 0x0

    move-object v2, v0

    .line 436
    :goto_4
    const v0, 0x7f100194

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 437
    const v1, 0x7f100195

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 439
    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 440
    return-void

    .line 435
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
    .line 599
    if-eqz p1, :cond_9

    .line 600
    iget-object v0, p1, Lcom/google/googlenav/ui/view/A;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/googlenav/ui/view/A;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/aV;)V

    .line 602
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

    .line 451
    .line 453
    if-eqz p2, :cond_25

    .line 454
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    .line 455
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 458
    :goto_b
    if-eqz p0, :cond_16

    .line 459
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setLocationProvider(Lan/h;)V

    .line 460
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setInitialVisibility(Lat/B;)V

    .line 461
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/DistanceView;->setDestination(Lat/B;)V

    .line 464
    :cond_16
    if-eqz p1, :cond_24

    .line 465
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setOrientationProvider(LaB/h;)V

    .line 466
    invoke-virtual {p1, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->setLocationProvider(Lan/h;)V

    .line 467
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setInitialVisibility(Lat/B;)V

    .line 468
    invoke-virtual {p1, p2}, Lcom/google/googlenav/ui/view/android/HeadingView;->setDestination(Lat/B;)V

    .line 470
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

    .line 222
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    if-eqz v0, :cond_9c

    .line 224
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 225
    const v0, 0x7f090007

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 232
    :cond_15
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v0, v0, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v0, v4, :cond_2b

    .line 233
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 234
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 235
    const/high16 v0, 0x4000

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 237
    :cond_2b
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v5

    .line 238
    if-eqz v1, :cond_58

    .line 239
    const v0, 0x7f100030

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v3, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v3, v3, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v5

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/googlenav/ui/view/android/ak;->a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V

    .line 244
    iget-object v1, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget v1, v1, Lcom/google/googlenav/ui/view/v;->a:I

    if-ne v1, v4, :cond_58

    .line 245
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    :cond_58
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v4

    .line 249
    if-eqz v1, :cond_78

    .line 250
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

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

    .line 253
    :cond_78
    iget-object v0, p1, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v0, v6

    .line 254
    if-eqz v1, :cond_98

    .line 255
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

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

    .line 258
    :cond_98
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    :cond_9b
    :goto_9b
    return-void

    .line 259
    :cond_9c
    if-eqz p2, :cond_9b

    .line 260
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

    .line 617
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    .line 618
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0401e6

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 621
    if-nez p4, :cond_38

    .line 622
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :goto_1c
    const/4 v2, 0x0

    .line 631
    :try_start_1d
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_22} :catch_44

    .line 647
    :goto_22
    if-eqz v1, :cond_34

    .line 649
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 650
    new-instance v2, Lcom/google/googlenav/ui/view/android/ba;

    invoke-direct {v2, p0, p2}, Lcom/google/googlenav/ui/view/android/ba;-><init>(Lcom/google/googlenav/ui/view/android/aZ;Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v5, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 659
    :cond_34
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 661
    :cond_37
    return-void

    .line 624
    :cond_38
    invoke-static {p1, p4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 633
    :catch_44
    move-exception v3

    .line 634
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_6c

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 639
    :try_start_60
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/net/MalformedURLException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_22

    .line 641
    :catch_66
    move-exception v1

    .line 643
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

    .line 408
    if-nez p1, :cond_4

    .line 411
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

    .line 867
    if-nez p1, :cond_4

    .line 873
    :goto_3
    return v0

    .line 870
    :cond_4
    new-instance v1, Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/view/android/aZ;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 871
    iget-object v2, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 873
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto :goto_3
.end method

.method private v()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 162
    iget-object v1, v0, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 165
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_d
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->f:I

    packed-switch v0, :pswitch_data_28

    .line 123
    :cond_11
    :goto_11
    return-void

    .line 112
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    .line 115
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_11

    .line 110
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_12
        :pswitch_1d
    .end packed-switch
.end method

.method protected N_()V
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    .line 130
    :cond_12
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->o()V

    .line 131
    return-void
.end method

.method public P_()V
    .registers 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->i()Lcom/google/googlenav/ui/view/p;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/google/googlenav/ui/view/r;->c:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/p;->a(Lcom/google/googlenav/ui/view/r;)V

    .line 182
    sget-object v1, Lcom/google/googlenav/ui/view/r;->a:Lcom/google/googlenav/ui/view/r;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/p;->a(Lcom/google/googlenav/ui/view/r;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->l()V

    .line 184
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lcom/google/googlenav/ui/view/u;Landroid/widget/AbsListView;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-nez v0, :cond_a

    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    if-nez v0, :cond_a

    .line 389
    const/4 v0, 0x0

    .line 404
    :goto_9
    return-object v0

    .line 392
    :cond_a
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget v1, p3, Lcom/google/googlenav/ui/view/u;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/t;I)Landroid/view/View;

    move-result-object v2

    .line 395
    invoke-virtual {p0, v2, p3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 397
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-eqz v0, :cond_2b

    .line 398
    iget-object v0, p3, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v1, v0, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    .line 399
    iget-object v0, v1, Lcom/google/googlenav/ui/bd;->E:Lat/B;

    if-eqz v0, :cond_2d

    move-object v0, v1

    :goto_22
    invoke-static {v2, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/View;Lcom/google/googlenav/ui/bd;)V

    .line 402
    check-cast p4, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p4, v2, v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_2b
    move-object v0, v2

    .line 404
    goto :goto_9

    .line 399
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
    .line 544
    packed-switch p3, :pswitch_data_56

    .line 565
    :pswitch_3
    const v0, 0x7f0400a5

    .line 569
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 573
    const v1, 0x7f10024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_1e

    .line 575
    iget-boolean v1, p2, Lcom/google/googlenav/ui/view/t;->d:Z

    if-eqz v1, :cond_53

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_1e
    const v1, 0x7f100243

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    .line 579
    const v2, 0x7f100244

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    .line 580
    const v3, 0x7f100380

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    .line 582
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v4, p2, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    .line 584
    return-object v0

    .line 547
    :pswitch_3f
    const v0, 0x7f0400aa

    .line 548
    goto :goto_6

    .line 552
    :pswitch_43
    const v0, 0x7f0400b1

    .line 553
    goto :goto_6

    .line 555
    :pswitch_47
    const v0, 0x7f0400ab

    .line 556
    goto :goto_6

    .line 558
    :pswitch_4b
    const v0, 0x7f0400b2

    .line 559
    goto :goto_6

    .line 562
    :pswitch_4f
    const v0, 0x7f0400b0

    .line 563
    goto :goto_6

    .line 575
    :cond_53
    const/16 v1, 0x8

    goto :goto_1b

    .line 544
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
    .line 716
    iget v0, p1, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_1c

    .line 727
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 718
    :pswitch_7
    check-cast p1, Lcom/google/googlenav/ui/view/u;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/u;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 721
    :pswitch_e
    check-cast p1, Lcom/google/googlenav/ui/view/z;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/z;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 724
    :pswitch_15
    check-cast p1, Lcom/google/googlenav/ui/view/s;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 716
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
    .line 275
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->i:[Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_26

    .line 276
    const v0, 0x7f10009e

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    if-eqz v0, :cond_26

    .line 278
    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->i:[Lcom/google/googlenav/ui/aW;

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_27

    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    :cond_26
    return-void

    .line 280
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

    .line 893
    iget-object v0, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    if-eqz v0, :cond_e0

    .line 894
    const v0, 0x7f100024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 895
    if-eqz v0, :cond_e0

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/bd;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 902
    :cond_44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v1, 0x190

    move v2, v1

    .line 905
    :goto_51
    const v1, 0x7f10019c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 907
    if-eqz v1, :cond_e1

    .line 908
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 910
    if-eqz v1, :cond_e1

    .line 911
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 914
    :goto_67
    iget-object v5, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v5, v5, Lcom/google/googlenav/ui/view/v;->a:I

    div-int/2addr v2, v5

    sub-int v1, v2, v1

    .line 917
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/v;)I

    move-result v2

    if-lt v1, v2, :cond_b1

    move v1, v4

    .line 918
    :goto_77
    new-array v4, v6, [I

    fill-array-data v4, :array_e4

    .line 920
    new-array v5, v6, [I

    fill-array-data v5, :array_f0

    move v2, v3

    .line 922
    :goto_82
    array-length v6, v4

    if-ge v2, v6, :cond_b3

    .line 923
    aget v6, v4, v2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aget v7, v5, v2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v8, v8, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v8, v8, v2

    invoke-direct {p0, v6, v7, v8, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/View;Landroid/view/View;Lcom/google/googlenav/ui/bd;Z)V

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 902
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

    .line 917
    goto :goto_77

    .line 927
    :cond_b3
    const v1, 0x7f1001a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 928
    if-eqz v1, :cond_dd

    .line 929
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v2

    iget-object v4, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v4, v4, Lcom/google/googlenav/ui/view/v;->d:Lag/g;

    invoke-virtual {v2, v1, v4}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 931
    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v2, v2, Lcom/google/googlenav/ui/view/v;->c:I

    if-eqz v2, :cond_dd

    .line 933
    const v2, 0x7f1001a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget v2, v2, Lcom/google/googlenav/ui/view/v;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 937
    :cond_dd
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 940
    :cond_e0
    return-void

    :cond_e1
    move v1, v3

    goto :goto_67

    .line 918
    nop

    :array_e4
    .array-data 0x4
        0x9ct 0x1t 0x10t 0x7ft
        0x9et 0x1t 0x10t 0x7ft
        0xa0t 0x1t 0x10t 0x7ft
        0x49t 0x2t 0x10t 0x7ft
    .end array-data

    .line 920
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
    .line 286
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 289
    return-void
.end method

.method protected a(Landroid/widget/AdapterView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 344
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 372
    :cond_3
    :goto_3
    return-void

    .line 348
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 351
    if-eqz v0, :cond_39

    .line 352
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aQ;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    instance-of v0, v0, Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    check-cast v0, Lcom/google/googlenav/ui/bd;

    .line 356
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    if-eqz v1, :cond_2a

    .line 358
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    invoke-interface {v0}, Lcom/google/googlenav/ui/b;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    .line 361
    :cond_2a
    if-eqz v0, :cond_3

    .line 362
    iget-object v1, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 363
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    goto :goto_3

    .line 365
    :cond_33
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/util/List;)Ljava/lang/String;

    goto :goto_3

    .line 370
    :cond_39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    goto :goto_3
.end method

.method protected b(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 831
    iget-object v1, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    if-nez v1, :cond_9

    .line 839
    :goto_8
    return-void

    .line 835
    :cond_9
    const v1, 0x7f100243

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    .line 836
    const v2, 0x7f100244

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/ui/android/TemplateView;

    .line 837
    const v3, 0x7f100380

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/googlenav/ui/android/TemplateView;

    .line 838
    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/aZ;->h:Lcom/google/googlenav/ui/view/android/ak;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V

    goto :goto_8
.end method

.method protected c()Landroid/view/View;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_22

    .line 147
    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 137
    :pswitch_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/p;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 140
    :pswitch_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/z;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/z;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 143
    :pswitch_19
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/s;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/s;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 135
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method protected c(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 859
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 860
    const v1, 0x7f10002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/view/u;Landroid/widget/LinearLayout;)V

    .line 861
    return-void
.end method

.method protected d(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 949
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    .line 951
    if-eqz v0, :cond_c

    iget v1, v0, Lcom/google/googlenav/ui/view/p;->b:I

    if-eq v1, v2, :cond_d

    .line 1010
    :cond_c
    :goto_c
    return-void

    .line 955
    :cond_d
    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_d4

    goto :goto_c

    .line 991
    :sswitch_17
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 958
    :sswitch_23
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 961
    :sswitch_2d
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 964
    :sswitch_37
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 967
    :sswitch_41
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->j:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 970
    :sswitch_4b
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 973
    :sswitch_55
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 976
    :sswitch_5f
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->p:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 979
    :sswitch_69
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 982
    :sswitch_75
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 985
    :sswitch_81
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto :goto_c

    .line 988
    :sswitch_8d
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->a:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 994
    :sswitch_9a
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 997
    :sswitch_a7
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 1000
    :sswitch_b4
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->k:Lcom/google/googlenav/ui/view/x;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/x;->b:Lcom/google/googlenav/ui/view/v;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/v;->b:[Lcom/google/googlenav/ui/bd;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 1004
    :sswitch_c1
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 1007
    :sswitch_ca
    iget-object v0, v0, Lcom/google/googlenav/ui/view/u;->h:Lcom/google/googlenav/ui/view/t;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/t;->c:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    goto/16 :goto_c

    .line 956
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
    .line 733
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->e:Z

    if-eqz v0, :cond_8

    .line 734
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 778
    :cond_7
    :goto_7
    return-void

    .line 738
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 743
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/p;->d()Z

    move-result v1

    if-nez v1, :cond_7

    .line 749
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/p;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 750
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/View;)V

    .line 754
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 755
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->o()V

    .line 759
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 760
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    check-cast v0, Lcom/google/googlenav/ui/view/u;

    .line 761
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->h()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 762
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->b(Landroid/view/View;)V

    .line 764
    :cond_47
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->i()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 765
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aZ;->c(Landroid/view/View;)V

    .line 767
    :cond_52
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/u;->j()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 768
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/u;)V

    .line 773
    :cond_5d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->a()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 774
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->invalidateOptionsMenu()V

    .line 777
    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/p;->e()V

    goto :goto_7
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 311
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 792
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_32

    .line 793
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget v0, v0, Lcom/google/googlenav/ui/view/p;->b:I

    packed-switch v0, :pswitch_data_68

    .line 799
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 800
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_25

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->requestWindowFeature(I)Z

    .line 823
    :cond_25
    :goto_25
    return-void

    .line 795
    :pswitch_26
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aZ;->v()V

    goto :goto_25

    .line 804
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 807
    :cond_32
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    if-eqz v0, :cond_25

    .line 809
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 810
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_25

    .line 817
    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f1002eb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 819
    const v1, 0x7f1003bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 820
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->i()Lcom/google/googlenav/ui/view/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlenav/ui/view/p;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 793
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aZ;->d(Landroid/view/View;)V

    .line 945
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->n()V

    .line 946
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/widget/AdapterView;I)V

    .line 317
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Lcom/google/googlenav/ui/aQ;)Z

    .line 321
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->n()V

    .line 322
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/widget/AdapterView;I)V

    .line 327
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 329
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aZ;->c:Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aZ;->b(Lcom/google/googlenav/ui/aQ;)Z

    move-result v0

    .line 332
    :cond_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aZ;->n()V

    .line 333
    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/widget/AdapterView;I)V

    .line 295
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter

    .prologue
    .line 299
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/aZ;->a(Landroid/widget/AdapterView;I)V

    .line 300
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/googlenav/ui/view/android/bl;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aZ;->d:Ljava/lang/CharSequence;

    .line 176
    return-void
.end method
