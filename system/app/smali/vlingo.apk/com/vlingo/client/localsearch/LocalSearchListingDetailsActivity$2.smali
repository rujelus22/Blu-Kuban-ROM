.class Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$2;
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
    .line 239
    iput-object p1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$2;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 241
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity$2;->this$0:Lcom/vlingo/client/localsearch/LocalSearchListingDetailsActivity;

    const v2, 0x7f09030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 243
    return-void
.end method
