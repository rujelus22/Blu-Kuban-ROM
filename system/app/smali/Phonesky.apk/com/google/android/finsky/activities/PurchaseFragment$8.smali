.class Lcom/google/android/finsky/activities/PurchaseFragment$8;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;->attemptDocLoadFromPurchaseDocId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 739
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInnerDetails:Lcom/google/android/finsky/api/model/DfeDetails;
    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    #setter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mPurchaseDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1702(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    .line 740
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->documentSuccessfullyFound()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1800(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    .line 744
    :goto_20
    return-void

    .line 742
    :cond_21
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$8;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showDocumentLoadError(Lcom/android/volley/VolleyError;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$1900(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_20
.end method
