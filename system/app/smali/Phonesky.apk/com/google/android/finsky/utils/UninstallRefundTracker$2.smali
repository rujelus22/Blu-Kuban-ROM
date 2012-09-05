.class Lcom/google/android/finsky/utils/UninstallRefundTracker$2;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker;->refundIfNecessary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/UninstallRefundTracker;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->this$0:Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iput-object p2, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 114
    const-string v0, "Refund failed for asset %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/UninstallRefundTracker$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v3}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method
