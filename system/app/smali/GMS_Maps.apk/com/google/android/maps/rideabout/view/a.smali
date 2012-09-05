.class public Lcom/google/android/maps/rideabout/view/a;
.super Lbb/B;


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private final b:Lcom/google/googlenav/ui/android/ButtonContainer;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 3

    invoke-direct {p0}, Lbb/B;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-void
.end method

.method private m()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setMeasureAllChildren(Z)V

    :cond_1a
    return-void
.end method

.method private n()Landroid/widget/ViewSwitcher;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f03c1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private o()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f0031

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private p()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/a;->b()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f0f0045

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public c()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/rideabout/view/b;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/rideabout/view/b;-><init>(Lcom/google/android/maps/rideabout/view/a;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public e()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object v0
.end method

.method public h()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    return-object v0
.end method

.method public i()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public j()I
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->an()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->f()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v0

    goto :goto_15

    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public k()I
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
