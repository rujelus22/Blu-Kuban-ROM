.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;
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
    name = "AddInstrumentSelectorItem"
.end annotation


# instance fields
.field private mFamilyType:I

.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;I)V
    .registers 3
    .parameter
    .parameter "familyType"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I

    .line 223
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I

    return v0
.end method


# virtual methods
.method public getInstrument()Lcom/google/android/finsky/billing/Instrument;
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->canAdd(I)Z

    move-result v0

    return v0
.end method

.method public isValidSelection()Z
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public onSelected(Z)V
    .registers 4
    .parameter "isUserInitiatedSelection"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const/4 v1, 0x0

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mOnInstrumentSelectedListener:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$700(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I

    invoke-interface {v0, v1, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$OnInstrumentSelectedListener;->onAddInstrument(IZ)V

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$800(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$AddInstrumentSelectorItem;->mFamilyType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
