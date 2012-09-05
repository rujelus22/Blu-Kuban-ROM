.class public final Lck;
.super Lcd;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rssi:D


# direct methods
.method public constructor <init>(Led;)V
    .registers 7
    .parameter

    .prologue
    .line 20
    const-string v0, "wlan"

    invoke-direct {p0, v0}, Lcd;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v0, p1, Led;->f:Landroid/net/wifi/WifiInfo;

    .line 22
    iget-wide v1, p1, Led;->g:J

    .line 23
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lck;->mac:Ljava/lang/String;

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lck;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    int-to-double v3, v0

    iput-wide v3, p0, Lck;->rssi:D

    .line 26
    const-wide/16 v3, 0x3e8

    div-long v0, v1, v3

    iput-wide v0, p0, Lck;->time:J

    .line 27
    return-void
.end method


# virtual methods
.method public final getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lck;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lck;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRssi()D
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lck;->rssi:D

    return-wide v0
.end method

.method public final setMac(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lck;->mac:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lck;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final setRssi(D)V
    .registers 3
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lck;->rssi:D

    .line 35
    return-void
.end method
