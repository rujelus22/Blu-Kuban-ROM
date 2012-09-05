.class Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$3;
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
    .line 168
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$3;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;

    .line 172
    .local v6, data:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
    invoke-static {}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->access$000()Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->show()V

    .line 173
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mConnector:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    iget v1, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    iget-object v2, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v3, v6, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "profile"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->requestDeepLinkGet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "FeedEventHandler"

    const-string v1, "onClick()"

    const-string v2, "mActorPhotoClickListner Run()"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
