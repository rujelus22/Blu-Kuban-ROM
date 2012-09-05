.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
.super Ljava/lang/Object;
.source "CarrierBillingStorage.java"


# instance fields
.field private final mCurrentSimIdentifier:Ljava/lang/String;

.field private volatile mIsInit:Z

.field private final mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->initCurrentSimIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "carrier_billing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v0, backingStore:Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;
    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    .line 90
    return-void
.end method

.method private booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 3
    .parameter "b"

    .prologue
    .line 435
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private getParamsKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 403
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 404
    const-string v0, "params"

    .line 406
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private initCurrentSimIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 449
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 451
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, subscriberId:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    :goto_16
    return-object v2

    :cond_17
    const-string v2, "invalid_sim_id"

    goto :goto_16
.end method

.method private integerToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 428
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private longToString(Ljava/lang/Long;)Ljava/lang/String;
    .registers 4
    .parameter "l"

    .prologue
    .line 442
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .parameter "str"

    .prologue
    .line 438
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3
.end method

.method private stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .parameter "str"

    .prologue
    .line 431
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method private stringToLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 4
    .parameter "str"

    .prologue
    .line 445
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public clearCredentials()V
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public clearParams()V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public clearProvisioning()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "provisioning"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .registers 9

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v6

    if-nez v6, :cond_e

    .line 267
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Attempt to fetch credentials when key store isn\'t ready."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 271
    :cond_e
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v7, "credentials"

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 272
    .local v5, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_1a

    .line 273
    const/4 v6, 0x0

    .line 299
    :goto_19
    return-object v6

    .line 276
    :cond_1a
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;-><init>()V

    const-string v6, "credentials"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v1

    .line 279
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    const-string v6, "api_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    .local v0, apiVersion:Ljava/lang/Integer;
    if-eqz v0, :cond_40

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 284
    :cond_40
    const-string v6, "expiration_time"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 285
    .local v2, expirationTime:Ljava/lang/Long;
    if-eqz v2, :cond_55

    .line 286
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 289
    :cond_55
    const-string v6, "is_provisioned"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 290
    .local v4, isProvisioned:Ljava/lang/Boolean;
    if-eqz v4, :cond_6a

    .line 291
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 294
    :cond_6a
    const-string v6, "invalid_password"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 295
    .local v3, invalidPassword:Ljava/lang/Boolean;
    if-eqz v3, :cond_7f

    .line 296
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 299
    :cond_7f
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v6

    goto :goto_19
.end method

.method public getCurrentSimIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .registers 9

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v6

    if-nez v6, :cond_e

    .line 129
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Attempt to fetch params when key store isn\'t ready."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :cond_e
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 133
    .local v5, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_1c

    .line 134
    const/4 v6, 0x0

    .line 167
    :goto_1b
    return-object v6

    .line 137
    :cond_1c
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;-><init>()V

    const-string v6, "carrier_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "carrier_name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "mnc_mcc_csv"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setMncMccs(Ljava/util/List;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "get_provisioning_url"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "get_credentials_url"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v7

    const-string v6, "carrier_icon_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierIconId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v0

    .line 145
    .local v0, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    const-string v6, "carrier_api_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 146
    .local v1, carrierApiVersion:Ljava/lang/Integer;
    if-eqz v1, :cond_82

    .line 147
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 150
    :cond_82
    const-string v6, "show_carrier_tos"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 151
    .local v4, showCarrierTos:Ljava/lang/Boolean;
    if-eqz v4, :cond_97

    .line 152
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 155
    :cond_97
    const-string v6, "per_transaction_credentials_required"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 157
    .local v2, perTransactionCredentialsRequired:Ljava/lang/Boolean;
    if-eqz v2, :cond_ac

    .line 158
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 161
    :cond_ac
    const-string v6, "per_transaction_credentials_required"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 163
    .local v3, sendSubscriberInfoWithCarrierRequests:Ljava/lang/Boolean;
    if-eqz v3, :cond_c1

    .line 164
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 167
    :cond_c1
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v6

    goto/16 :goto_1b
.end method

.method public getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .registers 16

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v13

    if-nez v13, :cond_e

    .line 176
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Attempt to fetch provisioning when key store isn\'t ready."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 180
    :cond_e
    iget-object v13, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v14, "provisioning"

    invoke-virtual {v13, v14}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 181
    .local v12, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    .line 182
    .local v3, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-nez v12, :cond_2e

    .line 185
    if-eqz v3, :cond_2c

    .line 186
    new-instance v13, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    .line 258
    :goto_2b
    return-object v13

    .line 190
    :cond_2c
    const/4 v13, 0x0

    goto :goto_2b

    .line 193
    :cond_2e
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    .line 194
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    const-string v13, "id"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "subscriber_currency"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "account_type"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_prompt"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_forgot_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "address_snippet"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "country"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 205
    const-string v13, "api_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    .local v0, apiVersion:Ljava/lang/Integer;
    if-eqz v0, :cond_b7

    .line 207
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 210
    :cond_b7
    const-string v13, "is_provisioned"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 211
    .local v7, isProvisioned:Ljava/lang/Boolean;
    if-eqz v7, :cond_cc

    .line 212
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 215
    :cond_cc
    const-string v13, "transaction_limit"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 216
    .local v11, transactionLimit:Ljava/lang/Long;
    if-eqz v11, :cond_e1

    .line 217
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 220
    :cond_e1
    const-string v13, "password_required"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 221
    .local v9, passwordRequired:Ljava/lang/Boolean;
    if-eqz v9, :cond_f6

    .line 222
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 225
    :cond_f6
    const-string v13, "subscriber_token"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 226
    .local v8, obfuscatedSubscriberInfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_10d

    .line 227
    invoke-static {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->fromObfuscatedString(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v10

    .line 229
    .local v10, subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    if-eqz v10, :cond_10d

    .line 230
    invoke-virtual {v1, v10}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 234
    .end local v10           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_10d
    new-instance v14, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v14}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v13, "encrypted_message"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_key"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_signature"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_init_vector"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v5

    .line 241
    .local v5, encryptedSubscriberInfoBuilder:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    const-string v13, "encrypted_google_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 243
    .local v6, googleKeyVersion:Ljava/lang/Integer;
    if-eqz v6, :cond_157

    .line 244
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    .line 247
    :cond_157
    const-string v13, "encrypted_carrier_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 249
    .local v2, carrierKeyVersion:Ljava/lang/Integer;
    if-eqz v2, :cond_16c

    .line 250
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    .line 253
    :cond_16c
    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v4

    .line 254
    .local v4, encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_179

    .line 255
    invoke-virtual {v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 258
    :cond_179
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    goto/16 :goto_2b
.end method

.method public init(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public isInit()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    return v0
.end method

.method listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V
    .registers 6
    .parameter "credentials"

    .prologue
    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "credentials"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v1, "expiration_time"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->isProvisioned()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "invalid_password"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->invalidPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v2, "credentials"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    return-void
.end method

.method setInit(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    .line 121
    return-void
.end method

.method public setParams(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;)V
    .registers 5
    .parameter "params"

    .prologue
    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "carrier_id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "carrier_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "mnc_mcc_csv"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getMncMccs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v1, "get_provisioning_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v1, "get_credentials_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetCredentialsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "carrier_icon_id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierIconId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "show_carrier_tos"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "carrier_api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "per_transaction_credentials_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->perTransactionCredentialsRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "send_subscriber_info_with_carrier_requests"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->sendSubscriberInfoWithCarrierRequests()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    return-void
.end method

.method public setProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V
    .registers 8
    .parameter "provisioning"

    .prologue
    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getApiVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v3, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v3, "tos_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v3, "tos_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v3, "subscriber_currency"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v3, "transaction_limit"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v3, "account_type"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 349
    const-string v3, "subscriber_token"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_78
    const-string v3, "password_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isPasswordRequired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v3, "password_prompt"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v3, "password_forgot_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v3, "address_snippet"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v3, "country"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v1

    .line 360
    .local v1, encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    if-eqz v1, :cond_f9

    .line 361
    const-string v3, "encrypted_message"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v3, "encrypted_key"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v3, "encrypted_signature"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v3, "encrypted_init_vector"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v3, "encrypted_carrier_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v3, "encrypted_google_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_f9
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 373
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-eqz v0, :cond_102

    .line 374
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V

    .line 377
    :cond_102
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v4, "provisioning"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    return-void
.end method

.method stringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3
.end method
