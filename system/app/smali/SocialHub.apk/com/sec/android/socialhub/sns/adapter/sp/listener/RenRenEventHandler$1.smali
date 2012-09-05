.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;
.super Ljava/lang/Object;
.source "RenRenEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "layout"

    .prologue
    .line 64
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    invoke-virtual {v10}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;->isAlive()Z

    move-result v10

    if-nez v10, :cond_9

    .line 174
    :cond_8
    :goto_8
    return-void

    .line 70
    :cond_9
    const v10, 0x7f0b00cc

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 72
    .local v3, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 74
    .local v5, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 78
    .local v0, data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    const/4 v4, 0x0

    .line 80
    .local v4, fullUrl:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, media_type:Ljava/lang/String;
    if-eqz v7, :cond_72

    const-string v10, "link"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_39

    const-string v10, "video"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 88
    :cond_39
    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_8

    .line 92
    const-string v10, "SnsCommonListener"

    const-string v11, "mRenRenPhotoClickListner()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "media_type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "fullUrl = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v6, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 106
    .end local v6           #intent:Landroid/content/Intent;
    :cond_72
    :try_start_72
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v8, renrenIntent:Landroid/content/Intent;
    const-string v10, "com.renren.mobile.android"

    const-string v11, "com.renren.mobile.android.ui.PhotoGallery"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v10, "uid"

    iget-object v11, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const-string v10, "aid"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    const-string v10, "albumName"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v10, "userName"

    iget-object v11, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ad
    .catch Landroid/content/ActivityNotFoundException; {:try_start_72 .. :try_end_ad} :catch_af

    goto/16 :goto_8

    .line 124
    .end local v8           #renrenIntent:Landroid/content/Intent;
    :catch_af
    move-exception v1

    .line 128
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_b0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v9, renrenIntent2:Landroid/content/Intent;
    const-string v10, "com.renren.mobile.android.thirdparty.action.PHOTONEW"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v10, "uid"

    iget-object v11, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    const-string v10, "aid"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    const-string v10, "albumname"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v10, "username"

    iget-object v11, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v10, "pid"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v10, "from"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b0 .. :try_end_f8} :catch_fa

    goto/16 :goto_8

    .line 146
    .end local v9           #renrenIntent2:Landroid/content/Intent;
    :catch_fa
    move-exception v2

    .line 148
    .local v2, e2:Landroid/content/ActivityNotFoundException;
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v11, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v11, v11, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getDeeplink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    if-nez v4, :cond_118

    .line 152
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    invoke-interface {v10, v5, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;->requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V

    goto/16 :goto_8

    .line 156
    :cond_118
    const-string v10, "SnsCommonListener"

    const-string v11, "mRenRenPhotoClickListner()"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "media_type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "fullUrl = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/RenRenEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method
