.class Lcom/sprint/w/installer/RssPackBrowser$1$1;
.super Ljava/lang/Object;
.source "RssPackBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/RssPackBrowser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/RssPackBrowser$1;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackBrowser$1;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 94
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mSyncLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$000(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 95
    :try_start_9
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$200(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/RssPackBrowser$Channel;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 96
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$300(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v4, v4, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;
    invoke-static {v4}, Lcom/sprint/w/installer/RssPackBrowser;->access$200(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/RssPackBrowser$Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/sprint/w/installer/RssPackBrowser$Channel;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mDescription:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$400(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v4, v4, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mChannel:Lcom/sprint/w/installer/RssPackBrowser$Channel;
    invoke-static {v4}, Lcom/sprint/w/installer/RssPackBrowser;->access$200(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/RssPackBrowser$Channel;

    move-result-object v4

    iget-object v4, v4, Lcom/sprint/w/installer/RssPackBrowser$Channel;->description:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_3d
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #calls: Lcom/sprint/w/installer/RssPackBrowser;->updateListView()V
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$500(Lcom/sprint/w/installer/RssPackBrowser;)V

    .line 100
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$600(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_99

    .line 102
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 103
    .local v0, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$800(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->userId:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/sprint/w/installer/RssPackBrowser;->access$900(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->password:Ljava/lang/String;

    .line 105
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    const-class v4, Lcom/sprint/w/installer/RssPackDetails;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, i:Landroid/content/Intent;
    const-string v2, "feedItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/sprint/w/installer/RssPackBrowser$1$1;->this$1:Lcom/sprint/w/installer/RssPackBrowser$1;

    iget-object v2, v2, Lcom/sprint/w/installer/RssPackBrowser$1;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-virtual {v2, v1}, Lcom/sprint/w/installer/RssPackBrowser;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0           #fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    .end local v1           #i:Landroid/content/Intent;
    :cond_99
    monitor-exit v3

    .line 110
    return-void

    .line 109
    :catchall_9b
    move-exception v2

    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_9 .. :try_end_9d} :catchall_9b

    throw v2
.end method
