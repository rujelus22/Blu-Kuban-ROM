.class public Lm/E;
.super Lm/f;
.source "SourceFile"

# interfaces
.implements Lm/d;


# instance fields
.field private c:Lo/x;

.field private d:I


# direct methods
.method constructor <init>(Lm/c;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    const-string v0, "driveabout_polyline_snapping"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lm/E;->d:I

    .line 40
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "driveabout_polyline_snapping"

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lm/E;->d:I

    .line 84
    return-void
.end method

.method public a(Lo/x;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lm/E;->c:Lo/x;

    .line 79
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9
    .parameter

    .prologue
    .line 45
    move-object v0, p1

    check-cast v0, Lm/b;

    iget v1, p0, Lm/E;->d:I

    invoke-virtual {v0, v1}, Lm/b;->b(I)V

    .line 48
    iget-object v0, p0, Lm/E;->c:Lo/x;

    if-nez v0, :cond_10

    .line 49
    invoke-super {p0, p1}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    .line 74
    :goto_f
    return-void

    .line 54
    :cond_10
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ln/Q;->a(D)D

    move-result-wide v0

    .line 55
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v2

    .line 56
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lt/k;->E()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    .line 59
    iget-object v4, p0, Lm/E;->c:Lo/x;

    float-to-double v5, v3

    mul-double/2addr v0, v5

    invoke-virtual {v4, v2, v0, v1}, Lo/x;->a(Ln/Q;D)Lo/B;

    move-result-object v0

    .line 64
    new-instance v1, Lm/b;

    invoke-direct {v1, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 65
    if-eqz v0, :cond_55

    .line 66
    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v1, v2, v3}, Lm/b;->a(D)V

    .line 67
    invoke-virtual {v0}, Lo/B;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lm/b;->setBearing(F)V

    .line 68
    invoke-virtual {v1, v0}, Lm/b;->a(Lo/B;)V

    .line 73
    :goto_51
    invoke-super {p0, v1}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_f

    .line 70
    :cond_55
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lm/b;->a(D)V

    goto :goto_51
.end method
