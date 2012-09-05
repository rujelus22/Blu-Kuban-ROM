.class Ls/r;
.super Ls/f;


# instance fields
.field final synthetic c:Ls/o;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Ls/b;


# direct methods
.method constructor <init>(Ls/o;Ls/c;)V
    .registers 6

    const/4 v1, 0x1

    iput-object p1, p0, Ls/r;->c:Ls/o;

    const-string v0, "driveabout_base_location"

    invoke-direct {p0, v0, p2}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    invoke-static {p1}, Ls/o;->a(Ls/o;)Ls/v;

    move-result-object v0

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Ls/o;->a(Ls/o;)Ls/v;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ls/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Ls/r;->d:Z

    iput v1, p0, Ls/r;->e:I

    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Ls/r;->c:Ls/o;

    invoke-static {v0}, Ls/o;->a(Ls/o;)Ls/v;

    move-result-object v0

    invoke-interface {v0}, Ls/v;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ls/r;->c:Ls/o;

    invoke-static {v0}, Ls/o;->a(Ls/o;)Ls/v;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ls/v;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, Ls/r;->d:Z

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Ls/r;->f:Z

    return v0
.end method

.method public c()Z
    .registers 3

    iget-boolean v0, p0, Ls/r;->d:Z

    if-eqz v0, :cond_b

    iget v0, p0, Ls/r;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Ls/r;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string v2, "driveabout_gps_fixup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iput-boolean v1, p0, Ls/r;->d:Z

    const/4 v0, 0x2

    iput v0, p0, Ls/r;->e:I

    iget-boolean v0, p0, Ls/r;->f:Z

    if-eqz v0, :cond_59

    invoke-static {}, Ls/o;->b()F

    move-result v0

    :goto_29
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5e

    move v0, v1

    :goto_38
    if-nez v0, :cond_3e

    iget-boolean v2, p0, Ls/r;->f:Z

    if-nez v2, :cond_13

    :cond_3e
    iput-boolean v0, p0, Ls/r;->f:Z

    new-instance v0, Ls/b;

    invoke-direct {v0, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Ls/r;->g:Ls/b;

    iget-object v0, p0, Ls/r;->g:Ls/b;

    invoke-virtual {v0, v1}, Ls/b;->a(Z)V

    iget-object v0, p0, Ls/r;->g:Ls/b;

    iget-boolean v1, p0, Ls/r;->f:Z

    invoke-virtual {v0, v1}, Ls/b;->b(Z)V

    iget-object p1, p0, Ls/r;->g:Ls/b;

    :cond_55
    invoke-super {p0, p1}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_13

    :cond_59
    invoke-static {}, Ls/o;->a()F

    move-result v0

    goto :goto_29

    :cond_5e
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Ls/r;->d:Z

    iput-boolean v1, p0, Ls/r;->f:Z

    :cond_d
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 3

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/r;->d:Z

    :cond_b
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput p2, p0, Ls/r;->e:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/r;->f:Z

    :cond_10
    return-void
.end method
