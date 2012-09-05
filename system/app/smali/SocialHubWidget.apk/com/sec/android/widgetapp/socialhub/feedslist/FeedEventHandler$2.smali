.class Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$2;
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
    .line 117
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler$2;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v4, -0x1

    .line 120
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1e

    move-object v2, p1

    .line 122
    check-cast v2, Landroid/widget/TextView;

    .line 124
    .local v2, mtextview:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-le v3, v4, :cond_1e

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    if-le v3, v4, :cond_1e

    .line 126
    const-string v3, "FeedEventHandler"

    const-string v4, "onClick()"

    const-string v5, "may be link"

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v2           #mtextview:Landroid/widget/TextView;
    :cond_1d
    :goto_1d
    return-void

    .line 131
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;

    .line 133
    .local v0, data:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;
    if-eqz v0, :cond_a6

    .line 135
    iget-object v3, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    if-nez v3, :cond_34

    .line 137
    const-string v3, "FeedEventHandler"

    const-string v4, "onClick()"

    const-string v5, "activity id is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 141
    :cond_34
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.commentlist"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "service_provider"

    iget v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v3, "activity_id"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v3, "actor_id"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "actor_name"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "content"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v3, "time"

    iget-wide v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mlTime:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    const-string v3, "actor_photo_url"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v3, "recommendable"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrRecommendable:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v3, "forwardable"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrForwardable:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "comment_target_id"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentTargerId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "comment_type"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "commentable"

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrCommentable:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v3, "from"

    const-string v4, "owner"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1d

    .line 158
    sget-object v3, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1d

    .line 162
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a6
    const-string v3, "FeedEventHandler"

    const-string v4, "onClick()"

    const-string v5, "textListenter is null"

    invoke-static {v3, v4, v5}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method
