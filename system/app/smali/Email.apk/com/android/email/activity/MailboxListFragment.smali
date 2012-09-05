.class public Lcom/android/email/activity/MailboxListFragment;
.super Landroid/app/ListFragment;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;,
        Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;,
        Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;,
        Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;,
        Lcom/android/email/activity/MailboxListFragment$ControllerResults;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$EmptyCallback;,
        Lcom/android/email/activity/MailboxListFragment$Callback;
    }
.end annotation


# static fields
.field private static BACKGROUND_GREY:I

.field private static mDoneType:I

.field private static sDropTrashColor:Ljava/lang/Integer;

.field private static sMailboxListColorDarkTheme:I

.field private static sMailboxListColorWhiteTheme:I


# instance fields
.field private isMoveScreen:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMailboxlistCustomView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllMailboxParentIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgColor:I

.field private mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

.field private mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

.field private mDestMailboxId:J

.field private mDragInProgress:Z

.field private mDragItemHeight:I

.field private mDragItemMailboxId:J

.field private mDropTargetAdapterPosition:I

.field private mDropTargetView:Lcom/android/email/activity/MailboxListItem;

.field private mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

.field private mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFromFolderFunction:Z

.field private mLastLoadedAccountId:J

.field private mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field private mListShadow:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

.field private mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

.field private mMailboxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

.field private mMailboxListFragment:Landroid/view/View;

.field private mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

.field private mOpenRequested:Z

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mResumed:Z

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mSelectedContextMailboxId:J

.field private mSelectedMailboxId:J

.field private mSelectedPosition:I

.field private mTargetScrolling:Z

.field private mTitleTextView:Landroid/widget/TextView;

.field private newMailboxId_toINBOX:J

.field private openCreated:Z

.field prevMailboxId:J

.field prevTotalCount:I

.field prevUnreadCount:I

.field private previousAniLayout:Landroid/view/View;

.field private previousTarget:Lcom/android/email/activity/MailboxListItem;

.field public updateUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 289
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MailboxListFragment;->BACKGROUND_GREY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 109
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 173
    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 182
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    .line 184
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 186
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 188
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 193
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 198
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 201
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 208
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 232
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    .line 234
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxListFragment$ControllerResults;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    .line 240
    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    .line 281
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    .line 287
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->mBgColor:I

    .line 308
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    .line 312
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$1;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 2141
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$19;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    .line 2250
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->prevUnreadCount:I

    .line 2252
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->prevTotalCount:I

    .line 2254
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->prevMailboxId:J

    .line 3008
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MailboxListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MailboxListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MailboxListFragment;Ljava/util/ArrayList;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MailboxListFragment;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MailboxListFragment;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MailboxListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MailboxListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;)Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MailboxListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->createMailboxDialog(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MailboxListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/android/email/activity/MailboxListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MailboxListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MailboxListFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MailboxListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->openCreated:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MailboxListFragment;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MailboxListFragment;->hasColumnId(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->closeFolderHierarchy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    sput p0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method private clearContent()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 665
    const-string v0, "Email"

    const-string v1, "MailboxListFramgment clearContent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    .line 667
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 668
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 670
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 671
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 673
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopLoader()V

    .line 674
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    if-eqz v0, :cond_26

    .line 675
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 676
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->initAdapter()V

    .line 678
    :cond_26
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setListShownNoAnimation(Z)V

    .line 679
    return-void
.end method

.method private closeFolderHierarchy(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_43

    .line 3187
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    .line 3188
    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3190
    #getter for: Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->access$3400(Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->closeFolderHierarchy(Ljava/lang/String;)V

    .line 3191
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->setIsOpened(Z)V

    .line 3192
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3186
    :cond_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 3195
    :cond_43
    return-void
.end method

.method private createMailboxDialog(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1499
    const v1, 0x7f040068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1501
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1503
    const v0, 0x7f08038a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1504
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1505
    const v0, 0x7f100138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1506
    const v3, 0x7f100139

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1507
    const v3, 0x7f080387

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1509
    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/email/activity/MailboxListFragment$12;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1554
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$13;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1560
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1562
    return-void
.end method

.method private deleteMailbox()V
    .registers 4

    .prologue
    .line 1151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1152
    const v1, 0x7f080518

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1153
    const v1, 0x7f080519

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1154
    const v1, 0x7f08051a

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$5;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$6;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1216
    return-void
.end method

.method private deleteMailbox(J)Z
    .registers 26
    .parameter "id"

    .prologue
    .line 1219
    const/16 v22, 0x0

    .line 1220
    .local v22, maxHierarchy:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v11

    .line 1221
    .local v11, controller:Lcom/android/email/Controller;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v20, mailboxListItemHierarychy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxListItemHierarchyItem;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v13, deleteMailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1224
    .local v12, deleteCursor:Landroid/database/Cursor;
    const/4 v3, -0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1226
    const/16 v16, -0x1

    .line 1228
    .local v16, hierarchy:I
    :cond_26
    :goto_26
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1229
    new-instance v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0xb

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MailboxListItemHierarchyItem;-><init>(Ljava/lang/String;IJIIJ)V

    .line 1235
    .local v2, newData:Lcom/android/email/activity/MailboxListItemHierarchyItem;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    iget-wide v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_60

    .line 1238
    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v16, v0

    .line 1241
    :cond_60
    iget v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_26

    .line 1242
    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v22, v0

    goto :goto_26

    .line 1246
    .end local v2           #newData:Lcom/android/email/activity/MailboxListItemHierarchyItem;
    :cond_6b
    const/16 v17, 0x0

    .line 1247
    .local v17, i:I
    const/16 v18, 0x0

    .line 1248
    .local v18, j:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v21

    .line 1249
    .local v21, mailbox_name:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v19

    .line 1251
    .local v19, lengthOfmailbox:I
    move/from16 v17, v22

    :goto_83
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_10f

    .line 1252
    const/16 v18, 0x0

    :goto_8b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_10b

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v5, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 1256
    .local v14, displayName:Ljava/lang/String;
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v17

    if-ne v3, v0, :cond_108

    .line 1257
    if-eqz v14, :cond_108

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v19

    if-lt v3, v0, :cond_108

    .line 1258
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1259
    .local v15, displayNameSub:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f5

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_108

    .line 1262
    :cond_f5
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    .end local v15           #displayNameSub:Ljava/lang/String;
    :cond_108
    add-int/lit8 v18, v18, 0x1

    goto :goto_8b

    .line 1251
    .end local v14           #displayName:Ljava/lang/String;
    :cond_10b
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_83

    .line 1272
    :cond_10f
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    if-eqz v20, :cond_12c

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12c

    .line 1275
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    invoke-virtual {v11, v3, v4, v13}, Lcom/android/email/Controller;->deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;

    .line 1278
    :cond_12c
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 1279
    const/4 v3, 0x1

    .line 1281
    :goto_13b
    return v3

    :cond_13c
    const/4 v3, 0x0

    goto :goto_13b
.end method

.method private deleteMailbox(Ljava/util/ArrayList;)Z
    .registers 30
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v27, 0x0

    .line 1287
    .local v27, maxHierarchy:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v13

    .line 1288
    .local v13, controller:Lcom/android/email/Controller;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v15, deleteMailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v11, -0x1

    .line 1290
    .local v11, accountKey:J
    const/16 v18, -0x1

    .line 1292
    .local v18, hierarchy:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_148

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 1293
    .local v21, id:J
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v25, mailboxListItemHierarychy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxListItemHierarchyItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxCursor()Landroid/database/Cursor;

    move-result-object v14

    .line 1295
    .local v14, deleteCursor:Landroid/database/Cursor;
    const/4 v3, -0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1296
    const/16 v18, -0x1

    .line 1298
    :cond_3e
    :goto_3e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1299
    new-instance v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0xb

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0xa

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x7

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MailboxListItemHierarchyItem;-><init>(Ljava/lang/String;IJIIJ)V

    .line 1306
    .local v2, newData:Lcom/android/email/activity/MailboxListItemHierarchyItem;
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-wide v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    cmp-long v3, v3, v21

    if-nez v3, :cond_78

    .line 1309
    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v18, v0

    .line 1312
    :cond_78
    iget v3, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_3e

    .line 1313
    iget v0, v2, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v27, v0

    goto :goto_3e

    .line 1317
    .end local v2           #newData:Lcom/android/email/activity/MailboxListItemHierarchyItem;
    :cond_83
    if-eqz v25, :cond_96

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_96

    .line 1318
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v11, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    .line 1320
    :cond_96
    const/16 v19, 0x0

    .line 1321
    .local v19, i:I
    const/16 v23, 0x0

    .line 1322
    .local v23, j:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    .line 1323
    .local v26, mailbox_name:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v24

    .line 1325
    .local v24, lengthOfmailbox:I
    move/from16 v19, v27

    :goto_ae
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_13f

    .line 1326
    const/16 v23, 0x0

    :goto_b6
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_13b

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v5, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 1330
    .local v16, displayName:Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    move/from16 v0, v19

    if-ne v3, v0, :cond_137

    .line 1331
    if-eqz v16, :cond_137

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v24

    if-lt v3, v0, :cond_137

    .line 1332
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1333
    .local v17, displayNameSub:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_124

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_137

    .line 1336
    :cond_124
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;

    iget-wide v3, v3, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .end local v17           #displayNameSub:Ljava/lang/String;
    :cond_137
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_b6

    .line 1325
    .end local v16           #displayName:Ljava/lang/String;
    :cond_13b
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_ae

    .line 1345
    :cond_13f
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 1348
    .end local v14           #deleteCursor:Landroid/database/Cursor;
    .end local v19           #i:I
    .end local v21           #id:J
    .end local v23           #j:I
    .end local v24           #lengthOfmailbox:I
    .end local v25           #mailboxListItemHierarychy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MailboxListItemHierarchyItem;>;"
    .end local v26           #mailbox_name:Ljava/lang/String;
    :cond_148
    invoke-virtual {v13, v11, v12, v15}, Lcom/android/email/Controller;->deleteFolder(JLjava/util/ArrayList;)Landroid/os/AsyncTask;

    .line 1350
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 1351
    const/4 v3, 0x1

    .line 1353
    :goto_15a
    return v3

    :cond_15b
    const/4 v3, 0x0

    goto :goto_15a
.end method

.method private hasColumnId(J)Z
    .registers 6
    .parameter "columnId"

    .prologue
    .line 3177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 3178
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1b

    .line 3179
    const/4 v1, 0x1

    .line 3182
    :goto_1a
    return v1

    .line 3177
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3182
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private highlightSelectedMailbox(Z)V
    .registers 15
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2257
    const-string v2, ""

    .line 2261
    const-wide/16 v0, 0x0

    .line 2262
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_a

    .line 2296
    :cond_9
    :goto_9
    return-void

    .line 2265
    :cond_a
    iget-wide v4, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    .line 2267
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_9

    .line 2270
    :cond_18
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v5

    move v7, v3

    .line 2271
    :goto_1f
    if-ge v7, v5, :cond_8c

    .line 2272
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_31

    .line 2271
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1f

    .line 2275
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2276
    if-eqz p1, :cond_42

    .line 2277
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    .line 2279
    :cond_42
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v7}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v6

    .line 2280
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v7}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v5

    .line 2281
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v7}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v4

    .line 2282
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v7}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v0

    .line 2283
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, v7}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)I

    move-result v2

    .line 2284
    iget-object v8, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v8, v7}, Lcom/android/email/activity/MailboxesAdapter;->getType(I)I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_88

    move-object v5, v6

    move v12, v3

    move v3, v4

    move v4, v12

    .line 2290
    :goto_6e
    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->prevMailboxId:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_7c

    iget v6, p0, Lcom/android/email/activity/MailboxListFragment;->prevUnreadCount:I

    if-ne v6, v4, :cond_7c

    iget v6, p0, Lcom/android/email/activity/MailboxListFragment;->prevTotalCount:I

    if-eq v6, v3, :cond_9

    .line 2291
    :cond_7c
    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v6, v2, v5, v4, v3}, Lcom/android/email/activity/MailboxListFragment$Callback;->onCurrentMailboxUpdated(ILjava/lang/String;II)V

    .line 2292
    iput v4, p0, Lcom/android/email/activity/MailboxListFragment;->prevUnreadCount:I

    .line 2293
    iput v3, p0, Lcom/android/email/activity/MailboxListFragment;->prevTotalCount:I

    .line 2294
    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->prevMailboxId:J

    goto :goto_9

    :cond_88
    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_6e

    :cond_8c
    move v4, v3

    move-object v5, v2

    move v2, v3

    goto :goto_6e
.end method

.method private moveFolder()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 1625
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1626
    const v1, 0x7f040077

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1627
    const v0, 0x7f100159

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1628
    const v1, 0x7f10015a

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1629
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1630
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1631
    const v0, 0x102000a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1632
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1633
    new-instance v1, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040079

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    .line 1635
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1636
    iput v7, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    .line 1637
    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1638
    new-instance v1, Lcom/android/email/activity/MailboxListFragment$16;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$16;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1650
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bd

    .line 1651
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxListFragment;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    .line 1652
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1654
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxListFragment;J)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    .line 1655
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mLoadAllMailboxes:Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1660
    :goto_89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1661
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v1, v6

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    .line 1662
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 1663
    const v1, 0x104000a

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$17;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1678
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$18;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$18;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1684
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1685
    return-void

    .line 1657
    :cond_bd
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_89
.end method

.method private onDeleteSmsPopup([JJ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2650
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2653
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2654
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2655
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080555

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2656
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2657
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$20;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxListFragment$20;-><init>(Lcom/android/email/activity/MailboxListFragment;[JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2667
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$21;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MailboxListFragment$21;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2674
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2675
    return-void
.end method

.method private onDragEnded()V
    .registers 3

    .prologue
    .line 2522
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    if-eqz v0, :cond_18

    .line 2523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 2525
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    .line 2526
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    .line 2528
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 2530
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 2532
    :cond_18
    return-void
.end method

.method private onDragExited()V
    .registers 5

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_f

    .line 2324
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 2325
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 2327
    :cond_f
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 2328
    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)V
    .registers 15
    .parameter

    .prologue
    .line 2337
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gtz v0, :cond_5

    .line 2505
    :cond_4
    :goto_4
    return-void

    .line 2342
    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    float-to-int v10, v0

    .line 2343
    const/4 v0, 0x0

    .line 2344
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lez v1, :cond_27

    .line 2346
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2348
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 2350
    :cond_27
    sub-int v0, v10, v0

    add-int/lit8 v0, v0, -0x28

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    div-int v2, v0, v1

    .line 2351
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    .line 2354
    const/4 v1, 0x0

    .line 2355
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    :goto_3b
    if-gt v2, v1, :cond_91

    .line 2357
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_76

    .line 2358
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_72

    .line 2359
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2361
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2362
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    .line 2366
    :cond_72
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_4

    .line 2369
    :cond_76
    const-class v3, Lcom/android/email/activity/MailboxListNullItem;

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 2370
    add-int/lit8 v0, v0, 0x1

    .line 2372
    :cond_8a
    if-ne v2, v1, :cond_8e

    .line 2373
    add-int/2addr v1, v0

    .line 2374
    const/4 v0, 0x0

    .line 2355
    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 2377
    :cond_91
    add-int v8, v11, v1

    .line 2379
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    if-eq v8, v0, :cond_242

    .line 2389
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_a3

    .line 2390
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 2393
    :cond_a3
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2394
    const-class v1, Lcom/android/email/activity/MailboxListNullItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v7, v0

    .line 2398
    check-cast v7, Lcom/android/email/activity/MailboxListItem;

    .line 2400
    if-eqz v0, :cond_f6

    .line 2401
    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    .line 2409
    :goto_c2
    if-nez v7, :cond_f8

    .line 2413
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_f1

    .line 2414
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2416
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2417
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    .line 2421
    :cond_f1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto/16 :goto_4

    :cond_f6
    move-object v9, v0

    .line 2403
    goto :goto_c2

    .line 2423
    :cond_f8
    iget-object v0, v7, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_186

    .line 2429
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_128

    .line 2430
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2432
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2433
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2435
    :cond_128
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3fb33333

    const/high16 v3, 0x3f80

    const v4, 0x3fb33333

    const/high16 v5, 0x420c

    iget v6, v7, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2437
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2438
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2439
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2440
    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2441
    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    move v0, v8

    .line 2477
    :goto_150
    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    .line 2478
    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 2484
    :goto_154
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    sub-int v1, v10, v1

    .line 2485
    if-lez v1, :cond_21a

    const/4 v1, 0x1

    move v2, v1

    .line 2486
    :goto_162
    const/16 v1, 0x40

    if-le v1, v10, :cond_21e

    const/4 v1, 0x1

    .line 2487
    :goto_167
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v3, :cond_221

    if-eqz v2, :cond_221

    .line 2488
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 2489
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int/2addr v0, v1

    .line 2490
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 2494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_4

    .line 2442
    :cond_186
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v7, v0, v1}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v0

    if-eqz v0, :cond_1e4

    iget v0, v7, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e4

    .line 2448
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_1ba

    .line 2449
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2451
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2452
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2454
    :cond_1ba
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3fb33333

    const/high16 v3, 0x3f80

    const v4, 0x3fb33333

    const/high16 v5, 0x420c

    iget v6, v7, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2456
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2458
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2459
    iput-object v7, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2460
    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    move v0, v8

    .line 2461
    goto/16 :goto_150

    .line 2465
    :cond_1e4
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_211

    .line 2466
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const/high16 v5, 0x420c

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v6, v6, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x41b4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2468
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2469
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    .line 2473
    :cond_211
    const/4 v0, -0x1

    .line 2474
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    goto/16 :goto_150

    .line 2485
    :cond_21a
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_162

    .line 2486
    :cond_21e
    const/4 v1, 0x0

    goto/16 :goto_167

    .line 2495
    :cond_221
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v0, :cond_239

    if-eqz v1, :cond_239

    .line 2496
    add-int/lit8 v0, v11, 0x1

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    mul-int/2addr v0, v1

    .line 2497
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    neg-int v2, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 2501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_4

    .line 2502
    :cond_239
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 2503
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    goto/16 :goto_4

    :cond_242
    move v0, v8

    goto/16 :goto_154
.end method

.method private onDragStarted(Landroid/view/DragEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2539
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 2540
    if-nez v3, :cond_9

    .line 2569
    :cond_8
    :goto_8
    return v0

    .line 2543
    :cond_9
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    move v2, v0

    .line 2544
    :goto_e
    if-ge v2, v4, :cond_8

    .line 2545
    invoke-virtual {v3, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 2546
    const-string v6, "vnd.android.cursor.item/email-message"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2550
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 2552
    const/16 v2, 0x2d

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2553
    if-lez v2, :cond_34

    .line 2555
    add-int/lit8 v2, v2, 0x1

    :try_start_2a
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_34} :catch_43

    .line 2560
    :cond_34
    :goto_34
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 2562
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxesAdapter;->enableUpdates(Z)V

    .line 2565
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    move v0, v1

    .line 2566
    goto :goto_8

    .line 2544
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2556
    :catch_43
    move-exception v2

    goto :goto_34
.end method

.method private onDrop(Landroid/view/DragEvent;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2573
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 2575
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetAdapterPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1d

    .line 2576
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_1b

    .line 2577
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    :cond_1b
    move v0, v7

    .line 2645
    :goto_1c
    return v0

    .line 2580
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_41

    .line 2581
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x420c

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v4, v4, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v4, v4

    add-float v5, v3, v4

    const/high16 v6, 0x41b4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2583
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2584
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2585
    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2586
    iput-object v9, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    .line 2588
    :cond_41
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 2589
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 2590
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    .line 2596
    new-array v3, v4, [J

    .line 2597
    :goto_51
    if-ge v7, v4, :cond_6e

    .line 2598
    invoke-virtual {v2, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 2599
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2600
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2601
    aput-wide v5, v3, v7

    .line 2597
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 2604
    :cond_6e
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8a

    .line 2606
    sget-boolean v1, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v1, :cond_84

    .line 2607
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-direct {p0, v3, v0, v1}, Lcom/android/email/activity/MailboxListFragment;->onDeleteSmsPopup([JJ)V

    :goto_82
    move v0, v8

    .line 2645
    goto :goto_1c

    .line 2634
    :cond_84
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    goto :goto_82

    .line 2642
    :cond_8a
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v4, v4, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->moveMessage(J[JJ)Landroid/os/AsyncTask;

    .line 2643
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0800c3

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_82
.end method

.method private refreshMailboxListIfStale()V
    .registers 4

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxListStale(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2243
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 2245
    :cond_11
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1726
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 1727
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 1728
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 1691
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1692
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1693
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080524

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1696
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 1702
    :goto_2d
    return-void

    .line 1699
    :catch_2e
    move-exception v0

    .line 1700
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method private startLoading()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1745
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 1747
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->setListShown(Z)V

    .line 1756
    const/4 v0, 0x0

    .line 1757
    .local v0, accountChanging:Z
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mLastLoadedAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 1758
    const/4 v0, 0x1

    .line 1759
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1760
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1764
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->refreshMailboxListIfStale()V

    .line 1766
    :cond_2c
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Z)V

    invoke-virtual {v1, v6, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1768
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MailboxListFragment$AllMailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    invoke-virtual {v1, v7, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1770
    return-void
.end method

.method private stopLoader()V
    .registers 3

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1779
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1780
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1781
    return-void
.end method

.method private stopScrolling()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2511
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-eqz v0, :cond_c

    .line 2512
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    .line 2517
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 2519
    :cond_c
    return-void
.end method

.method private updateChildViews()V
    .registers 4

    .prologue
    .line 2306
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2309
    .local v0, itemCount:I
    if-lez v0, :cond_15

    .line 2310
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 2316
    :cond_15
    return-void
.end method


# virtual methods
.method public createMailbox(Z)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1358
    const v1, 0x7f040068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1360
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1362
    const v0, 0x7f08038a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1363
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1364
    const v0, 0x7f100138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1365
    const v3, 0x7f100139

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1367
    const v3, 0x7f080387

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1368
    const v0, 0x7f08006b

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(I)V

    .line 1369
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1371
    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/email/activity/MailboxListFragment$7;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1420
    const/high16 v0, 0x104

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MailboxListFragment$8;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1429
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1431
    return-object v0
.end method

.method public forceLoading()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1732
    :try_start_3
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Z)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    .line 1738
    :goto_12
    return-void

    .line 1734
    :catch_13
    move-exception v0

    .line 1735
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Z)V

    invoke-virtual {v1, v7, v8, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_12
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 646
    const-string v0, "Email"

    const-string v1, "MailboxListFragment onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    .line 651
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 652
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 653
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 654
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 655
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0202ad

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 656
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->updateCurrentOrientation(I)V

    .line 658
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 901
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 902
    const/16 v1, 0x1f40

    if-ne p1, v1, :cond_3a

    .line 903
    const/16 v1, 0x2328

    if-ne p2, v1, :cond_3a

    .line 904
    const-string v1, "DES_MAILBOX_ID"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    .line 905
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3b

    .line 906
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 907
    .local v0, controller:Lcom/android/email/Controller;
    const v1, 0x7f080523

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 908
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveFolder(JJ)V

    .line 916
    .end local v0           #controller:Lcom/android/email/Controller;
    :cond_3a
    :goto_3a
    return-void

    .line 910
    :cond_3b
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08051e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3a
.end method

.method public onBackPress(Z)Z
    .registers 11
    .parameter "isSystemBackKey"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1104
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1105
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    move v6, v5

    .line 1113
    :cond_d
    :goto_d
    return v6

    .line 1108
    :cond_e
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_d

    .line 1109
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 1110
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    goto :goto_d
.end method

.method public onCancel()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1090
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-eq v0, v3, :cond_21

    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1095
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 1096
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    .line 1097
    sput v3, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 1098
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1101
    :cond_21
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    .line 1143
    :goto_8
    return-void

    .line 1121
    :sswitch_9
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 1125
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f0805d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1126
    sput v2, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    goto :goto_8

    .line 1129
    :sswitch_19
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_43

    .line 1130
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802cb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1135
    :goto_3b
    const-string v0, "Email"

    const-string v1, "MailboxListFragment folder delete operation done !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1133
    :cond_43
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_3b

    .line 1138
    :sswitch_47
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    goto :goto_8

    .line 1119
    nop

    :sswitch_data_4c
    .sparse-switch
        0x7f1000d2 -> :sswitch_9
        0x7f1000d6 -> :sswitch_19
        0x7f1000d8 -> :sswitch_47
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->setOrientation(I)V

    .line 807
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 808
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1017
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1020
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x7f1002f1

    if-eq v1, v2, :cond_12

    .line 1086
    :cond_11
    :goto_11
    return v8

    .line 1024
    :cond_12
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    .line 1027
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 1028
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v6

    .line 1029
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v7

    .line 1041
    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 1042
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    .line 1043
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_c6

    goto :goto_11

    .line 1045
    :pswitch_44
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJLjava/lang/String;II)V

    goto :goto_11

    .line 1049
    :pswitch_4e
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    .line 1052
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(JZ)V

    .line 1053
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_11

    .line 1056
    :pswitch_71
    iput-boolean v8, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    .line 1059
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_11

    .line 1062
    :pswitch_7f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1063
    const-string v0, "mailbox_selected_position"

    iget v2, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    const-string v0, "mailbox_selected_display_name"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(ILandroid/os/Bundle;)V

    goto/16 :goto_11

    .line 1069
    :pswitch_9d
    iput-boolean v4, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    .line 1070
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    .line 1071
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(JZ)V

    .line 1073
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->moveFolder()V

    goto/16 :goto_11

    .line 1078
    :pswitch_b2
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 1079
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    goto/16 :goto_11

    .line 1043
    nop

    :pswitch_data_c6
    .packed-switch 0x7f1002f2
        :pswitch_44
        :pswitch_4e
        :pswitch_71
        :pswitch_7f
        :pswitch_9d
        :pswitch_b2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 381
    const-string v2, "Email"

    const-string v3, "MailboxListFragment onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    .line 386
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 387
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    .line 390
    const/4 v2, -0x1

    sput v2, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 392
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 393
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 395
    new-instance v2, Lcom/android/email/activity/MailboxesAdapter;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/email/activity/MailboxesAdapter;-><init>(Landroid/content/Context;ILcom/android/email/activity/MailboxesAdapter$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 397
    if-eqz p1, :cond_50

    .line 398
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 400
    :cond_50
    sget-object v2, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    if-nez v2, :cond_89

    .line 401
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f0b001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/android/email/activity/MailboxListFragment;->sDropTrashColor:Ljava/lang/Integer;

    .line 403
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorWhiteTheme:I

    .line 405
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 406
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MailboxListFragment;->sMailboxListColorDarkTheme:I

    .line 410
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_89
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 411
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_af

    .line 412
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 415
    :cond_af
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 416
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MailboxListFragment;->mBgColor:I

    .line 417
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 20
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 921
    move-object/from16 v10, p3

    check-cast v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 922
    .local v10, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v8

    .line 923
    .local v8, folderName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v12

    const v13, 0x7f0f0019

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getMailboxType(I)I

    move-result v11

    .line 928
    .local v11, type:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v13, v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v12

    long-to-int v9, v12

    .line 930
    .local v9, mailboxId:I
    const v12, 0x7f1002f1

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    .line 932
    const v12, 0x7f1002f4

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 933
    .local v1, FolderAddSub:Landroid/view/MenuItem;
    const v12, 0x7f1002f3

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 934
    .local v2, FolderDelete:Landroid/view/MenuItem;
    const v12, 0x7f1002f5

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 935
    .local v5, FolderRename:Landroid/view/MenuItem;
    const v12, 0x7f1002f6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 936
    .local v3, FolderMove:Landroid/view/MenuItem;
    const v12, 0x7f1002f2

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 938
    .local v4, FolderOpen:Landroid/view/MenuItem;
    const v12, 0x7f1002f7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 942
    .local v6, SyncOption:Landroid/view/MenuItem;
    const-string v12, "MailboxListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDoneType : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mAccountId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget v12, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_ae

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/high16 v14, 0x1000

    cmp-long v12, v12, v14

    if-nez v12, :cond_c7

    .line 947
    :cond_ae
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 948
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 949
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 950
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 951
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 953
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1013
    :cond_c6
    :goto_c6
    return-void

    .line 958
    :cond_c7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v12, :cond_12c

    const-string v12, "eas"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12c

    .line 959
    const/4 v12, 0x4

    if-eq v11, v12, :cond_e4

    if-ltz v11, :cond_e4

    sget-boolean v12, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v12, :cond_11b

    .line 961
    :cond_e4
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 962
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 963
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 973
    :cond_f0
    :goto_f0
    const/4 v12, 0x4

    if-ne v11, v12, :cond_f7

    .line 974
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1009
    :cond_f7
    :goto_f7
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v7

    .line 1010
    .local v7, controller:Lcom/android/email/Controller;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v12, :cond_c6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v7, v12}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v12

    if-nez v12, :cond_c6

    .line 1011
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v12}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    goto :goto_c6

    .line 965
    .end local v7           #controller:Lcom/android/email/Controller;
    :cond_11b
    const/16 v12, 0xc

    if-eq v11, v12, :cond_f0

    .line 967
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f0

    .line 977
    :cond_12c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v12, :cond_170

    const-string v12, "imap"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_170

    .line 979
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 980
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 982
    const/4 v12, 0x1

    if-eq v11, v12, :cond_163

    .line 983
    if-eqz v11, :cond_15e

    .line 984
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 987
    :goto_151
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 988
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 997
    :goto_159
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f7

    .line 986
    :cond_15e
    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_151

    .line 990
    :cond_163
    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 991
    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 992
    const/4 v12, 0x1

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_159

    .line 1000
    :cond_170
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1001
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1002
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1003
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1004
    const/4 v12, 0x1

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1005
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 421
    const v3, 0x7f0f001a

    invoke-virtual {p2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 423
    const v3, 0x7f1002f8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 424
    .local v1, CreateMenu:Landroid/view/MenuItem;
    const v3, 0x7f1002f9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 425
    .local v2, DoneMenu:Landroid/view/MenuItem;
    const v3, 0x7f1002fa

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 427
    .local v0, CancelMenu:Landroid/view/MenuItem;
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 428
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$2;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    :cond_2f
    if-eqz v2, :cond_43

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 441
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$3;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$3;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    :cond_43
    if-eqz v0, :cond_57

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 455
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MailboxListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MailboxListFragment$4;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 584
    const-string v0, "Email"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_11

    .line 587
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 590
    :cond_11
    const v0, 0x7f040078

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    .line 591
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    const v1, 0x7f10015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 608
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 611
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 640
    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 871
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    .line 872
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    .line 878
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 879
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    .line 880
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 881
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxesAdapter$Callback;

    .line 882
    invoke-static {v1}, Lcom/android/email/activity/MailboxesAdapter;->setLeftPane(Landroid/view/View;)V

    .line 883
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 884
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->initAdapter()V

    .line 885
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 886
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 887
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 888
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 889
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mListView:Landroid/widget/ListView;

    .line 890
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 891
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 892
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    .line 893
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopLoader()V

    .line 894
    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    .line 895
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 896
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const v1, 0x3fb33333

    const/high16 v2, 0x3f80

    .line 2681
    const/4 v7, 0x0

    .line 2682
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    move v0, v7

    .line 2731
    :goto_f
    return v0

    .line 2684
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragStarted(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_f

    :pswitch_15
    move v0, v7

    .line 2692
    goto :goto_f

    .line 2699
    :pswitch_17
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_3b

    .line 2700
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x420c

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    iget v4, v4, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    int-to-float v4, v4

    add-float v5, v3, v4

    const/high16 v6, 0x41b4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2702
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2703
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2704
    iput-object v8, p0, Lcom/android/email/activity/MailboxListFragment;->previousTarget:Lcom/android/email/activity/MailboxListItem;

    .line 2705
    iput-object v8, p0, Lcom/android/email/activity/MailboxListFragment;->previousAniLayout:Landroid/view/View;

    .line 2707
    :cond_3b
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    move v0, v7

    .line 2708
    goto :goto_f

    .line 2714
    :pswitch_40
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragEnded()V

    move v0, v7

    .line 2715
    goto :goto_f

    .line 2719
    :pswitch_45
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragLocation(Landroid/view/DragEvent;)V

    move v0, v7

    .line 2720
    goto :goto_f

    .line 2726
    :pswitch_4a
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_f

    .line 2682
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_10
        :pswitch_45
        :pswitch_4a
        :pswitch_40
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v1, 0x1

    .line 2198
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getId(I)J

    move-result-wide v3

    .line 2199
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 2200
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getUnreadCount(I)I

    move-result v6

    .line 2201
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->getTotalCount(I)I

    move-result v7

    .line 2202
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxesAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2203
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/MailboxListFragment$Callback;->onAccountSelected(J)V

    .line 2233
    :cond_26
    :goto_26
    return-void

    .line 2205
    :cond_27
    check-cast p2, Lcom/android/email/activity/MailboxListItem;

    .line 2206
    iget v0, p2, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-eq v0, v1, :cond_26

    .line 2207
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    if-nez v0, :cond_39

    .line 2208
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJLjava/lang/String;II)V

    goto :goto_26

    .line 2210
    :cond_39
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    .line 2211
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-nez v0, :cond_4b

    .line 2214
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_26

    .line 2215
    :cond_4b
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-ne v0, v1, :cond_6a

    .line 2216
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2217
    const-string v0, "mailbox_selected_position"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2218
    const-string v0, "mailbox_selected_display_name"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(ILandroid/os/Bundle;)V

    goto :goto_26

    .line 2224
    :cond_6a
    sget v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 2225
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2226
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_26

    .line 2228
    :cond_7f
    iget-object v0, p2, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/MailboxesAdapter;->toggleSelected(Lcom/android/email/activity/MailboxListItem;)V

    goto :goto_26
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7
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
    .line 775
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 524
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_dc

    move v5, v6

    .line 579
    :cond_c
    :goto_c
    return v5

    .line 526
    :sswitch_d
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_c

    .line 527
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    .line 528
    iput-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J

    goto :goto_c

    .line 532
    :sswitch_28
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z

    .line 533
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 536
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 537
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_c

    .line 540
    :sswitch_3d
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 541
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080388

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 542
    sput v5, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 543
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_c

    .line 547
    :sswitch_54
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 548
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J

    .line 550
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080389

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 551
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 556
    :goto_7b
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_c

    .line 554
    :cond_89
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v5}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    goto :goto_7b

    .line 561
    :sswitch_8f
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_ba

    .line 562
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802cb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 567
    :goto_b1
    const-string v0, "Email"

    const-string v1, "MailboxListFragment folder delete operation done !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 565
    :cond_ba
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V

    goto :goto_b1

    .line 570
    :sswitch_be
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 571
    iput-boolean v6, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 572
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    .line 573
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 574
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_c

    .line 524
    :sswitch_data_dc
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f1002f3 -> :sswitch_54
        0x7f1002f5 -> :sswitch_3d
        0x7f1002f8 -> :sswitch_28
        0x7f1002f9 -> :sswitch_8f
        0x7f1002fa -> :sswitch_be
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 843
    const-string v0, "Email"

    const-string v1, "MailboxListFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    .line 845
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MailboxListFragment;->setHasOptionsMenu(Z)V

    .line 846
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 847
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 848
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 850
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 16
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 469
    const v10, 0x7f1002da

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 470
    .local v5, SettingMenu:Landroid/view/MenuItem;
    const v10, 0x7f1002f8

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 471
    .local v1, CreateMenu:Landroid/view/MenuItem;
    const v10, 0x7f1002f5

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 472
    .local v4, RenameMenu:Landroid/view/MenuItem;
    const v10, 0x7f1002f3

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 473
    .local v2, DeleteMenu:Landroid/view/MenuItem;
    const v10, 0x7f1002f9

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 474
    .local v3, DoneMenu:Landroid/view/MenuItem;
    const v10, 0x7f1002fa

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 475
    .local v0, CancelMenu:Landroid/view/MenuItem;
    const v10, 0x7f10031c

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 477
    .local v6, UNCMenu:Landroid/view/MenuItem;
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v10, :cond_7d

    const-string v10, "eas"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4f

    const-string v10, "imap"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7d

    :cond_4f
    iget-wide v10, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/high16 v12, 0x1000

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7d

    move v7, v8

    .line 480
    .local v7, folderOperationEnable:Z
    :goto_58
    if-eqz v6, :cond_5d

    .line 481
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    :cond_5d
    if-eqz v5, :cond_62

    .line 484
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 486
    :cond_62
    if-ne v7, v8, :cond_b6

    .line 488
    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a6

    .line 489
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 491
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 492
    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    if-ne v10, v8, :cond_7f

    .line 493
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 494
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    :goto_7c
    return-void

    .end local v7           #folderOperationEnable:Z
    :cond_7d
    move v7, v9

    .line 477
    goto :goto_58

    .line 495
    .restart local v7       #folderOperationEnable:Z
    :cond_7f
    sget v10, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9f

    .line 496
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v10, :cond_9b

    const-string v10, "eas"

    iget-object v11, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 497
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 500
    :goto_97
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7c

    .line 499
    :cond_9b
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_97

    .line 502
    :cond_9f
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7c

    .line 506
    :cond_a6
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 509
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7c

    .line 513
    :cond_b6
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 516
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 517
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7c
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 824
    const-string v0, "Email"

    const-string v1, "MailboxListFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    .line 827
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mControllerCallback:Lcom/android/email/activity/MailboxListFragment$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 832
    invoke-static {}, Lcom/android/email/FolderProperties;->setInitInstance()V

    .line 836
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    if-eqz v0, :cond_30

    .line 837
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    .line 839
    :cond_30
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 1720
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1721
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1722
    const-string v0, "MailboxListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1723
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 815
    const-string v0, "Email"

    const-string v1, "MailboxListFragment onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 817
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 857
    const-string v0, "Email"

    const-string v1, "MailboxListFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 859
    return-void
.end method

.method public openMailboxes(J)V
    .registers 7
    .parameter "accountId"

    .prologue
    .line 686
    const-string v1, "Email"

    const-string v2, "MailboxListFragment openMailboxes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_13

    .line 689
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 691
    :cond_13
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1a

    .line 710
    :cond_19
    :goto_19
    return-void

    .line 694
    :cond_1a
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->clearContent()V

    .line 696
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 697
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 699
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mOpenRequested:Z

    .line 700
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    .line 702
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 703
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_51

    .line 704
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 707
    :cond_51
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-eqz v1, :cond_19

    .line 708
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->startLoading()V

    goto :goto_19
.end method

.method public renameMailbox(I)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1568
    const v1, 0x7f040068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1570
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1571
    const v0, 0x7f080388

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1572
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1573
    const v0, 0x7f100138

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1574
    const v3, 0x7f100139

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1575
    const v3, 0x7f080387

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1577
    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    .line 1579
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1581
    if-eqz v0, :cond_5b

    .line 1582
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget v3, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MailboxesAdapter;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    :cond_5b
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1586
    const v0, 0x104000a

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$14;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MailboxListFragment$14;-><init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1605
    const/high16 v0, 0x104

    new-instance v3, Lcom/android/email/activity/MailboxListFragment$15;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MailboxListFragment$15;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1614
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1616
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1618
    return-object v0
.end method

.method public setActionBarCustom()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    if-nez v0, :cond_31

    .line 729
    :cond_a
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionBarCustom mActionBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mActionBarMailboxlistCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mActionBarMailboxlistCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_30
    return-void

    .line 734
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 738
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MailboxListFragment;->mDoneType:I

    .line 739
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 740
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z

    .line 741
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 742
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActionBarMailboxlistCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_30
.end method

.method public setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 661
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 662
    return-void
.end method

.method public setDeleteMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    .line 714
    return-void
.end method

.method public setListSplit(I)V
    .registers 5
    .parameter "imageType"

    .prologue
    const v1, 0x7f0203a9

    const/4 v2, 0x0

    .line 779
    packed-switch p1, :pswitch_data_46

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 802
    :goto_11
    return-void

    .line 781
    :pswitch_12
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11

    .line 785
    :pswitch_1d
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_31

    .line 786
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 791
    :goto_28
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    const v1, 0x7f0203bb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11

    .line 789
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_28

    .line 794
    :pswitch_37
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxListFragment:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 795
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListShadow:Landroid/view/View;

    const v1, 0x7f0203ba

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11

    .line 779
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1d
        :pswitch_37
    .end packed-switch
.end method

.method public setSelectedMailbox(JZZ)V
    .registers 7
    .parameter "mailboxId"
    .parameter "bForSearchResult"
    .parameter "firstCall"

    .prologue
    .line 717
    const-string v0, "Email"

    const-string v1, "MailboxListFragment setSelectedMailbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J

    .line 719
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MailboxesAdapter;->updateSelectedMailbox(J)V

    .line 721
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 722
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mResumed:Z

    if-nez v0, :cond_1d

    if-nez p3, :cond_1d

    if-eqz p4, :cond_21

    .line 723
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->highlightSelectedMailbox(Z)V

    .line 725
    :cond_21
    return-void
.end method
