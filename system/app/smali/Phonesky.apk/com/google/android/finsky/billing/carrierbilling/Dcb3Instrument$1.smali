.class final Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;
.super Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;
.source "Dcb3Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;-><init>()V

    return-void
.end method

.method private storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 4
    .parameter "instrument"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 100
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    .line 102
    .local v0, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->storeDcbStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    .line 104
    .end local v0           #status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    :cond_d
    return-void
.end method


# virtual methods
.method public canAdd()Z
    .registers 2

    .prologue
    .line 108
    #calls: Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->access$000()Z

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 14
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 66
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 68
    .local v7, account:Landroid/accounts/Account;
    if-nez v7, :cond_1a

    .line 69
    const-string v0, "Invalid account passed in parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    .line 78
    :goto_19
    return-object v0

    .line 72
    :cond_1a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    .line 73
    .local v4, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v9, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v9, v1, v7, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 75
    .local v9, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v3, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v3, v9}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 76
    .local v3, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v5, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v0, v4}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    .line 78
    .local v5, analytics:Lcom/google/android/finsky/analytics/Analytics;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    goto :goto_19
.end method

.method public get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
    .registers 9
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 87
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070055

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, dcbDisplayName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setFormOfPayment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 92
    .end local v0           #dcbDisplayName:Ljava/lang/String;
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 93
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;->storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 95
    :cond_37
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public getPrepareParams()Ljava/util/Map;
    .registers 2
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
    .line 113
    #calls: Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getDcb3UserIdentifierParams()Ljava/util/Map;
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->access$100()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 2
    .parameter "instrument"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;->storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 119
    return-void
.end method
