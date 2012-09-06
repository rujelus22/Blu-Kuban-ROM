.class public final Lan/s;
.super Landroid/location/Location;
.source "SourceFile"


# instance fields
.field private a:Lat/B;

.field private b:Ln/B;

.field private c:Z


# direct methods
.method private constructor <init>(Lan/u;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    invoke-static {p1}, Lan/u;->a(Lan/u;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lan/u;->b(Lan/u;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    invoke-static {p1}, Lan/u;->c(Lan/u;)F

    move-result v0

    invoke-super {p0, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 93
    :cond_14
    invoke-static {p1}, Lan/u;->d(Lan/u;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 94
    invoke-static {p1}, Lan/u;->e(Lan/u;)D

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 96
    :cond_21
    invoke-static {p1}, Lan/u;->f(Lan/u;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 97
    invoke-static {p1}, Lan/u;->g(Lan/u;)F

    move-result v0

    invoke-super {p0, v0}, Landroid/location/Location;->setBearing(F)V

    .line 99
    :cond_2e
    invoke-static {p1}, Lan/u;->h(Lan/u;)D

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 100
    invoke-static {p1}, Lan/u;->i(Lan/u;)D

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 101
    invoke-static {p1}, Lan/u;->j(Lan/u;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 102
    invoke-static {p1}, Lan/u;->k(Lan/u;)F

    move-result v0

    invoke-super {p0, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 104
    :cond_49
    invoke-static {p1}, Lan/u;->l(Lan/u;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 105
    invoke-static {p1}, Lan/u;->m(Lan/u;)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 107
    :cond_56
    invoke-static {p1}, Lan/u;->l(Lan/u;)Z

    move-result v0

    iput-boolean v0, p0, Lan/s;->c:Z

    .line 108
    invoke-static {p1}, Lan/u;->n(Lan/u;)Landroid/os/Bundle;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p1}, Lan/u;->o(Lan/u;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lan/s;->a:Lat/B;

    .line 110
    invoke-static {p1}, Lan/u;->p(Lan/u;)Ln/B;

    move-result-object v0

    iput-object v0, p0, Lan/s;->b:Ln/B;

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lan/u;Lan/t;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lan/s;-><init>(Lan/u;)V

    return-void
.end method

.method public static a(Landroid/location/Location;)I
    .registers 3
    .parameter

    .prologue
    const v0, 0x1869f

    .line 121
    if-nez p0, :cond_6

    .line 128
    :cond_5
    :goto_5
    return v0

    .line 124
    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_5
.end method

.method public static a(Lan/s;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 153
    if-nez p0, :cond_4

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lan/s;->a()Lat/B;

    move-result-object v0

    goto :goto_3
.end method

.method private a(ZDZD)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    if-eqz p1, :cond_f

    .line 298
    if-nez p4, :cond_7

    .line 306
    :cond_6
    :goto_6
    return v1

    .line 301
    :cond_7
    cmpl-double v2, p2, p5

    if-nez v2, :cond_d

    :goto_b
    move v1, v0

    goto :goto_6

    :cond_d
    move v0, v1

    goto :goto_b

    .line 303
    :cond_f
    if-nez p4, :cond_6

    move v1, v0

    .line 306
    goto :goto_6
.end method

.method private a(ZJZJ)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    if-eqz p1, :cond_f

    .line 283
    if-nez p4, :cond_7

    .line 291
    :cond_6
    :goto_6
    return v1

    .line 286
    :cond_7
    cmp-long v2, p2, p5

    if-nez v2, :cond_d

    :goto_b
    move v1, v0

    goto :goto_6

    :cond_d
    move v0, v1

    goto :goto_b

    .line 288
    :cond_f
    if-nez p4, :cond_6

    move v1, v0

    .line 291
    goto :goto_6
.end method

.method public static b(Landroid/location/Location;)I
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 139
    if-nez p0, :cond_4

    .line 145
    :cond_3
    :goto_3
    return v0

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v0, v0

    goto :goto_3
.end method

.method public static c(Landroid/location/Location;)I
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 167
    if-nez p0, :cond_4

    .line 173
    :cond_3
    :goto_3
    return v0

    .line 170
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-int v0, v0

    goto :goto_3
.end method

.method public static d(Landroid/location/Location;)Ln/B;
    .registers 2
    .parameter

    .prologue
    .line 181
    if-eqz p0, :cond_6

    instance-of v0, p0, Lan/s;

    if-nez v0, :cond_8

    .line 182
    :cond_6
    const/4 v0, 0x0

    .line 184
    :goto_7
    return-object v0

    :cond_8
    check-cast p0, Lan/s;

    invoke-virtual {p0}, Lan/s;->b()Ln/B;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lan/s;->a:Lat/B;

    return-object v0
.end method

.method public b()Ln/B;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lan/s;->b:Ln/B;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lan/s;->b:Ln/B;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lan/s;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 231
    instance-of v0, p1, Lan/s;

    if-nez v0, :cond_8

    move v0, v7

    .line 277
    :goto_7
    return v0

    .line 234
    :cond_8
    check-cast p1, Lan/s;

    .line 236
    invoke-virtual {p1}, Lan/s;->a()Lat/B;

    move-result-object v0

    invoke-virtual {p0}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v7

    .line 237
    goto :goto_7

    .line 240
    :cond_1a
    invoke-virtual {p1}, Lan/s;->b()Ln/B;

    move-result-object v0

    invoke-virtual {p0}, Lan/s;->b()Ln/B;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v7

    .line 241
    goto :goto_7

    .line 244
    :cond_2a
    invoke-virtual {p1}, Lan/s;->hasAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Lan/s;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0}, Lan/s;->hasAccuracy()Z

    move-result v4

    invoke-virtual {p0}, Lan/s;->getAccuracy()F

    move-result v0

    float-to-double v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v7

    .line 246
    goto :goto_7

    .line 248
    :cond_45
    invoke-virtual {p1}, Lan/s;->hasAltitude()Z

    move-result v1

    invoke-virtual {p1}, Lan/s;->getAltitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lan/s;->hasAltitude()Z

    move-result v4

    invoke-virtual {p0}, Lan/s;->getAltitude()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_5e

    move v0, v7

    .line 250
    goto :goto_7

    .line 252
    :cond_5e
    invoke-virtual {p1}, Lan/s;->hasBearing()Z

    move-result v1

    invoke-virtual {p1}, Lan/s;->getBearing()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0}, Lan/s;->hasBearing()Z

    move-result v4

    invoke-virtual {p0}, Lan/s;->getBearing()F

    move-result v0

    float-to-double v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_79

    move v0, v7

    .line 254
    goto :goto_7

    .line 256
    :cond_79
    invoke-virtual {p1}, Lan/s;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lan/s;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    move v0, v7

    .line 257
    goto/16 :goto_7

    .line 259
    :cond_8a
    invoke-virtual {p1}, Lan/s;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lan/s;->getLatitude()D

    move-result-wide v5

    move-object v0, p0

    move v1, v8

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_9e

    move v0, v7

    .line 260
    goto/16 :goto_7

    .line 262
    :cond_9e
    invoke-virtual {p1}, Lan/s;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lan/s;->getLongitude()D

    move-result-wide v5

    move-object v0, p0

    move v1, v8

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_b2

    move v0, v7

    .line 263
    goto/16 :goto_7

    .line 265
    :cond_b2
    invoke-virtual {p1}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    move v0, v7

    .line 266
    goto/16 :goto_7

    .line 268
    :cond_c3
    invoke-virtual {p1}, Lan/s;->hasSpeed()Z

    move-result v1

    invoke-virtual {p1}, Lan/s;->getSpeed()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0}, Lan/s;->hasSpeed()Z

    move-result v4

    invoke-virtual {p0}, Lan/s;->getSpeed()F

    move-result v0

    float-to-double v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZDZD)Z

    move-result v0

    if-nez v0, :cond_df

    move v0, v7

    .line 270
    goto/16 :goto_7

    .line 272
    :cond_df
    invoke-virtual {p1}, Lan/s;->d()Z

    move-result v1

    invoke-virtual {p1}, Lan/s;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lan/s;->d()Z

    move-result v4

    invoke-virtual {p0}, Lan/s;->getTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lan/s;->a(ZJZJ)Z

    move-result v0

    if-nez v0, :cond_f9

    move v0, v7

    .line 274
    goto/16 :goto_7

    :cond_f9
    move v0, v8

    .line 277
    goto/16 :goto_7
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 218
    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lan/s;->a:Lat/B;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lan/s;->b:Ln/B;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lan/s;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 221
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lan/s;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 222
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lan/s;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 223
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lan/s;->getBearing()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 224
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lan/s;->getAltitude()D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lan/s;->getSpeed()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 226
    return v0
.end method

.method public setAccuracy(F)V
    .registers 3
    .parameter

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAltitude(D)V
    .registers 4
    .parameter

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setBearing(F)V
    .registers 3
    .parameter

    .prologue
    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLatitude(D)V
    .registers 4
    .parameter

    .prologue
    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setLongitude(D)V
    .registers 4
    .parameter

    .prologue
    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSpeed(F)V
    .registers 3
    .parameter

    .prologue
    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 312
    iget-object v0, p0, Lan/s;->b:Ln/B;

    if-nez v0, :cond_71

    const-string v0, ""

    .line 314
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationFix[source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", point="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lan/s;->a:Lat/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lan/s;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lan/s;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lan/s;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lan/s;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/s;->b:Ln/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
