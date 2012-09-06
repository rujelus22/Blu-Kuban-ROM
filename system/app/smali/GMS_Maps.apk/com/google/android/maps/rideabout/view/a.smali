.class public Lcom/google/android/maps/rideabout/view/a;
.super Lcom/google/googlenav/ui/view/H;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private final b:Lcom/google/googlenav/ui/android/ButtonContainer;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/H;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    .line 34
    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    .line 35
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    .line 45
    if-nez v0, :cond_1a

    .line 46
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f100058

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setMeasureAllChildren(Z)V

    .line 49
    :cond_1a
    return-void
.end method

.method private n()Landroid/widget/ViewSwitcher;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f100451

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private o()Landroid/view/View;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private p()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 119
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

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->m()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/a;->b()V

    .line 41
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)Z
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    .line 90
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    .line 57
    if-nez v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->b:Lcom/google/googlenav/ui/android/ButtonContainer;

    const v1, 0x7f100073

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_13
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/rideabout/view/b;

    invoke-direct {v2, p0, v0}, Lcom/google/android/maps/rideabout/view/b;-><init>(Lcom/google/android/maps/rideabout/view/a;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/a;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public g()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->o()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object v0
.end method

.method public h()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->n()Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 115
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

    .prologue
    .line 124
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 125
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 130
    :goto_15
    return v0

    .line 126
    :cond_16
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->i()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 128
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v0

    goto :goto_15

    .line 130
    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public k()I
    .registers 3

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/a;->p()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
