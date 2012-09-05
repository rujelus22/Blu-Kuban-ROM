.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;,
        Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;,
        Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;
    }
.end annotation


# instance fields
.field private final mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private mGetProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 99
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 100
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDcb3;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mGetProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;

    .line 104
    :goto_17
    return-void

    .line 102
    :cond_18
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningDevice;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mGetProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;

    goto :goto_17
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method public static shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .registers 10
    .parameter "carrierBillingStorage"

    .prologue
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;JJJJ)Z

    move-result v0

    return v0
.end method

.method static shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;JJJJ)Z
    .registers 16
    .parameter "carrierBillingStorage"
    .parameter "now"
    .parameter "awakeTime"
    .parameter "lastCheck"
    .parameter "earliestCheck"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    .line 246
    .local v2, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    .line 247
    :cond_e
    const-string v3, "Required CarrierBillingParams missing. Shouldn\'t fetch provisioning."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 266
    :cond_16
    :goto_16
    return v3

    .line 251
    :cond_17
    sub-long v5, p1, p5

    cmp-long v5, v5, p3

    if-lez v5, :cond_2f

    move v1, v3

    .line 252
    .local v1, hasBootedSinceLastCheck:Z
    :goto_1e
    cmp-long v5, p1, p7

    if-lez v5, :cond_31

    move v0, v3

    .line 255
    .local v0, afterEarliestPerformTime:Z
    :goto_23
    if-nez v0, :cond_16

    .line 260
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v5

    if-nez v5, :cond_2d

    if-nez v1, :cond_16

    :cond_2d
    move v3, v4

    .line 266
    goto :goto_16

    .end local v0           #afterEarliestPerformTime:Z
    .end local v1           #hasBootedSinceLastCheck:Z
    :cond_2f
    move v1, v4

    .line 251
    goto :goto_1e

    .restart local v1       #hasBootedSinceLastCheck:Z
    :cond_31
    move v0, v4

    .line 252
    goto :goto_23
.end method

.method private updateBillingPreferences(J)V
    .registers 10
    .parameter "now"

    .prologue
    .line 273
    sget-object v2, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRefreshFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v2, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 275
    .local v0, interval:J
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    add-long v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 277
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 278
    return-void
.end method


# virtual methods
.method public fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 10
    .parameter "acceptedTosVersion"
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 162
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    .line 163
    .local v3, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-nez v3, :cond_c

    .line 164
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 231
    :goto_b
    return-void

    .line 167
    :cond_c
    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, carrierId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 202
    .local v2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;

    invoke-direct {v1, p0, v0, p3}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 229
    .local v1, errorListener:Lcom/android/volley/Response$ErrorListener;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mGetProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;

    invoke-interface {v4, p1, v2, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;->fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->updateBillingPreferences(J)V

    goto :goto_b
.end method

.method public forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .parameter "successRunnable"
    .parameter "errorRunnable"
    .parameter "acceptedTosVersion"

    .prologue
    .line 157
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "finishRunnable"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 133
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 141
    :goto_13
    return-void

    .line 136
    :cond_14
    if-eqz p1, :cond_19

    .line 137
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_19
    const-string v0, "No need to fetch provisioning from carrier."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public runIfNotOnWifi(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "context"
    .parameter "finishRunnable"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mGetProvisioning:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$GetProvisioningStrategy;->shouldRunIfNotOnWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 118
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    .line 124
    :cond_b
    :goto_b
    return-void

    .line 120
    :cond_c
    if-eqz p2, :cond_b

    .line 121
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_b
.end method
