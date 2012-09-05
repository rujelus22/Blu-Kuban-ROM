.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;
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

.field final synthetic val$localAsset:Lcom/google/android/finsky/local/LocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->val$localAsset:Lcom/google/android/finsky/local/LocalAsset;

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAsset(Ljava/lang/String;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$100(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method
