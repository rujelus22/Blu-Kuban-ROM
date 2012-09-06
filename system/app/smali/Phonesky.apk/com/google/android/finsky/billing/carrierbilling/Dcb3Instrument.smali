.class public Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "Dcb3Instrument.java"


# instance fields
.field private mPassphrase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getDcb3UserIdentifierParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static canAssociate()Z
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->isDeviceInService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 280
    :goto_7
    return v1

    :cond_8
    sget-object v0, Lcom/google/android/finsky/config/G;->dcb3SetupWhileRoamingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    move v1, v0

    goto :goto_7

    :cond_1f
    move v0, v1

    goto :goto_1d
.end method

.method private static getDcb3UserIdentifierParams()Ljava/util/Map;
    .registers 7
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
    .line 247
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 248
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, simIdentifier:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 250
    const-string v5, "dcbch"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_17
    sget-object v5, Lcom/google/android/finsky/config/G;->dcb3SendProvisioningData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 253
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, subscriberId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 255
    const-string v5, "dcbsubid"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_34
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getDeviceIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 259
    const-string v5, "dcbhardwareid"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_43
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSimSerialNumberFromTelephony()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, simSerialNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 263
    const-string v5, "dcbsimserialnumber"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v3           #simSerialNumber:Ljava/lang/String;
    .end local v4           #subscriberId:Ljava/lang/String;
    :cond_52
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->performDeviceBootedCheck()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 267
    const-string v5, "dcbdevicerebooted"

    const-string v6, "true"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_5f
    return-object v1
.end method

.method private getInstrumentStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .registers 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    .line 187
    .local v0, checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 188
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    .line 189
    .local v1, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 190
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v2

    .line 194
    .end local v1           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :goto_18
    return-object v2

    .line 193
    :cond_19
    const-string v2, "CheckoutOption does not have instrument status."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private isAssociationValid()Z
    .registers 3

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getInstrumentStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    .line 199
    .local v0, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private static performDeviceBootedCheck()Z
    .registers 10

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 291
    .local v5, now:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 292
    .local v0, awakeTime:J
    sget-object v7, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 294
    .local v3, lastCheck:J
    sub-long v7, v5, v3

    cmp-long v7, v7, v0

    if-lez v7, :cond_29

    const/4 v2, 0x1

    .line 298
    .local v2, hasBootedSinceLastCheck:Z
    :goto_1b
    sget-object v7, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 299
    return v2

    .line 294
    .end local v2           #hasBootedSinceLastCheck:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private putCompletePurchaseParameters(Landroid/os/Bundle;)V
    .registers 8
    .parameter "parameters"

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getInstrumentStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v2

    .line 150
    .local v2, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    if-eqz v2, :cond_60

    .line 151
    const-string v3, "association_required"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v3, "password_required"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getPasswordRequired()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 157
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v0

    .line 158
    .local v0, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    const-string v3, "dcb_tos_required"

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v3, "pii_tos_required"

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsPiiTosAcceptance()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    .end local v0           #carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    :goto_35
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierPasswordPrompt()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 170
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierPasswordPrompt()Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;

    move-result-object v1

    .line 171
    .local v1, dcbPassword:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    const-string v3, "password_prompt"

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "password_forgor_url"

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;->getForgotPasswordUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v1           #dcbPassword:Lcom/google/android/finsky/remoting/protos/CommonDevice$PasswordPrompt;
    :cond_51
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasName()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 177
    const-string v3, "carrier_name"

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_60
    return-void

    .line 163
    :cond_61
    const-string v3, "dcb_tos_required"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const-string v3, "pii_tos_required"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_35
.end method

.method public static registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .registers 3
    .parameter "instrumentFactory"

    .prologue
    .line 56
    const/4 v0, 0x2

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(ILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 121
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 15
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 130
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v8

    .line 132
    .local v8, account:Landroid/accounts/Account;
    if-nez v8, :cond_1a

    .line 133
    const-string v0, "Invalid account passed in parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v0, 0x0

    .line 144
    :goto_19
    return-object v0

    .line 136
    :cond_1a
    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->putCompletePurchaseParameters(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    .line 140
    .local v2, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v10, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v10, v1, v8, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 142
    .local v10, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v7, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v7, v10}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 144
    .local v7, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V

    goto :goto_19
.end method

.method public getCompleteParams()Ljava/util/Map;
    .registers 5
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
    .line 225
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 226
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, simIdentifier:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 228
    const-string v2, "dcbch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_17
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 231
    const-string v2, "dcbpassphrase"

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_26
    return-object v0
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
    .line 214
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v1

    if-nez v1, :cond_26

    .line 215
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    .end local v0           #messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_25
    return-object v0

    :cond_26
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v0

    goto :goto_25
.end method

.method public hasMessages()Z
    .registers 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->hasMessages()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .registers 2
    .parameter "passphrase"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    .line 309
    return-void
.end method
