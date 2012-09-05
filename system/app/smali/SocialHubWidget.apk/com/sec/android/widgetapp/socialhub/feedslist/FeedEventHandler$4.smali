.class Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$4;
.super Ljava/lang/Object;
.source "FeedEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$4;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    .line 188
    const-string v0, "FeedEventHandler"

    const-string v1, "onClick"

    const-string v2, "common attachment click"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->access$000()Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->show()V

    .line 190
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 191
    .local v7, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 192
    .local v9, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;

    .line 194
    .local v6, data:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
    const/4 v8, 0x0

    .line 196
    .local v8, fullUrl:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, media_type:Ljava/lang/String;
    if-eqz v10, :cond_5a

    const-string v0, "link"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "video"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 200
    :cond_40
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->access$000()Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->dismiss()V

    .line 201
    invoke-virtual {v9}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v8

    .line 202
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$4;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    invoke-virtual {v0, v8}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->sendThisLinkToBrowser(Ljava/lang/String;)V

    .line 203
    const-string v0, "FeedEventHandler"

    const-string v1, "mPhotoClickListener()"

    const-string v2, "Link or Video"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_59
    return-void

    .line 207
    :cond_5a
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget v1, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    iget-object v2, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v3, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestDeepLinkGet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method
