.class Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin$1;
.super Ljava/lang/Object;
.source "KaiXin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    .line 40
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 41
    .local v9, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 42
    .local v11, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;

    .line 44
    .local v7, data:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
    const/4 v10, 0x0

    .line 46
    .local v10, fullUrl:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v13

    .line 48
    .local v13, media_type:Ljava/lang/String;
    if-eqz v13, :cond_3b

    const-string v0, "link"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 50
    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v10

    .line 51
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;

    #calls: Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;Ljava/lang/String;)V

    .line 52
    const-string v0, "FeedEventHandler"

    const-string v1, "mAttachmentClickListener()"

    const-string v2, "Link or Video"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_3a
    return-void

    .line 58
    :cond_3b
    :try_start_3b
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.kaixin001.VIEW_ALBUM_DETAIL"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v12, kaixinIntent:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v0, "fuid"

    iget-object v1, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "title"

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getAttachName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "albumId"

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v12, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_70} :catch_71

    goto :goto_3a

    .line 67
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #kaixinIntent:Landroid/content/Intent;
    :catch_71
    move-exception v8

    .line 69
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const-string v0, "FeedEventHandler"

    const-string v1, "mAttachmentClickListener()"

    const-string v2, "KaiXin activity not found"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/KaiXin;->access$200()Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    move-result-object v0

    iget v1, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    iget-object v2, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v3, v7, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestDeepLinkGet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method
