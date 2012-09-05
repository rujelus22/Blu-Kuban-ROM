.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;
.super Ljava/lang/Object;
.source "QzoneEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "layout"

    .prologue
    .line 117
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    invoke-virtual {v6}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;->isAlive()Z

    move-result v6

    if-nez v6, :cond_9

    .line 167
    :cond_8
    :goto_8
    return-void

    .line 123
    :cond_9
    const v6, 0x7f0b00cc

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 125
    .local v1, frame:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;

    .line 127
    .local v3, info:Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    .line 131
    .local v0, data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    const/4 v2, 0x0

    .line 133
    .local v2, fullUrl:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, media_type:Ljava/lang/String;
    if-eqz v5, :cond_76

    const-string v6, "link"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 137
    :cond_39
    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaHref()Ljava/lang/String;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_8

    .line 141
    const-string v6, "SnsCommonListener"

    const-string v7, "mRenRenPhotoClickListner()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "media_type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fullUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    iget-object v6, v6, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 149
    .end local v4           #intent:Landroid/content/Intent;
    :cond_76
    if-eqz v5, :cond_8

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    invoke-virtual {v3}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaSrc()Ljava/lang/String;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_8

    .line 157
    const-string v6, "SnsCommonListener"

    const-string v7, "mQzonePhotoClickListner()"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "media_type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fullUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/QzoneEventHandler;

    iget-object v6, v6, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8
.end method
