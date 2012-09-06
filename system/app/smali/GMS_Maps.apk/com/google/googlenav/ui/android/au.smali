.class Lcom/google/googlenav/ui/android/au;
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
    .line 604
    iput-object p1, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ax;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/google/googlenav/ui/android/au;->b:Ljava/util/ArrayList;

    .line 607
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/googlenav/ui/android/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/googlenav/ui/android/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 621
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 626
    iget-object v0, p0, Lcom/google/googlenav/ui/android/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cn;

    .line 627
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 628
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 631
    iget-object v1, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/cn;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 632
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    iget-object v1, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iget v1, v1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->f:I

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    add-int v5, v1, v2

    move v2, v3

    .line 638
    :goto_2a
    invoke-virtual {v0}, Lcom/google/googlenav/cn;->d()I

    move-result v1

    if-ge v2, v1, :cond_aa

    .line 639
    invoke-virtual {v0, v2}, Lcom/google/googlenav/cn;->a(I)Lcom/google/googlenav/cp;

    move-result-object v1

    .line 642
    invoke-virtual {v1}, Lcom/google/googlenav/cp;->b()Lcom/google/googlenav/cd;

    move-result-object v6

    if-eqz v6, :cond_a6

    .line 643
    iget-object v6, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v6, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/cp;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 646
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v8}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 647
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 648
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {v1}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 651
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 653
    const/4 v9, 0x3

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 654
    const/high16 v9, 0x3f80

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 655
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 656
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/au;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 660
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 664
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 667
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 668
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 670
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    invoke-virtual {v7, v5, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 638
    :cond_a6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2a

    .line 674
    :cond_aa
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 675
    return-object v4
.end method
