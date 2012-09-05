.class public Lcom/google/android/finsky/billing/CheckoutPurchase;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/CheckoutPurchase$1;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Error;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;"
    }
.end annotation


# static fields
.field private static sValidTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private mCheckoutToken:Ljava/lang/String;

.field private final mCheckoutTokenAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private mCompletingHasAcceptedTos:Z

.field private mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mCompletingRiskHeader:Ljava/lang/String;

.field private mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDocId:Ljava/lang/String;

.field private mEligibleInstrumentFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private final mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentRequired:Z

.field private mInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckoutTokenRetry:Z

.field private mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

.field private mNumAuthRetries:I

.field private final mOfferType:I

.field private mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPreparingRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private mPurchaseStatusUrl:Ljava/lang/String;

.field private mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field private mTosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v7

    const/4 v3, 0x3

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-static {}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->values()[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Ljava/lang/String;I)V
    .registers 7
    .parameter "dfeApi"
    .parameter "checkoutTokenAuthenticator"
    .parameter "instrumentFactory"
    .parameter "docId"
    .parameter "offerType"

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    .line 245
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 301
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 302
    iput-object p3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 303
    iput-object p4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDocId:Ljava/lang/String;

    .line 304
    iput p5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    .line 305
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutTokenAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 306
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 307
    return-void
.end method

.method private cancelCurrentAction()V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_f

    .line 543
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 545
    :cond_f
    return-void
.end method

.method private checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, p1, :cond_2f

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This operation is only valid in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_2f
    return-void
.end method

.method private checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 590
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition from state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_31
    return-void
.end method

.method private checkTosAcceptance()V
    .registers 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 597
    const-string v0, "TOSes to accept present, not all were accepted!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :cond_e
    return-void
.end method

.method private getAuthTokenAsyncAndPerformRequest()V
    .registers 5

    .prologue
    .line 660
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    if-nez v1, :cond_18

    :cond_8
    const/4 v0, 0x1

    .line 661
    .local v0, forceReauth:Z
    :goto_9
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutTokenAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V

    .line 663
    return-void

    .line 660
    .end local v0           #forceReauth:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private populateFieldsFromBuyResponse()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 760
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 761
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v6

    .line 762
    .local v6, optionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 763
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 764
    .local v5, option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(I)Z

    move-result v8

    if-nez v8, :cond_51

    .line 765
    const-string v8, "Ignoring instrument [%s,id=%s]. Instrument %d family not supported."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 771
    :cond_51
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 773
    .local v0, addInstrumentIcon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9, v5, v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->get(ILcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v3

    .line 775
    .local v3, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSelectedInstrument()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 776
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 778
    :cond_6d
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 780
    .end local v0           #addInstrumentIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v5           #option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_73
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 781
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentFamilyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 782
    .local v4, instrumentFamily:I
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v8, v4}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(I)Z

    move-result v8

    if-nez v8, :cond_a8

    .line 783
    const-string v8, "Ignoring eligible instrument family %d. Not supported."

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_82

    .line 787
    :cond_a8
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 789
    .end local v4           #instrumentFamily:I
    :cond_b2
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c4

    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_c4

    .line 792
    iput-boolean v12, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 795
    :cond_c4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 796
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 798
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 799
    .local v7, tosList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;>;"
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 800
    .local v1, html:Ljava/lang/String;
    new-instance v8, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    invoke-direct {v8, p0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dd

    .line 802
    .end local v1           #html:Ljava/lang/String;
    :cond_f2
    iput-object v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    .line 803
    return-void
.end method

.method private queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V
    .registers 11
    .parameter "instrument"

    .prologue
    const/4 v2, 0x0

    .line 645
    if-eqz p1, :cond_1f

    .line 646
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDocId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getEncodedAdjustedCart()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/Instrument;->getCompleteParams()Ljava/util/Map;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 656
    :goto_1e
    return-void

    .line 650
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 651
    const-string v0, "Instrument is required, but completing request does not have any"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    :cond_2d
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object v4, v2

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1e
.end method

.method private queuePreparingRequest()V
    .registers 12

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_2b

    .line 626
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDocId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v4, v4, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v5, v5, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget v6, v6, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget-object v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v7, v7, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAllPrepareParameters()Ljava/util/Map;

    move-result-object v8

    move-object v9, p0

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 637
    :goto_2a
    return-void

    .line 634
    :cond_2b
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDocId:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAllPrepareParameters()Ljava/util/Map;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    goto :goto_2a
.end method

.method private retryLastRequest()V
    .registers 3

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_14

    .line 667
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in state PREPARING or COMPLETING for retry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_14
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 671
    return-void
.end method

.method private setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V
    .registers 7
    .parameter "error"
    .parameter "volleyError"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 533
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 534
    const-string v0, "type=%s, code=%d, message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 536
    return-void
.end method

.method private transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 555
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 556
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->cancelCurrentAction()V

    .line 557
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 558
    .local v0, from:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 559
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    if-eqz v1, :cond_16

    .line 560
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 562
    :cond_16
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p1, v1, :cond_20

    .line 563
    iput-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 564
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    .line 573
    :cond_1f
    :goto_1f
    return-void

    .line 565
    :cond_20
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq p1, v1, :cond_1f

    .line 567
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p1, v1, :cond_2e

    .line 568
    iput-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 569
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    goto :goto_1f

    .line 570
    :cond_2e
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne p1, v1, :cond_1f

    goto :goto_1f
.end method


# virtual methods
.method public areAllTossesAccepted()Z
    .registers 4

    .prologue
    .line 606
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 607
    .local v1, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    iget-boolean v2, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    if-nez v2, :cond_6

    .line 608
    const/4 v2, 0x0

    .line 611
    .end local v1           #tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x1

    goto :goto_17
.end method

.method public attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 376
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 377
    return-void
.end method

.method public complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V
    .registers 4
    .parameter "instrument"
    .parameter "riskHeader"

    .prologue
    .line 471
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 472
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkTosAcceptance()V

    .line 473
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    .line 478
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 479
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 480
    return-void

    .line 477
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 381
    return-void
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .registers 2

    .prologue
    .line 401
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;
    .registers 2

    .prologue
    .line 436
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    return-object v0
.end method

.method public getEligibleInstrumentFamilies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    return-object v0
.end method

.method public getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    .registers 2

    .prologue
    .line 511
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    return-object v0
.end method

.method public getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;
    .registers 5
    .parameter "instrumentId"

    .prologue
    .line 427
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/Instrument;

    .line 428
    .local v1, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    .end local v1           #instrument:Lcom/google/android/finsky/billing/Instrument;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public getInstruments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    return-object v0
.end method

.method public getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .registers 2

    .prologue
    .line 506
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method

.method public getStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .registers 2

    .prologue
    .line 498
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getStatusUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 489
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .registers 2

    .prologue
    .line 516
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public isInstrumentRequired()Z
    .registers 2

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    return v0
.end method

.method public onAuthTokenReceived(Ljava/lang/String;)V
    .registers 5
    .parameter "authToken"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    .line 809
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$1;->$SwitchMap$com$google$android$finsky$billing$CheckoutPurchase$State:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 817
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know which request to send for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :pswitch_2e
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queuePreparingRequest()V

    .line 820
    :goto_31
    return-void

    .line 814
    :pswitch_32
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V

    goto :goto_31

    .line 809
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method public onErrorReceived(Lcom/android/volley/AuthFailureError;)V
    .registers 7
    .parameter "error"

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not retrieve Checkout auth token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v4, :cond_32

    const v0, 0x7f070064

    :goto_2b
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 829
    return-void

    .line 825
    :cond_32
    const v0, 0x7f070065

    goto :goto_2b
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 12
    .parameter "error"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 676
    instance-of v3, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v3, :cond_41

    .line 677
    const-string v3, "Auth failure. Retry [n=%d,max=%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 678
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 679
    .local v0, authFailureError:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 680
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 696
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_32
    :goto_32
    return-void

    .line 681
    .restart local v0       #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_33
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    if-ge v3, v9, :cond_32

    .line 683
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 684
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_32

    .line 687
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_41
    const-string v3, "%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 689
    .local v1, errorType:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    instance-of v3, p1, Lcom/android/volley/ServerError;

    if-nez v3, :cond_58

    instance-of v3, p1, Lcom/android/volley/NetworkError;

    if-nez v3, :cond_58

    instance-of v3, p1, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_5a

    .line 691
    :cond_58
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 693
    :cond_5a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, message:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-direct {v3, v1, v6, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_32
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    const v5, 0x7f070064

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 701
    iput v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 702
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 703
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-eqz v0, :cond_24

    .line 704
    const-string v0, "Checkout token still invalid after having sent a fresh one."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 757
    :goto_23
    return-void

    .line 709
    :cond_24
    const-string v0, "Checkout token invalid, invalidating and retrying request."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 711
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_23

    .line 714
    :cond_32
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 715
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_79

    .line 716
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 717
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 718
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_23

    .line 720
    :cond_59
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 721
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromBuyResponse()V

    .line 722
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_23

    .line 724
    :cond_6e
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_23

    .line 727
    :cond_79
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_f1

    .line 728
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 729
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 730
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c7

    .line 731
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusResponse:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 733
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const v2, 0x7f070073

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 752
    :goto_b1
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    goto/16 :goto_23

    .line 737
    :cond_b5
    const-string v0, "PurchaseStatusResponse rejected without known address info"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_b1

    .line 742
    :cond_c7
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_b1

    .line 744
    :cond_cd
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 745
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusUrl:Ljava/lang/String;

    .line 746
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_b1

    .line 748
    :cond_df
    const-string v0, "BuyResponse without purchaseStatusUrl."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_b1

    .line 754
    :cond_f1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received network response while in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method

.method public prepare()V
    .registers 2

    .prologue
    .line 391
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 392
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "bundle"

    .prologue
    .line 335
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v3

    .line 336
    .local v3, restoredState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 337
    const-string v4, "iab_parameters"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 339
    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v3, v4, :cond_2a

    .line 340
    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 341
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 372
    :goto_29
    return-void

    .line 343
    :cond_2a
    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v3, v4, :cond_46

    .line 345
    new-instance v4, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v5, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    const v8, 0x7f070066

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_29

    .line 349
    :cond_46
    const-string v4, "buy_response"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 350
    const-string v4, "buy_response"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 352
    .local v0, checkoutInfoParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 353
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromBuyResponse()V

    .line 355
    .end local v0           #checkoutInfoParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;>;"
    :cond_61
    const-string v4, "instrument_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 356
    const-string v4, "instrument_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, instrumentId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 358
    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v4, :cond_92

    .line 359
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find instrument with persisted ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    .end local v1           #instrumentId:Ljava/lang/String;
    :cond_92
    const-string v4, "risk_header"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 364
    const-string v4, "risk_header"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 366
    :cond_a2
    const-string v4, "rejected_instrument"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 367
    const-string v4, "rejected_instrument"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 369
    .local v2, rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 371
    .end local v2           #rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    :cond_ba
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    goto/16 :goto_29
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 310
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "error"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 312
    const-string v0, "num_auth_retries"

    iget v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v0, "checkout_token"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_2b

    .line 315
    const-string v0, "iab_parameters"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    :cond_2b
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    if-eqz v0, :cond_3a

    .line 318
    const-string v0, "buy_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mBuyResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 321
    :cond_3a
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_49

    .line 322
    const-string v0, "instrument_id"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_49
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 325
    const-string v0, "risk_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_54
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_63

    .line 328
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    :cond_63
    return-void
.end method

.method public setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V
    .registers 2
    .parameter "iabParameters"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 459
    return-void
.end method
