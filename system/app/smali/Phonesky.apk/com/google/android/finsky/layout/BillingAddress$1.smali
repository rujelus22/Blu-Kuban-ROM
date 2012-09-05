.class Lcom/google/android/finsky/layout/BillingAddress$1;
.super Ljava/lang/Object;
.source "BillingAddress.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/BillingAddress;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/BillingAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    #getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$000(Lcom/google/android/finsky/layout/BillingAddress;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 195
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    #getter for: Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    #getter for: Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 202
    :cond_28
    :goto_28
    return-void

    .line 199
    :cond_29
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    #getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress$1;->this$0:Lcom/google/android/finsky/layout/BillingAddress;

    #getter for: Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    invoke-static {v1}, Lcom/google/android/finsky/layout/BillingAddress;->access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;->onBillingCountryChanged(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V

    goto :goto_28
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/BillingAddress$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 207
    return-void
.end method
