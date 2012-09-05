.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
.super Ljava/lang/Object;
.source "CarrierBillingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private carrierApiVersion:I

.field private carrierIconId:Ljava/lang/String;

.field private getCredentialsUrl:Ljava/lang/String;

.field private getProvisioningUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mncMccs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private passwordRequired:Z

.field private perTransactionCredentialsRequired:Z

.field private sendSubscriberInfoWithCarrierRequests:Z

.field private showCarrierTos:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->passwordRequired:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->mncMccs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierIconId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .registers 3

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;)V

    return-object v0
.end method

.method public setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "carrierApiVersion"

    .prologue
    .line 189
    iput p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I

    .line 190
    return-object p0
.end method

.method public setCarrierIconId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "carrierIconId"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierIconId:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "getCredentialsUrl"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "getProvisioningUrl"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "id"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setMncMccs(Ljava/util/List;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, mncMccs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->mncMccs:Ljava/util/List;

    .line 170
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "name"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "perTransactionCredentialsRequired"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z

    .line 195
    return-object p0
.end method

.method public setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "sendSubscriberInfoWithCarrierRequests"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z

    .line 200
    return-object p0
.end method

.method public setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    .registers 2
    .parameter "showCarrierTos"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z

    .line 186
    return-object p0
.end method
