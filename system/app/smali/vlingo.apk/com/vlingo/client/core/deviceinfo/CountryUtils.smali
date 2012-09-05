.class public Lcom/vlingo/client/core/deviceinfo/CountryUtils;
.super Ljava/lang/Object;
.source "CountryUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ISO2ToISO3CountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "iso2Code"

    .prologue
    .line 16
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->getInstance()Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->getIso3FromIso2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, iso3Code:Ljava/lang/String;
    return-object v0
.end method

.method public static ISO3ToISO2CountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "iso3Code"

    .prologue
    .line 11
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->getInstance()Lcom/vlingo/client/core/deviceinfo/CountryCodes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/deviceinfo/CountryCodes;->getIso2FromIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, iso2Code:Ljava/lang/String;
    return-object v0
.end method
