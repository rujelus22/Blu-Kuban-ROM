.class Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;
.super Ljava/lang/Object;
.source "Qzone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    .line 36
    const v4, 0x7f090021

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;

    .line 39
    .local v2, info:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;
    const/4 v1, 0x0

    .line 41
    .local v1, fullUrl:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, media_type:Ljava/lang/String;
    if-eqz v3, :cond_31

    const-string v4, "link"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 45
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;

    #calls: Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->access$000(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;Ljava/lang/String;)V

    .line 47
    const-string v4, "FeedEventHandler"

    const-string v5, "mAttachmentClickListener()"

    const-string v6, "Link or Video"

    invoke-static {v4, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_30
    :goto_30
    return-void

    .line 51
    :cond_31
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedMediaInfo;->getMediaSrc()Ljava/lang/String;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_30

    .line 53
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone$1;->this$0:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;

    #calls: Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->sendThisLinkToBrowser(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;->access$100(Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/Qzone;Ljava/lang/String;)V

    goto :goto_30
.end method
