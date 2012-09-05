.class public abstract LaE/b;
.super LaE/c;


# instance fields
.field protected final b:Landroid/location/LocationManager;


# direct methods
.method protected constructor <init>(ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2}, LaE/c;-><init>(ZZ)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->B()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, LaE/b;->b:Landroid/location/LocationManager;

    return-void
.end method

.method protected static b(Landroid/location/Location;)Lt/y;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->w()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "levelNumberE3"

    const/high16 v4, -0x8000

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_b

    invoke-static {v2}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v0, Lt/y;

    invoke-direct {v0, v2, v1}, Lt/y;-><init>(Lt/r;I)V

    goto :goto_b
.end method


# virtual methods
.method protected h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, LaE/b;->k()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, LaE/b;->j()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, LaE/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaE/b;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, LaE/b;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaE/b;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
