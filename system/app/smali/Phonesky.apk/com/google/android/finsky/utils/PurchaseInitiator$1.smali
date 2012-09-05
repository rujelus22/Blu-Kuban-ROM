.class final Lcom/google/android/finsky/utils/PurchaseInitiator$1;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/model/PurchaseStatusTracker;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    iput-object p4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 7
    .parameter "error"

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.getAssetError"

    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "Error when attempting direct download of asset [%s]. Error=[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$doc:Lcom/google/android/finsky/api/model/Document;

    const/16 v2, -0x65

    #calls: Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreeAppDownloadError(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/PurchaseInitiator;->access$000(Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;

    move-result-object v0

    .line 70
    .local v0, purchaseError:Lcom/google/android/finsky/model/PurchaseStatusTracker$Error;
    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$tracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;->val$docId:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchToError(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$Error;)V

    .line 72
    return-void
.end method
