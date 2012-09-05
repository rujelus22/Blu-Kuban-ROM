.class Lcom/google/googlenav/ui/android/Y;
.super Lcom/google/googlenav/ui/android/ab;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ab;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iget v1, v1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c:I

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    add-int v5, v1, v2

    move v2, v3

    :goto_2a
    invoke-virtual {v0}, Lcom/google/googlenav/bS;->h()I

    move-result v1

    if-ge v2, v1, :cond_aa

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bS;->a(I)Lcom/google/googlenav/bV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bV;->c()Lcom/google/googlenav/bP;

    move-result-object v6

    if-eqz v6, :cond_a6

    iget-object v6, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v6, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bV;)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v8}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v9}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x3

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v9, 0x3f80

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Y;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v5, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_a6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2a

    :cond_aa
    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v4
.end method
