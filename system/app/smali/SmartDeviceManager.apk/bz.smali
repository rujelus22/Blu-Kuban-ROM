.class public final Lbz;
.super Lcd;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alt:D

.field private lat:D

.field private lon:D

.field private source:Ljava/lang/String;

.field private time:J

.field private unc:F


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 6
    .parameter

    .prologue
    .line 25
    const-string v0, "location"

    invoke-direct {p0, v0}, Lcd;-><init>(Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_3a

    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lbz;->lat:D

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lbz;->lon:D

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 31
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lbz;->alt:D

    .line 32
    :cond_1f
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lbz;->unc:F

    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    if-ne v0, v1, :cond_3b

    .line 35
    const-string v0, "gps"

    iput-object v0, p0, Lbz;->source:Ljava/lang/String;

    .line 40
    :goto_31
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lbz;->time:J

    .line 42
    :cond_3a
    return-void

    .line 37
    :cond_3b
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbz;->source:Ljava/lang/String;

    goto :goto_31
.end method


# virtual methods
.method public final getAlt()D
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lbz;->alt:D

    return-wide v0
.end method

.method public final getLat()D
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lbz;->lat:D

    return-wide v0
.end method

.method public final getLon()D
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lbz;->lon:D

    return-wide v0
.end method

.method public final getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lbz;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getTime()J
    .registers 3

    .prologue
    .line 85
    iget-wide v0, p0, Lbz;->time:J

    return-wide v0
.end method

.method public final getUnc()F
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lbz;->unc:F

    return v0
.end method

.method public final setAlt(D)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iput-wide p1, p0, Lbz;->alt:D

    .line 66
    return-void
.end method

.method public final setLat(D)V
    .registers 3
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lbz;->lat:D

    .line 58
    return-void
.end method

.method public final setLon(D)V
    .registers 3
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lbz;->lon:D

    .line 50
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lbz;->source:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final setTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 89
    iput-wide p1, p0, Lbz;->time:J

    .line 90
    return-void
.end method

.method public final setUnc(F)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lbz;->unc:F

    .line 74
    return-void
.end method
