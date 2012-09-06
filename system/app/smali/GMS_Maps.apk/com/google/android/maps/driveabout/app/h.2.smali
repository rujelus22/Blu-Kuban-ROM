.class Lcom/google/android/maps/driveabout/app/H;
.super Lcom/google/android/maps/driveabout/app/O;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/O;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/H;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 385
    new-instance v0, Lcom/google/android/maps/driveabout/app/cd;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/cd;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lag/h;->b(Lag/e;Lcom/google/googlenav/android/Y;)V

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_50

    const/4 v0, 0x1

    .line 389
    :goto_22
    invoke-static {}, Lag/h;->b()Lag/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_38
    invoke-virtual {v1, v2, v3, v0}, Lag/h;->a(Landroid/app/ActionBar;Lag/g;Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/H;->c()Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/R;)Lcom/google/android/maps/driveabout/app/R;

    .line 396
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/bL;)Lcom/google/android/maps/driveabout/app/bL;

    .line 397
    return-void

    .line 388
    :cond_50
    const/4 v0, 0x0

    goto :goto_22

    .line 389
    :cond_52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    goto :goto_38
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    .line 380
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/H;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->invalidateOptionsMenu()V

    .line 402
    return-void
.end method
