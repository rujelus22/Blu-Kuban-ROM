.class Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen$1;
.super Ljava/lang/Object;
.source "RenRen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 18
    .parameter "view"

    .prologue
    .line 37
    const v1, 0x7f090021

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 38
    .local v10, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 39
    .local v12, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;

    .line 41
    .local v7, data:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
    const/4 v11, 0x0

    .line 43
    .local v11, fullUrl:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v13

    .line 45
    .local v13, media_type:Ljava/lang/String;
    if-eqz v13, :cond_3f

    const-string v1, "link"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 47
    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v11

    .line 48
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;

    #calls: Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v1, v11}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;Ljava/lang/String;)V

    .line 49
    const-string v1, "FeedEventHandler"

    const-string v2, "mAttachmentClickListener()"

    const-string v3, "Link or Video"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_3e
    return-void

    .line 55
    :cond_3f
    :try_start_3f
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v14, renrenIntent:Landroid/content/Intent;
    const-string v1, "com.renren.mobile.android"

    const-string v2, "com.renren.mobile.android.ui.PhotoGallery"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "uid"

    iget-object v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v1, "aid"

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 61
    const-string v1, "albumName"

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "userName"

    iget-object v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_7a} :catch_7b

    goto :goto_3e

    .line 65
    .end local v14           #renrenIntent:Landroid/content/Intent;
    :catch_7b
    move-exception v8

    .line 69
    .local v8, e:Landroid/content/ActivityNotFoundException;
    :try_start_7c
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v15, renrenIntent2:Landroid/content/Intent;
    const-string v1, "com.renren.mobile.android.thirdparty.action.PHOTONEW"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "uid"

    iget-object v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    const-string v1, "aid"

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    const-string v1, "albumname"

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "username"

    iget-object v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "pid"

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7c .. :try_end_c4} :catch_c6

    goto/16 :goto_3e

    .line 87
    .end local v15           #renrenIntent2:Landroid/content/Intent;
    :catch_c6
    move-exception v9

    .line 88
    .local v9, e2:Landroid/content/ActivityNotFoundException;
    const-string v1, "FeedEventHandler"

    const-string v2, "mAttachmentClickListener()"

    const-string v3, "RenRen activity not found"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/RenRen;->access$300()Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v1

    iget v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    iget-object v3, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestDeepLinkGet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e
.end method
