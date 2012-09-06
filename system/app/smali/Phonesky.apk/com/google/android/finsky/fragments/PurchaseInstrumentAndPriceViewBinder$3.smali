.class Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;
.super Ljava/lang/Object;
.source "PurchaseInstrumentAndPriceViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

.field final synthetic val$lineItems:Ljava/util/List;

.field final synthetic val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

.field final synthetic val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$lineItems:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    iput-object p4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableExpanded:Z
    invoke-static {v1, v2}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1302(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Z)Z

    .line 547
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTableSummaryRow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1600(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    .line 548
    .local v0, hadFocus:Z
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$lineItems:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$total:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->val$summary:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    #calls: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->setupPriceTable(Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1500(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;Ljava/util/List;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;Lcom/google/android/finsky/remoting/protos/Buy$LineItem;)V

    .line 549
    if-eqz v0, :cond_37

    .line 550
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_38

    .line 551
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 556
    :cond_37
    :goto_37
    return-void

    .line 553
    :cond_38
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder$3;->this$0:Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->mPriceTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;->access$1400(Lcom/google/android/finsky/fragments/PurchaseInstrumentAndPriceViewBinder;)Landroid/widget/TableLayout;

    move-result-object v1

    const v2, 0x7f0801a6

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_37
.end method
