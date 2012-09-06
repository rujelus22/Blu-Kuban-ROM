.class public Lm/C;
.super Lm/f;
.source "SourceFile"


# instance fields
.field private final c:LaB/f;

.field private final d:LaB/f;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Lm/c;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v0, "driveabout_orientation_filter"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 26
    new-instance v0, LaB/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LaB/f;-><init>(Z)V

    iput-object v0, p0, Lm/C;->c:LaB/f;

    .line 27
    new-instance v0, LaB/f;

    invoke-direct {v0, v2}, LaB/f;-><init>(Z)V

    iput-object v0, p0, Lm/C;->d:LaB/f;

    .line 31
    iput-boolean v2, p0, Lm/C;->f:Z

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lm/C;->g:F

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lm/D;)V
    .registers 7
    .parameter

    .prologue
    .line 52
    new-instance v1, Lm/D;

    invoke-direct {v1, p1}, Lm/D;-><init>(Lm/D;)V

    .line 53
    const-string v0, "driveabout_orientation_filter"

    invoke-virtual {v1, v0}, Lm/D;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lm/D;->c()F

    move-result v2

    .line 56
    iget-boolean v0, p0, Lm/C;->f:Z

    if-eqz v0, :cond_64

    const/high16 v0, 0x41f0

    .line 58
    :goto_14
    iget-object v3, p0, Lm/C;->e:Landroid/location/Location;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lm/C;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, p0, Lm/C;->g:F

    const v4, 0x3e4ccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_67

    iget-object v3, p0, Lm/C;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3, v2}, Ln/S;->a(FF)F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_67

    .line 62
    iget-object v0, p0, Lm/C;->c:LaB/f;

    invoke-virtual {p1}, Lm/D;->b()J

    move-result-wide v2

    iget-object v4, p0, Lm/C;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaB/f;->a(JF)F

    move-result v0

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lm/C;->f:Z

    .line 71
    :goto_4a
    invoke-virtual {v1, v0}, Lm/D;->a(F)V

    .line 72
    iget-object v0, p0, Lm/C;->d:LaB/f;

    invoke-virtual {p1}, Lm/D;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lm/D;->d()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaB/f;->a(JF)F

    move-result v0

    invoke-virtual {v1, v0}, Lm/D;->b(F)V

    .line 74
    iget-object v0, p0, Lm/C;->b:Lm/c;

    invoke-interface {v0, v1}, Lm/c;->a(Lm/D;)V

    .line 75
    return-void

    .line 56
    :cond_64
    const/high16 v0, 0x41c8

    goto :goto_14

    .line 66
    :cond_67
    iget-object v0, p0, Lm/C;->c:LaB/f;

    invoke-virtual {p1}, Lm/D;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lm/D;->c()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LaB/f;->a(JF)F

    move-result v0

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lm/C;->f:Z

    goto :goto_4a
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lm/C;->e:Landroid/location/Location;

    .line 45
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lm/C;->g:F

    .line 48
    :cond_e
    return-void
.end method
