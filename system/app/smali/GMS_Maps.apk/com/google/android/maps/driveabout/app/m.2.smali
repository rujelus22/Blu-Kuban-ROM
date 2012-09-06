.class Lcom/google/android/maps/driveabout/app/M;
.super Lcom/google/android/maps/driveabout/app/I;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/I;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/M;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 423
    invoke-super {p0}, Lcom/google/android/maps/driveabout/app/I;->a()V

    .line 426
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f1000dc

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 427
    if-nez v0, :cond_11

    .line 439
    :goto_10
    return-void

    .line 430
    :cond_11
    new-instance v1, Lcom/google/android/maps/driveabout/widgets/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v3}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ad;

    move-result-object v3

    new-instance v4, Lcom/google/android/maps/driveabout/app/K;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {v4, v5}, Lcom/google/android/maps/driveabout/app/K;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/widgets/a;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;Lcom/google/android/maps/driveabout/app/K;)V

    .line 432
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/x;)V

    .line 433
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 434
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/M;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/bL;

    goto :goto_10
.end method

.method public a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 444
    const v0, 0x7f1004b7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 448
    const v0, 0x7f1004b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 449
    return-void
.end method
