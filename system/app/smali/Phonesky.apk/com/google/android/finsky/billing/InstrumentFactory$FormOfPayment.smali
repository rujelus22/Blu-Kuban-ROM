.class public abstract Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;
.super Ljava/lang/Object;
.source "InstrumentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/InstrumentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FormOfPayment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canAdd()Z
.end method

.method public abstract create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public abstract get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
.end method

.method public abstract getAddIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAddText()Ljava/lang/String;
.end method

.method public getCreateIntent(Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 13
    .parameter "accountName"
    .parameter "backendId"
    .parameter "uiMode"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;->getInstrumentFamily()I

    move-result v1

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->createIntent(Ljava/lang/String;IILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getInstrumentFamily()I
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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getUpdateAddressText()Ljava/lang/String;
.end method

.method public abstract updateAddress(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 2
    .parameter "instrument"

    .prologue
    .line 92
    return-void
.end method
