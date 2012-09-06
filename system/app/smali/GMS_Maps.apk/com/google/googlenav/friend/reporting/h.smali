.class public Lcom/google/googlenav/friend/reporting/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method private a(Landroid/location/Location;)Lat/B;
    .registers 7
    .parameter

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 129
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 130
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 131
    new-instance v2, Lat/B;

    invoke-direct {v2, v1, v0}, Lat/B;-><init>(II)V

    .line 132
    return-object v2
.end method


# virtual methods
.method public a(Landroid/location/Location;Landroid/location/Location;Ljava/util/List;)Lcom/google/googlenav/friend/reporting/j;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    if-nez p2, :cond_b

    .line 75
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->c:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    .line 113
    :goto_a
    return-object v0

    .line 79
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/reporting/h;->a(Landroid/location/Location;)Lat/B;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-long v1, v1

    invoke-direct {p0, p2}, Lcom/google/googlenav/friend/reporting/h;->a(Landroid/location/Location;)Lat/B;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/friend/J;->a(Lat/B;JLat/B;)Z

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 85
    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_33

    .line 86
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->b:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 91
    :cond_33
    invoke-virtual {p0}, Lcom/google/googlenav/friend/reporting/h;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 92
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->d:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 96
    :cond_41
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 97
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->e:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 101
    :cond_4f
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_63

    .line 102
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->f:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 106
    :cond_63
    if-eqz v1, :cond_74

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_74

    .line 108
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->g:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 109
    :cond_74
    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-ltz v0, :cond_83

    .line 111
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->h:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a

    .line 113
    :cond_83
    new-instance v0, Lcom/google/googlenav/friend/reporting/j;

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->a:Lcom/google/googlenav/friend/reporting/i;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/j;-><init>(ZLcom/google/googlenav/friend/reporting/i;)V

    goto :goto_a
.end method

.method a()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
