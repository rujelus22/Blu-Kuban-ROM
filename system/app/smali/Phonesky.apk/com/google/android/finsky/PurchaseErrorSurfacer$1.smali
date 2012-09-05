.class final Lcom/google/android/finsky/PurchaseErrorSurfacer$1;
.super Ljava/lang/Object;
.source "PurchaseErrorSurfacer.java"

# interfaces
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/PurchaseErrorSurfacer;->initialize(Lcom/google/android/finsky/model/PurchaseStatusTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 8
    .parameter "docId"
    .parameter "status"

    .prologue
    .line 28
    iget-object v1, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne v1, v2, :cond_2f

    .line 29
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 30
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    if-eqz v0, :cond_18

    .line 33
    iget-object v1, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    iget-object v1, v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailsUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 35
    :cond_18
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    iget-object v2, v2, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->title:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    iget-object v3, v3, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->briefMessage:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->error:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    iget-object v4, v4, Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;->detailedMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/google/android/finsky/utils/Notifier;->showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v0           #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    :cond_2f
    return-void
.end method
