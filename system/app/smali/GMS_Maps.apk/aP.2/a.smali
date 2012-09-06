.class public Lap/a;
.super Lan/b;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected a:Lan/C;

.field protected i:Lan/C;

.field private j:Ljava/lang/String;

.field private k:Landroid/location/Location;

.field private final l:Lcom/google/googlenav/common/a;

.field private m:J

.field private final n:Z

.field private final o:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, v0}, Lan/b;-><init>(Z)V

    .line 95
    const-string v1, "cell"

    iput-object v1, p0, Lap/a;->j:Ljava/lang/String;

    .line 123
    invoke-static {}, Lap/a;->u()Z

    move-result v1

    iput-boolean v1, p0, Lap/a;->o:Z

    .line 124
    if-eqz p1, :cond_21

    iget-boolean v1, p0, Lap/a;->o:Z

    if-nez v1, :cond_21

    :goto_14
    iput-boolean v0, p0, Lap/a;->n:Z

    .line 125
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lap/a;->l:Lcom/google/googlenav/common/a;

    .line 126
    return-void

    .line 124
    :cond_21
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string v1, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 390
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_20

    const-string v2, "networkLocationType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 392
    const-string v0, "networkLocationType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_20
    return-object v0
.end method

.method private a(Landroid/location/Location;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_a3

    .line 247
    if-eqz p2, :cond_83

    iget-object v0, p0, Lap/a;->i:Lan/C;

    :goto_6
    invoke-virtual {v0, p1}, Lan/C;->a(Landroid/location/Location;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lap/a;->e:Z

    .line 252
    iget-object v0, p0, Lap/a;->l:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    .line 257
    const/4 v2, 0x0

    .line 266
    if-eqz p2, :cond_89

    .line 267
    const-string v0, "gps"

    iput-object v0, p0, Lap/a;->j:Ljava/lang/String;

    .line 268
    iput-wide v3, p0, Lap/a;->m:J

    .line 286
    iget-object v0, p0, Lap/a;->c:Lan/s;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lap/a;->c:Lan/s;

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v0

    .line 287
    :goto_25
    invoke-virtual {p0}, Lap/a;->j()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_54

    invoke-virtual {p0}, Lap/a;->j()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_54

    iget-object v5, p0, Lap/a;->k:Landroid/location/Location;

    if-eqz v5, :cond_54

    iget-object v5, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v5, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    invoke-virtual {p0}, Lap/a;->j()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_54

    sub-long v0, v3, v0

    const-wide/16 v3, 0x1770

    cmp-long v0, v0, v3

    if-lez v0, :cond_5f

    .line 294
    :cond_54
    iget-boolean v0, p0, Lap/a;->o:Z

    if-eqz v0, :cond_b1

    .line 295
    invoke-static {p1}, Lap/a;->b(Landroid/location/Location;)Ln/B;

    move-result-object v0

    .line 298
    :goto_5c
    iput-object p1, p0, Lap/a;->k:Landroid/location/Location;

    move-object v2, v0

    .line 302
    :cond_5f
    iget-object v0, p0, Lap/a;->c:Lan/s;

    invoke-static {v0}, Lan/s;->a(Lan/s;)Lat/B;

    .line 316
    :cond_64
    :goto_64
    new-instance v0, Lan/u;

    invoke-direct {v0}, Lan/u;-><init>()V

    invoke-virtual {v0, p1}, Lan/u;->a(Landroid/location/Location;)Lan/u;

    move-result-object v0

    iget-object v1, p0, Lap/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lan/u;->a(Ljava/lang/String;)Lan/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lan/u;->a(Ln/B;)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->a()Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Lap/a;->b(Lan/s;)V

    .line 331
    :cond_82
    :goto_82
    return-void

    .line 247
    :cond_83
    iget-object v0, p0, Lap/a;->a:Lan/C;

    goto :goto_6

    .line 286
    :cond_86
    const-wide/16 v0, 0x0

    goto :goto_25

    .line 304
    :cond_89
    iget-wide v0, p0, Lap/a;->m:J

    const-wide/32 v5, 0xea60

    add-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-lez v0, :cond_64

    .line 305
    invoke-static {p1}, Lap/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lap/a;->j:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lap/a;->c:Lan/s;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lap/a;->c:Lan/s;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    goto :goto_64

    .line 325
    :cond_a3
    invoke-virtual {p0}, Lap/a;->o()Z

    move-result v0

    if-nez v0, :cond_82

    .line 327
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lap/a;->a(I)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lap/a;->e:Z

    goto :goto_82

    :cond_b1
    move-object v0, v2

    goto :goto_5c
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 418
    const-string v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "cell"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 426
    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .registers 2

    .prologue
    .line 409
    const-string v0, "debug.gmm.usegpsonly"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private v()V
    .registers 6

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lap/a;->m:J

    .line 225
    const/4 v0, 0x0

    .line 226
    iget-boolean v1, p0, Lap/a;->n:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 228
    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 230
    :cond_1f
    iget-object v1, p0, Lap/a;->l:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 235
    if-eqz v0, :cond_44

    iget-object v3, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xafc80

    cmp-long v1, v1, v3

    if-gtz v1, :cond_44

    .line 238
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lap/a;->a(Landroid/location/Location;Z)V

    .line 243
    :goto_43
    return-void

    .line 241
    :cond_44
    invoke-virtual {p0}, Lap/a;->k()V

    goto :goto_43
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lap/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lan/q;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, Lan/b;->a(Lan/q;)V

    .line 131
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 152
    return-void
.end method

.method protected c()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 160
    new-instance v0, Lan/C;

    const-string v1, "n"

    invoke-direct {v0, v1}, Lan/C;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lap/a;->a:Lan/C;

    .line 161
    new-instance v0, Lan/C;

    const-string v1, "g"

    invoke-direct {v0, v1}, Lan/C;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lap/a;->i:Lan/C;

    .line 163
    invoke-direct {p0}, Lap/a;->v()V

    .line 165
    iget-boolean v0, p0, Lap/a;->d:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 166
    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 170
    :cond_36
    iget-boolean v0, p0, Lap/a;->n:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 172
    iget-object v0, p0, Lap/a;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 176
    :cond_54
    return-void
.end method

.method public d()Lan/s;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lap/a;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lap/a;->n:Z

    if-eqz v1, :cond_36

    .line 433
    iget-object v1, p0, Lap/a;->b:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 434
    iget-object v1, p0, Lap/a;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 436
    :goto_1f
    if-eqz v1, :cond_36

    .line 437
    new-instance v0, Lan/u;

    invoke-direct {v0}, Lan/u;-><init>()V

    invoke-virtual {v0, v1}, Lan/u;->a(Landroid/location/Location;)Lan/u;

    move-result-object v0

    invoke-virtual {p0}, Lap/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lan/u;->a(Ljava/lang/String;)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    .line 440
    :cond_36
    return-object v0

    :cond_37
    move-object v1, v0

    goto :goto_1f
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lap/a;->n:Z

    if-eqz v0, :cond_9

    .line 369
    invoke-super {p0}, Lan/b;->g()Z

    move-result v0

    .line 372
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lap/a;->i()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    .line 194
    iget-object v0, p0, Lap/a;->k:Landroid/location/Location;

    if-nez v0, :cond_d

    .line 195
    const/4 v0, 0x0

    .line 210
    :goto_c
    return-object v0

    .line 197
    :cond_d
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbf/R;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 198
    const-string v1, "gps"

    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 199
    const/4 v1, 0x3

    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 200
    const/4 v1, 0x6

    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 201
    const/16 v1, 0xc

    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 202
    const/16 v1, 0xd

    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 204
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbf/P;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 205
    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 206
    iget-object v2, p0, Lap/a;->k:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 208
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_c
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lap/a;->a(Landroid/location/Location;Z)V

    .line 337
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 357
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 362
    invoke-direct {p0}, Lap/a;->v()V

    .line 364
    :cond_b
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez p2, :cond_d

    .line 344
    invoke-direct {p0}, Lap/a;->v()V

    .line 347
    :cond_d
    return-void
.end method
