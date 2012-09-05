.class Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$1;
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
    .line 93
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$1;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 98
    .local v1, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    if-nez v1, :cond_18

    .line 100
    const-string v4, "FeedEventHandler"

    const-string v5, "onClick()"

    const-string v6, "info is null"

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_17
    :goto_17
    return-void

    .line 104
    :cond_18
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_17

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 108
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaSrc()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, link:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, i:Landroid/content/Intent;
    sget-object v4, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    const-string v4, "FeedEventHandler"

    const-string v5, "onClick()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "link = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
