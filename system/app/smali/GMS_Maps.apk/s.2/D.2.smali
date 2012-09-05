.class public Ls/D;
.super Ls/f;

# interfaces
.implements Ls/d;


# instance fields
.field private c:Lu/x;

.field private d:I


# direct methods
.method constructor <init>(Ls/c;)V
    .registers 3

    const-string v0, "driveabout_polyline_snapping"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    const/4 v0, 0x2

    iput v0, p0, Ls/D;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "driveabout_polyline_snapping"

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Ls/D;->d:I

    return-void
.end method

.method public a(Lu/x;)V
    .registers 2

    iput-object p1, p0, Ls/D;->c:Lu/x;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9

    move-object v0, p1

    check-cast v0, Ls/b;

    iget v1, p0, Ls/D;->d:I

    invoke-virtual {v0, v1}, Ls/b;->b(I)V

    iget-object v0, p0, Ls/D;->c:Lu/x;

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt/L;->a(D)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v2

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v3

    invoke-virtual {v3}, Lz/l;->E()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Ls/D;->c:Lu/x;

    float-to-double v5, v3

    mul-double/2addr v0, v5

    invoke-virtual {v4, v2, v0, v1}, Lu/x;->a(Lt/L;D)Lu/B;

    move-result-object v0

    new-instance v1, Ls/b;

    invoke-direct {v1, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    if-eqz v0, :cond_55

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v1, v2, v3}, Ls/b;->a(D)V

    invoke-virtual {v0}, Lu/B;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ls/b;->setBearing(F)V

    invoke-virtual {v1, v0}, Ls/b;->a(Lu/B;)V

    :goto_51
    invoke-super {p0, v1}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_f

    :cond_55
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ls/b;->a(D)V

    goto :goto_51
.end method
