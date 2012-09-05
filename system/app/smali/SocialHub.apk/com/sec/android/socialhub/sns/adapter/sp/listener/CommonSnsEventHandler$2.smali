.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;
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
    .line 194
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 197
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->isAlive()Z

    move-result v0

    if-nez v0, :cond_a

    .line 248
    :goto_9
    return-void

    :cond_a
    move-object v0, p1

    .line 200
    check-cast v0, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-le v1, v2, :cond_23

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-le v0, v2, :cond_23

    .line 204
    const-string v0, "SnsCommonListener"

    const-string v1, "onClick()"

    const-string v2, "may be link"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 208
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 211
    if-nez v0, :cond_35

    .line 213
    const-string v0, "SnsCommonListener"

    const-string v1, "onClick()"

    const-string v2, "textListenter is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 217
    :cond_35
    iget-object v1, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    if-nez v1, :cond_45

    .line 219
    const-string v0, "SnsCommonListener"

    const-string v1, "onClick()"

    const-string v2, "activity id is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 223
    :cond_45
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/socialhub/activity/SocialHubFeedsCommentListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v2, "service_provider"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v2, "activity_id"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "actor_id"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "actor_name"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "content"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "actor_photo_url"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "recommendable"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "comment_target_id"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentTargerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v2, "comment_type"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "commentable"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentable:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "comment_count"

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miCommentCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    instance-of v0, v0, Lcom/sec/android/socialhub/feedslist/GroupWrapper;

    if-eqz v0, :cond_c9

    .line 238
    const-string v0, "from"

    const-string v2, "group"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :goto_c0
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$2;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v0, v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 242
    :cond_c9
    const-string v0, "from"

    const-string v2, "owner"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c0
.end method
