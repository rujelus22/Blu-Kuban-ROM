.class abstract Lcom/android/email/activity/UIControllerBase;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;
.implements Lcom/android/email/activity/MessageListFragment$Callback;
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerBase$1;,
        Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;,
        Lcom/android/email/activity/UIControllerBase$RefreshListener;
    }
.end annotation


# instance fields
.field protected final mActionBarController:Lcom/android/email/activity/ActionBarController;

.field final mActivity:Lcom/android/email/activity/EmailActivity;

.field final mFragmentManager:Landroid/app/FragmentManager;

.field protected mListContext:Lcom/android/email/MessageListContext;

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private final mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

.field private mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mNfcHandler:Lcom/android/email/activity/NfcHandler;

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private final mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

.field final mRefreshManager:Lcom/android/email/RefreshManager;

.field private final mRemovedFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    .line 70
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/UIControllerBase$RefreshListener;-><init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    .line 146
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    .line 147
    invoke-virtual {p1}, Lcom/android/email/activity/EmailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    .line 153
    return-void
.end method

.method private getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .registers 3

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v1

    if-nez v1, :cond_8

    .line 680
    const/4 v1, 0x0

    .line 685
    :goto_7
    return-object v1

    .line 682
    :cond_8
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    .line 685
    .local v0, messageList:Lcom/android/email/activity/MessageListFragment;
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    goto :goto_7

    :cond_19
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    goto :goto_7
.end method

.method private onAccountSettings()Z
    .registers 4

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 865
    const/4 v0, 0x1

    return v0
.end method

.method private onCompose()Z
    .registers 4

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 854
    const/4 v0, 0x0

    .line 857
    :goto_7
    return v0

    .line 856
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 857
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private static shouldDoGlobalSearch(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Z
    .registers 3
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 697
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private showAccountSpecificWarning(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 1026
    cmp-long v1, p1, v2

    if-eqz v1, :cond_2a

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2a

    .line 1027
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1028
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v1, v2, v0}, Lcom/android/email/Preferences;->shouldShowRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1031
    new-instance v1, Lcom/android/email/RequireManualSyncDialog;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/email/RequireManualSyncDialog;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    invoke-virtual {v1}, Lcom/android/email/RequireManualSyncDialog;->show()V

    .line 1034
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_2a
    return-void
.end method

.method private updateMessageOrderManager()V
    .registers 5

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1000
    :goto_6
    return-void

    .line 991
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0, v1}, Lcom/android/email/MessageListContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 994
    :cond_1e
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 995
    new-instance v0, Lcom/android/email/activity/MessageOrderManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 998
    :cond_2e
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    .line 999
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->updateNavigationArrows()V

    goto :goto_6
.end method


# virtual methods
.method protected addFragmentToRemovalList(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 415
    if-eqz p1, :cond_7

    .line 416
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_7
    return-void
.end method

.method protected commitFragmentTransaction(Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "ft"

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 488
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 489
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 491
    :cond_e
    return-void
.end method

.method protected abstract createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
.end method

.method protected final doAutoAdvance()V
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 943
    :cond_d
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    .line 951
    :cond_17
    :goto_17
    return-void

    .line 937
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 940
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 935
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1f
    .end packed-switch
.end method

.method public final getActualAccountId()J
    .registers 3

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isActualAccountSelected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public abstract getLayoutId()I
.end method

.method protected final getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method protected getMailboxListMailboxId()J
    .registers 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getSelectedMailboxId()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method protected abstract getMailboxSettingsMailboxId()J
.end method

.method protected getMessageId()J
    .registers 3

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method protected final getMessageListFragment()Lcom/android/email/activity/MessageListFragment;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method protected getMessageListMailboxId()J
    .registers 3

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method protected final getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    return-object v0
.end method

.method protected final getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method protected getSearchHint()Ljava/lang/String;
    .registers 7

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v3

    if-nez v3, :cond_9

    .line 706
    const-string v3, ""

    .line 721
    :goto_8
    return-object v3

    .line 708
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 709
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 711
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v1, :cond_1a

    .line 712
    const-string v3, ""

    goto :goto_8

    .line 715
    :cond_1a
    invoke-static {v0, v1}, Lcom/android/email/activity/UIControllerBase;->shouldDoGlobalSearch(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 716
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f08018a

    invoke-virtual {v3, v4}, Lcom/android/email/activity/EmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 720
    :cond_2a
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, mailboxName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f08018b

    invoke-virtual {v3, v4}, Lcom/android/email/activity/EmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public abstract getUIAccountId()J
.end method

.method protected installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 314
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 321
    return-void
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 328
    return-void
.end method

.method protected installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 333
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 335
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->updateMessageOrderManager()V

    .line 336
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 337
    return-void
.end method

.method public final isAccountSelected()Z
    .registers 5

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isActualAccountSelected()Z
    .registers 5

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected final isMailboxListInstalled()Z
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final isMessageListInstalled()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isMessageListReady()Z
    .registers 2

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->hasDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected final isMessageViewInstalled()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract isRefreshEnabled()Z
.end method

.method protected abstract isRefreshInProgress()Z
.end method

.method protected final moveToNewer()Z
    .registers 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 968
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->navigateToMessage(J)V

    .line 969
    const/4 v0, 0x1

    .line 971
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected final moveToOlder()Z
    .registers 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 960
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->navigateToMessage(J)V

    .line 961
    const/4 v0, 0x1

    .line 963
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected abstract navigateToMessage(J)V
.end method

.method public onActivityCreated()V
    .registers 4

    .prologue
    .line 179
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 180
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->onActivityCreated()V

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v0}, Lcom/android/email/activity/NfcHandler;->register(Lcom/android/email/activity/UIControllerBase;Landroid/app/Activity;)Lcom/android/email/activity/NfcHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    .line 185
    return-void
.end method

.method public onActivityDestroy()V
    .registers 4

    .prologue
    .line 238
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 239
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->onActivityDestroy()V

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 243
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 244
    return-void
.end method

.method public onActivityPause()V
    .registers 4

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 220
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_20
    return-void
.end method

.method public onActivityResume()V
    .registers 6

    .prologue
    .line 203
    sget-boolean v2, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 204
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onActivityResume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 207
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    if-eqz v2, :cond_2c

    .line 208
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    invoke-virtual {v2}, Lcom/android/email/activity/NfcHandler;->onAccountChanged()V

    .line 210
    :cond_2c
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    .line 211
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->showAccountSpecificWarning(J)V

    .line 213
    return-void
.end method

.method public onActivityStart()V
    .registers 4

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 192
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 195
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->updateMessageOrderManager()V

    .line 197
    :cond_29
    return-void
.end method

.method public onActivityStop()V
    .registers 4

    .prologue
    .line 228
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 229
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 232
    return-void
.end method

.method public onActivityViewReady()V
    .registers 4

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 171
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityViewReady"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_20
    return-void
.end method

.method public abstract onBackPressed(Z)Z
.end method

.method public onBeforeMessageGone()V
    .registers 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 290
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .registers 4
    .parameter "inflater"
    .parameter "menu"

    .prologue
    .line 772
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 773
    const/4 v0, 0x1

    return v0
.end method

.method public final onInstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 298
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onInstallFragment  fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_24
    instance-of v0, p1, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v0, :cond_2e

    .line 301
    check-cast p1, Lcom/android/email/activity/MailboxListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V

    .line 309
    :goto_2d
    return-void

    .line 302
    .restart local p1
    :cond_2e
    instance-of v0, p1, Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_38

    .line 303
    check-cast p1, Lcom/android/email/activity/MessageListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    goto :goto_2d

    .line 304
    .restart local p1
    :cond_38
    instance-of v0, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_42

    .line 305
    check-cast p1, Lcom/android/email/activity/MessageViewFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V

    goto :goto_2d

    .line 307
    .restart local p1
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to install unknown fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMailboxNotFound(Z)V
    .registers 6
    .parameter "isFirstLoad"

    .prologue
    .line 914
    if-eqz p1, :cond_a

    .line 917
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v3, 0x7f080161

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 919
    :cond_a
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    .line 920
    .local v0, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 921
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/EmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 926
    :goto_1f
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 927
    return-void

    .line 923
    :cond_25
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_1f
.end method

.method public onMessageNotExists()V
    .registers 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 278
    return-void
.end method

.method public onMessageSetUnread()V
    .registers 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 272
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 824
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_32

    move v2, v3

    .line 846
    :cond_a
    :goto_a
    return v2

    .line 828
    :sswitch_b
    invoke-virtual {p0, v3}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    move-result v2

    goto :goto_a

    .line 830
    :sswitch_10
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->onCompose()Z

    move-result v2

    goto :goto_a

    .line 832
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->onRefresh()V

    goto :goto_a

    .line 835
    :sswitch_19
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->onAccountSettings()Z

    move-result v2

    goto :goto_a

    .line 837
    :sswitch_1e
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested()V

    goto :goto_a

    .line 840
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxSettingsMailboxId()J

    move-result-wide v0

    .line 841
    .local v0, mailboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_a

    .line 842
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    goto :goto_a

    .line 824
    :sswitch_data_32
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f0e00dd -> :sswitch_10
        0x7f0e00de -> :sswitch_1e
        0x7f0e00e0 -> :sswitch_15
        0x7f0e00e3 -> :sswitch_22
        0x7f0e00e4 -> :sswitch_19
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .registers 15
    .parameter "inflater"
    .parameter "menu"

    .prologue
    .line 781
    const v10, 0x7f0e00e0

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 782
    .local v5, item:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isRefreshEnabled()Z

    move-result v10

    if-eqz v10, :cond_7d

    .line 783
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 784
    iget-object v10, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v10, v5}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->setRefreshIcon(Landroid/view/MenuItem;)V

    .line 791
    :goto_16
    const/4 v7, 0x0

    .line 792
    .local v7, mailboxHasServerCounterpart:Z
    const/4 v3, 0x0

    .line 793
    .local v3, accountSearchable:Z
    const/4 v4, 0x0

    .line 795
    .local v4, isEas:Z
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v10

    if-eqz v10, :cond_55

    .line 796
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    .line 797
    .local v1, accountId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-lez v10, :cond_55

    .line 798
    iget-object v10, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v10, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 799
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_55

    .line 800
    iget-object v10, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 801
    .local v8, protocol:Ljava/lang/String;
    const-string v10, "eas"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 802
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 803
    .local v6, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v6, :cond_88

    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/Mailbox;->loadsFromServer(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_88

    const/4 v7, 0x1

    .line 805
    :goto_4e
    iget v10, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_8a

    const/4 v3, 0x1

    .line 810
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #accountId:J
    .end local v6           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v8           #protocol:Ljava/lang/String;
    :cond_55
    :goto_55
    iget-object v10, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v10}, Lcom/android/email/activity/ActionBarController;->isInSearchMode()Z

    move-result v10

    if-nez v10, :cond_8c

    if-eqz v3, :cond_8c

    if-eqz v7, :cond_8c

    const/4 v9, 0x1

    .line 813
    .local v9, showSearchIcon:Z
    :goto_62
    const v10, 0x7f0e00de

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 814
    const v10, 0x7f0e00e3

    invoke-interface {p2, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    if-eqz v4, :cond_8e

    if-eqz v7, :cond_8e

    const/4 v10, 0x1

    :goto_78
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 815
    const/4 v10, 0x1

    return v10

    .line 786
    .end local v3           #accountSearchable:Z
    .end local v4           #isEas:Z
    .end local v7           #mailboxHasServerCounterpart:Z
    .end local v9           #showSearchIcon:Z
    :cond_7d
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 787
    iget-object v10, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->setRefreshIcon(Landroid/view/MenuItem;)V

    goto :goto_16

    .line 803
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v1       #accountId:J
    .restart local v3       #accountSearchable:Z
    .restart local v4       #isEas:Z
    .restart local v6       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v7       #mailboxHasServerCounterpart:Z
    .restart local v8       #protocol:Ljava/lang/String;
    :cond_88
    const/4 v7, 0x0

    goto :goto_4e

    .line 805
    :cond_8a
    const/4 v3, 0x0

    goto :goto_55

    .line 810
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v1           #accountId:J
    .end local v6           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v8           #protocol:Ljava/lang/String;
    :cond_8c
    const/4 v9, 0x0

    goto :goto_62

    .line 814
    .restart local v9       #showSearchIcon:Z
    :cond_8e
    const/4 v10, 0x0

    goto :goto_78
.end method

.method protected abstract onRefresh()V
.end method

.method public onRespondedToInvite(I)V
    .registers 2
    .parameter "response"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 284
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 262
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 265
    const-string v0, "UIControllerBase.listContext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessageListContext;

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    .line 266
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 251
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    const-string v0, "UIControllerBase.listContext"

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    return-void
.end method

.method protected onSearchExit()V
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 761
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 766
    :goto_11
    return-void

    .line 764
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->invalidateOptionsMenu()V

    goto :goto_11
.end method

.method public onSearchRequested()V
    .registers 8

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    .line 648
    .local v1, accountId:J
    const/4 v3, 0x0

    .line 649
    .local v3, accountSearchable:Z
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_20

    .line 650
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v5, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 651
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_20

    .line 652
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, protocol:Ljava/lang/String;
    iget v5, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_23

    const/4 v3, 0x1

    .line 657
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v4           #protocol:Ljava/lang/String;
    :cond_20
    :goto_20
    if-nez v3, :cond_25

    .line 664
    :cond_22
    :goto_22
    return-void

    .line 653
    .restart local v0       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v4       #protocol:Ljava/lang/String;
    :cond_23
    const/4 v3, 0x0

    goto :goto_20

    .line 661
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    .end local v4           #protocol:Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 662
    iget-object v5, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ActionBarController;->enterSearchMode(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public onSearchStarted()V
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->invalidateOptionsMenu()V

    .line 639
    return-void
.end method

.method protected onSearchSubmit(Ljava/lang/String;)V
    .registers 10
    .parameter "queryTerm"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v1

    .line 731
    .local v1, accountId:J
    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-nez v0, :cond_b

    .line 754
    :cond_a
    :goto_a
    return-void

    .line 735
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 736
    .local v6, searchableMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v6, :cond_a

    .line 739
    iget-wide v3, v6, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    .line 741
    .local v3, mailboxId:J
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 742
    const-string v0, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Submitting search: ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] in mailboxId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_39
    iget-object v7, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/EmailActivity;->createSearchIntent(Landroid/app/Activity;JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/email/activity/EmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 753
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    goto :goto_a
.end method

.method public final onUninstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter "fragment"

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 345
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUninstallFragment  fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    if-ne p1, v0, :cond_31

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMailboxListFragment()V

    .line 357
    :goto_30
    return-void

    .line 350
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-ne p1, v0, :cond_39

    .line 351
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMessageListFragment()V

    goto :goto_30

    .line 352
    :cond_39
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-ne p1, v0, :cond_41

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMessageViewFragment()V

    goto :goto_30

    .line 355
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to uninstall unknown fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final open(Lcom/android/email/MessageListContext;J)V
    .registers 6
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 604
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/UIControllerBase;->openInternal(Lcom/android/email/MessageListContext;J)V

    .line 606
    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 607
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ActionBarController;->enterSearchMode(Ljava/lang/String;)V

    .line 609
    :cond_17
    return-void
.end method

.method protected abstract openInternal(Lcom/android/email/MessageListContext;J)V
.end method

.method protected final openMailbox(JJ)V
    .registers 8
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 593
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/UIControllerBase;->open(Lcom/android/email/MessageListContext;J)V

    .line 594
    return-void
.end method

.method protected refreshActionBar()V
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 906
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->invalidateOptionsMenu()V

    .line 907
    return-void
.end method

.method protected final removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .registers 7
    .parameter "ft"
    .parameter "fragment"

    .prologue
    .line 384
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_24

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 385
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removeFragment fragment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_24
    if-nez p2, :cond_27

    .line 401
    :cond_26
    :goto_26
    return-void

    .line 390
    :cond_27
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 393
    :try_start_2f
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_32
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_32} :catch_36

    .line 399
    :goto_32
    invoke-virtual {p0, p2}, Lcom/android/email/activity/UIControllerBase;->addFragmentToRemovalList(Landroid/app/Fragment;)V

    goto :goto_26

    .line 394
    :catch_36
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swalling IllegalStateException due to known bug for  fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const-string v1, "Email"

    invoke-static {p2}, Lcom/android/emailcommon/utility/Utility;->dumpFragment(Landroid/app/Fragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method protected removeMailboxListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 3
    .parameter "ft"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 425
    return-object p1
.end method

.method protected removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 3
    .parameter "ft"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 433
    return-object p1
.end method

.method protected removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .registers 3
    .parameter "ft"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 441
    return-object p1
.end method

.method protected setListContext(Lcom/android/email/MessageListContext;)V
    .registers 5
    .parameter "listContext"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 623
    :goto_8
    return-void

    .line 619
    :cond_9
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_2d

    .line 620
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setListContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_2d
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    goto :goto_8
.end method

.method protected final stopMessageOrderManager()V
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_c

    .line 1007
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1010
    :cond_c
    return-void
.end method

.method public final switchAccount(JZ)V
    .registers 9
    .parameter "accountId"
    .parameter "forceShowInbox"

    .prologue
    .line 535
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 536
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/email/activity/ActivityHelper;->showSecurityHoldDialog(Landroid/app/Activity;J)V

    .line 537
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/EmailActivity;->finish()V

    .line 565
    :cond_12
    :goto_12
    return-void

    .line 541
    :cond_13
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1d

    if-eqz p3, :cond_12

    .line 545
    :cond_1d
    const-wide/high16 v2, 0x1000

    cmp-long v2, p1, v2

    if-nez v2, :cond_3e

    .line 546
    const-wide/16 v2, -0x2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    .line 560
    :goto_28
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    if-eqz v2, :cond_31

    .line 561
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    invoke-virtual {v2}, Lcom/android/email/activity/NfcHandler;->onAccountChanged()V

    .line 563
    :cond_31
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->showAccountSpecificWarning(J)V

    goto :goto_12

    .line 548
    :cond_3e
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 549
    .local v0, inboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_7a

    .line 552
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have Inbox.  Redirecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Welcome..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 555
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/EmailActivity;->finish()V

    goto :goto_28

    .line 557
    :cond_7a
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    goto :goto_28
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uninstallMailboxListFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 362
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 363
    return-void
.end method

.method protected uninstallMessageListFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 368
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 369
    return-void
.end method

.method protected uninstallMessageViewFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 374
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 375
    return-void
.end method

.method protected abstract updateNavigationArrows()V
.end method
