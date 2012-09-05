.class Ld/D;
.super Ld/al;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZLd/y;Ld/C;Lm/c;)V
    .registers 14

    invoke-direct {p0, p1, p5, p6, p7}, Ld/al;-><init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ld/D;->a(Ljava/util/Set;Ljava/util/Map;ZLandroid/content/Context;Ld/y;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/D;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;ZLandroid/content/Context;Ld/y;)Ljava/util/List;
    .registers 14

    invoke-static {}, Ld/ax;->a()Ljava/util/ArrayList;

    move-result-object v7

    sget-object v0, Ld/an;->b:Ld/an;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "phone"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    new-instance v0, Ld/t;

    iget-object v4, p0, Ld/D;->b:Ld/C;

    iget-object v5, p0, Ld/D;->a:Lm/c;

    move-object v1, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ld/t;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ld/y;Ld/C;Lm/c;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    sget-object v0, Ld/an;->a:Ld/an;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "wifi"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    if-eqz p3, :cond_b9

    invoke-static {}, Ld/T;->a()Ld/T;

    move-result-object v3

    :goto_45
    new-instance v0, Ld/aC;

    iget-object v4, p0, Ld/D;->b:Ld/C;

    iget-object v5, p0, Ld/D;->a:Lm/c;

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Ld/aC;-><init>(Landroid/content/Context;Ld/y;Ld/aB;Ld/C;Lm/c;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    sget-object v0, Ld/an;->g:Ld/an;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v0, Ld/an;->h:Ld/an;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_63

    if-eqz v3, :cond_81

    :cond_63
    const-string v0, "location"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_6b
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    new-instance v0, Ld/H;

    iget-object v5, p0, Ld/D;->b:Ld/C;

    iget-object v6, p0, Ld/D;->a:Lm/c;

    move-object v1, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Ld/H;-><init>(Landroid/content/Context;ZZLd/y;Ld/C;Lm/c;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/SecurityException; {:try_start_6b .. :try_end_81} :catch_e8

    :cond_81
    :goto_81
    invoke-static {}, Ld/ax;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-string v0, "sensor"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_95
    :goto_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_95

    :cond_b1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_b9
    invoke-static {}, Ld/aA;->a()Ld/aA;

    move-result-object v3

    goto :goto_45

    :cond_be
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    :cond_d2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    new-instance v0, Ld/ao;

    iget-object v4, p0, Ld/D;->b:Ld/C;

    iget-object v5, p0, Ld/D;->a:Lm/c;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Ld/ao;-><init>(Landroid/content/Context;Ljava/util/Map;Ld/y;Ld/C;Lm/c;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e7
    return-object v7

    :catch_e8
    move-exception v0

    goto :goto_81
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Ld/D;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/al;

    invoke-virtual {v0}, Ld/al;->d()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Ld/D;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/al;

    invoke-virtual {v0}, Ld/al;->e()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Ld/D;->b:Ld/C;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ld/D;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->a()V

    :cond_1f
    invoke-virtual {p0}, Ld/D;->f()Ld/y;

    move-result-object v0

    invoke-virtual {v0}, Ld/y;->a()V

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Ld/D;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
