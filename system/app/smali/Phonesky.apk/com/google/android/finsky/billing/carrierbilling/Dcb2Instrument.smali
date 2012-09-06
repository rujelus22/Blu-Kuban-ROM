.class public Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "Dcb2Instrument.java"


# instance fields
.field private mCanFetchCredentials:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isRadioNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_13
    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->mCanFetchCredentials:Z

    .line 139
    return-void

    .line 137
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .registers 3
    .parameter "instrumentFactory"

    .prologue
    .line 56
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument$1;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(ILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 129
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 6
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCompleteParams()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 152
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-nez v0, :cond_c

    .line 153
    const/4 v3, 0x0

    .line 161
    :goto_b
    return-object v3

    .line 155
    :cond_c
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 156
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "dcbct"

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 158
    .local v1, expiration:Ljava/lang/Long;
    if-eqz v1, :cond_2c

    .line 159
    const-string v3, "dcbctt"

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_b
.end method

.method public getMessages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->mCanFetchCredentials:Z

    if-nez v1, :cond_1f

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    .end local v0           #messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    return-object v0

    :cond_1f
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v0

    goto :goto_1e
.end method

.method public hasMessages()Z
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->hasMessages()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->mCanFetchCredentials:Z

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->mCanFetchCredentials:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
