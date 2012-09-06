.class Lcom/google/android/maps/driveabout/app/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/O;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/google/android/maps/driveabout/app/cd;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/cd;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lag/h;->b(Lag/e;Lcom/google/googlenav/android/Y;)V

    .line 303
    invoke-static {}, Lag/h;->b()Lag/h;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lag/h;->a(Landroid/view/View;Lag/g;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f1000d9

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/google/android/maps/driveabout/app/P;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/P;-><init>(Lcom/google/android/maps/driveabout/app/O;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/O;->c()Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/R;)Lcom/google/android/maps/driveabout/app/R;

    .line 318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/bL;

    .line 321
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v2, 0x7f100152

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    .line 322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/Q;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/Q;-><init>(Lcom/google/android/maps/driveabout/app/O;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setTravelModeChangedListener(Lcom/google/android/maps/driveabout/widgets/f;)V

    .line 331
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 351
    const v0, 0x7f1004b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    return-void
.end method

.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f1000d8

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_1b

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibility(I)V

    .line 293
    :goto_1a
    return-void

    .line 290
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->d(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibility(I)V

    goto :goto_1a
.end method

.method public b()V
    .registers 1

    .prologue
    .line 360
    return-void
.end method

.method protected c()Lcom/google/android/maps/driveabout/app/R;
    .registers 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/ca;->c(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZ)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v0

    return-object v0
.end method
