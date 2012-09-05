.class Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;
.super Ljava/lang/Object;
.source "UinboxFeedListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "UinboxFeedListView"

    const-string v4, "onItemClick"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    iget-object v3, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mAdapter:Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;

    iget-object v3, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mIdIndexer:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 108
    .local v0, accounts:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-nez v0, :cond_36

    .line 110
    const-string v3, "UinboxFeedListView"

    const-string v4, "onItemClick()"

    const-string v5, "account is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_35
    return-void

    .line 114
    :cond_36
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    iget-object v3, v3, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    .line 116
    .local v1, feedTab:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v1, :cond_58

    .line 118
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v2

    .line 120
    .local v2, state:Lcom/sec/android/socialhub/state/BaseState;
    if-eqz v2, :cond_4e

    .line 121
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_35

    .line 123
    :cond_4e
    const-string v3, "UinboxFeedListView"

    const-string v4, "onItemClick()"

    const-string v5, "state is null"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 127
    .end local v2           #state:Lcom/sec/android/socialhub/state/BaseState;
    :cond_58
    const-string v3, "UinboxFeedListView"

    const-string v4, "onItemClick()"

    const-string v5, "feedTab is null"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method
