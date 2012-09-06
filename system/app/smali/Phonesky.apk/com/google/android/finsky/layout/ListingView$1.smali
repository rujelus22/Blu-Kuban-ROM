.class Lcom/google/android/finsky/layout/ListingView$1;
.super Ljava/lang/Object;
.source "ListingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/ListingView;->addLinkRow(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/ListingView;

.field final synthetic val$clickIntent:Landroid/content/Intent;

.field final synthetic val$logTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$logTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$clickIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView$1;->this$0:Lcom/google/android/finsky/layout/ListingView;

    #getter for: Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/layout/ListingView;->access$000(Lcom/google/android/finsky/layout/ListingView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView$1;->val$logTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method
