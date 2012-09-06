.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;
.super Ljava/lang/Object;
.source "AccountAssociationFactoryImpl.java"


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;)V
    .registers 2
    .parameter "dfeApi"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 17
    return-void
.end method


# virtual methods
.method public createAccountAssociationAction()Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
    .registers 3

    .prologue
    .line 21
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getAssociationMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 25
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 23
    :pswitch_11
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/AccountAssociationFactoryImpl;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    goto :goto_10

    .line 21
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method
