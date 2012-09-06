.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# instance fields
.field private final LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final SEARCH_WARNING_DELAY_MS:I

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mController:Lcom/android/email/Controller;

.field private mCountTotalAccounts:I

.field private mDisableCab:Z

.field private mIsEasAccount:Z

.field private mIsFirstLoad:Z

.field private mIsRefreshable:Z

.field private mIsViewCreated:Z

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListContext:Lcom/android/email/MessageListContext;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListPanel:Landroid/view/View;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private final mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mResumed:Z

.field private mSavedListState:Landroid/os/Parcelable;

.field private mSearchHeader:Landroid/view/ViewGroup;

.field private mSearchHeaderCount:Landroid/widget/TextView;

.field private mSearchHeaderText:Landroid/widget/TextView;

.field private mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShowMoveCommand:Z

.field private mShowSendCommand:Z

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mWarningContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 102
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 156
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 1249
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->SEARCH_WARNING_DELAY_MS:I

    .line 1270
    new-instance v0, Lcom/android/email/activity/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$4;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1536
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListFragment;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateMailboxSpecificActions()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateFooterView()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->toggleFavorite(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->deleteMessages(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->showMoveMessagesDialog(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->callbackTypeForMailboxType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchLoadTimeout()V

    return-void
.end method

.method private adjustMessageNotification(Z)V
    .registers 9
    .parameter "updateLastSeenKey"

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 1225
    .local v0, accountId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    .line 1226
    .local v2, mailboxId:J
    const-wide/16 v5, -0x2

    cmp-long v5, v2, v5

    if-eqz v5, :cond_14

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_26

    .line 1227
    :cond_14
    if-eqz p1, :cond_1b

    .line 1228
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/utility/Utility;->updateLastSeenMessageKey(Landroid/content/Context;J)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1230
    :cond_1b
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v4

    .line 1231
    .local v4, notifier:Lcom/android/email/NotificationController;
    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/email/NotificationController;->suspendMessageNotification(ZJ)V

    .line 1233
    .end local v4           #notifier:Lcom/android/email/NotificationController;
    :cond_26
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .registers 4

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_5

    .line 1067
    :cond_4
    :goto_4
    return-void

    .line 1063
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_4
.end method

.method private callbackTypeForMailboxType(I)I
    .registers 3
    .parameter "mailboxType"

    .prologue
    .line 804
    packed-switch p1, :pswitch_data_a

    .line 810
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 806
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 808
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 804
    nop

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private deleteMessages(Ljava/util/Set;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 945
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->deleteMessages([J)V

    .line 946
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0008

    array-length v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 948
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 950
    return-void
.end method

.method private determineFooterMode()I
    .registers 8

    .prologue
    .line 1107
    const/4 v2, 0x0

    .line 1108
    .local v2, result:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_13

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    :cond_13
    move v3, v2

    .line 1130
    .end local v2           #result:I
    .local v3, result:I
    :goto_14
    return v3

    .line 1113
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_15
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3d

    .line 1115
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1116
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_2d

    :cond_2b
    move v3, v2

    .line 1118
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_14

    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_2d
    move-object v5, v0

    .line 1120
    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getResultsCount()I

    move-result v4

    .line 1121
    .local v4, total:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1123
    .local v1, loaded:I
    if-ge v1, v4, :cond_3b

    .line 1124
    const/4 v2, 0x1

    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #loaded:I
    .end local v4           #total:I
    :cond_3b
    :goto_3b
    move v3, v2

    .line 1130
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_14

    .line 1126
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_3d
    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v5, :cond_3b

    .line 1128
    const/4 v2, 0x1

    goto :goto_3b
.end method

.method private doFooterClick()V
    .registers 2

    .prologue
    .line 1182
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_a

    .line 1189
    :goto_5
    :pswitch_5
    return-void

    .line 1186
    :pswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_5

    .line 1182
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private finishSelectionMode()V
    .registers 3

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1440
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    .line 1441
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1443
    :cond_10
    return-void
.end method

.method private getSelectedCount()I
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method private highlightSelectedMessage(Z)V
    .registers 9
    .parameter "ensureSelectionVisible"

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1573
    :cond_6
    :goto_6
    return-void

    .line 1555
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1556
    .local v2, lv:Landroid/widget/ListView;
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 1558
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_6

    .line 1562
    :cond_17
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1563
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v0, :cond_6

    .line 1564
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2b

    .line 1563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1567
    :cond_2b
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1568
    if-eqz p1, :cond_6

    .line 1569
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_6
.end method

.method private initSearchHeader()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    if-nez v1, :cond_3b

    .line 383
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 384
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040036

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const v2, 0x7f0e008c

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderText:Landroid/widget/TextView;

    .line 387
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const v2, 0x7f0e008b

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderCount:Landroid/widget/TextView;

    .line 390
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 392
    .end local v0           #root:Landroid/view/ViewGroup;
    :cond_3b
    return-void
.end method

.method private initializeArgCache()V
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_5

    .line 258
    :goto_4
    return-void

    .line 257
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listContext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessageListContext;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    goto :goto_4
.end method

.method private isViewCreated()Z
    .registers 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    return v0
.end method

.method public static newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;
    .registers 4
    .parameter "listContext"

    .prologue
    .line 240
    new-instance v1, Lcom/android/email/activity/MessageListFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageListFragment;-><init>()V

    .line 241
    .local v1, instance:Lcom/android/email/activity/MessageListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "listContext"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 244
    return-object v1
.end method

.method private onDeselectAll()V
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->clearSelection()V

    .line 879
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 880
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 882
    :cond_e
    return-void
.end method

.method private onLoadMoreMessages()V
    .registers 6

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_11

    .line 889
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    .line 891
    :cond_11
    return-void
.end method

.method private onMessageOpen(JJ)V
    .registers 13
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_20

    .line 793
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment;->callbackTypeForMailboxType(I)I

    move-result v7

    move-wide v1, p3

    move-wide v3, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    .line 801
    :goto_1f
    return-void

    .line 800
    :cond_20
    new-instance v0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_1f
.end method

.method private onSearchLoadTimeout()V
    .registers 5

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1254
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1255
    if-eqz v0, :cond_4c

    if-eqz v1, :cond_4c

    .line 1256
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    .line 1259
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e008e

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1260
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0e008f

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1261
    const v3, 0x7f08018d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1262
    const v1, 0x7f08018e

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1263
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1265
    :cond_4c
    return-void
.end method

.method private showMoveMessagesDialog(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 847
    .local v1, messageIds:[J
    invoke-static {v1, p0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance([JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 848
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method private showSendCommand(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    if-eq p1, v0, :cond_b

    .line 1193
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    .line 1194
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1196
    :cond_b
    return-void
.end method

.method private startLoading()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1236
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 1237
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 1241
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1245
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1246
    return-void
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .registers 11
    .parameter
    .parameter "columnId"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1020
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1021
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v3, v4

    .line 1033
    :goto_11
    return v3

    .line 1024
    :cond_12
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1025
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1026
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    .line 1027
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1028
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz p3, :cond_35

    move v5, v3

    :goto_32
    if-ne v6, v5, :cond_16

    goto :goto_11

    :cond_35
    move v5, v4

    goto :goto_32

    .end local v1           #id:J
    :cond_37
    move v3, v4

    .line 1033
    goto :goto_11
.end method

.method private toggleFavorite(Ljava/util/Set;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    .line 941
    return-void
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
    .registers 15
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v7, 0x1

    const/4 v11, -0x1

    const/4 v8, 0x0

    .line 978
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v9}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 979
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1010
    :cond_11
    :goto_11
    return-void

    .line 983
    :cond_12
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 984
    .local v5, setValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    .line 986
    .local v0, allWereSet:Z
    invoke-interface {v1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 987
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_46

    .line 988
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v2, v9

    .line 989
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 990
    invoke-interface {p2, v1}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(Landroid/database/Cursor;)Z

    move-result v6

    .line 991
    .local v6, value:Z
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    if-eqz v0, :cond_44

    if-eqz v6, :cond_44

    move v0, v7

    :goto_43
    goto :goto_1a

    :cond_44
    move v0, v8

    goto :goto_43

    .line 996
    .end local v2           #id:J
    .end local v6           #value:Z
    :cond_46
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 997
    if-nez v0, :cond_5b

    move v4, v7

    .line 998
    .local v4, newValue:Z
    :goto_4f
    invoke-interface {v1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1000
    new-instance v7, Lcom/android/email/activity/MessageListFragment$3;

    invoke-direct {v7, p0, v5, v4, p2}, Lcom/android/email/activity/MessageListFragment$3;-><init>(Lcom/android/email/activity/MessageListFragment;Ljava/util/HashMap;ZLcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    invoke-static {v7}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_11

    .end local v4           #newValue:Z
    :cond_5b
    move v4, v8

    .line 997
    goto :goto_4f
.end method

.method private toggleRead(Ljava/util/Set;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    .line 921
    return-void
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItem;)V
    .registers 3
    .parameter "itemView"

    .prologue
    .line 777
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 778
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 779
    return-void
.end method

.method private updateFooterView()V
    .registers 4

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()I

    move-result v0

    .line 1136
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-ne v1, v0, :cond_9

    .line 1158
    :goto_8
    return-void

    .line 1139
    :cond_9
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 1141
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1142
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v1, :cond_46

    .line 1143
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1147
    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1148
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1149
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1152
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    .line 1153
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    .line 1157
    :goto_42
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    goto :goto_8

    .line 1155
    :cond_46
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_42
.end method

.method private updateListFooter()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v0, :cond_10

    .line 1166
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_30

    move v0, v1

    .line 1174
    :goto_b
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1176
    :cond_10
    return-void

    .line 1168
    :pswitch_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v2

    .line 1169
    if-eqz v2, :cond_28

    const v0, 0x7f08002d

    .line 1171
    :goto_20
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v2, :cond_2c

    :goto_24
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 1169
    :cond_28
    const v0, 0x7f08005a

    goto :goto_20

    .line 1171
    :cond_2c
    const/16 v1, 0x8

    goto :goto_24

    .line 1166
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method private updateMailboxSpecificActions()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1199
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    const-wide/16 v6, -0x6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4e

    :cond_17
    move v0, v2

    .line 1201
    .local v0, isOutbox:Z
    :goto_18
    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_50

    move v1, v2

    :goto_27
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 1206
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_3a
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_46
    :goto_46
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z

    .line 1210
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1211
    return-void

    .end local v0           #isOutbox:Z
    :cond_4e
    move v0, v3

    .line 1199
    goto :goto_18

    .restart local v0       #isOutbox:Z
    :cond_50
    move v1, v3

    .line 1201
    goto :goto_27

    :cond_52
    move v2, v3

    .line 1206
    goto :goto_46
.end method

.method private updateSearchHeader(Landroid/database/Cursor;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez p1, :cond_15

    .line 1085
    :cond_d
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1104
    :goto_14
    return-void

    .line 1089
    :cond_15
    check-cast p1, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    .line 1090
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initSearchHeader()V

    .line 1091
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1092
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v0

    iget-object v0, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    invoke-virtual {p1}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getResultsCount()I

    move-result v0

    .line 1099
    if-gez v0, :cond_43

    move v0, v1

    .line 1102
    :cond_43
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method

.method private updateSelectionModeView()V
    .registers 2

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1448
    return-void
.end method


# virtual methods
.method public doesSelectionContainNonStarredMessage()Z
    .registers 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .registers 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public getAccount()Lcom/android/emailcommon/provider/Account;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 267
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    return-wide v0
.end method

.method public getListContext()Lcom/android/email/MessageListContext;
    .registers 2

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method public getMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public getMailboxId()J
    .registers 3

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 275
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public hasDataLoaded()Z
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isCombinedMailbox()Z
    .registers 5

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInSelectionMode()Z
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInboxList()Z
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v4

    .line 317
    .local v4, listContext:Lcom/android/email/MessageListContext;
    iget-wide v0, v4, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 318
    .local v0, accountId:J
    const-wide/high16 v7, 0x1000

    cmp-long v7, v0, v7

    if-nez v7, :cond_1b

    .line 319
    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v7

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_19

    .line 327
    :cond_18
    :goto_18
    return v5

    :cond_19
    move v5, v6

    .line 319
    goto :goto_18

    .line 322
    :cond_1b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->hasDataLoaded()Z

    move-result v7

    if-nez v7, :cond_31

    .line 324
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v0, v1, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 325
    .local v2, inboxId:J
    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_18

    move v5, v6

    goto :goto_18

    .line 327
    .end local v2           #inboxId:J
    :cond_31
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v7, :cond_3b

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eqz v7, :cond_18

    :cond_3b
    move v5, v6

    goto :goto_18
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 408
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_21

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 409
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActivityCreated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_21
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 414
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 415
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 421
    const v1, 0x7f08005b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 423
    if-eqz p1, :cond_55

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 428
    :cond_55
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    .line 430
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 431
    return-void
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V
    .registers 6
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1073
    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V
    .registers 4
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "mSelectedCount"

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1080
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 341
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 344
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 348
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 349
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_21
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 354
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 356
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 358
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 359
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    .line 360
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 532
    const v0, 0x7f0d0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 533
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 365
    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v1, :cond_20

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 366
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreateView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_20
    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, root:Landroid/view/View;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    .line 371
    const v1, 0x7f0e0080

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 372
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 491
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 492
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_20
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 496
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 497
    return-void
.end method

.method public onDestroyView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 476
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 477
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroyView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_21
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    .line 480
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 485
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 486
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 487
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 501
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 502
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDetach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 505
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 705
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 713
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 707
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 708
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 710
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onDragEnded()V

    goto :goto_7

    .line 705
    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch
.end method

.method public onHidden(Z)V
    .registers 3
    .parameter "hidden"

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    if-ne p1, v0, :cond_5

    .line 565
    :goto_4
    return-void

    .line 563
    :cond_5
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    goto :goto_4
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 21
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    move-object/from16 v0, p2

    if-eq v0, v10, :cond_af

    move-object/from16 v3, p2

    .line 730
    check-cast v3, Lcom/android/email/activity/MessageListItem;

    .line 731
    .local v3, listItem:Lcom/android/email/activity/MessageListItem;
    const/4 v9, 0x0

    .line 732
    .local v9, toggled:Z
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10, v3}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 733
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;)V

    .line 734
    const/4 v9, 0x1

    .line 738
    :cond_17
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MessageListFragment$Callback;->onDragStarted()Z

    move-result v10

    if-nez v10, :cond_20

    .line 773
    .end local v3           #listItem:Lcom/android/email/activity/MessageListItem;
    .end local v9           #toggled:Z
    :goto_1f
    return v9

    .line 743
    .restart local v3       #listItem:Lcom/android/email/activity/MessageListItem;
    .restart local v9       #toggled:Z
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    .line 744
    .local v4, mailboxId:J
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v10, :cond_2e

    .line 745
    :cond_2c
    const/4 v9, 0x0

    goto :goto_1f

    .line 746
    :cond_2e
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_3e

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v10

    if-nez v10, :cond_3e

    .line 747
    const/4 v9, 0x0

    goto :goto_1f

    .line 752
    :cond_3e
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.android.email.MESSAGE_LIST_ITEMS"

    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    iget-wide v13, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "mailboxId"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 759
    .local v1, data:Landroid/content/ClipData;
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v7

    .line 760
    .local v7, selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    .line 762
    .local v8, size:I
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_76
    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 763
    .local v6, messageId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_76

    .line 764
    new-instance v10, Landroid/content/ClipData$Item;

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_76

    .line 769
    .end local v6           #messageId:Ljava/lang/Long;
    :cond_9f
    invoke-virtual {v3, p0}, Lcom/android/email/activity/MessageListItem;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 770
    new-instance v10, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;

    invoke-direct {v10, v3, v8}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;-><init>(Landroid/view/View;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v10, v11, v12}, Lcom/android/email/activity/MessageListItem;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 771
    const/4 v9, 0x1

    goto/16 :goto_1f

    .line 773
    .end local v1           #data:Landroid/content/ClipData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listItem:Lcom/android/email/activity/MessageListItem;
    .end local v4           #mailboxId:J
    .end local v7           #selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v8           #size:I
    .end local v9           #toggled:Z
    :cond_af
    const/4 v9, 0x0

    goto/16 :goto_1f
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eq p2, v1, :cond_d

    move-object v0, p2

    .line 604
    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 605
    .local v0, itemView:Lcom/android/email/activity/MessageListItem;
    iget-wide v1, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 609
    .end local v0           #itemView:Lcom/android/email/activity/MessageListItem;
    :goto_c
    return-void

    .line 607
    :cond_d
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    goto :goto_c
.end method

.method public onMoveToMailboxSelected(J[J)V
    .registers 7
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 854
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_7

    .line 864
    :goto_6
    return-void

    .line 859
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-static {p3}, Lcom/android/emailcommon/utility/Utility;->toLongSet([J)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 860
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V

    .line 863
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 548
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 544
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    .line 545
    const/4 v0, 0x1

    goto :goto_8

    .line 542
    :pswitch_data_e
    .packed-switch 0x7f0e00e5
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 455
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 458
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    .line 460
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 461
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 537
    const v0, 0x7f0e00e5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 538
    return-void
.end method

.method public onRefresh(Z)V
    .registers 8
    .parameter "userRequest"

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_12

    .line 873
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 875
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 443
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 444
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    .line 448
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 450
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 509
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 510
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

    .line 512
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 514
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 515
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    :cond_3b
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 518
    return-void
.end method

.method public onSendPendingMessages()V
    .registers 6

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    .line 895
    .local v0, rm:Lcom/android/email/RefreshManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    .line 896
    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    .line 900
    :cond_13
    :goto_13
    return-void

    .line 897
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_13

    .line 898
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_13
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 435
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 436
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_20
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 439
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 466
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 469
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 471
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 472
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 718
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 720
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$102(I)I

    .line 723
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 522
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 523
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

    .line 525
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    .line 526
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 527
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 528
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 552
    if-eqz p1, :cond_5

    .end local p1
    :goto_2
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 553
    return-void

    .line 552
    .restart local p1
    :cond_5
    sget-object p1, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_2
.end method

.method public setLayout(Lcom/android/email/activity/ThreePaneLayout;)V
    .registers 3
    .parameter "layout"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 377
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setLayout(Lcom/android/email/activity/ThreePaneLayout;)V

    .line 379
    :cond_d
    return-void
.end method

.method public setSelectedMessage(J)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    .line 575
    :cond_6
    :goto_6
    return-void

    .line 571
    :cond_7
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 572
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_6

    .line 573
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    goto :goto_6
.end method

.method public updateSelectionMode()V
    .registers 4

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v0

    .line 1419
    .local v0, numSelected:I
    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1420
    :cond_10
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 1429
    :goto_13
    return-void

    .line 1423
    :cond_14
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1424
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V

    goto :goto_13

    .line 1426
    :cond_1e
    new-instance v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 1427
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_13
.end method
