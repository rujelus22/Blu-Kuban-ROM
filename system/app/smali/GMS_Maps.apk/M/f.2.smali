.class public Lm/F;
.super Lm/f;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Lm/b;

.field private f:J

.field private final g:[F

.field private h:I

.field private i:Lt/k;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lm/c;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const-string v0, "da_tunnel_heartbeat"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lm/F;->h:I

    .line 58
    new-instance v0, Lm/G;

    invoke-direct {v0, p0}, Lm/G;-><init>(Lm/F;)V

    iput-object v0, p0, Lm/F;->j:Ljava/lang/Runnable;

    .line 75
    iput-object p2, p0, Lm/F;->c:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lm/F;->d:Lcom/google/googlenav/common/a;

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lm/F;->g:[F

    .line 78
    iget-object v0, p0, Lm/F;->g:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 79
    return-void
.end method

.method static a([F)F
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x4080

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    array-length v4, p0

    move v3, v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_9
    if-ge v3, v4, :cond_17

    aget v5, p0, v3

    .line 213
    cmpl-float v6, v5, v2

    if-eqz v6, :cond_14

    .line 214
    add-float/2addr v0, v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 212
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 218
    :cond_17
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1c

    move v0, v2

    .line 221
    :goto_1b
    return v0

    :cond_1c
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1b
.end method

.method static a(Lm/b;F)Lm/b;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0}, Lm/b;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ln/Q;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 168
    mul-float/2addr v3, p1

    .line 171
    invoke-virtual {p0}, Lm/b;->j()Lo/B;

    move-result-object v4

    .line 172
    if-nez v4, :cond_16

    move-object v0, v2

    .line 200
    :goto_15
    return-object v0

    .line 175
    :cond_16
    invoke-virtual {v4}, Lo/B;->a()Lo/x;

    move-result-object v5

    .line 176
    invoke-virtual {v5, v4}, Lo/x;->a(Lo/B;)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    .line 177
    invoke-virtual {v5}, Lo/x;->n()Ln/U;

    move-result-object v4

    .line 178
    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Lo/x;->a(D)I

    move-result v6

    .line 179
    if-ltz v6, :cond_33

    invoke-virtual {v4}, Ln/U;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_35

    :cond_33
    move-object v0, v2

    .line 180
    goto :goto_15

    .line 184
    :cond_35
    invoke-virtual {v4, v6}, Ln/U;->a(I)Ln/Q;

    move-result-object v7

    .line 185
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v4

    .line 186
    invoke-virtual {v5, v6}, Lo/x;->b(I)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v2, v3, v2

    .line 187
    invoke-virtual {v7, v4}, Ln/Q;->c(Ln/Q;)F

    move-result v3

    div-float/2addr v2, v3

    .line 188
    cmpg-float v3, v2, v0

    if-gez v3, :cond_6f

    .line 193
    :goto_4f
    invoke-virtual {v7, v4, v0}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v1

    .line 196
    new-instance v0, Lm/b;

    invoke-direct {v0, p0}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 197
    invoke-virtual {v1}, Ln/Q;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lm/b;->setLatitude(D)V

    .line 198
    invoke-virtual {v1}, Ln/Q;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lm/b;->setLongitude(D)V

    .line 199
    invoke-static {v7, v4}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lm/b;->setBearing(F)V

    goto :goto_15

    .line 190
    :cond_6f
    cmpl-float v0, v2, v1

    if-lez v0, :cond_75

    move v0, v1

    .line 191
    goto :goto_4f

    :cond_75
    move v0, v2

    goto :goto_4f
.end method

.method public static a(Landroid/location/Location;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    instance-of v1, p0, Lm/b;

    if-nez v1, :cond_6

    .line 128
    :cond_5
    :goto_5
    return v0

    .line 123
    :cond_6
    check-cast p0, Lm/b;

    .line 124
    invoke-virtual {p0}, Lm/b;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    invoke-virtual {p0}, Lm/b;->h()Ln/ac;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ln/ac;->g()Z

    move-result v0

    goto :goto_5
.end method

.method private d()J
    .registers 5

    .prologue
    .line 229
    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Lm/F;->i:Lt/k;

    invoke-virtual {v2}, Lt/k;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lm/F;->c:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lm/F;->c:Landroid/os/Handler;

    iget-object v1, p0, Lm/F;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    :cond_b
    return-void
.end method

.method a(J)V
    .registers 5
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lm/F;->c:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 235
    iget-object v0, p0, Lm/F;->c:Landroid/os/Handler;

    iget-object v1, p0, Lm/F;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lm/F;->c:Landroid/os/Handler;

    iget-object v1, p0, Lm/F;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_12
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 90
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    iput-object v0, p0, Lm/F;->i:Lt/k;

    .line 91
    invoke-direct {p0}, Lm/F;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lm/F;->a(J)V

    .line 92
    return-void
.end method

.method c()V
    .registers 7

    .prologue
    .line 136
    iget-object v0, p0, Lm/F;->e:Lm/b;

    invoke-static {v0}, Lm/F;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    :cond_8
    :goto_8
    return-void

    .line 139
    :cond_9
    iget-object v0, p0, Lm/F;->g:[F

    invoke-static {v0}, Lm/F;->a([F)F

    move-result v0

    .line 140
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_8

    .line 146
    iget-object v1, p0, Lm/F;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 148
    iget-object v1, p0, Lm/F;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v1

    .line 149
    const/4 v3, 0x0

    iget-wide v4, p0, Lm/F;->f:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 150
    iget-object v4, p0, Lm/F;->e:Lm/b;

    invoke-static {v4, v3}, Lm/F;->a(Lm/b;F)Lm/b;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_8

    .line 152
    iget-object v4, p0, Lm/F;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lm/b;->setTime(J)V

    .line 153
    invoke-virtual {v3, v1, v2}, Lm/b;->a(J)V

    .line 154
    iget-object v1, p0, Lm/F;->i:Lt/k;

    invoke-virtual {v1}, Lt/k;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lm/b;->setAccuracy(F)V

    .line 155
    invoke-virtual {v3, v0}, Lm/b;->setSpeed(F)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lm/b;->d(Z)V

    .line 158
    invoke-super {p0, v3}, Lm/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_8
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    .line 97
    instance-of v0, p1, Lm/b;

    if-nez v0, :cond_5

    .line 116
    :cond_4
    :goto_4
    return-void

    .line 100
    :cond_5
    check-cast p1, Lm/b;

    .line 101
    invoke-virtual {p1}, Lm/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lm/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    iput-object v0, p0, Lm/F;->i:Lt/k;

    .line 109
    invoke-direct {p0}, Lm/F;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lm/F;->a(J)V

    .line 111
    iput-object p1, p0, Lm/F;->e:Lm/b;

    .line 112
    iget-object v0, p0, Lm/F;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lm/F;->f:J

    .line 114
    iget-object v1, p0, Lm/F;->g:[F

    iget v2, p0, Lm/F;->h:I

    invoke-virtual {p1}, Lm/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lm/b;->getSpeed()F

    move-result v0

    :goto_38
    aput v0, v1, v2

    .line 115
    iget v0, p0, Lm/F;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lm/F;->h:I

    goto :goto_4

    .line 114
    :cond_43
    const/high16 v0, -0x4080

    goto :goto_38
.end method
