.class public Lcom/android/mms/ui/ConversationListFragment;
.super Landroid/app/Fragment;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    }
.end annotation


# static fields
.field public static badge:Landroid/widget/QuickContactBadge;

.field private static deleteComplete:Z

.field public static isCmas:Z

.field public static mIsEmptyThread:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationHeader:Landroid/widget/LinearLayout;

.field private mConversationTitle:Landroid/widget/LinearLayout;

.field private mConvlist:Landroid/view/View;

.field private mCountToDelete:I

.field private mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteEventHandler:Landroid/os/Handler;

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mEmptyView:Landroid/view/View;

.field private mFirstItemId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleteMode:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field private mNewCompose:Landroid/widget/LinearLayout;

.field private final mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field mTotalConversations:Landroid/widget/TextView;

.field private mVisibleOffset:I

.field private onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field private onNewMessage:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    .line 199
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 209
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    .line 1372
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 223
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$1;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    .line 239
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 241
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 533
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$6;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 925
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$10;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 1068
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$11;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1271
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$13;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1345
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$14;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    .line 230
    if-eqz p1, :cond_41

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setIntent(Landroid/content/Intent;)V

    .line 232
    :cond_41
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->createNewMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationListFragment;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->isCMASCheck(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationListFragment;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ConversationListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/ConversationListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationListFragment;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationListFragment;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationListFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V

    return-void
.end method

.method static synthetic access$3100()Z
    .registers 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    sput-boolean p0, Lcom/android/mms/ui/ConversationListFragment;->deleteComplete:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ConversationListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V

    return-void
.end method

.method private beforeQuery()V
    .registers 3

    .prologue
    .line 771
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "beforeQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1223
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThread(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/16 v0, 0x70b

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 1225
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1240
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDeleteThreadDialog(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",hasLockedMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resourceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const v0, 0x7f030014

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1244
    const v0, 0x7f08006f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1245
    const v1, 0x7f08006e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1246
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 1248
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setHasLockedMessage(Z)V

    .line 1249
    if-nez p2, :cond_83

    .line 1250
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1261
    :goto_53
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1262
    if-eqz p1, :cond_97

    const v0, 0x7f090090

    :goto_5d
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1253
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1254
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ConversationListFragment$12;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53

    .line 1262
    :cond_97
    const v0, 0x7f09008f

    goto :goto_5d
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1051
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1053
    const-string v0, "mailto"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1062
    :goto_d
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1064
    return-object v1

    .line 1056
    :cond_15
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d
.end method

.method private createNewMessage()V
    .registers 3

    .prologue
    .line 980
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 981
    return-void
.end method

.method private deleteSelectedConversations()V
    .registers 4

    .prologue
    .line 1993
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "deleteSelectedConversations()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 1996
    iget v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 1997
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 2002
    :goto_20
    return-void

    .line 1999
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v1, 0x70d

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_20
.end method

.method private disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .registers 3
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 519
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 520
    return-void
.end method

.method private static ensureUpdateDeletable()Z
    .registers 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method private getConversation(I)Lcom/android/mms/data/Conversation;
    .registers 6
    .parameter "position"

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteEventHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 481
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$5;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    .line 497
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getListView()Lcom/android/mms/ui/MsgSweepActionListView;
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .registers 5

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_18

    .line 2034
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901d1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2038
    :cond_18
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getQuantityText(III)Ljava/lang/String;
    .registers 9
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 1500
    if-nez p1, :cond_9

    .line 1501
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1504
    :goto_8
    return-object v0

    .line 1503
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, str:Ljava/lang/String;
    goto :goto_8
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 505
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private initListAdapter()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    .line 541
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "initListAdapter()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V

    .line 548
    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_37

    .line 549
    sget-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    .line 550
    sput-wide v3, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    .line 553
    :cond_37
    return-void
.end method

.method private isCMASCheck(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 966
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 967
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 969
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_4f

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_4f

    .line 971
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string v1, "#CMAS#"

    .line 973
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 975
    :goto_36
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCMASCheck()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    return v0

    :cond_4f
    move v0, v1

    goto :goto_36
.end method

.method private isFirstItemChanged()Z
    .registers 5

    .prologue
    .line 1519
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_27

    .line 1521
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1522
    .local v0, newId:J
    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_27

    .line 1523
    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J

    .line 1524
    const/4 v2, 0x1

    .line 1528
    .end local v0           #newId:J
    :goto_26
    return v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private loadToDeleteMode(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 708
    const-string v0, "conversationDeleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 709
    return-void
.end method

.method private markCheckedMessageLimit()V
    .registers 4

    .prologue
    .line 614
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 615
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "markCheckedMessageLimit()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private notifyDeleteStart()V
    .registers 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteStart()V

    .line 2020
    return-void
.end method

.method private openThread(J)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 986
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2a

    .line 990
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 991
    const-string v1, "#CMAS#Presidential"

    .line 992
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    .line 994
    :cond_2a
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openThread startActivity for threadId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , CMAS= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isCmas:Z

    if-eqz v0, :cond_6d

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6d

    .line 996
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/CMASViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 997
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 998
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 1016
    :cond_6c
    :goto_6c
    return-void

    .line 1003
    :cond_6d
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6c

    .line 1007
    :cond_7c
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 1008
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v1

    .line 1010
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->openThread(Landroid/content/Intent;)V

    .line 1013
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_6c
.end method

.method private parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1886
    .line 1888
    const/4 v1, 0x0

    .line 1890
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1891
    const/16 v2, 0xf

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1892
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1894
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_69

    move-object v0, p1

    .line 1898
    :cond_23
    :goto_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_68

    .line 1899
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1901
    const/4 v1, 0x1

    const-string v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v1, v3, :cond_23

    .line 1902
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1904
    if-ltz v1, :cond_23

    .line 1905
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1906
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SYLEE - sep : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " After parsedCallNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_68
    return-object v0

    :cond_69
    move-object v0, v1

    goto :goto_23
.end method

.method private refreshSplitMode()V
    .registers 3

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 1208
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    .line 1211
    :goto_10
    return-void

    .line 1210
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_10
.end method

.method private restoreListOffset()V
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_5

    .line 722
    :goto_4
    return-void

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    goto :goto_4
.end method

.method private saveListOffset()V
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-nez v0, :cond_5

    .line 716
    :goto_4
    return-void

    .line 715
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I

    goto :goto_4
.end method

.method private saveToDeleteMode(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 704
    const-string v0, "conversationDeleteMode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    return-void
.end method

.method private setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    .registers 4
    .parameter "listView"

    .prologue
    .line 513
    new-instance v0, Lcom/android/mms/ui/SweepHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/SweepHandler;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 514
    invoke-virtual {p1, p0}, Lcom/android/mms/ui/MsgSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 515
    return-void
.end method

.method private setTotalQuantityTextView(I)V
    .registers 6
    .parameter

    .prologue
    .line 1509
    const v0, 0x7f090116

    const v1, 0x7f0a0002

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->getQuantityText(III)Ljava/lang/String;

    move-result-object v0

    .line 1511
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTotalQuantityTextView(),text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method private startAsyncQuery()V
    .registers 2

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 819
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .registers 5
    .parameter "delay"

    .prologue
    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$9;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 827
    return-void
.end method

.method private startAsyncQueryInternal(Z)V
    .registers 6
    .parameter "isFake"

    .prologue
    .line 837
    if-eqz p1, :cond_c

    .line 838
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a4

    const/16 v3, 0xb

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Conversation;->startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V

    .line 846
    :goto_b
    return-void

    .line 841
    :cond_c
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_b

    .line 843
    :catch_14
    move-exception v0

    .line 844
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_b
.end method

.method private startFakeAsyncQuery()V
    .registers 2

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->beforeQuery()V

    .line 812
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V

    .line 813
    return-void
.end method

.method private updateCMASExpiry()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 757
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 758
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 759
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "cmas_expired"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "calling updateCMASExpiry"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v2, Landroid/provider/Telephony$Threads;->CMAS_URI:Landroid/net/Uri;

    const-string v3, "cmas_expired=0"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method private updateEmptyScreen(IZ)V
    .registers 10
    .parameter "resultCount"
    .parameter "handleFooter"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 778
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmptyScreen(),resultCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    .line 783
    .local v0, listView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    if-eqz v1, :cond_28

    .line 784
    invoke-virtual {p0, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    .line 808
    :cond_27
    :goto_27
    return-void

    .line 789
    :cond_28
    if-nez p1, :cond_3a

    .line 790
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 791
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 792
    if-eqz p2, :cond_27

    .line 793
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    .line 802
    :cond_3a
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 803
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 804
    if-eqz p2, :cond_27

    .line 805
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method


# virtual methods
.method public FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .registers 7
    .parameter "cursor"
    .parameter "threadId"

    .prologue
    .line 2043
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2045
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 2047
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_14

    .line 2054
    .end local p1
    :goto_13
    return-object p1

    .line 2051
    .restart local p1
    :cond_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2054
    :cond_1a
    const/4 p1, 0x0

    goto :goto_13
.end method

.method public drawMessagePointer(J)V
    .registers 6
    .parameter

    .prologue
    .line 1020
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawMessagePointer(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->setListItemSelected(J)V

    .line 1026
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 1027
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1029
    :cond_2d
    return-void
.end method

.method public drawMessageTouchPointer()V
    .registers 3

    .prologue
    .line 1032
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "drawMessageTouchPointer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1036
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->invalidateViews()V

    .line 1037
    :cond_17
    return-void
.end method

.method public getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;
    .registers 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1844
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumber(),position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1848
    if-nez v1, :cond_20

    .line 1882
    :cond_1f
    :goto_1f
    return-object v0

    .line 1851
    :cond_20
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1852
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 1855
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 1856
    array-length v2, v1

    if-eqz v2, :cond_1f

    .line 1859
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1863
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->isCMASCheck(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1864
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "ignore CMAS sweep calling"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_47} :catch_48

    goto :goto_1f

    .line 1878
    :catch_48
    move-exception v1

    .line 1879
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 1869
    :cond_4d
    const/4 v2, 0x0

    :try_start_4e
    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1870
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->parseIncorrectCallNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 1872
    :cond_5e
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_61} :catch_48

    goto :goto_1f
.end method

.method public isConversationIndex(I)Z
    .registers 7
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 523
    if-gez p1, :cond_4

    .line 530
    :cond_3
    :goto_3
    return v3

    .line 526
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v0

    .line 527
    .local v0, cnt:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 528
    .local v2, cntHeader:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v1

    .line 530
    .local v1, cntFooter:I
    add-int/lit8 v4, v2, -0x1

    if-le p1, v4, :cond_3

    sub-int v4, v0, v1

    if-ge p1, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_3
.end method

.method public isDeleteMode()Z
    .registers 2

    .prologue
    .line 1989
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 290
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[Start]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 295
    if-eqz p1, :cond_16

    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->loadToDeleteMode(Landroid/os/Bundle;)V

    .line 300
    :cond_16
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 302
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    .line 303
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->setmDeleteEventHandler(Landroid/os/Handler;)V

    .line 305
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 308
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onConversationListItemClick:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 313
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->ensureUpdateDeletable()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 314
    invoke-static {}, Lcom/android/mms/data/Conversation;->updateDeletable()V

    .line 317
    :cond_67
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->onNewMessage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewComposeKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 320
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->initListAdapter()V

    .line 322
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 326
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_94

    .line 327
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 332
    :cond_94
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$2;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$3;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$4;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 372
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "[End]onActivityCreated()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 245
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 247
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 1192
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 1198
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_32

    .line 1199
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 1203
    :cond_32
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1137
    const-string v0, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContextItemSelected(),itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1141
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 1142
    instance-of v2, v0, Landroid/database/Cursor;

    if-nez v2, :cond_31

    move v0, v1

    .line 1177
    :goto_30
    return v0

    .line 1144
    :cond_31
    check-cast v0, Landroid/database/Cursor;

    .line 1146
    if-eqz v0, :cond_48

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ltz v0, :cond_48

    .line 1149
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;

    .line 1150
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_8e

    .line 1177
    :cond_48
    :goto_48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_30

    .line 1153
    :pswitch_4d
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I

    .line 1154
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_48

    .line 1158
    :pswitch_56
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    goto :goto_48

    .line 1162
    :pswitch_5a
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1163
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1164
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_48

    .line 1169
    :pswitch_78
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_48

    .line 1151
    :pswitch_data_8e
    .packed-switch 0xc8
        :pswitch_4d
        :pswitch_56
        :pswitch_5a
        :pswitch_78
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    .line 254
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[Start]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const v0, 0x7f030013

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    .line 264
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getListView()Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 266
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSupportEmoji()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setCacheColorHint(I)V

    .line 269
    :cond_22
    const v0, 0x7f03000c

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mTotalConversations:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mNewCompose:Landroid/widget/LinearLayout;

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mEmptyView:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 283
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "[End]onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvlist:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteCompleted()V
    .registers 3

    .prologue
    .line 2023
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2030
    :cond_8
    :goto_8
    return-void

    .line 2026
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 2027
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2028
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_8
.end method

.method public onDeleteStart()V
    .registers 3

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 2013
    .local v0, dlg:Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2014
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2016
    :cond_d
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 739
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 741
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 742
    return-void
.end method

.method public onDraftChanged(JZ)V
    .registers 6
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 745
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "post onDraftChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationListFragment$8;-><init>(Lcom/android/mms/ui/ConversationListFragment;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 754
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 622
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateCMASExpiry()V

    .line 627
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startAsyncQuery()V

    .line 629
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 892
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 893
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    packed-switch v0, :pswitch_data_5c

    .line 922
    :pswitch_20
    const/4 v0, 0x0

    :goto_21
    return v0

    .line 901
    :pswitch_22
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v1

    .line 902
    goto :goto_21

    .line 905
    :pswitch_29
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->onConversationDeleteMode()V

    .line 906
    invoke-virtual {p0, v1, v1}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    move v0, v1

    .line 907
    goto :goto_21

    .line 909
    :pswitch_35
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 911
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 913
    goto :goto_21

    .line 916
    :pswitch_45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 917
    const-string v2, "com.wsomacp"

    const-string v3, "com.wsomacp.WSSClientProvUiList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 920
    goto :goto_21

    .line 895
    nop

    :pswitch_data_5c
    .packed-switch 0xc9
        :pswitch_22
        :pswitch_20
        :pswitch_29
        :pswitch_45
        :pswitch_35
    .end packed-switch
.end method

.method public onPrepareListOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    .line 851
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v8

    .line 887
    :goto_f
    return v0

    .line 859
    :cond_10
    const/4 v7, 0x0

    .line 861
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_11
    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 862
    .local v2, cpUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 865
    if-eqz v7, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 866
    const/4 v0, 0x0

    const/16 v1, 0xcc

    const/4 v3, 0x0

    const v4, 0x7f090007

    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_82

    .line 870
    :cond_40
    if-eqz v7, :cond_45

    .line 871
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 874
    :cond_45
    const/16 v0, 0xc9

    const v1, 0x104000c

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 878
    const/16 v0, 0xcd

    const v1, 0x7f090006

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_80

    .line 883
    const/16 v0, 0xcb

    const v1, 0x7f09000a

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 887
    :cond_80
    const/4 v0, 0x1

    goto :goto_f

    .line 870
    .end local v2           #cpUri:Landroid/net/Uri;
    :catchall_82
    move-exception v0

    if-eqz v7, :cond_88

    .line 871
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1809
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    .line 1813
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    .line 1825
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1826
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 682
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "\t\t onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :try_start_7
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V

    .line 686
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->saveToDeleteMode(Landroid/os/Bundle;)V

    .line 689
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getHeaderViewsCount()I

    move-result v1

    .line 690
    .local v1, headerCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-lez v2, :cond_2e

    .line 691
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    add-int/lit8 v3, v1, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_33

    .line 699
    .end local v1           #headerCount:I
    :goto_26
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void

    .line 693
    .restart local v1       #headerCount:I
    :cond_2e
    const-wide/16 v2, -0x1

    :try_start_30
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment;->mFirstItemId:J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_33

    goto :goto_26

    .line 695
    .end local v1           #headerCount:I
    :catch_33
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 634
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 635
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->refreshFontSize()V

    .line 639
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:sms rejected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 643
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "mms noti-cancel:report"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 647
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 649
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->refreshSplitMode()V

    .line 651
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->updateCMASExpiry()V

    .line 653
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->startFakeAsyncQuery()V

    .line 668
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 669
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 674
    :cond_4c
    sget-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v0, :cond_5b

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_5b

    .line 675
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 678
    :cond_5b
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 726
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 727
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 734
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 735
    return-void
.end method

.method public onSweepActionCanceled(I)V
    .registers 5
    .parameter

    .prologue
    .line 1763
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionCanceled(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    return-void
.end method

.method public onSweepActionFired(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1767
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionFired(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flickDirection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    .line 1773
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getConversation(I)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1775
    if-nez v0, :cond_38

    .line 1776
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    .line 1801
    :goto_2f
    return-void

    .line 1779
    :catch_30
    move-exception v0

    .line 1780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1781
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_2f

    .line 1785
    :cond_38
    if-nez p2, :cond_6c

    .line 1786
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListFragment;->getNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1788
    if-nez v0, :cond_44

    .line 1789
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_2f

    .line 1791
    :cond_44
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSweepActionFired calling(),itemIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2f

    .line 1795
    :cond_6c
    if-ne v3, p2, :cond_7a

    .line 1796
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_2f

    .line 1799
    :cond_7a
    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_2f
.end method

.method public onSweepActionStarted(I)V
    .registers 5
    .parameter

    .prologue
    .line 1840
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSweepActionStarted(),itemIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .registers 5
    .parameter "threadId"

    .prologue
    .line 2070
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 2071
    const/4 v0, 0x0

    .line 2075
    :goto_7
    return v0

    .line 2074
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    .line 2075
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public requestFocusOnConversationList(J)Z
    .registers 6
    .parameter "threadId"

    .prologue
    .line 2058
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->FindThread(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2060
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_e

    .line 2061
    const/4 v1, 0x0

    .line 2065
    :goto_d
    return v1

    .line 2063
    :cond_e
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 2065
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->requestFocus()Z

    move-result v1

    goto :goto_d
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .registers 5

    .prologue
    .line 562
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 563
    .local v0, autoDeleteEnabled:Z
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOneTimeStorageLimitCheckForLegacyMessages(),autoDeleteEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    if-eqz v0, :cond_26

    .line 569
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_34

    .line 606
    :goto_24
    monitor-exit p0

    return-void

    .line 572
    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListFragment$7;-><init>(Lcom/android/mms/ui/ConversationListFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_34

    goto :goto_24

    .line 562
    .end local v0           #autoDeleteEnabled:Z
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDeleteModeLayout(ZZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1927
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",requestLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    .line 1931
    if-eqz p1, :cond_6c

    .line 1935
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1936
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1937
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1938
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1941
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1942
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1944
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1945
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1946
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V

    .line 1967
    :goto_5d
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setDeleteMode(Z)V

    .line 1968
    if-eqz p2, :cond_6b

    .line 1969
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->requestLayout()V

    .line 1970
    :cond_6b
    return-void

    .line 1948
    :cond_6c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1949
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 1950
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1951
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mConversationTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1954
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 1956
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1957
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationListFragment;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V

    goto :goto_5d
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 1917
    return-void
.end method

.method public setSelectAll(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2006
    return-void
.end method
