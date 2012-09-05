.class Lcom/google/android/maps/driveabout/app/J;
.super Lcom/google/android/maps/driveabout/app/P;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/P;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cp;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/cp;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Law/g;->a(Law/e;Lcom/google/googlenav/android/ac;)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/J;->c()Lcom/google/android/maps/driveabout/app/S;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/S;)Lcom/google/android/maps/driveabout/app/S;

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/J;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->invalidateOptionsMenu()V

    return-void
.end method
