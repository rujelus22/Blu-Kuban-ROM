.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;
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
    name = "PlaceholderInstrumentSelectorItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;-><init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)V

    return-void
.end method


# virtual methods
.method public getInstrument()Lcom/google/android/finsky/billing/Instrument;
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isValidSelection()Z
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onSelected(Z)V
    .registers 4
    .parameter "isUserInitiatedSelection"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$PlaceholderInstrumentSelectorItem;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const/4 v1, 0x0

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->updatePriceFromInstrument(Lcom/google/android/finsky/billing/Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Lcom/google/android/finsky/billing/Instrument;)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const-string v0, ""

    return-object v0
.end method
