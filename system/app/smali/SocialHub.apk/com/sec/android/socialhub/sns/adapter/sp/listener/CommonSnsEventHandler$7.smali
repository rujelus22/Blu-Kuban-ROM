.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;
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
    .line 389
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 392
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->isAlive()Z

    move-result v4

    if-nez v4, :cond_9

    .line 412
    :cond_8
    :goto_8
    return-void

    .line 395
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 397
    .local v1, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    if-nez v1, :cond_21

    .line 399
    const-string v4, "SnsCommonListener"

    const-string v5, "onClick()"

    const-string v6, "info is null"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 403
    :cond_21
    invoke-virtual {v1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 407
    invoke-virtual {v1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaSrc()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, link:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 409
    .local v0, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$7;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v4, v4, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method
