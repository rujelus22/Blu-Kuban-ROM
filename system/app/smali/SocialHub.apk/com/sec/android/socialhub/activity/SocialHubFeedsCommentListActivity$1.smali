.class Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;
.super Ljava/lang/Object;
.source "SocialHubFeedsCommentListActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->drawOriginalActivity(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCommentFavoritePost(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 14
    .parameter "info"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 515
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v0}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mServiceProviderType:I
    invoke-static {v2}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$600(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$700(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mActorId:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$800(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mCommentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$900(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsFavorite:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mIsRecommendable:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$1100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentFavoritePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v11

    .line 517
    .local v11, ret:I
    if-gez v11, :cond_52

    .line 519
    const-string v0, "SocialHubFeedsCommentListActivity"

    const-string v1, "onClick()"

    const-string v2, "ret is -1!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v11           #ret:I
    :cond_52
    return-void
.end method

.method public requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V
    .registers 18
    .parameter "info"
    .parameter "data"

    .prologue
    .line 468
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v14

    .line 472
    .local v14, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x0

    :try_start_9
    invoke-interface {v14, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 474
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "onClick()"

    const-string v3, "photodeeplink is not supported"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_9 .. :try_end_18} :catch_19

    .line 508
    :goto_18
    return-void

    .line 478
    :catch_19
    move-exception v12

    .line 480
    .local v12, e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v12}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 486
    .end local v12           #e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$300(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->serviceProviderDeepLinkGet(Landroid/content/Context;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 499
    .local v13, req_id:I
    if-gez v13, :cond_4e

    .line 501
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "onClick()"

    const-string v3, "photo deeplink req_id is -1!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 506
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mRequest:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$400(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method public requestProfileUrl(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 19
    .parameter "wrapper"

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/util/HashMap;

    move-result-object v15

    monitor-enter v15

    .line 425
    const/4 v13, -0x1

    .line 427
    .local v13, req_id:I
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_96

    move-result-object v14

    .line 431
    .local v14, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x0

    :try_start_1b
    invoke-interface {v14, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_94

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$200(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mFeedView:Lcom/sec/android/socialhub/feedslist/FeedView;
    invoke-static {v4}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$100(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Lcom/sec/android/socialhub/feedslist/FeedView;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    const-string v5, "profile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v7, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "@"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->serviceProviderDeepLinkGet(Landroid/content/Context;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 447
    if-gez v13, :cond_7f

    .line 449
    const-string v1, "SocialHubFeedsCommentListActivity"

    const-string v2, "onClick()"

    const-string v3, "deeplink req_id is -1!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_1b .. :try_end_7d} :catchall_96
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_1b .. :try_end_7d} :catch_99

    .line 450
    :try_start_7d
    monitor-exit v15
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_96

    .line 464
    :goto_7e
    return-void

    .line 454
    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->mProfileRequest:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_96
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7f .. :try_end_94} :catch_99

    .line 463
    :cond_94
    :goto_94
    :try_start_94
    monitor-exit v15

    goto :goto_7e

    .end local v14           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catchall_96
    move-exception v1

    monitor-exit v15
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_96

    throw v1

    .line 459
    .restart local v14       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catch_99
    move-exception v12

    .line 461
    .local v12, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_9a
    invoke-virtual {v12}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_96

    goto :goto_94
.end method
