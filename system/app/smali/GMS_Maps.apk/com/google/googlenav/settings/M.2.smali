.class Lcom/google/googlenav/settings/M;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/googlenav/settings/M;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/M;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter

    .prologue
    .line 556
    sget-object v0, Lcom/google/googlenav/prefetch/android/g;->a:Lcom/google/googlenav/prefetch/android/g;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;)V

    .line 557
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 562
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/N;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/N;-><init>(Lcom/google/googlenav/settings/M;)V

    invoke-virtual {v0, v1}, Laz/a;->a(Laz/m;)V

    .line 573
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->d()V

    .line 577
    :goto_1e
    const/4 v0, 0x0

    return-object v0

    .line 575
    :cond_20
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->f()V

    goto :goto_1e
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4
    .parameter

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/google/googlenav/settings/M;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 585
    :try_start_a
    iget-object v0, p0, Lcom/google/googlenav/settings/M;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 586
    iget-object v0, p0, Lcom/google/googlenav/settings/M;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->d(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    .line 588
    :cond_17
    monitor-exit v1

    .line 589
    return-void

    .line 588
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 553
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/M;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/M;->a(Ljava/lang/Void;)V

    return-void
.end method
