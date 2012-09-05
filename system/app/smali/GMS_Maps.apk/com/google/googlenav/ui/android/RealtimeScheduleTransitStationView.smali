.class public Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;
.super Lcom/google/googlenav/ui/android/TransitStationView;

# interfaces
.implements Lcom/google/googlenav/bQ;


# static fields
.field public static final a:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xc

    const/16 v2, 0xa

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->f:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->g:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 6

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030170

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)Lcom/google/googlenav/android/c;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i()Lcom/google/googlenav/android/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/bR;Landroid/widget/LinearLayout;)V
    .registers 8

    const/4 v4, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->f:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->a()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080006

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->b()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080001

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080028

    new-instance v3, Lcom/google/googlenav/ui/android/V;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/android/V;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/bR;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    :cond_7c
    return-void
.end method

.method private b(Lcom/google/googlenav/bN;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->c(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->d(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e(Lcom/google/googlenav/bN;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V
    .registers 9

    const v5, 0x7f0f03e5

    const v4, 0x7f0f03e4

    const/16 v3, 0x8

    const/4 v1, 0x0

    const v0, 0x7f0f03e6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v2

    if-lez v2, :cond_55

    const/16 v2, 0x27d

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f03e3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_39
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v2

    if-ge v1, v2, :cond_64

    invoke-virtual {p1, v1}, Lcom/google/googlenav/bN;->d(I)Lcom/google/googlenav/bN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bN;->g()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08001d

    new-instance v5, Lcom/google/googlenav/ui/android/W;

    invoke-direct {v5, p0, v2, p2}, Lcom/google/googlenav/ui/android/W;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_55
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_64
    return-void
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h:I

    return v0
.end method

.method private c(Lcom/google/googlenav/bN;)V
    .registers 9

    const v6, 0x7f0f03d6

    const/16 v5, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0f03d4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03d5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->j()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_30

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void

    :cond_30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x36

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_47
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->j()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->c(I)Lcom/google/googlenav/bR;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bR;Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->g:I

    return v0
.end method

.method private d(Lcom/google/googlenav/bN;)V
    .registers 11

    const v8, 0x7f0f03dd

    const v7, 0x7f0f03d9

    const v6, 0x7f0f03d7

    const/16 v5, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    move v0, v2

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_2b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->a()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const v0, 0x7f0f03dc

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_cc

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0f03de

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x4d4

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0f03da

    invoke-virtual {p0, v4, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    const v3, 0x7f0f03db

    const/16 v4, 0x1d7

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    const/16 v3, 0x1ef

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    new-instance v3, Lcom/google/googlenav/ui/android/Y;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/ui/android/Y;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    const v0, 0x7f0f03d8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j:I

    invoke-direct {v1, v3, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView$RealtimePulseImageView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    const v3, 0x7f0202e9

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->i:I

    sget v5, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->j:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_cb
    return-void

    :cond_cc
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f03de

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_cb
.end method

.method private e(Lcom/google/googlenav/bN;)V
    .registers 10

    const v7, 0x7f0f03e2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    :goto_10
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->h()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    const v0, 0x7f0f03e1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    const v3, 0x7f0f03df

    const/16 v4, 0x4d5

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    new-instance v3, Lcom/google/googlenav/ui/android/Z;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/android/Z;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    const v1, 0x7f0f03e0

    const/16 v2, 0x408

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    if-ge v0, v5, :cond_62

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v0

    if-ge v0, v5, :cond_62

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/google/googlenav/android/c;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bV;)Ljava/lang/CharSequence;
    .registers 11

    const/4 v0, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v1, v0

    :goto_7
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4d

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v3

    if-ge v1, v3, :cond_4d

    invoke-virtual {p1, v1}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->a()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-lez v0, :cond_21

    const-string v4, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d00a4

    invoke-direct {v3, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e:Lcom/google/googlenav/bN;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b(Lcom/google/googlenav/bN;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    const v0, 0x7f0f022e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p1, p0}, Lcom/google/googlenav/bN;->b(Lcom/google/googlenav/bQ;)V

    const/16 v0, 0x54

    const-string v1, "ts"

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b(Lcom/google/googlenav/bN;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->b(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    return-void
.end method

.method protected b()V
    .registers 3

    const v0, 0x7f0f03e3

    const/16 v1, 0x4d3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ac()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/googlenav/z;->c:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/ui/android/U;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/U;-><init>(Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/android/RealtimeScheduleTransitStationView;->e:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->e()V

    goto :goto_22
.end method
