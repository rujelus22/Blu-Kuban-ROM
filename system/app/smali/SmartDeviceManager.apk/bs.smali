.class public final Lbs;
.super Lbu;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bid:Ljava/lang/String;

.field private nid:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lbu;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/telephony/cdma/CdmaCellLocation;Led;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x7fffffff

    .line 22
    invoke-direct {p0}, Lbu;-><init>()V

    .line 23
    iget-object v0, p2, Led;->c:Ljava/lang/Integer;

    .line 24
    iget-wide v1, p2, Led;->b:J

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbs;->sid:Ljava/lang/String;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbs;->nid:Ljava/lang/String;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbs;->bid:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    if-eq v3, v5, :cond_69

    .line 30
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    invoke-direct {p0, v3}, Lbs;->quarterDegreeSecondToDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lbs;->lat:Ljava/lang/Double;

    .line 32
    :cond_69
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    if-eq v3, v5, :cond_7d

    .line 33
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v3

    invoke-direct {p0, v3}, Lbs;->quarterDegreeSecondToDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lbs;->lon:Ljava/lang/Double;

    .line 35
    :cond_7d
    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lbs;->time:J

    .line 36
    if-eqz v0, :cond_8e

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbs;->rssi:Ljava/lang/Integer;

    .line 38
    :cond_8e
    return-void
.end method

.method private quarterDegreeSecondToDouble(I)D
    .registers 6
    .parameter

    .prologue
    .line 41
    int-to-double v0, p1

    const-wide v2, 0x40cc200000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final getBid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lbs;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public final getNid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lbs;->nid:Ljava/lang/String;

    return-object v0
.end method

.method public final getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lbs;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public final setBid(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lbs;->bid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final setNid(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lbs;->nid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lbs;->sid:Ljava/lang/String;

    .line 66
    return-void
.end method
