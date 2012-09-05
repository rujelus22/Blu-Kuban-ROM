.class public Lcom/vlingo/client/core/deviceinfo/CarrierUtils;
.super Ljava/lang/Object;
.source "CarrierUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrier(Ljava/lang/String;)Lcom/vlingo/client/core/deviceinfo/Carrier;
    .registers 2
    .parameter "networkName"

    .prologue
    .line 11
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 12
    :cond_8
    const/4 v0, 0x0

    .line 14
    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/Carriers;->getInstance()Lcom/vlingo/client/core/deviceinfo/Carriers;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/deviceinfo/Carriers;->getCarrierByName(Ljava/lang/String;)Lcom/vlingo/client/core/deviceinfo/Carrier;

    move-result-object v0

    goto :goto_9
.end method

.method public static getCarrierISO2Country(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "networkName"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/vlingo/client/core/deviceinfo/CarrierUtils;->getCarrier(Ljava/lang/String;)Lcom/vlingo/client/core/deviceinfo/Carrier;

    move-result-object v0

    .line 19
    .local v0, c:Lcom/vlingo/client/core/deviceinfo/Carrier;
    if-eqz v0, :cond_9

    .line 20
    iget-object v1, v0, Lcom/vlingo/client/core/deviceinfo/Carrier;->iso2letterCountry:Ljava/lang/String;

    .line 22
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method
