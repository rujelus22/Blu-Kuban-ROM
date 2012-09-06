.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$InstrumentSelectorItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExistingInstrumentSelectorItem"
.end annotation


# instance fields
.field private final mInstrument:Lcom/google/android/finsky/billing/Instrument;

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V
    .registers 3
    .parameter
    .parameter "instrument"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 189
    return-void
.end method


# virtual methods
.method public getInstrument()Lcom/google/android/finsky/billing/Instrument;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v0

    return v0
.end method

.method public isValidSelection()Z
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onSelected(Z)V
    .registers 4
    .parameter "isUserInitiatedSelection"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;->onInstrumentSelected(Lcom/google/android/finsky/billing/Instrument;)V

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$ExistingInstrumentSelectorItem;->mInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/Instrument;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
