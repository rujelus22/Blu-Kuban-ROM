.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;
.super Ljava/lang/Object;
.source "CarrierOutAssociation.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;)V
    .registers 3
    .parameter "dfeApi"

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V
    .registers 4
    .parameter "dfeApi"
    .parameter "storage"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method private dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 139
    :cond_9
    return-void
.end method

.method private dispatchError()V
    .registers 4

    .prologue
    .line 122
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v0

    .line 124
    .local v0, response:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    .line 125
    return-void
.end method

.method private formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "googleUserToken"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    .line 94
    .local v0, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getRequestUserTokenText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initiateAssociation()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 143
    return-void
.end method

.method private sendGutToCarrier(Ljava/lang/String;)V
    .registers 7
    .parameter "googleUserToken"

    .prologue
    .line 76
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    .line 78
    .local v1, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getRequestUserTokenTo()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, addressToSendSms:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 80
    const-string v3, "Address to send SMS is unavailable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    .line 87
    :goto_1b
    return-void

    .line 85
    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, textToSend:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;)V

    goto :goto_1b
.end method

.method private verifyAssociation()V
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/finsky/api/DfeApi;->verifyAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 153
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 72
    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 73
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while receiving Volley response in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_28

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 133
    :cond_28
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->getUserToken()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, googleUserToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->sendGutToCarrier(Ljava/lang/String;)V

    .line 119
    :goto_d
    return-void

    .line 116
    :cond_e
    const-string v1, "Invalid Google User Token received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    goto :goto_d
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)V

    return-void
.end method

.method public onResult(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    if-ne p1, v0, :cond_10

    .line 101
    const-string v0, "Sending Sms Failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    .line 107
    :goto_f
    return-void

    .line 104
    :cond_10
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 105
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    goto :goto_f
.end method

.method public resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .parameter "bundle"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;>;"
    const-string v0, "association_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 164
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 165
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    if-ne v0, v1, :cond_1a

    .line 167
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    .line 171
    :goto_19
    return-void

    .line 169
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->initiateAssociation()V

    goto :goto_19
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 157
    const-string v0, "association_state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 5
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 62
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 64
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 66
    return-void
.end method
