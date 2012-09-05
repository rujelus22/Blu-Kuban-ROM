.class Lcom/google/android/apps/plus/fragments/MessageListFragment$6;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .parameter "absView"
    .parameter "firstVisible"
    .parameter "totalVisible"
    .parameter "total"

    .prologue
    const-wide/16 v4, 0x0

    .line 768
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mInitialLoadFinished:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Z

    move-result v0

    if-nez v0, :cond_91

    if-nez p2, :cond_91

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mFirstEventTimestamp:J
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mEarliestEventTimestamp:J
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_91

    :cond_38
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 773
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mLoadingOlderEvents:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1402(Lcom/google/android/apps/plus/fragments/MessageListFragment;Z)Z

    .line 774
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHeaderView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment$MessageCursorAdapter;->getCount()I

    move-result v0

    #setter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTotalItemBeforeLoadingOlder:I
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$2402(Lcom/google/android/apps/plus/fragments/MessageListFragment;I)I

    .line 776
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->requestMoreEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$702(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 778
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateHeaderVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    .line 780
    :cond_91
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "lv"
    .parameter "scrollState"

    .prologue
    .line 785
    return-void
.end method
