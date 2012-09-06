.class public Lcom/google/googlenav/ui/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Z

.field private static h:Lcom/google/googlenav/ui/view/e;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/google/googlenav/ui/view/d;

.field private final c:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private final d:Lcom/google/googlenav/ui/android/ButtonContainer;

.field private e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/e;->f:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/ui/view/e;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    .line 121
    iput-object p1, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    .line 123
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 126
    new-instance v0, Lcom/google/googlenav/ui/view/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/e;->b:Lcom/google/googlenav/ui/view/d;

    .line 131
    :goto_19
    iput-object p3, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    .line 132
    return-void

    .line 128
    :cond_1c
    new-instance v1, Lcom/google/googlenav/ui/view/android/M;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100050

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/M;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/view/e;->b:Lcom/google/googlenav/ui/view/d;

    goto :goto_19
.end method

.method public static a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 1
    .parameter

    .prologue
    .line 857
    return-object p0
.end method

.method public static a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/c;
    .registers 1
    .parameter

    .prologue
    .line 818
    return-object p0
.end method

.method public static a()Lcom/google/googlenav/ui/view/e;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/googlenav/ui/view/e;->h:Lcom/google/googlenav/ui/view/e;

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 883
    invoke-static {p1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/e;->b(Lcom/google/googlenav/ui/aW;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 332
    invoke-static {p2}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :goto_11
    return-void

    .line 335
    :cond_12
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public static a(Lcom/google/googlenav/ui/view/e;)V
    .registers 1
    .parameter

    .prologue
    .line 110
    sput-object p0, Lcom/google/googlenav/ui/view/e;->h:Lcom/google/googlenav/ui/view/e;

    .line 111
    return-void
.end method

.method private b(I)I
    .registers 3
    .parameter

    .prologue
    .line 759
    packed-switch p1, :pswitch_data_1a

    .line 771
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 761
    :pswitch_5
    const v0, 0x7f02007e

    goto :goto_4

    .line 763
    :pswitch_9
    const v0, 0x7f020082

    goto :goto_4

    .line 765
    :pswitch_d
    const v0, 0x7f020080

    goto :goto_4

    .line 767
    :pswitch_11
    const v0, 0x7f02003a

    goto :goto_4

    .line 769
    :pswitch_15
    const v0, 0x7f02003c

    goto :goto_4

    .line 759
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method private b(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;
    .registers 4
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->b:Lcom/google/googlenav/ui/view/d;

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 450
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->b:Lcom/google/googlenav/ui/view/d;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ui/v;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 191
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/U;

    .line 194
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/U;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/e;->e:Landroid/view/View;

    .line 195
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->e:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 198
    :cond_22
    const/16 v0, 0xb

    new-instance v1, Lcom/google/googlenav/ui/view/g;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/g;-><init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    .line 207
    const/16 v0, 0x4f9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->bF:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 209
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aW;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/e;->a(Ljava/util/List;)V

    .line 212
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-nez v0, :cond_59

    .line 213
    const/16 v0, 0xc

    new-instance v1, Lcom/google/googlenav/ui/view/h;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/h;-><init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    .line 231
    :cond_59
    const/16 v0, 0xd

    new-instance v1, Lcom/google/googlenav/ui/view/i;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/i;-><init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    .line 250
    const/16 v0, 0xe

    new-instance v1, Lcom/google/googlenav/ui/view/j;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/j;-><init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    .line 267
    return-void
.end method

.method private b(Lcom/google/googlenav/ui/aW;)Z
    .registers 3
    .parameter

    .prologue
    .line 340
    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x1b7

    const/16 v0, 0xf4

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 467
    .line 472
    packed-switch p1, :pswitch_data_1ce

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown touchscreen button type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :pswitch_24
    const v5, 0x7f10006c

    .line 475
    const v1, 0x7f020089

    .line 476
    const/16 v0, 0x624

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 598
    :goto_31
    packed-switch p1, :pswitch_data_1fa

    .line 620
    :pswitch_34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    move-object v1, v0

    .line 624
    :goto_37
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 625
    if-nez v9, :cond_175

    .line 629
    const/4 v0, 0x0

    .line 668
    :goto_3e
    return-object v0

    .line 479
    :pswitch_3f
    const v5, 0x7f10006b

    .line 480
    const v1, 0x7f020085

    .line 481
    const/16 v0, 0x625

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 482
    goto :goto_31

    .line 484
    :pswitch_4d
    const v5, 0x7f100067

    .line 485
    const v1, 0x7f020075

    .line 486
    const/16 v0, 0x3e3

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 487
    goto :goto_31

    .line 489
    :pswitch_5b
    const v5, 0x7f100069

    .line 490
    const v1, 0x7f02006b

    .line 491
    const/16 v0, 0x30d

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 492
    goto :goto_31

    .line 494
    :pswitch_69
    const v5, 0x7f100070

    .line 495
    const v1, 0x7f02002c

    .line 496
    const/16 v0, 0x58

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 497
    goto :goto_31

    .line 499
    :pswitch_77
    const v5, 0x7f10006e

    .line 500
    const v1, 0x7f02005b

    .line 501
    const/16 v0, 0x2b9

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 502
    goto :goto_31

    .line 504
    :pswitch_85
    const v5, 0x7f10006f

    .line 505
    const v1, 0x7f02005c

    .line 506
    const/16 v0, 0x2ba

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 507
    goto :goto_31

    .line 509
    :pswitch_93
    const v1, 0x7f1001fd

    .line 510
    const/16 v0, 0x4f7

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    .line 511
    goto :goto_31

    .line 513
    :pswitch_9e
    const v1, 0x7f1001a8

    .line 514
    const/16 v0, 0x1ed

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    .line 515
    goto :goto_31

    .line 517
    :pswitch_a9
    const v1, 0x7f1001ff

    .line 518
    const/16 v0, 0x38a

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    .line 519
    goto/16 :goto_31

    .line 521
    :pswitch_b5
    const v1, 0x7f100201

    .line 522
    const/16 v0, 0x23d

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    .line 523
    goto/16 :goto_31

    .line 525
    :pswitch_c1
    const v1, 0x7f100202

    .line 526
    const/16 v0, 0x2cd

    move v5, v0

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    .line 527
    goto/16 :goto_31

    .line 533
    :pswitch_cd
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/K;->an()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 534
    const v7, 0x7f1002e8

    .line 536
    packed-switch p1, :pswitch_data_21a

    .line 553
    const v0, 0x7f020048

    move v1, v0

    move v0, v2

    .line 557
    :goto_e2
    const v6, 0x7f1002e9

    .line 558
    const v5, 0x7f1002e7

    move v8, v1

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v0

    goto/16 :goto_31

    .line 538
    :pswitch_ef
    const v1, 0x7f020057

    .line 539
    const/16 v0, 0x4fb

    .line 540
    goto :goto_e2

    .line 542
    :pswitch_f5
    const v1, 0x7f02004b

    .line 544
    goto :goto_e2

    .line 546
    :pswitch_f9
    const v0, 0x7f020050

    move v10, v1

    move v1, v0

    move v0, v10

    .line 548
    goto :goto_e2

    .line 550
    :pswitch_100
    const v0, 0x7f020059

    move v1, v0

    move v0, v2

    .line 551
    goto :goto_e2

    .line 560
    :cond_106
    const v5, 0x7f100066

    .line 562
    packed-switch p1, :pswitch_data_226

    .line 576
    const v1, 0x7f020048

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v2

    .line 580
    goto/16 :goto_31

    .line 564
    :pswitch_116
    const v1, 0x7f020055

    .line 565
    const/16 v0, 0x4fb

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 566
    goto/16 :goto_31

    .line 568
    :pswitch_122
    const v1, 0x7f020049

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 570
    goto/16 :goto_31

    .line 572
    :pswitch_12c
    const v0, 0x7f02004e

    move v6, v2

    move v7, v2

    move v8, v0

    move v9, v5

    move v5, v1

    .line 574
    goto/16 :goto_31

    .line 584
    :pswitch_136
    const v5, 0x7f100071

    .line 585
    const v1, 0x7f020068

    .line 586
    const/16 v0, 0x2cd

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 587
    goto/16 :goto_31

    .line 589
    :pswitch_145
    const v5, 0x7f100068

    .line 590
    const v1, 0x7f020072

    .line 591
    const/16 v0, 0x312

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v5

    move v5, v0

    .line 592
    goto/16 :goto_31

    .line 604
    :pswitch_154
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 605
    goto/16 :goto_37

    .line 613
    :pswitch_15d
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 614
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_37

    .line 616
    :cond_170
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    move-object v1, v0

    .line 618
    goto/16 :goto_37

    .line 631
    :cond_175
    if-eq v8, v2, :cond_17a

    .line 632
    invoke-virtual {v9, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 635
    :cond_17a
    if-eq v7, v2, :cond_185

    .line 636
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 637
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_185
    if-eq v5, v2, :cond_18e

    .line 642
    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 645
    :cond_18e
    invoke-static {p2}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/c;

    move-result-object v0

    .line 647
    if-ne v6, v2, :cond_1ac

    .line 648
    new-instance v2, Lcom/google/googlenav/ui/view/android/U;

    invoke-direct {v2, v9, v0}, Lcom/google/googlenav/ui/view/android/U;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/view/c;)V

    .line 657
    :goto_199
    if-ne p1, v4, :cond_1bb

    .line 658
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->o()Z

    move-result v0

    if-eqz v0, :cond_1b9

    move v0, v3

    :goto_1a6
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a9
    :goto_1a9
    move-object v0, v2

    .line 668
    goto/16 :goto_3e

    .line 652
    :cond_1ac
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 653
    new-instance v2, Lcom/google/googlenav/ui/view/android/U;

    invoke-direct {v2, v5, v0}, Lcom/google/googlenav/ui/view/android/U;-><init>(Landroid/view/View;Lcom/google/googlenav/ui/view/c;)V

    .line 654
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_199

    :cond_1b9
    move v0, v4

    .line 658
    goto :goto_1a6

    .line 661
    :cond_1bb
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 662
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1a9

    .line 663
    const v0, 0x7f100200

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a9

    .line 472
    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3f
        :pswitch_4d
        :pswitch_5b
        :pswitch_cd
        :pswitch_136
        :pswitch_69
        :pswitch_9e
        :pswitch_77
        :pswitch_85
        :pswitch_93
        :pswitch_a9
        :pswitch_b5
        :pswitch_c1
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_cd
        :pswitch_136
        :pswitch_145
    .end packed-switch

    .line 598
    :pswitch_data_1fa
    .packed-switch 0x5
        :pswitch_15d
        :pswitch_34
        :pswitch_34
        :pswitch_154
        :pswitch_34
        :pswitch_34
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_154
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
    .end packed-switch

    .line 536
    :pswitch_data_21a
    .packed-switch 0xf
        :pswitch_ef
        :pswitch_f5
        :pswitch_f9
        :pswitch_100
    .end packed-switch

    .line 562
    :pswitch_data_226
    .packed-switch 0xf
        :pswitch_116
        :pswitch_122
        :pswitch_12c
    .end packed-switch
.end method

.method public a(Lad/b;Lcom/google/googlenav/ui/g;Z)Lcom/google/googlenav/ui/view/d;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    new-instance v0, Lcom/google/googlenav/ui/view/android/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/v;-><init>(Landroid/view/ViewGroup;Lad/b;Lcom/google/googlenav/ui/g;Z)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f100043

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 416
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v1, 0x7f100042

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    .line 417
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 418
    if-eqz p4, :cond_63

    const v1, 0x7f02032d

    :goto_19
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    .line 421
    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    .line 423
    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v2, 0x7f100044

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    .line 424
    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 425
    if-eqz p4, :cond_67

    const v2, 0x7f020325

    :goto_32
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    .line 428
    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    .line 432
    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v1, 0x7f10004a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v1, 0x7f100045

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 437
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/e;->b(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    return-object v0

    .line 418
    :cond_63
    const v1, 0x7f020339

    goto :goto_19

    .line 425
    :cond_67
    const v2, 0x7f020331

    goto :goto_32
.end method

.method public a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f10004a

    const v5, 0x7f100042

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 283
    iget v1, p1, Lcom/google/googlenav/ui/bd;->r:I

    const/16 v4, 0x12

    if-eq v1, v4, :cond_14

    iget v1, p1, Lcom/google/googlenav/ui/bd;->r:I

    if-ne v1, v0, :cond_8a

    :cond_14
    move v4, v0

    .line 286
    :goto_15
    if-eqz v4, :cond_8c

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    .line 293
    :goto_28
    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 294
    iget-object v1, p1, Lcom/google/googlenav/ui/bd;->L:Ljava/lang/Object;

    sget-object v5, Lcom/google/googlenav/ui/bd;->g:Ljava/lang/Object;

    if-ne v1, v5, :cond_a2

    .line 295
    if-eqz p3, :cond_9e

    const v1, 0x7f02032c

    :goto_36
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    .line 303
    :goto_39
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v5, 0x7f100044

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v5, 0x7f100045

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v5, 0x7f10004d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_62

    .line 310
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_62
    const v1, 0x7f100043

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 317
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateView;->f()Z

    move-result v0

    if-eqz v0, :cond_af

    move v0, v2

    :goto_70
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/e;->b(Lcom/google/googlenav/ui/view/c;)Lcom/google/googlenav/ui/view/d;

    move-result-object v1

    .line 320
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    if-eqz v4, :cond_b1

    .line 322
    iget-object v2, p1, Lcom/google/googlenav/ui/bd;->x:Lcom/google/googlenav/ui/aW;

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 326
    :goto_89
    return-object v1

    :cond_8a
    move v4, v2

    .line 283
    goto :goto_15

    .line 290
    :cond_8c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    goto :goto_28

    .line 295
    :cond_9e
    const v1, 0x7f020338

    goto :goto_36

    .line 299
    :cond_a2
    if-eqz p3, :cond_ab

    const v1, 0x7f020324

    :goto_a7
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    goto :goto_39

    :cond_ab
    const v1, 0x7f020330

    goto :goto_a7

    :cond_af
    move v0, v3

    .line 317
    goto :goto_70

    .line 324
    :cond_b1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_89
.end method

.method public a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;ZLandroid/view/View;)Lcom/google/googlenav/ui/view/d;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v1

    .line 357
    if-eqz p4, :cond_1d

    .line 358
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10004d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 359
    if-eqz v0, :cond_1d

    .line 360
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 361
    invoke-virtual {v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 366
    :cond_1d
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;ZLat/B;)Lcom/google/googlenav/ui/view/d;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/c;Z)Lcom/google/googlenav/ui/view/d;

    move-result-object v1

    .line 385
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    .line 387
    iget-object v2, p0, Lcom/google/googlenav/ui/view/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p4, v2, v1, p2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(Lat/B;Landroid/view/View;Lcom/google/googlenav/ui/view/d;Lcom/google/googlenav/ui/view/c;)V

    .line 390
    :cond_17
    return-object v1
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 753
    if-eqz v0, :cond_18

    .line 754
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/e;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    :cond_18
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    instance-of v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    if-eqz v0, :cond_d

    .line 978
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setCompassMargin(II)V

    .line 980
    :cond_d
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/aW;)V
    .registers 7
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 683
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->H()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 690
    const/16 v1, 0x64

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 693
    :cond_31
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 5
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ap()Lcom/google/googlenav/ui/bJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bJ;->b()V

    .line 157
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 158
    const/4 v0, 0x6

    new-instance v1, Lcom/google/googlenav/ui/view/f;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/view/f;-><init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    .line 178
    :cond_17
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 179
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/e;->b(Lcom/google/googlenav/ui/v;)V

    .line 181
    :cond_24
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 716
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 720
    sget-object v1, Lcom/google/googlenav/ui/aV;->bF:Lcom/google/googlenav/ui/aV;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    if-ne v1, v0, :cond_21

    .line 721
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 733
    :cond_20
    :goto_20
    return-void

    .line 724
    :cond_21
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    goto :goto_20

    .line 728
    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 729
    if-eqz v0, :cond_20

    .line 730
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->e:Landroid/view/View;

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 398
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    check-cast v0, Lcom/google/googlenav/ui/android/AndroidVectorView;

    .line 400
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->j()V

    .line 402
    :cond_11
    return-void
.end method

.method public d()Lcom/google/googlenav/ui/android/ButtonContainer;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 741
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public f()Landroid/view/View;
    .registers 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 4

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1b

    .line 906
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 908
    :cond_1b
    return-void
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->c:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    .line 921
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public i()V
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    .line 933
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a()V

    .line 940
    return-void
.end method

.method public k()Z
    .registers 4

    .prologue
    const v2, 0x7f020061

    .line 950
    iget-object v0, p0, Lcom/google/googlenav/ui/view/e;->d:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_16

    .line 952
    :cond_14
    const/4 v0, 0x0

    .line 968
    :goto_15
    return v0

    .line 954
    :cond_16
    sget-object v1, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v1}, Lcom/google/googlenav/android/A;->k()I

    move-result v1

    .line 955
    packed-switch v1, :pswitch_data_36

    .line 966
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 968
    :goto_22
    const/4 v0, 0x1

    goto :goto_15

    .line 957
    :pswitch_24
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    .line 960
    :pswitch_28
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    .line 963
    :pswitch_2f
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    .line 955
    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_24
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method
