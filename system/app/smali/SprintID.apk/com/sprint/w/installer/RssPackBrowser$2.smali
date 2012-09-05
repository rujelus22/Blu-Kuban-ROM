.class Lcom/sprint/w/installer/RssPackBrowser$2;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 211
    .local v0, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$800(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->userId:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$900(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->password:Ljava/lang/String;

    .line 213
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-virtual {v2}, Lcom/sprint/w/installer/RssPackBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v1, i:Landroid/content/Intent;
    const-string v2, "feedItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$2;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-virtual {v2, v1}, Lcom/sprint/w/installer/RssPackBrowser;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method
