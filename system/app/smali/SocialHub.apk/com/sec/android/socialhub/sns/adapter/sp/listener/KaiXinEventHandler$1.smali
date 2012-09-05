.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;
.super Ljava/lang/Object;
.source "KaiXinEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "layout"

    .prologue
    .line 65
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    invoke-virtual {v9}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;->isAlive()Z

    move-result v9

    if-nez v9, :cond_9

    .line 151
    :cond_8
    :goto_8
    return-void

    .line 71
    :cond_9
    const v9, 0x7f0b00cc

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 73
    .local v3, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 75
    .local v5, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 79
    .local v1, data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    const/4 v4, 0x0

    .line 81
    .local v4, fullUrl:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, media_type:Ljava/lang/String;
    if-eqz v8, :cond_76

    const-string v9, "link"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    const-string v9, "video"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 89
    :cond_39
    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_8

    .line 93
    const-string v9, "SnsCommonListener"

    const-string v10, "mKaiXinPhotoClickListner()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "media_type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "fullUrl = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v6, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v9, v9, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 107
    .end local v6           #intent:Landroid/content/Intent;
    :cond_76
    :try_start_76
    const-string v9, "SnsCommonListener"

    const-string v10, "mKaiXinPhotoClickListner()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "kaixin fuid ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " title="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " albumId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.kaixin001.VIEW_ALBUM_DETAIL"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v7, kaixinIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "mode"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v9, "fuid"

    iget-object v10, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v9, "title"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v9, "albumId"

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v9, v9, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_76 .. :try_end_e3} :catch_e5

    goto/16 :goto_8

    .line 125
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v7           #kaixinIntent:Landroid/content/Intent;
    :catch_e5
    move-exception v2

    .line 127
    .local v2, e:Landroid/content/ActivityNotFoundException;
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v10, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v10, v10, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getDeeplink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-nez v4, :cond_103

    .line 131
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v9, v9, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mCabllack:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;

    invoke-interface {v9, v5, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;->requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V

    goto/16 :goto_8

    .line 135
    :cond_103
    const-string v9, "SnsCommonListener"

    const-string v10, "mKaiXinPhotoClickListner()"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "media_type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "fullUrl = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .restart local v6       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/KaiXinEventHandler;

    iget-object v9, v9, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method
