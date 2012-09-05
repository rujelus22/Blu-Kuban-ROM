.class Lcom/google/googlenav/settings/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/E;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/E;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/F;->a:Lcom/google/googlenav/settings/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/settings/F;->a:Lcom/google/googlenav/settings/E;

    iget-object v0, v0, Lcom/google/googlenav/settings/E;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    monitor-exit p0

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/settings/F;->a:Lcom/google/googlenav/settings/E;

    iget-object v0, v0, Lcom/google/googlenav/settings/E;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->showDialog(I)V

    monitor-exit p0

    goto :goto_c

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
