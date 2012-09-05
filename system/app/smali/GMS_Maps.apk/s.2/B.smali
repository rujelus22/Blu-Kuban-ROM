.class public Ls/B;
.super Ls/f;


# instance fields
.field private final c:LaP/f;

.field private final d:LaP/f;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Ls/c;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "driveabout_orientation_filter"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    new-instance v0, LaP/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LaP/f;-><init>(Z)V

    iput-object v0, p0, Ls/B;->c:LaP/f;

    new-instance v0, LaP/f;

    invoke-direct {v0, v2}, LaP/f;-><init>(Z)V

    iput-object v0, p0, Ls/B;->d:LaP/f;

    iput-boolean v2, p0, Ls/B;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Ls/B;->g:F

    return-void
.end method


# virtual methods
.method public a(Ls/C;)V
    .registers 7

    new-instance v1, Ls/C;

    invoke-direct {v1, p1}, Ls/C;-><init>(Ls/C;)V

    const-string v0, "driveabout_orientation_filter"

    invoke-virtual {v1, v0}, Ls/C;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ls/C;->c()F

    move-result v2

    iget-boolean v0, p0, Ls/B;->f:Z

    if-eqz v0, :cond_64

    const/high16 v0, 0x41f0

    :goto_14
    iget-object v3, p0, Ls/B;->e:Landroid/location/Location;

    if-eqz v3, :cond_67

    iget-object v3, p0, Ls/B;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, p0, Ls/B;->g:F

    const v4, 0x3e4ccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_67

    iget-object v3, p0, Ls/B;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3, v2}, Lt/N;->a(FF)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_67

    iget-object v0, p0, Ls/B;->c:LaP/f;

    invoke-virtual {p1}, Ls/C;->b()J

    move-result-wide v2

    iget-object v4, p0, Ls/B;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaP/f;->a(JF)F

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Ls/B;->f:Z

    :goto_4a
    invoke-virtual {v1, v0}, Ls/C;->a(F)V

    iget-object v0, p0, Ls/B;->d:LaP/f;

    invoke-virtual {p1}, Ls/C;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Ls/C;->d()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaP/f;->a(JF)F

    move-result v0

    invoke-virtual {v1, v0}, Ls/C;->b(F)V

    iget-object v0, p0, Ls/B;->b:Ls/c;

    invoke-interface {v0, v1}, Ls/c;->a(Ls/C;)V

    return-void

    :cond_64
    const/high16 v0, 0x41c8

    goto :goto_14

    :cond_67
    iget-object v0, p0, Ls/B;->c:LaP/f;

    invoke-virtual {p1}, Ls/C;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Ls/C;->c()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaP/f;->a(JF)F

    move-result v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Ls/B;->f:Z

    goto :goto_4a
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Ls/B;->e:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Ls/B;->g:F

    :cond_e
    return-void
.end method
