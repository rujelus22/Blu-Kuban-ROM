.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;
.super Ljava/lang/Object;
.source "LocalSearchListingDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;->onRequestComplete(ZLjava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;

.field final synthetic val$items:Ljava/util/Vector;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;ZLjava/util/Vector;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->this$1:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;

    iput-boolean p2, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->val$success:Z

    iput-object p3, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->val$items:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->this$1:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;

    iget-object v0, v0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #getter for: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->listingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$900(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 387
    iget-boolean v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->val$success:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->val$items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 388
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->this$1:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;

    iget-object v1, v0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;->val$items:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    #calls: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->bindData(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V
    invoke-static {v1, v0, v2}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$1000(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V

    .line 390
    :cond_29
    return-void
.end method
