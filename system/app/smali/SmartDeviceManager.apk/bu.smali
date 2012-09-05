.class public abstract Lbu;
.super Lcd;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected ecio:Ljava/lang/Integer;

.field protected isBase:Ljava/lang/Boolean;

.field protected lat:Ljava/lang/Double;

.field protected lon:Ljava/lang/Double;

.field protected rssi:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    const-string v0, "cell"

    invoke-direct {p0, v0}, Lcd;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getEcio()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lbu;->ecio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsBase()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lbu;->isBase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lbu;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLon()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lbu;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public getRssi()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lbu;->rssi:Ljava/lang/Integer;

    return-object v0
.end method

.method public setEcio(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lbu;->ecio:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method public setIsBase(Ljava/lang/Boolean;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lbu;->isBase:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setLat(Ljava/lang/Double;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lbu;->lat:Ljava/lang/Double;

    .line 51
    return-void
.end method

.method public setLon(Ljava/lang/Double;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lbu;->lon:Ljava/lang/Double;

    .line 43
    return-void
.end method

.method public setRssi(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lbu;->rssi:Ljava/lang/Integer;

    .line 27
    return-void
.end method
