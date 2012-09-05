.class Lcom/google/googlenav/settings/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lax/aO;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/i;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/settings/i;-><init>(Lcom/google/googlenav/settings/h;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/settings/q;->a()V

    :cond_23
    return-void
.end method
