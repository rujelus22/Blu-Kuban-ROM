.class Lcom/google/googlenav/ui/android/av;
.super Lcom/google/googlenav/ui/android/ax;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ax;-><init>()V

    .line 427
    iput-object p2, p0, Lcom/google/googlenav/ui/android/av;->b:Ljava/util/ArrayList;

    .line 428
    return-void
.end method

.method private a(Lcom/google/googlenav/cp;Z)Landroid/view/View;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 494
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 497
    invoke-virtual {p1}, Lcom/google/googlenav/cp;->b()Lcom/google/googlenav/cd;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 499
    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/cp;->d()I

    move-result v4

    if-ge v0, v4, :cond_41

    .line 500
    invoke-virtual {p1, v0}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v4

    .line 503
    invoke-virtual {v4}, Lcom/google/googlenav/cd;->a()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 506
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_30
    invoke-virtual {v4}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v4

    .line 509
    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 515
    :cond_41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_110

    .line 516
    const/16 v0, 0x20a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 520
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f00ba

    invoke-direct {v0, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 522
    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    new-instance v3, Lcom/google/googlenav/ui/android/RealtimePulseImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/google/googlenav/ui/android/RealtimePulseImageView;-><init>(Landroid/content/Context;I)V

    .line 529
    const v2, 0x7f02035b

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e()I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 532
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 535
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 536
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 540
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 541
    const-string v3, "("

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 542
    iget-object v3, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3, v0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/cp;)V

    .line 543
    const-string v3, ")"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 544
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f00bc

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 548
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    if-eqz p2, :cond_10b

    .line 552
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 553
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 554
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    :goto_10a
    return-object v0

    .line 558
    :cond_10b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v2

    .line 559
    goto :goto_10a

    .line 566
    :cond_110
    iget-object v0, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/cp;)V

    .line 567
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10a
.end method

.method private a(Lcom/google/googlenav/cp;Landroid/widget/LinearLayout;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 447
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {p1}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    if-eqz p3, :cond_3b

    .line 455
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 456
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 457
    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 458
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    invoke-direct {p0, p1, v4}, Lcom/google/googlenav/ui/android/av;->a(Lcom/google/googlenav/cp;Z)Landroid/view/View;

    move-result-object v0

    .line 464
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 465
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    :goto_3a
    return-void

    .line 471
    :cond_3b
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/av;->a(Lcom/google/googlenav/cp;Z)Landroid/view/View;

    move-result-object v0

    .line 473
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/googlenav/ui/android/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/googlenav/ui/android/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 442
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/ui/android/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    .line 575
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 576
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 579
    iget-object v1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1, v0, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/cn;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 580
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    .line 585
    :goto_30
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->d()I

    move-result v5

    if-ge v1, v5, :cond_44

    .line 586
    invoke-virtual {v0, v1}, Lcom/google/googlenav/cn;->a(I)Lcom/google/googlenav/cp;

    move-result-object v5

    .line 587
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->m()Z

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Lcom/google/googlenav/ui/android/av;->a(Lcom/google/googlenav/cp;Landroid/widget/LinearLayout;Z)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 589
    :cond_44
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/google/googlenav/ui/android/av;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iget v0, v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->f:I

    sget v1, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    add-int/2addr v0, v1

    invoke-virtual {v4, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 593
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 594
    return-object v3
.end method
