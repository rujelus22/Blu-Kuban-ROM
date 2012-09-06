.class Lcom/google/googlenav/settings/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/F;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/F;

    iget-object v0, v0, Lcom/google/googlenav/settings/F;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 408
    :try_start_9
    iget-object v0, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/F;

    iget-object v0, v0, Lcom/google/googlenav/settings/F;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->b(Lcom/google/googlenav/settings/MapTileSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 409
    monitor-exit v1

    .line 415
    :goto_14
    return-void

    .line 412
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/F;

    iget-object v0, v0, Lcom/google/googlenav/settings/F;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->removeDialog(I)V

    .line 413
    iget-object v0, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/F;

    iget-object v0, v0, Lcom/google/googlenav/settings/F;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->showDialog(I)V

    .line 414
    monitor-exit v1

    goto :goto_14

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_27

    throw v0
.end method
