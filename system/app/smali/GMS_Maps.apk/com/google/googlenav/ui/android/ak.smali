.class Lcom/google/googlenav/ui/android/ak;
.super Lcom/google/googlenav/ui/android/ab;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ab;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ak;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/google/googlenav/bV;Landroid/widget/LinearLayout;Z)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_4b

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v2, p1, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bV;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bV;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Ljava/util/ArrayList;

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
    .registers 11

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v1, v0, v5}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    :goto_30
    invoke-virtual {v0}, Lcom/google/googlenav/bS;->h()I

    move-result v5

    if-ge v1, v5, :cond_44

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bS;->a(I)Lcom/google/googlenav/bV;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlenav/bS;->g()Z

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Lcom/google/googlenav/ui/android/ak;->a(Lcom/google/googlenav/bV;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_44
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ak;->a:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v4, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v3
.end method
