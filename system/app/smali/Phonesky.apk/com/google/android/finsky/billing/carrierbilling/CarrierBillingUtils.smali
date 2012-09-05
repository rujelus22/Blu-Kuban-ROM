.class public Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;
.super Ljava/lang/Object;
.source "CarrierBillingUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .registers 12
    .parameter "dcbStorage"

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 57
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-nez v0, :cond_8

    .line 63
    :goto_7
    return v8

    .line 60
    :cond_8
    sget-object v7, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 61
    .local v3, expiryBufferTime:J
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v9

    sub-long v1, v9, v3

    .line 62
    .local v1, expiresAt:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 63
    .local v5, now:J
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    cmp-long v7, v1, v5

    if-lez v7, :cond_35

    const/4 v7, 0x1

    :goto_33
    move v8, v7

    goto :goto_7

    :cond_35
    move v7, v8

    goto :goto_33
.end method

.method public static isDcb30()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 87
    .local v1, storage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    if-eqz v1, :cond_15

    .line 88
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    .line 89
    .local v0, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-eqz v0, :cond_15

    .line 90
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    const/4 v2, 0x1

    .line 93
    .end local v0           #params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    :cond_15
    return v2
.end method

.method public static isNetworkReady()Z
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isRadioNetworkAvailable()Z

    move-result v0

    goto :goto_7
.end method

.method public static isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .registers 3
    .parameter "dcbStorage"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v0

    .line 74
    .local v0, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    if-nez v0, :cond_8

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v1

    goto :goto_7
.end method

.method private static isRadioNetworkAvailable()Z
    .registers 4

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    .local v0, manager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 47
    .local v1, network:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    return v2
.end method
