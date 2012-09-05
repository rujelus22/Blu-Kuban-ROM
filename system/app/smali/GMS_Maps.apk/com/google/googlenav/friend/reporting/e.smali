.class public Lcom/google/googlenav/friend/reporting/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/location/Location;)LaJ/B;
    .registers 7

    const-wide v3, 0x412e848000000000L

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, LaJ/B;

    invoke-direct {v2, v1, v0}, LaJ/B;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/location/Location;Landroid/location/Location;Ljava/util/List;)Lcom/google/googlenav/friend/reporting/f;
    .registers 11

    const/4 v6, 0x1

    if-nez p2, :cond_9

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v6, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/reporting/e;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-long v1, v1

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/reporting/e;->a(Landroid/location/Location;)LaJ/B;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lax/bD;->a(LaJ/B;JLaJ/B;)Z

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8

    :cond_26
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/e;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8

    :cond_32
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_44

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8

    :cond_44
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    if-eqz v1, :cond_5c

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5c

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8

    :cond_5c
    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-ltz v0, :cond_69

    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8

    :cond_69
    new-instance v0, Lcom/google/googlenav/friend/reporting/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/f;-><init>(ZZ)V

    goto :goto_8
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
