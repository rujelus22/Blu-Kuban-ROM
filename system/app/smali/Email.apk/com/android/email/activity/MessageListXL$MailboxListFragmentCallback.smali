.class Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .registers 12
    .parameter "accountId"

    .prologue
    const-wide/16 v3, -0x1

    .line 1724
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 1725
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->loadAccounts()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)V

    .line 1728
    return-void
.end method

.method public onCurrentMailboxUpdated(ILjava/lang/String;II)V
    .registers 6
    .parameter "mailBoxType"
    .parameter "mailboxName"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/email/activity/AccountSelectorAdapter;->setMailboxName(Ljava/lang/String;)V

    .line 1734
    if-nez p1, :cond_2b

    .line 1735
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    .line 1738
    :goto_14
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    .line 1739
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/AccountSelectorAdapter;->notifyDataSetChanged()V

    .line 1740
    return-void

    .line 1737
    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    goto :goto_14
.end method

.method public onMailboxSelected(JJLjava/lang/String;II)V
    .registers 18
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "displayName"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 1702
    const/4 v9, -0x1

    .line 1703
    .local v9, mailboxType:I
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v2, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 1705
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-lez v1, :cond_1c

    .line 1706
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v9

    .line 1708
    :cond_1c
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1100(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1709
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1100(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1710
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AccountSelectorAdapter;->setUnreadCount(I)V

    .line 1712
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_83

    const-wide/16 v1, -0x2

    cmp-long v1, p3, v1

    if-eqz v1, :cond_83

    if-eqz v9, :cond_83

    .line 1713
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/CustomSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/CustomSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_83

    .line 1715
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/CustomSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 1719
    :cond_83
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    .line 1720
    return-void
.end method

.method public setAllMailboxCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1600(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1745
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1602(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1746
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->checkAvailableMailboxToMove()V

    .line 1755
    :goto_12
    return-void

    .line 1748
    :cond_13
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1600(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 1749
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1602(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1750
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->checkAvailableMailboxToMove()V

    goto :goto_12

    .line 1752
    :cond_2e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListXL;->access$1602(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_12
.end method

.method public setTotalCountFromMailbox(IZ)V
    .registers 11
    .parameter "totalCount"
    .parameter "needToChangeMailbox"

    .prologue
    const/4 v6, 0x0

    .line 1759
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setTotalCountFromMailbox(I)V

    .line 1760
    if-eqz p2, :cond_1f

    .line 1761
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const-wide/16 v1, -0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 1763
    :cond_1f
    return-void
.end method
