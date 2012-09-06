.class public Lcom/google/android/finsky/billing/UpdateAddressFlow;
.super Lcom/google/android/finsky/billing/InstrumentFlow;
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
        "Lcom/google/android/finsky/billing/InstrumentFlow;",
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
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .registers 9
    .parameter "context"
    .parameter "listener"
    .parameter "checkoutAuthenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/google/android/finsky/billing/InstrumentFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Landroid/os/Bundle;)V

    .line 70
    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 93
    iput-object p4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 94
    iput-object p5, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 95
    if-eqz p6, :cond_3f

    .line 96
    const-string v1, "referrer_url"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    .line 97
    const-string v1, "referrer_list_cookie"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 98
    const-string v1, "update_address_header"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 100
    const-string v1, "extra_paramters"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, extraParams:Landroid/os/Bundle;
    const-string v1, "rejected_instrument"

    invoke-static {p6, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 103
    const-string v1, "instrument_display_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 106
    .end local v0           #extraParams:Landroid/os/Bundle;
    :cond_3f
    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_a

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 262
    return-void
.end method

.method private isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .registers 4
    .parameter "updateFopResponse"

    .prologue
    .line 269
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
    .line 273
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
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 5
    .parameter "htmlMessage"

    .prologue
    const/4 v2, 0x0

    .line 290
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 291
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 293
    const-string v0, "No fragment manager, swallowing error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :goto_1a
    return-void

    .line 296
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
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->displayErrors(Ljava/util/List;)V

    .line 266
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_a

    .line 252
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->enableUi(Z)V

    .line 254
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f07004b

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 255
    return-void
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_c

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 236
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    .line 237
    return-void
.end method

.method public canGoBack()Z
    .registers 3

    .prologue
    .line 247
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
    .registers 2

    .prologue
    .line 241
    const-string v0, "updateAddressCancel"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Lcom/google/android/finsky/billing/InstrumentFlow;->cancel()V

    .line 243
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 285
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onInitialized()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 162
    return-void
.end method

.method public onInitializing()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const/high16 v1, 0x7f07

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 157
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 303
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 304
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
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
    .line 166
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_a

    .line 167
    iput-object p2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 177
    :cond_9
    :goto_9
    return-void

    .line 169
    :cond_a
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_1e

    .line 170
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 171
    const-string v0, "Update address canceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->cancel()V

    goto :goto_9

    .line 174
    :cond_1e
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener$Result;

    if-ne p1, v0, :cond_9

    .line 175
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected performNext()V
    .registers 7

    .prologue
    const v3, 0x7f070072

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_37

    .line 190
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iget-object v3, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    const v2, 0x7f07006f

    invoke-interface {v0, v1, v2, v5}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 195
    const-string v0, "updateAddress"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 225
    :cond_36
    :goto_36
    return-void

    .line 196
    :cond_37
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_48

    .line 197
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 198
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showProgress()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_36

    .line 200
    :cond_48
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-ne v0, v1, :cond_36

    .line 201
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v0, :cond_6d

    .line 203
    const-string v0, "Null response to an update address request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 205
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_36

    .line 206
    :cond_6d
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 207
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->DONE:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 208
    const-string v0, "updateAddressSuccess"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finishWithUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_36

    .line 210
    :cond_84
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 211
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->getAuthTokenAndContinue(Z)V

    goto :goto_36

    .line 212
    :cond_90
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 213
    sget-object v0, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    .line 215
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto :goto_36

    .line 217
    :cond_a7
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    .line 222
    :goto_b8
    const-string v0, "updateAddressError"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->log(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 220
    :cond_bf
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->showError(Ljava/lang/String;)V

    goto :goto_b8
.end method

.method public performRequestWithToken(Ljava/lang/String;)V
    .registers 4
    .parameter "checkoutToken"

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 279
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 280
    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 281
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->INIT:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_f

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 119
    :cond_f
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    .line 120
    const-string v0, "update_address_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    if-eq v0, v1, :cond_2f

    .line 124
    invoke-direct {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->hideProgress()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->finish()V

    .line 127
    :cond_2f
    const-string v0, "update_address_fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "update_address_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/UpdateAddressFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/UpdateAddressFragment;->setOnResultListener(Lcom/google/android/finsky/billing/UpdateAddressFragment$UpdateAddressResultListener;)V

    .line 133
    :cond_48
    const-string v0, "instrument_display_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    .line 135
    const-string v0, "rejected_instrument"

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 137
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/finsky/billing/InstrumentFlow;->saveState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mState:Lcom/google/android/finsky/billing/UpdateAddressFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/UpdateAddressFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    const-string v0, "instrument_display_name"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mInstrumentDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "update_address_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    if-eqz v0, :cond_34

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "update_address_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/UpdateAddressFlow;->mUpdateAddressFragment:Lcom/google/android/finsky/billing/UpdateAddressFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 151
    :cond_34
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/UpdateAddressFlow;->performNext()V

    .line 111
    return-void
.end method
