.class Lcom/google/googlenav/ui/android/Z;
.super Lcom/google/googlenav/ui/android/ab;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ab;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/Z;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/google/googlenav/bV;Z)Landroid/view/View;
    .registers 13

    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->c()Lcom/google/googlenav/bP;

    move-result-object v0

    if-eqz v0, :cond_110

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v4

    if-ge v0, v4, :cond_41

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/bP;->a()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_30

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    invoke-virtual {v4}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_110

    const/16 v0, 0x1d9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00a4

    invoke-direct {v0, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0202e9

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d()I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3, v0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    const-string v3, ")"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d00a6

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_10b

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_10a
    return-object v0

    :cond_10b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v2

    goto :goto_10a

    :cond_110
    iget-object v0, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10a
.end method

.method private a(Lcom/google/googlenav/bV;Landroid/widget/LinearLayout;Z)V
    .registers 9

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3b

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v4}, Lcom/google/googlenav/ui/android/Z;->a(Lcom/google/googlenav/bV;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/Z;->a(Lcom/google/googlenav/bV;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Z;->b:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1, v0, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

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

    invoke-direct {p0, v5, v4, v6}, Lcom/google/googlenav/ui/android/Z;->a(Lcom/google/googlenav/bV;Landroid/widget/LinearLayout;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_44
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/Z;->a:Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;

    iget v0, v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c:I

    sget v1, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    add-int/2addr v0, v1

    invoke-virtual {v4, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v3
.end method
