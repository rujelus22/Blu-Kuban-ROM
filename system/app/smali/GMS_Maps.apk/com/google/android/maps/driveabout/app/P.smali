.class Lcom/google/android/maps/driveabout/app/P;
.super Ljava/lang/Object;


# instance fields
.field final synthetic c:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/P;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/cp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/cp;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Law/g;->a(Law/e;Lcom/google/googlenav/android/ac;)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Law/g;->a(Landroid/view/View;Law/f;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/Q;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/Q;-><init>(Lcom/google/android/maps/driveabout/app/P;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/P;->c()Lcom/google/android/maps/driveabout/app/S;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/S;)Lcom/google/android/maps/driveabout/app/S;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v2, 0x7f0f0127

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/R;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/R;-><init>(Lcom/google/android/maps/driveabout/app/P;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->a(Lcom/google/android/maps/driveabout/widgets/e;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public a(Z)V
    .registers 6

    const v3, 0x7f0f00a8

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibility(I)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->e(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/widgets/TravelModeSelector;->setVisibility(I)V

    goto :goto_1a
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method protected c()Lcom/google/android/maps/driveabout/app/S;
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/ci;->c(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;ZZ)Lcom/google/android/maps/driveabout/app/S;

    move-result-object v0

    return-object v0
.end method
