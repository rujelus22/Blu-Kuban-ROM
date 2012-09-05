.class Lcom/google/googlenav/settings/J;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/J;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/E;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/J;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    sget-object v0, Lcom/google/googlenav/prefetch/android/d;->a:Lcom/google/googlenav/prefetch/android/d;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/d;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->f()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/googlenav/settings/J;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/settings/J;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/J;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/settings/J;->a(Ljava/lang/Void;)V

    return-void
.end method
