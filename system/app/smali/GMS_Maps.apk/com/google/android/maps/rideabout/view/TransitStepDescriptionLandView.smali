.class public Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;
.super Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;


# instance fields
.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03f5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->h:Landroid/widget/TextView;

    const/16 v1, 0x3ea

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;->g()V

    return-void
.end method

.method protected e()I
    .registers 2

    const v0, 0x7f030188

    return v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "x %s"

    return-object v0
.end method
