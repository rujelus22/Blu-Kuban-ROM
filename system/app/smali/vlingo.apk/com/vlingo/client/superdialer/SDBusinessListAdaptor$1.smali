.class Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;
.super Ljava/lang/Object;
.source "SDBusinessListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

.field final synthetic val$listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;


# direct methods
.method constructor <init>(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    iput-object p2, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;->val$listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;->this$0:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;

    #getter for: Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->listener:Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;
    invoke-static {v0}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;->access$000(Lcom/vlingo/client/superdialer/SDBusinessListAdaptor;)Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$1;->val$listing:Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    invoke-interface {v0, v1}, Lcom/vlingo/client/superdialer/SDBusinessListAdaptor$SDBusinessAdaptorClickListener;->onBusinessListingClickedForCall(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    .line 126
    return-void
.end method
