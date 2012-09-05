.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;
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
    .line 437
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "layout"

    .prologue
    .line 440
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v5}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->isAlive()Z

    move-result v5

    if-nez v5, :cond_9

    .line 466
    :goto_8
    return-void

    .line 443
    :cond_9
    const v5, 0x7f0b00cc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 444
    .local v1, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 445
    .local v3, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 447
    .local v0, data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    const/4 v2, 0x0

    .line 449
    .local v2, fullUrl:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, media_type:Ljava/lang/String;
    if-eqz v4, :cond_43

    const-string v5, "link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 453
    :cond_39
    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v2

    .line 465
    :cond_3d
    :goto_3d
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    #calls: Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->access$000(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;Ljava/lang/String;)V

    goto :goto_8

    .line 457
    :cond_43
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v6, v6, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getDeeplink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    if-nez v2, :cond_3d

    .line 461
    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$9;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v5, v5, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    invoke-interface {v5, v3, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;->requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V

    goto :goto_3d
.end method
