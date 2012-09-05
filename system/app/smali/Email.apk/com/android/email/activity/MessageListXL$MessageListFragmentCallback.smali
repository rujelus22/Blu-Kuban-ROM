.class Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1766
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public messageUpdateDB(J)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1882
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessageMsgId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_33

    .line 1883
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragment;->changeFavoriteStatus(J)V

    .line 1885
    :cond_33
    return-void
.end method

.method public onAllMessageLoaded(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1913
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    .line 1914
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->invalidate()V

    .line 1916
    :cond_1a
    return-void
.end method

.method public onComposeFromMessageListFragment()V
    .registers 2

    .prologue
    .line 1796
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1797
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 1798
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    .line 1800
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onCompose()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1800(Lcom/android/email/activity/MessageListXL;)Z

    .line 1801
    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .registers 5
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "bundleConversationType"

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onConversationMoveAlways([J[Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$2200(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V

    .line 1835
    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .registers 4
    .parameter "enter"

    .prologue
    .line 1815
    if-eqz p1, :cond_9

    .line 1816
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1823
    :cond_8
    :goto_8
    return-void

    .line 1818
    :cond_9
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1900()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 1819
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 1820
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_8
.end method

.method public onFollowUpViewShown()V
    .registers 2

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->showFollowUpFlag()V

    .line 1842
    return-void
.end method

.method public onForward(J)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    .line 1901
    return-void
.end method

.method public onMailBoxList()V
    .registers 3

    .prologue
    .line 1786
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1787
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 1788
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1700()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 1790
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1100(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1791
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onMailBoxList()Z

    .line 1792
    return-void
.end method

.method public onMailboxNotFound()V
    .registers 1

    .prologue
    .line 1782
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .registers 10
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 1770
    const/4 v0, 0x1

    if-ne p7, v0, :cond_16

    .line 1771
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    .line 1772
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 1777
    :goto_15
    return-void

    .line 1774
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->clearSelection()V

    .line 1775
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    goto :goto_15
.end method

.method public onMoveMessages([J)V
    .registers 3
    .parameter "messageIds"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2100(Lcom/android/email/activity/MessageListXL;[J)V

    .line 1828
    return-void
.end method

.method public onOutboxMessageSending()V
    .registers 5

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->setSendingProgressFlag(JZ)V

    .line 1921
    return-void
.end method

.method public onRefreshFromMessageListFragment()V
    .registers 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefreshFromFragment()Z

    .line 1811
    return-void
.end method

.method public onReply(J)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1891
    return-void
.end method

.method public onReplyAll(J)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    .line 1896
    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .registers 2

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    .line 1806
    return-void
.end method

.method public onWaitTooLong()V
    .registers 4

    .prologue
    .line 1905
    const-string v1, "MessageListXL"

    const-string v2, "Wait too long"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->waitExceptionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$2900(Lcom/android/email/activity/MessageListXL;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1907
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->waitExceptionHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$2900(Lcom/android/email/activity/MessageListXL;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1908
    return-void
.end method

.method public refreshAllAccount()V
    .registers 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    .line 1877
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 4
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2302(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 1857
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$2402(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItemContainer;)Lcom/android/email/activity/MessageListItemContainer;

    .line 1858
    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 4
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$2502(Lcom/android/email/activity/MessageListXL;Z)Z

    .line 1863
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;
    invoke-static {v0, p2}, Lcom/android/email/activity/MessageListXL;->access$2602(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItemContainer;)Lcom/android/email/activity/MessageListItemContainer;

    .line 1864
    return-void
.end method
