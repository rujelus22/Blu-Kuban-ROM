.class Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;
.super Ljava/lang/Object;
.source "AbstractServiceProvider.java"

# interfaces
.implements Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

.field final synthetic val$adapter:Landroid/widget/Adapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;Landroid/widget/Adapter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    iput-object p2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;->val$adapter:Landroid/widget/Adapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;->val$adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getOpenedExpandMenuList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;->val$adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getOpenedExpandMenuList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;->val$adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getOpenedExpandMenuList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    :cond_2d
    return-void
.end method
