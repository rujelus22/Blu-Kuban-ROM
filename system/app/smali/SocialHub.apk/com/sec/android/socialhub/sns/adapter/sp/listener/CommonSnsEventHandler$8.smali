.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;
.super Ljava/lang/Object;
.source "CommonSnsEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->isAlive()Z

    move-result v2

    if-nez v2, :cond_9

    .line 433
    :goto_8
    return-void

    .line 422
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 424
    .local v1, wrapper:Lcom/sec/android/socialhub/feedslist/FeedView;
    const/4 v0, 0x0

    .line 426
    .local v0, fullUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getDeeplink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    if-nez v0, :cond_2b

    .line 430
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    invoke-interface {v2, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;->requestProfileUrl(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 432
    :cond_2b
    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$8;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    #calls: Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;Ljava/lang/String;)V

    goto :goto_8
.end method
