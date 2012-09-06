.class Lm/s;
.super Lm/f;
.source "SourceFile"


# instance fields
.field final synthetic c:Lm/o;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Lm/b;


# direct methods
.method constructor <init>(Lm/o;Lm/c;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 564
    iput-object p1, p0, Lm/s;->c:Lm/o;

    .line 565
    const-string v0, "driveabout_base_location"

    invoke-direct {p0, v0, p2}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 566
    invoke-static {p1}, Lm/o;->a(Lm/o;)Lm/w;

    move-result-object v0

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p1}, Lm/o;->a(Lm/o;)Lm/w;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Lm/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lm/s;->d:Z

    .line 571
    iput v1, p0, Lm/s;->e:I

    .line 572
    return-void

    .line 566
    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lm/s;->c:Lm/o;

    invoke-static {v0}, Lm/o;->a(Lm/o;)Lm/w;

    move-result-object v0

    invoke-interface {v0}, Lm/w;->a()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lm/s;->c:Lm/o;

    invoke-static {v0}, Lm/o;->a(Lm/o;)Lm/w;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Lm/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_21
    iput-boolean v0, p0, Lm/s;->d:Z

    .line 580
    return-void

    .line 577
    :cond_24
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Lm/s;->f:Z

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 587
    iget-boolean v0, p0, Lm/s;->d:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lm/s;->e:I

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
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 593
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 596
    invoke-virtual {p0}, Lm/s;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 627
    :cond_13
    :goto_13
    return-void

    .line 600
    :cond_14
    const-string v2, "driveabout_gps_fixup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 603
    iput-boolean v1, p0, Lm/s;->d:Z

    .line 604
    const/4 v0, 0x2

    iput v0, p0, Lm/s;->e:I

    .line 607
    iget-boolean v0, p0, Lm/s;->f:Z

    if-eqz v0, :cond_59

    invoke-static {}, Lm/o;->b()F

    move-result v0

    .line 609
    :goto_29
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_5e

    move v0, v1

    .line 611
    :goto_38
    if-nez v0, :cond_3e

    iget-boolean v2, p0, Lm/s;->f:Z

    if-nez v2, :cond_13

    .line 618
    :cond_3e
    iput-boolean v0, p0, Lm/s;->f:Z

    .line 621
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lm/s;->g:Lm/b;

    .line 622
    iget-object v0, p0, Lm/s;->g:Lm/b;

    invoke-virtual {v0, v1}, Lm/b;->a(Z)V

    .line 623
    iget-object v0, p0, Lm/s;->g:Lm/b;

    iget-boolean v1, p0, Lm/s;->f:Z

    invoke-virtual {v0, v1}, Lm/b;->b(Z)V

    .line 624
    iget-object p1, p0, Lm/s;->g:Lm/b;

    .line 626
    :cond_55
    invoke-super {p0, p1}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_13

    .line 607
    :cond_59
    invoke-static {}, Lm/o;->a()F

    move-result v0

    goto :goto_29

    .line 609
    :cond_5e
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 631
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 632
    iput-boolean v1, p0, Lm/s;->d:Z

    .line 633
    iput-boolean v1, p0, Lm/s;->f:Z

    .line 635
    :cond_d
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 639
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/s;->d:Z

    .line 642
    :cond_b
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 651
    iput p2, p0, Lm/s;->e:I

    .line 652
    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm/s;->f:Z

    .line 656
    :cond_10
    return-void
.end method
