.class Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryMoviesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupActionButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 50
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    .line 59
    :goto_25
    return-void

    .line 55
    :cond_26
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v3, v3, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v4, v4, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppManageItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, downloadIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_25
.end method
