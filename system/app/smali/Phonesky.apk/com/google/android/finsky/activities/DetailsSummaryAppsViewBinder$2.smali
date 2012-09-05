.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$isRefundable:Z

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/local/LocalAsset;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    iput-boolean p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$isRefundable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$isRefundable:Z

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAndUninstallAsset(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method
