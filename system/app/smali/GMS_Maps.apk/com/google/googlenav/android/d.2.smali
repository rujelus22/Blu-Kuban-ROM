.class public Lcom/google/googlenav/android/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/C;


# instance fields
.field private a:Lcom/google/googlenav/android/B;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Lcom/google/android/maps/driveabout/vector/dI;
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->g()Lat/p;

    move-result-object v0

    .line 70
    instance-of v1, v0, Lau/a;

    if-nez v1, :cond_12

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_11
    return-object v0

    .line 73
    :cond_12
    check-cast v0, Lau/a;

    invoke-virtual {v0}, Lau/a;->w()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    goto :goto_11
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 178
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(FZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/googlenav/android/D;->c()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v6

    .line 92
    if-nez v6, :cond_8

    .line 121
    :goto_7
    return-void

    .line 95
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v0

    .line 97
    if-nez p2, :cond_3e

    .line 114
    :goto_12
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lan/h;->i()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 116
    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-static {v0}, Lan/s;->b(Landroid/location/Location;)I

    move-result v0

    int-to-float v4, v0

    .line 118
    :goto_25
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 120
    if-eqz p3, :cond_45

    const/16 v1, 0x190

    :goto_3a
    invoke-virtual {v6, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_7

    .line 101
    :cond_3e
    cmpl-float v1, v0, v3

    if-nez v1, :cond_49

    .line 104
    const/high16 v3, 0x4248

    goto :goto_12

    .line 120
    :cond_45
    const/4 v1, 0x0

    goto :goto_3a

    :cond_47
    move v4, p1

    goto :goto_25

    :cond_49
    move v3, v0

    goto :goto_12
.end method

.method public a(Lat/v;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/u;->a(Lat/v;)V

    .line 45
    return-void
.end method

.method public a(Lcom/google/googlenav/android/B;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/B;

    .line 39
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/D;->b(Z)I

    move-result v0

    .line 136
    iget v1, p0, Lcom/google/googlenav/android/D;->b:I

    if-ne v0, v1, :cond_9

    .line 145
    :cond_8
    :goto_8
    return-void

    .line 139
    :cond_9
    iput v0, p0, Lcom/google/googlenav/android/D;->b:I

    .line 141
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/android/D;->b:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(I)V

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/B;

    if-eqz v0, :cond_8

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/B;

    invoke-interface {v0}, Lcom/google/googlenav/android/B;->a()V

    goto :goto_8
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->g()Lat/p;

    move-result-object v0

    .line 81
    instance-of v2, v0, Lau/a;

    if-eqz v2, :cond_1c

    .line 82
    check-cast v0, Lau/a;

    invoke-virtual {v0}, Lau/a;->w()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->i()Z

    move-result v0

    .line 85
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public b(Z)I
    .registers 3
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/googlenav/android/D;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/googlenav/android/D;->d()Z

    move-result v0

    if-nez v0, :cond_e

    .line 155
    :cond_c
    const/4 v0, 0x3

    .line 161
    :goto_d
    return v0

    .line 156
    :cond_e
    if-nez p1, :cond_12

    .line 157
    const/4 v0, 0x4

    goto :goto_d

    .line 159
    :cond_12
    const/4 v0, 0x5

    goto :goto_d
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 169
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->j()Z

    move-result v0

    return v0
.end method
