.class public Lcom/google/googlenav/ui/view/android/n;
.super Lcom/google/googlenav/ui/view/android/o;


# instance fields
.field private c:Lbc/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/view/android/n;->b()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/o;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method

.method private a(Lbb/o;Landroid/view/ViewGroup;Lau/v;Lbc/d;)Landroid/view/View;
    .registers 15

    const/4 v9, 0x1

    const/4 v6, 0x0

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0f0071

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move v7, v6

    :goto_15
    invoke-virtual {p1}, Lbb/o;->g()I

    move-result v0

    if-ge v7, v0, :cond_73

    invoke-virtual {p1, v7}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v1

    instance-of v0, v1, Lcom/google/googlenav/ui/aU;

    if-nez v0, :cond_5a

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03009d

    invoke-virtual {v0, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/android/TemplateView;->setFocusable(Z)V

    const v2, 0x7f0201ba

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/n;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_53
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_56
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_15

    :cond_5a
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/n;->f:Lcom/google/googlenav/ui/p;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v5

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;-><init>(Landroid/content/Context;Lau/v;Lbc/d;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/x;Z)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_56

    :cond_73
    return-object v8
.end method

.method public static a(Lbb/o;)Lau/v;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lbb/o;->g()I

    move-result v0

    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Lbb/o;->a(I)Lcom/google/googlenav/ui/bl;

    move-result-object v0

    instance-of v2, v0, Lcom/google/googlenav/ui/aU;

    if-eqz v2, :cond_15

    check-cast v0, Lcom/google/googlenav/ui/aU;

    iget-object v0, v0, Lcom/google/googlenav/ui/aU;->a:Lau/v;

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private a(Lbb/o;Landroid/widget/ListView;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/n;->a(Lbb/o;)Lau/v;

    move-result-object v0

    new-instance v1, Lbc/e;

    invoke-direct {v1, v0}, Lbc/e;-><init>(Lau/v;)V

    invoke-virtual {v1}, Lbc/e;->a()Lbc/d;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/n;->c:Lbc/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/n;->c:Lbc/d;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ui/view/android/n;->a(Lbb/o;Landroid/view/ViewGroup;Lau/v;Lbc/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/google/googlenav/ui/view/android/n;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->k()Lbb/o;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/n;->d(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/n;->b(Landroid/widget/ListView;Lbb/o;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/googlenav/ui/view/android/n;->a(Landroid/view/LayoutInflater;Lbb/o;Landroid/widget/AbsListView;)Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/n;->b(Lbb/o;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/n;->a(Lbb/o;Landroid/widget/ListView;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/n;->a(Landroid/widget/ListView;Lbb/o;)V

    goto :goto_1b
.end method

.method private b(Lbb/o;)Z
    .registers 4

    if-eqz p1, :cond_a

    iget v0, p1, Lbb/o;->c:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c(Landroid/view/View;)V
    .registers 12

    const v9, 0x7f0d003d

    const v8, 0x7f0d003c

    const/4 v7, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/n;->d(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->k()Lbb/o;

    move-result-object v0

    iget-object v0, v0, Lbb/o;->h:Lbb/n;

    check-cast v0, Lbb/j;

    const v1, 0x7f0f0133

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;

    const v2, 0x7f0f0207

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v4, v0, Lbb/j;->e:Z

    if-nez v4, :cond_30

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->setVisibility(I)V

    :goto_2f
    return-void

    :cond_30
    iget-object v4, v0, Lbb/j;->k:Lcom/google/googlenav/ui/bl;

    if-eqz v4, :cond_44

    iget-object v0, v0, Lbb/j;->k:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    const v0, 0x7f0f020c

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2f

    :cond_44
    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0208

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lbb/j;->j:Ljava/lang/String;

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_cd

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lbb/j;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_63
    iget v1, v0, Lbb/j;->f:I

    iget v2, v0, Lbb/j;->i:I

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0f0166

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v4

    invoke-virtual {v4, v2, v8, v9}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v0, Lbb/j;->f:I

    if-nez v2, :cond_86

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_86
    const v1, 0x7f0f0209

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f020a

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v4

    iget v5, v0, Lbb/j;->g:I

    invoke-static {v5}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lbb/j;->h:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d1

    iget-object v1, v0, Lbb/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b9
    const v1, 0x7f0f020b

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/android/TemplateView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/TemplateView;->a(Z)V

    iget-object v0, v0, Lbb/j;->a:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    goto/16 :goto_2f

    :cond_cd
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63

    :cond_d1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b9
.end method

.method private n()Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;
    .registers 6

    const/4 v3, 0x0

    const v2, 0x7f0f0071

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->x()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_12

    move-object v0, v3

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_32

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    if-eqz v4, :cond_2e

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    goto :goto_11

    :cond_2e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    :cond_32
    move-object v0, v3

    goto :goto_11
.end method


# virtual methods
.method protected H_()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->k()Lbb/o;

    move-result-object v0

    invoke-virtual {v0}, Lbb/o;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->x()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Lbb/o;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/n;->a(Landroid/view/View;)V

    :cond_18
    invoke-virtual {v0}, Lbb/o;->c()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->I_()V

    :cond_21
    invoke-virtual {v0}, Lbb/o;->f()V

    goto :goto_a
.end method

.method protected N_()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/n;->a:Lbb/f;

    iget-object v1, v1, Lbb/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/n;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->x()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->k()Lbb/o;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/n;->b(Lbb/o;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/n;->n()Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a()I

    move-result v1

    sget v2, Lcom/google/googlenav/ui/view/android/n;->b:I

    sub-int v1, v2, v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_23
    sget v1, Lcom/google/googlenav/ui/view/android/n;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/n;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/n;->b(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/n;->c(Landroid/view/View;)V

    return-object v0
.end method
