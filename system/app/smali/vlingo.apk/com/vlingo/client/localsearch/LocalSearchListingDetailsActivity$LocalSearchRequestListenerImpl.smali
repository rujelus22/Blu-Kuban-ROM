.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;
.super Ljava/lang/Object;
.source "LocalSearchListingDetailsActivity.java"

# interfaces
.implements Lcom/vlingo/client/localsearch/service/LocalSearchRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalSearchRequestListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete(ZLjava/util/Vector;)V
    .registers 5
    .parameter "success"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    iget-object v0, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    new-instance v1, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl$1;-><init>(Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$LocalSearchRequestListenerImpl;ZLjava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method
