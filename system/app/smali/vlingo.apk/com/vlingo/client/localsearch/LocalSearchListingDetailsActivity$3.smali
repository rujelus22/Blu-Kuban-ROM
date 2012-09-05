.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$3;
.super Ljava/lang/Object;
.source "LocalSearchListingDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->bindData(Lcom/vlingo/client/localsearch/service/LocalSearchListing;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$3;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$3;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    #calls: Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->toggleReviewsVisibility()V
    invoke-static {v0}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->access$200(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    .line 282
    return-void
.end method
