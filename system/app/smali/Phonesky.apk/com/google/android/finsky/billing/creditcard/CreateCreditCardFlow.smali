.class public Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "CreateCreditCardFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;,
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;,
        Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/billing/BillingFlow;",
        "Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

.field private mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private final mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

.field private mCreditCardNumber:Ljava/lang/String;

.field private mCvc:Ljava/lang/String;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

.field private mReferrerListCookie:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V
    .registers 8
    .parameter "context"
    .parameter "listener"
    .parameter "checkoutAuthenticator"
    .parameter "dfeApi"
    .parameter "analytics"
    .parameter "parameters"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p6}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 113
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 122
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    .line 137
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 138
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 139
    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 140
    if-eqz p6, :cond_39

    .line 141
    const-string v0, "ui_mode"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 142
    const-string v0, "ui_mode"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 145
    :cond_29
    const-string v0, "referrer_url"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerUrl:Ljava/lang/String;

    .line 146
    const-string v0, "referrer_list_cookie"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerListCookie:Ljava/lang/String;

    .line 148
    :cond_39
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->queueUpdateCreditCardRequest(Ljava/lang/String;)V

    return-void
.end method

.method private static allCorporaEnabled()Z
    .registers 2

    .prologue
    .line 231
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    .line 232
    .local v0, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v0, :cond_13

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getCheckoutTokenAndQueueUpdateRequest()V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V

    .line 306
    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->enableUi(Z)V

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 278
    return-void
.end method

.method private isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z
    .registers 4
    .parameter "updateFopResponse"

    .prologue
    .line 285
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
    .line 289
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
    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mReferrerListCookie:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCreditCardError?error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private queueEscrowCredentialsRequest()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 315
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v2, Lcom/google/android/finsky/config/G;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    xor-long v2, v3, v7

    invoke-direct {v6, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 316
    .local v6, rnd:Ljava/util/Random;
    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 317
    .local v1, userId:I
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;

    invoke-direct {v4, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;

    invoke-direct {v5, p0, v9}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 319
    .local v0, escrowRequest:Lcom/google/android/finsky/billing/creditcard/EscrowRequest;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 321
    iput-object v9, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    .line 322
    iput-object v9, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    .line 323
    return-void
.end method

.method private queueUpdateCreditCardRequest(Ljava/lang/String;)V
    .registers 4
    .parameter "checkoutToken"

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;-><init>()V

    .line 310
    .local v0, request:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;->setInstrument(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;

    .line 311
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->updateInstrument(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentRequest;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 312
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 5
    .parameter "htmlMessage"

    .prologue
    const/4 v2, 0x0

    .line 363
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 364
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 366
    const-string v0, "No fragment manager, swallowing error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :goto_1a
    return-void

    .line 369
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_1a
.end method

.method private showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->displayErrors(Ljava/util/List;)V

    .line 282
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_a

    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->enableUi(Z)V

    .line 270
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f070051

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 271
    return-void
.end method


# virtual methods
.method public back()V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_c

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 248
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->cancel()V

    .line 249
    return-void
.end method

.method public canGoBack()Z
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

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
    .line 253
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingPreferences;->getLastAddCreditcardCanceledMillis(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    .line 256
    .local v1, lastCanceled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 257
    const-string v2, "addCreditCardCancel"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 258
    invoke-super {p0}, Lcom/google/android/finsky/billing/BillingFlow;->cancel()V

    .line 259
    return-void
.end method

.method public onAddCreditCardResult(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 7
    .parameter "result"
    .parameter "creditCardNumber"
    .parameter "cvc"
    .parameter "instrument"

    .prologue
    .line 328
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_13

    .line 329
    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCreditCardNumber:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mCvc:Ljava/lang/String;

    .line 331
    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 332
    const-string v0, "addCreditCardConfirm"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 343
    :cond_12
    :goto_12
    return-void

    .line 334
    :cond_13
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_27

    .line 335
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 336
    const-string v0, "Add credit card canceled."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->cancel()V

    goto :goto_12

    .line 339
    :cond_27
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    if-ne p1, v0, :cond_12

    .line 340
    const-string v0, "UNKNOWN"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 357
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onInitialized()V
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 353
    return-void
.end method

.method public onInitializing()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const/high16 v1, 0x7f07

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 348
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 376
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 377
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method

.method protected performNext()V
    .registers 6

    .prologue
    const v3, 0x7f070067

    .line 191
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_38

    .line 192
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 193
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mParameters:Landroid/os/Bundle;

    const-string v2, "cardholder_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, cardholderName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->allCorporaEnabled()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->newInstance(Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    .line 196
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setOnResultListener(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    const v3, 0x7f070042

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 228
    .end local v0           #cardholderName:Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 198
    :cond_38
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_49

    .line 199
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 200
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showProgress()V

    .line 201
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->queueEscrowCredentialsRequest()V

    goto :goto_37

    .line 202
    :cond_49
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->ESCROWING_CREDENTIALS:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_57

    .line 203
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 204
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->getCheckoutTokenAndQueueUpdateRequest()V

    goto :goto_37

    .line 205
    :cond_57
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-ne v1, v2, :cond_37

    .line 206
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 207
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    if-nez v1, :cond_7d

    .line 208
    const-string v1, "AddCreditCard Response is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const-string v1, "UNKNOWN"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto :goto_37

    .line 211
    :cond_7d
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->isSuccess(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 212
    const-string v1, "addCreditCardSuccess"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->DONE:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->finish()V

    goto :goto_37

    .line 215
    :cond_92
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->isRetryableError(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 216
    const-string v1, "INVALID_INPUT"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showFormErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    goto :goto_37

    .line 220
    :cond_a9
    const-string v1, "UNKNOWN"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->hasUserMessageHtml()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 222
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 224
    :cond_c1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->INIT:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_c

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 161
    :cond_c
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->SHOWING_FORM:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    if-eq v0, v1, :cond_24

    .line 165
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->hideProgress()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->finish()V

    .line 168
    :cond_24
    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setOnResultListener(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;)V

    .line 173
    :cond_3d
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 177
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mState:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    if-eqz v0, :cond_18

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mAddCreditCardFragment:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 181
    :cond_18
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 152
    const-string v0, "addCreditCard"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->log(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 154
    return-void
.end method
