.class public Laq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:Landroid/location/Location;

.field private volatile b:Landroid/location/Location;

.field private final c:Laq/h;

.field private final d:Laq/c;


# direct methods
.method public constructor <init>(Laq/h;Laq/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Laq/b;->a:Landroid/location/Location;

    .line 72
    iput-object v0, p0, Laq/b;->b:Landroid/location/Location;

    .line 85
    iput-object p1, p0, Laq/b;->c:Laq/h;

    .line 86
    iput-object p2, p0, Laq/b;->d:Laq/c;

    .line 87
    return-void
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;J)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v8, 0x4069

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v6, 0x416312d000000000L

    .line 163
    if-nez p1, :cond_c

    .line 188
    :cond_b
    :goto_b
    return v0

    .line 166
    :cond_c
    if-nez p0, :cond_10

    move v0, v1

    .line 167
    goto :goto_b

    .line 170
    :cond_10
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    .line 173
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_30

    move v0, v1

    .line 175
    goto :goto_b

    .line 179
    :cond_30
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3e

    move v0, v1

    .line 180
    goto :goto_b

    .line 182
    :cond_3e
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-gtz v2, :cond_64

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-lez v2, :cond_b

    :cond_64
    move v0, v1

    .line 186
    goto :goto_b
.end method

.method private d(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Laq/b;->c:Laq/h;

    invoke-virtual {v0, p1}, Laq/h;->c(Landroid/location/Location;)V

    .line 125
    iput-object p1, p0, Laq/b;->b:Landroid/location/Location;

    .line 126
    return-void
.end method

.method private e(Landroid/location/Location;)Z
    .registers 5
    .parameter

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Laq/b;->b:Landroid/location/Location;

    invoke-static {v2, p1, v0, v1}, Laq/b;->a(Landroid/location/Location;Landroid/location/Location;J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 140
    iput-object p1, p0, Laq/b;->a:Landroid/location/Location;

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private f(Landroid/location/Location;)Z
    .registers 5
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Laq/b;->b:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Laq/b;->a(Landroid/location/Location;Landroid/location/Location;J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(Landroid/location/Location;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Laq/b;->e(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    invoke-direct {p0, p1}, Laq/b;->d(Landroid/location/Location;)V

    .line 97
    iget-object v0, p0, Laq/b;->d:Laq/c;

    invoke-virtual {v0}, Laq/c;->c()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b(Landroid/location/Location;)Z
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Laq/b;->d:Laq/c;

    invoke-virtual {v0}, Laq/c;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Laq/b;->d:Laq/c;

    invoke-virtual {v0}, Laq/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 110
    :cond_10
    invoke-direct {p0, p1}, Laq/b;->f(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 111
    invoke-virtual {p0, p1}, Laq/b;->c(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Laq/b;->d(Landroid/location/Location;)V

    .line 113
    const/4 v0, 0x1

    .line 116
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected c(Landroid/location/Location;)Landroid/location/Location;
    .registers 8
    .parameter

    .prologue
    .line 196
    iget-object v1, p0, Laq/b;->a:Landroid/location/Location;

    .line 197
    if-nez p1, :cond_6

    .line 198
    const/4 p1, 0x0

    .line 228
    :cond_5
    :goto_5
    return-object p1

    .line 200
    :cond_6
    iget-object v0, p0, Laq/b;->d:Laq/c;

    invoke-virtual {v0}, Laq/c;->d()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 205
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 209
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const-wide/16 v4, 0x1

    mul-long/2addr v2, v4

    long-to-float v2, v2

    add-float/2addr v2, v0

    .line 211
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    sub-float/2addr v0, v2

    const/high16 v3, 0x4120

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 212
    new-instance v0, Landroid/location/Location;

    const-string v3, "ParticleFilterLocationProvider"

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 214
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 216
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 217
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    .line 219
    :cond_5e
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 220
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 221
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 222
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 224
    :cond_79
    iget-object v1, p0, Laq/b;->d:Laq/c;

    invoke-virtual {v1}, Laq/c;->f()Ln/B;

    move-result-object v1

    invoke-static {v1}, Laq/a;->a(Ln/B;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    move-object p1, v0

    .line 225
    goto/16 :goto_5
.end method
