.class public Lcom/google/android/finsky/billing/UpdateAddressFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "UpdateAddressFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/UpdateAddressFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/BillingFlow;",
        "Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mHeaderText:Ljava/lang/String;

.field private mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mInstrumentDisplayName:Ljava/lang/String;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

.field private mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

.field private mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .registers 10
    .parameter "context"
    .parameter "listener"
    .parameter "checkoutAuthenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p6}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 74
    sget-object v2, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 97
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 98
    iput-object p3, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 99
    iput-object p4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 100
    iput-object p5, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 101
    if-eqz p6, :cond_47

    .line 102
    const-string v2, "referrer_url"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    .line 103
    const-string v2, "referrer_list_cookie"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 104
    const-string v2, "update_address_header"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 106
    const-string v2, "extra_paramters"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, extraParams:Landroid/os/Bundle;
    const-string v2, "rejected_instrument"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 109
    .local v1, rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 110
    const-string v2, "instrument_display_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 113
    .end local v0           #extraParams:Landroid/os/Bundle;
    .end local v1           #rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    :cond_47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/UpdateAddressFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->queueUpdateCreditCardRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/UpdateAddressFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private getCheckoutTokenAndQueueUpdateRequest()V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    new-instance v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow$1;-><init>(Lcom/google/android/finsky/billing/UpdateAddressFlow;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V

    .line 300
    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_a

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 269
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 270
    return-void
.end method

.method private isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .registers 4
    .parameter "updateFopResponse"

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .registers 3
    .parameter "updateFopResponse"

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private queueUpdateCreditCardRequest(Ljava/lang/String;)V
    .registers 4
    .parameter "checkoutToken"

    .prologue
    .line 303
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 304
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 305
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 306
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 5
    .parameter "htmlMessage"

    .prologue
    const/4 v2, 0x0

    .line 315
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 316
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 318
    const-string v0, "No fragment manager, swallowing error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :goto_1a
    return-void

    .line 321
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1a
.end method

.method private showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->displayErrors(Ljava/util/List;)V

    .line 274
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_a

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 262
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f070051

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_c

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 240
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    .line 241
    return-void
.end method

.method public canGoBack()Z
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public cancel()V
    .registers 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastAddCreditcardCanceledMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    .line 248
    .local v1, lastCanceled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 249
    const-string v2, "updateAddressCancel"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/google/android/finsky/billing/BillingFlow;->cancel()V

    .line 251
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 310
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onInitialized()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 168
    return-void
.end method

.method public onInitializing()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const/high16 v1, 0x7f07

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 163
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 328
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 329
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method public onUpdateAddressResult(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 5
    .parameter "result"
    .parameter "instrument"

    .prologue
    .line 172
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_a

    .line 173
    iput-object p2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 183
    :cond_9
    :goto_9
    return-void

    .line 175
    :cond_a
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_1e

    .line 176
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 177
    const-string v0, "Update address canceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    goto :goto_9

    .line 180
    :cond_1e
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_9

    .line 181
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected performNext()V
    .registers 6

    .prologue
    const v2, 0x7f070077

    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_36

    .line 196
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iget-object v3, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const v2, 0x7f070074

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 201
    const-string v0, "updateAddress"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 229
    :cond_35
    :goto_35
    return-void

    .line 202
    :cond_36
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_47

    .line 203
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 204
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showProgress()V

    .line 205
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->getCheckoutTokenAndQueueUpdateRequest()V

    goto :goto_35

    .line 206
    :cond_47
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_35

    .line 207
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_6d

    .line 209
    const-string v0, "Null response to an update address request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 211
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 212
    :cond_6d
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 213
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finish()V

    .line 215
    const-string v0, "updateAddressSuccess"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 216
    :cond_82
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 217
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    .line 219
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 221
    :cond_99
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 226
    :goto_aa
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_35

    .line 224
    :cond_b0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_aa
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v1, v2, :cond_c

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 125
    :cond_c
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 126
    const-string v1, "update_address_header"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v1, v2, :cond_2c

    .line 130
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finish()V

    .line 133
    :cond_2c
    const-string v1, "fragment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 134
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v2, "fragment"

    invoke-interface {v1, p1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/UpdateAddressFragment;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 136
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 139
    :cond_45
    const-string v1, "instrument_display_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 141
    const-string v1, "rejected_instrument"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 143
    .local v0, rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 144
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 148
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    const-string v0, "instrument_display_name"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "update_address_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_31

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 157
    :cond_31
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 118
    return-void
.end method
