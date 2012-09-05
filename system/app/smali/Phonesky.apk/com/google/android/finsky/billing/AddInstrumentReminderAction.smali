.class public Lcom/google/android/finsky/billing/AddInstrumentReminderAction;
.super Ljava/lang/Object;
.source "AddInstrumentReminderAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V
    .registers 4
    .parameter "activity"
    .parameter "dfeApi"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 60
    invoke-virtual {p2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 62
    return-void
.end method

.method private checkInstrument()V
    .registers 5

    .prologue
    .line 115
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    sget-object v1, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 117
    .local v0, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V

    .line 118
    return-void
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_9
    return-void
.end method

.method private isRecent()Z
    .registers 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastValidInstrumentCheckMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v0, Lcom/google/android/finsky/config/G;->instrumentCheckLifetimeMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private static showAddInstrumentReminder(Lcom/google/android/finsky/activities/MainActivity;Landroid/accounts/Account;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V
    .registers 6
    .parameter "mainActivity"
    .parameter "account"
    .parameter "storage"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, instrumentFamily:I
    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isNetworkReady()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 167
    const/4 v0, 0x2

    .line 169
    :cond_e
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/finsky/activities/AddInstrumentReminderActivity;->createIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 170
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .registers 5
    .parameter "authToken"

    .prologue
    .line 128
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 129
    .local v1, storage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, dcbInstrumentKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2, p1, v0, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->checkInstrument(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 131
    return-void
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 135
    const-string v0, "Could not retrieve Checkout auth token."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    .line 137
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 153
    const-string v0, "Could not check instrument status."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    .line 155
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 141
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;->getUserHasValidInstrument()Z

    move-result v0

    .line 142
    .local v0, userHasValidInstrument:Z
    const-string v1, "User has valid credit card: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    if-eqz v0, :cond_24

    .line 144
    iget-object v1, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingPreferences;->getStopAddInstrumentReminder(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 146
    :cond_24
    iget-object v1, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastValidInstrumentCheckMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    .line 149
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)V

    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .registers 9
    .parameter "finishRunnable"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 65
    iput-object p1, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mFinishRunnable:Ljava/lang/Runnable;

    .line 66
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/DfeExperiments;

    move-result-object v2

    const-string v3, "cl:billing.add_instrument_reminder"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/experiments/DfeExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 68
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    .line 111
    :goto_1a
    return-void

    .line 71
    :cond_1b
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v0

    .line 72
    .local v0, marketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 74
    :cond_31
    const-string v2, "Paid apps and IAB disabled, inhibiting reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto :goto_1a

    .line 78
    :cond_3c
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingPreferences;->getStopAddInstrumentReminder(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 79
    const-string v2, "Instrument reminder disabled, inhibiting reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto :goto_1a

    .line 83
    :cond_5b
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastAddDcbCanceledMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_7c

    .line 84
    const-string v2, "User has canceled adding DCB, inhibiting reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto :goto_1a

    .line 89
    :cond_7c
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 90
    .local v1, storage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->isRecent()Z

    move-result v2

    if-nez v2, :cond_91

    .line 91
    const-string v2, "No recent checkInstrument information, fetching."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->checkInstrument()V

    goto :goto_1a

    .line 95
    :cond_91
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 96
    const-string v2, "Unknown provisioning status, deferring instrument reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto/16 :goto_1a

    .line 100
    :cond_a3
    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v2

    if-nez v2, :cond_db

    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastAddCreditcardCanceledMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_db

    .line 102
    const-string v2, "Not DCB provisioned and canceled add credit card, disabling instrument reminder."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingPreferences;->getStopAddInstrumentReminder(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto/16 :goto_1a

    .line 109
    :cond_db
    iget-object v2, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v3, p0, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->showAddInstrumentReminder(Lcom/google/android/finsky/activities/MainActivity;Landroid/accounts/Account;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V

    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/billing/AddInstrumentReminderAction;->finish()V

    goto/16 :goto_1a
.end method
