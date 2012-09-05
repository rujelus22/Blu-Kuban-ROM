.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$ListViewPos;,
        Lcom/android/email/activity/MessageListFragment$State;,
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# static fields
.field private static LOAD_MORE_FULL_HEIGHT:F

.field private static MINIMUM_LOAD_MORE_HEIGHT:F

.field private static activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

.field private static isFavorite:Ljava/lang/Boolean;

.field public static mIsEasAccount:Z

.field public static mIsSevenAccount:Z

.field private static mLoadReserved:Z

.field public static mResumed:Z

.field private static sFooterProgressWidth:I

.field private static sListFooterViewHeight:I

.field private static sListFragmentPadding:I

.field private static sListPadding:I

.field private static sMessageListColorBgDarkDarkTheme:I

.field private static sMessageListColorBgDarkWhiteTheme:I

.field private static sMessageListColorBgLightDarkTheme:I

.field private static sMessageListColorBgLightWhiteTheme:I

.field private static sMessageListFooterTextColorDarkTheme:I

.field private static sMessageListFooterTextColorWhiteTheme:I

.field public static sms_selected:I


# instance fields
.field private bIsDown:Z

.field private final bIsLoading:Z

.field private bIsScrollingDown:Z

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field composeLayout:Landroid/widget/LinearLayout;

.field composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field composeMenu:Landroid/view/MenuItem;

.field private count:I

.field ctx:Landroid/content/Context;

.field private hasMailboxToMove:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mActivity:Landroid/app/Activity;

.field protected mBase:I

.field private mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mContext:Landroid/content/Context;

.field protected mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field private mController:Lcom/android/email/Controller;

.field private mDoAutoRefresh:Z

.field private mExpandFactor:I

.field private mFooterTextBuf:Ljava/lang/StringBuffer;

.field private mFooterTextId:I

.field private mFooterTextPadding:I

.field protected mHeightLandscape:I

.field public final mHeightNoBarPortrait:I

.field public final mHeightPortrait:I

.field private mIsKeyDownEvent:Z

.field private mIsRefreshable:Z

.field private mIsSending:Z

.field private mIsVisible:Z

.field protected mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastLoadedMailboxId:J

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListFooterCountText:Landroid/widget/TextView;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListFooterView2:Landroid/view/View;

.field private mListFooterViewLine2:Landroid/widget/ImageView;

.field private mListFooterViewLine3:Landroid/widget/ImageView;

.field private mListFooterViewLineBottom:Landroid/widget/ImageView;

.field private mListFooterViewLineTop:Landroid/widget/ImageView;

.field private mListFooterViewText2:Landroid/widget/TextView;

.field private mListLoadingMonitorThread:Ljava/lang/Thread;

.field private mListPanel:Landroid/view/View;

.field private mListShadow:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field private mMailboxId:J

.field private mMenuitemRefresh:Landroid/view/MenuItem;

.field private mMessageListColorBgDark:I

.field private mMessageListColorBgLight:I

.field private mMessageListFragment:Landroid/view/View;

.field private mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

.field private mMultiTouchEnabled:Z

.field private mNeedToFlickUpLoadMore:Z

.field private mNoMessagesIcon:Landroid/view/View;

.field private mNoMessagesPanel:Landroid/widget/TextView;

.field private mOpenRequested:Z

.field private mOrientation:I

.field private mPrevRawY:I

.field private mPreviousMailboxId:J

.field private mRefreshListCount:I

.field private mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShrinkFactor:I

.field private mTotalCount:I

.field private mTotalCountFromMailbox:I

.field private mUnReadCount:I

.field private mUseFlickUp:Z

.field private final waitLoadingTerm:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x43c8

    const/4 v1, 0x0

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    .line 199
    sput v2, Lcom/android/email/activity/MessageListFragment;->MINIMUM_LOAD_MORE_HEIGHT:F

    .line 201
    sput v2, Lcom/android/email/activity/MessageListFragment;->LOAD_MORE_FULL_HEIGHT:F

    .line 226
    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    .line 230
    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 267
    sput v3, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    .line 269
    sput v3, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    .line 313
    sput v1, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    .line 422
    sput-boolean v1, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 149
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 212
    iput-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 214
    iput-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousMailboxId:J

    .line 216
    iput-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    .line 218
    iput-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 239
    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 254
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z

    .line 260
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    .line 262
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    .line 284
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    .line 303
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    .line 305
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    .line 309
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    .line 311
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    .line 333
    iput v6, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    .line 335
    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    .line 337
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 354
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    .line 358
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsLoading:Z

    .line 372
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 374
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 384
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    .line 386
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightLandscape:I

    .line 388
    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mBase:I

    .line 390
    const/16 v0, 0x286

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightPortrait:I

    .line 392
    const/16 v0, 0x2ac

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mHeightNoBarPortrait:I

    .line 398
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    .line 400
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    .line 414
    iput v6, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    .line 418
    iput v6, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    .line 452
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->waitLoadingTerm:J

    .line 453
    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    .line 701
    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4888
    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->count:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListFragment;[JZJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListFragment;[JIJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListFragment;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageListFragment;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/email/activity/MessageListFragment;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->addFooterView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showSendCommandIfNecessary()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageTextIfNecessary()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListFragment;ZIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZIZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListFragment;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageListFragment;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageListFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/email/activity/MessageListFragment;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mExpandFactor:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageListFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/email/activity/MessageListFragment;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mShrinkFactor:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method private addFooterView()V
    .registers 4

    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3498
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_d

    .line 3499
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 3501
    :cond_d
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()V

    .line 3502
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_80

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v1, :cond_80

    .line 3503
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_22

    .line 3504
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3506
    :cond_22
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3508
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f10004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    .line 3509
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    .line 3510
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    .line 3511
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 3512
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3513
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3518
    :goto_60
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextPadding:I

    .line 3521
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    .line 3523
    :cond_80
    return-void

    .line 3515
    :cond_81
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3516
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_60
.end method

.method private autoRefreshStaleMailbox()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3335
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 3376
    :cond_10
    :goto_10
    return-void

    .line 3341
    :cond_11
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_10

    .line 3347
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    .line 3348
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3354
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3370
    :cond_2f
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3375
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_10
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 753
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_12

    .line 754
    const/4 v0, 0x0

    .line 757
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private determineFooterMode()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 3454
    iput v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 3455
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v2, :cond_27

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-ne v0, v5, :cond_28

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    .line 3494
    :cond_27
    :goto_27
    return-void

    .line 3465
    :cond_28
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_40

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-eq v0, v2, :cond_3d

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_40

    .line 3467
    :cond_3d
    iput v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3470
    :cond_40
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_63

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    if-nez v0, :cond_63

    .line 3472
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v3, :cond_60

    .line 3473
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5d

    .line 3474
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3476
    :cond_5d
    iput v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3478
    :cond_60
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3482
    :cond_63
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-ne v0, v3, :cond_7b

    .line 3483
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_78

    .line 3484
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3486
    :cond_78
    iput v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27

    .line 3488
    :cond_7b
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3490
    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    goto :goto_27
.end method

.method private doFooterClick()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3637
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3638
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803ec

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3673
    :goto_13
    :pswitch_13
    return-void

    .line 3643
    :cond_14
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_60

    goto :goto_13

    .line 3647
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_13

    .line 3652
    :pswitch_1e
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v0, :cond_26

    .line 3653
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_13

    .line 3655
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpg-double v0, v0, v2

    if-gez v0, :cond_52

    .line 3658
    const-string v0, "k1001.kim"

    const-string v1, "this is 03 account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080561

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 3662
    :cond_52
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchOnServer()V

    goto :goto_13

    .line 3667
    :pswitch_56
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onOutboxMessageSending()V

    .line 3669
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    goto :goto_13

    .line 3643
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1a
        :pswitch_1e
        :pswitch_56
    .end packed-switch
.end method

.method private finishSelectionMode()V
    .registers 3

    .prologue
    .line 4073
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4074
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    .line 4075
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 4077
    :cond_10
    return-void
.end method

.method public static getStartTimeForCreate()Landroid/text/format/Time;
    .registers 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1336
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1337
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 1338
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1340
    .local v0, millis:J
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1341
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 1342
    .local v5, todayJulian:I
    if-ne v2, v5, :cond_38

    .line 1343
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1344
    .local v4, today:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1345
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 1349
    .end local v4           #today:Landroid/text/format/Time;
    :goto_2e
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1350
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1351
    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    .line 1352
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 1353
    return-object v3

    .line 1347
    :cond_38
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_2e
.end method

.method private highlightSelectedMessage(ZIZ)V
    .registers 10
    .parameter "ensureSelectionVisible"
    .parameter "mode"
    .parameter "needRedraw"

    .prologue
    .line 4708
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 4710
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 4737
    :cond_d
    :goto_d
    return-void

    .line 4714
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter;->getRealPositionForCurrentId(J)I

    move-result v1

    .line 4715
    .local v1, position:I
    if-eqz p1, :cond_6f

    .line 4716
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-ne p2, v2, :cond_36

    .line 4717
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4718
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_4d

    .line 4734
    .end local v1           #position:I
    :goto_2e
    if-eqz p3, :cond_d

    .line 4735
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_d

    .line 4719
    .restart local v1       #position:I
    :cond_36
    :try_start_36
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    if-ne p2, v2, :cond_52

    .line 4720
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4721
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x2

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_4d

    goto :goto_2e

    .line 4731
    .end local v1           #position:I
    :catch_4d
    move-exception v0

    .line 4732
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 4722
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #position:I
    :cond_52
    :try_start_52
    sget v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    if-ne p2, v2, :cond_69

    .line 4723
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 4724
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v4, v1, 0x4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_2e

    .line 4726
    :cond_69
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2e

    .line 4729
    :cond_6f
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_74} :catch_4d

    goto :goto_2e
.end method

.method private initScaleGestureDetector()V
    .registers 4

    .prologue
    .line 1753
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/android/email/activity/MessageListFragment$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$4;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1794
    return-void
.end method

.method private isLoadMoreAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2173
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v4, :cond_c

    :cond_a
    move v2, v3

    .line 2190
    :cond_b
    :goto_b
    return v2

    .line 2176
    :cond_c
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    .line 2177
    .local v1, isSncAccount:Z
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isPop(J)Z

    move-result v0

    .line 2178
    .local v0, isPop:Z
    sget-boolean v4, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v4, :cond_22

    if-eqz v1, :cond_24

    :cond_22
    move v2, v3

    .line 2179
    goto :goto_b

    .line 2181
    :cond_24
    if-eqz v0, :cond_2e

    .line 2182
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v4, :cond_b

    move v2, v3

    .line 2185
    goto :goto_b

    .line 2187
    :cond_2e
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_42

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    :cond_42
    move v2, v3

    .line 2188
    goto :goto_b
.end method

.method private isProgressActive(J)Z
    .registers 6
    .parameter "mailboxId"

    .prologue
    const/4 v0, 0x0

    .line 4652
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    if-nez v1, :cond_6

    .line 4654
    :cond_5
    :goto_5
    return v0

    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private noImagelayout()V
    .registers 8

    .prologue
    const v6, 0x7f0c0153

    const v5, 0x7f0c00f6

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1544
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1547
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 1548
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1549
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1551
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1553
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    :goto_41
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1572
    return-void

    .line 1555
    :cond_47
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1557
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1559
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41

    .line 1562
    :cond_6a
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1564
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1568
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_41
.end method

.method private onConversationIgnore()V
    .registers 5

    .prologue
    .line 2655
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 2656
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 2657
    .local v0, convIds:[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onConversationIgnore(Ljava/util/Set;J)V

    .line 2658
    return-void
.end method

.method private onConversationIgnore(Ljava/util/Set;J)V
    .registers 13
    .parameter
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3043
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3044
    .local v6, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 3045
    .local v8, mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3046
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->moveConversationIgnore(JLjava/lang/String;J)V

    goto :goto_f

    .line 3050
    .end local v3           #convId:Ljava/lang/String;
    :cond_24
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 3051
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 3053
    return-void
.end method

.method private onConversationMoveAlways()V
    .registers 5

    .prologue
    .line 2665
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 2666
    .local v1, messageIds:[J
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/EmailUtility;->toPrimitiveStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 2667
    .local v0, convIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v0, v3}, Lcom/android/email/activity/MessageListFragment$Callback;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    .line 2669
    return-void
.end method

.method private onConversationMoveAlways(Ljava/util/Set;J)V
    .registers 15
    .parameter
    .parameter "toMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 3069
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3070
    .local v9, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3071
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v8, 0x0

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_9

    .line 3074
    .end local v3           #convId:Ljava/lang/String;
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 3076
    return-void
.end method

.method private onDeleteOneItem(J)V
    .registers 7
    .parameter

    .prologue
    .line 2887
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2888
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 2890
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2892
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2893
    const v2, 0x7f080556

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2894
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$10;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$10;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2907
    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$11;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2915
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2916
    return-void
.end method

.method private onForward(J)V
    .registers 6
    .parameter

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 3024
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 3025
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3030
    :goto_20
    return-void

    .line 3029
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onForward(J)V

    goto :goto_20
.end method

.method private onLoadMoreMessages()V
    .registers 6

    .prologue
    .line 2526
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2527
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0803ec

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2536
    :cond_13
    :goto_13
    return-void

    .line 2532
    :cond_14
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 2533
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    .line 2534
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    goto :goto_13
.end method

.method private onMessageMarkAsReadUnread(ZJ)V
    .registers 7
    .parameter "setAsRead"
    .parameter "messageId"

    .prologue
    .line 3033
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 3034
    .local v0, messageIds:[J
    const/4 v1, 0x0

    aput-wide p2, v0, v1

    .line 3036
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V

    .line 3037
    return-void
.end method

.method private onMessageOpen(JJ)V
    .registers 13
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 2398
    :pswitch_9
    const/4 v7, 0x0

    .line 2400
    .local v7, type:I
    :goto_a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    move-wide v1, p3

    move-wide v3, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    .line 2401
    return-void

    .line 2392
    .end local v7           #type:I
    :pswitch_16
    const/4 v7, 0x1

    .line 2393
    .restart local v7       #type:I
    goto :goto_a

    .line 2395
    .end local v7           #type:I
    :pswitch_18
    const/4 v7, 0x2

    .line 2396
    .restart local v7       #type:I
    goto :goto_a

    .line 2390
    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_16
        :pswitch_9
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method

.method private onMultiDelete(Ljava/util/Set;)V
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
    .line 2833
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 2857
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2859
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2860
    const v2, 0x7f080556

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2861
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/android/email/activity/MessageListFragment$8;-><init>(Lcom/android/email/activity/MessageListFragment;[J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2870
    const v0, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageListFragment$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListFragment$9;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2878
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2883
    return-void
.end method

.method private onMultiToggleFavorite(Ljava/util/Set;)V
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
    .line 2768
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$6;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 2791
    return-void
.end method

.method private onMultiToggleFollowUpFlag(Ljava/util/Set;I)V
    .registers 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2805
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$7;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$7;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/activity/MessageListFragment;->toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I

    .line 2829
    return-void
.end method

.method private onMultiToggleRead(Ljava/util/Set;)V
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
    .line 2737
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$5;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I

    .line 2760
    return-void
.end method

.method private onReply(J)V
    .registers 6
    .parameter

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 3004
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 3005
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3010
    :goto_20
    return-void

    .line 3009
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReply(J)V

    goto :goto_20
.end method

.method private onReplyAll(J)V
    .registers 6
    .parameter

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 3014
    invoke-virtual {v0, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 3015
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3020
    :goto_20
    return-void

    .line 3019
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->onReplyAll(J)V

    goto :goto_20
.end method

.method private onSearchOnServer()V
    .registers 7

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    .line 2646
    .local v2, accountId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_12

    .line 2648
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment;->SearchOnServer(Landroid/app/Activity;JJ)V

    .line 2650
    :cond_12
    return-void
.end method

.method private onSetMessageFavorite([JZJ)V
    .registers 12
    .parameter "messageIds"
    .parameter "newFavorite"
    .parameter "accountId"

    .prologue
    .line 2717
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    .line 2718
    move-object v0, p1

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1c

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2719
    .local v3, messagId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/email/activity/MessageListFragment$Callback;->messageUpdateDB(J)V

    .line 2718
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2721
    .end local v3           #messagId:Ljava/lang/Long;
    :cond_1c
    return-void
.end method

.method private onSetMessageFollowUpFlag([JIJ)V
    .registers 6
    .parameter "messageIds"
    .parameter "newFollowUpFlag"
    .parameter "accountId"

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    .line 2726
    return-void
.end method

.method private onSetMessageRead([JZJ)V
    .registers 6
    .parameter "messageIds"
    .parameter "newRead"
    .parameter "accountId"

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    .line 2714
    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;JJ)V
    .registers 9
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 4031
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 4032
    invoke-static {p0, v2, v3}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 4036
    :cond_b
    :goto_b
    return-void

    .line 4033
    :cond_c
    cmp-long v0, p3, v2

    if-eqz v0, :cond_b

    .line 4034
    invoke-static {p0, p3, p4}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    goto :goto_b
.end method

.method public static setLoadReserved()V
    .registers 1

    .prologue
    .line 909
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    .line 910
    return-void
.end method

.method private showNoMessageText(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3687
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3688
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3689
    return-void

    :cond_13
    move v0, v2

    .line 3687
    goto :goto_8

    :cond_15
    move v1, v2

    .line 3688
    goto :goto_f
.end method

.method private showNoMessageTextIfNecessary()V
    .registers 3

    .prologue
    .line 3692
    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 3697
    .local v0, noItem:Z
    :goto_d
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 3698
    return-void

    .line 3692
    .end local v0           #noItem:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private showSendCommand(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 3680
    return-void
.end method

.method private showSendCommandIfNecessary()V
    .registers 2

    .prologue
    .line 3683
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 3684
    return-void

    .line 3683
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private showSendingFailDetail(JJI)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f080327

    const/4 v7, 0x0

    .line 2920
    .line 2924
    :try_start_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "syncServerId"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_ce

    move-result-object v1

    .line 2929
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_af

    .line 2930
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2931
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_f1

    move-result-wide v2

    .line 2932
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_74

    .line 2933
    const v0, 0x7f080325

    .line 2962
    :goto_3c
    if-eqz v1, :cond_47

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_47

    .line 2963
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2967
    :cond_47
    :goto_47
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2968
    const v1, 0x7f080329

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2970
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2971
    const v0, 0x7f08005d

    new-instance v1, Lcom/android/email/activity/MessageListFragment$12;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/email/activity/MessageListFragment$12;-><init>(Lcom/android/email/activity/MessageListFragment;J)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2991
    const v7, 0x7f080069

    new-instance v0, Lcom/android/email/activity/MessageListFragment$13;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$13;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2999
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3000
    :cond_73
    :goto_73
    return-void

    .line 2934
    :cond_74
    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_7c

    move v0, v6

    .line 2935
    goto :goto_3c

    .line 2936
    :cond_7c
    const-wide/16 v4, -0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_86

    .line 2937
    const v0, 0x7f080326

    goto :goto_3c

    .line 2938
    :cond_86
    const-wide/16 v4, -0x5

    cmp-long v0, v2, v4

    if-nez v0, :cond_90

    .line 2939
    const v0, 0x7f080328

    goto :goto_3c

    .line 2942
    :cond_90
    :try_start_90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 2943
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 2944
    if-eqz v1, :cond_a3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 2945
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a2} :catch_f1

    move-object v1, v7

    .line 2962
    :cond_a3
    if-eqz v1, :cond_73

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2963
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 2951
    :cond_af
    :try_start_af
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 2952
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 2953
    if-eqz v1, :cond_c2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 2954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c1
    .catchall {:try_start_af .. :try_end_c1} :catchall_ef
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_c1} :catch_f1

    move-object v1, v7

    .line 2962
    :cond_c2
    if-eqz v1, :cond_73

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2963
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 2959
    :catch_ce
    move-exception v0

    move-object v1, v7

    .line 2960
    :goto_d0
    :try_start_d0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_ef

    .line 2962
    if-eqz v1, :cond_f3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 2963
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 2964
    goto/16 :goto_47

    .line 2962
    :catchall_e1
    move-exception v0

    move-object v1, v7

    :goto_e3
    if-eqz v1, :cond_ee

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ee

    .line 2963
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2964
    :cond_ee
    throw v0

    .line 2962
    :catchall_ef
    move-exception v0

    goto :goto_e3

    .line 2959
    :catch_f1
    move-exception v0

    goto :goto_d0

    :cond_f3
    move v0, v6

    goto/16 :goto_47
.end method

.method private startLoading()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3705
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 3706
    sput-boolean v2, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    .line 3709
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->showNoMessageText(Z)V

    .line 3710
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->setListShown(Z)V

    .line 3711
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 3714
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 3717
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    .line 3718
    .local v1, mailboxChanging:Z
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_28

    .line 3719
    const/4 v1, 0x1

    .line 3720
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 3722
    :cond_28
    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v6, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3724
    return-void
.end method

.method private stopLoaders()V
    .registers 3

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 3728
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3729
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 3730
    return-void
.end method

.method private testIntMultiple(Ljava/util/Set;II)Z
    .registers 9
    .parameter
    .parameter "column_id"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 3257
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3258
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3270
    :cond_f
    :goto_f
    return v3

    .line 3261
    :cond_10
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3262
    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3263
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 3264
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3265
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, p3, :cond_14

    goto :goto_f

    .line 3270
    .end local v1           #id:J
    :cond_30
    const/4 v3, 0x1

    goto :goto_f
.end method

.method private testMultiple(Ljava/util/Set;ILjava/util/Set;)Z
    .registers 9
    .parameter
    .parameter "column_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p3, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3232
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3233
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3245
    :cond_f
    :goto_f
    return v3

    .line 3236
    :cond_10
    const/4 v4, -0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3237
    :cond_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3238
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 3239
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3240
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_f

    .line 3245
    .end local v1           #id:J
    :cond_34
    const/4 v3, 0x1

    goto :goto_f
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .registers 11
    .parameter
    .parameter "column_id"
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

    .line 3207
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3208
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v3, v4

    .line 3220
    :goto_11
    return v3

    .line 3211
    :cond_12
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3212
    :cond_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 3213
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    .line 3214
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3215
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

    .line 3220
    goto :goto_11
.end method

.method private toggleIntMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;I)I
    .registers 14
    .parameter
    .parameter "helper"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 3172
    iget-object v8, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v8}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 3173
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3195
    :cond_f
    :goto_f
    return v9

    .line 3175
    :cond_10
    const/4 v0, 0x0

    .line 3176
    .local v0, anyWereFound:Z
    move v6, p3

    .line 3178
    .local v6, newValue:I
    const/4 v7, 0x0

    .line 3180
    .local v7, numChanged:I
    const/4 v8, -0x1

    :try_start_14
    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3181
    :cond_17
    :goto_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 3182
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v3, v8

    .line 3183
    .local v3, id:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 3184
    const/4 v0, 0x1

    goto :goto_17

    .line 3187
    .end local v3           #id:J
    :cond_2f
    if-eqz v0, :cond_38

    .line 3188
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    .line 3189
    .local v5, messageIds:[J
    invoke-interface {p2, v5, v1, v6}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setIntField([JLandroid/database/Cursor;I)Z

    .line 3191
    .end local v5           #messageIds:[J
    :cond_38
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_f

    .line 3192
    :catch_3c
    move-exception v2

    .line 3193
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private toggleMultiSelection(IZ)V
    .registers 4
    .parameter "index"
    .parameter "isChecked"

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleMultiSelected(IZ)V

    .line 2365
    return-void
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)I
    .registers 14
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
            ")I"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 3132
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 3133
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_f

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 3158
    :cond_f
    :goto_f
    return v9

    .line 3135
    :cond_10
    const/4 v1, 0x0

    .line 3136
    .local v1, anyWereFound:Z
    const/4 v0, 0x1

    .line 3137
    .local v0, allWereSet:Z
    const/4 v8, 0x0

    .line 3139
    .local v8, numChanged:I
    const/4 v10, -0x1

    :try_start_14
    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3140
    :cond_17
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_35

    .line 3141
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    int-to-long v4, v10

    .line 3142
    .local v4, id:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 3143
    const/4 v1, 0x1

    .line 3144
    invoke-interface {p2, v4, v5, v2}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(JLandroid/database/Cursor;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 3145
    const/4 v0, 0x0

    .line 3150
    .end local v4           #id:J
    :cond_35
    if-eqz v1, :cond_f

    .line 3151
    if-nez v0, :cond_47

    const/4 v7, 0x1

    .line 3152
    .local v7, newValue:Z
    :goto_3a
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v6

    .line 3153
    .local v6, messageIds:[J
    invoke-interface {p2, v6, v2, v7}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setField([JLandroid/database/Cursor;Z)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_41} :catch_42

    goto :goto_f

    .line 3155
    .end local v6           #messageIds:[J
    .end local v7           #newValue:Z
    :catch_42
    move-exception v3

    .line 3156
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .end local v3           #e:Ljava/lang/Exception;
    :cond_47
    move v7, v9

    .line 3151
    goto :goto_3a
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItemContainer;I)V
    .registers 4
    .parameter "itemView"
    .parameter "parentIndex"

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItemContainer;I)V

    .line 2369
    return-void
.end method

.method private updateListFooter()V
    .registers 10

    .prologue
    const v7, 0x7f080311

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 3530
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v0, :cond_38

    .line 3531
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    if-nez v0, :cond_17

    .line 3532
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    .line 3537
    :cond_17
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 3539
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_11a

    .line 3605
    :cond_20
    :goto_20
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3608
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3619
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    if-nez v0, :cond_110

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-ne v0, v2, :cond_110

    .line 3620
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3625
    :cond_38
    :goto_38
    return-void

    .line 3542
    :pswitch_39
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_117

    :cond_5d
    move v0, v2

    .line 3546
    :goto_5e
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v5

    .line 3548
    if-eqz v5, :cond_9e

    .line 3550
    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-ge v0, v8, :cond_8c

    .line 3551
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3552
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    if-ne v0, v2, :cond_8c

    .line 3553
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 3554
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3555
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    .line 3558
    :cond_8c
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v5, :cond_9c

    move v0, v1

    :goto_91
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3572
    :cond_94
    :goto_94
    if-eqz v5, :cond_c1

    const v0, 0x7f0800b4

    :goto_99
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    goto :goto_20

    :cond_9c
    move v0, v3

    .line 3558
    goto :goto_91

    .line 3561
    :cond_9e
    if-eqz v0, :cond_b7

    .line 3562
    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-ge v0, v8, :cond_ac

    .line 3563
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3565
    :cond_ac
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v5, :cond_b5

    move v0, v1

    :goto_b1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_94

    :cond_b5
    move v0, v3

    goto :goto_b1

    .line 3568
    :cond_b7
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v0, :cond_94

    .line 3569
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_94

    .line 3572
    :cond_c1
    const v0, 0x7f0800b6

    goto :goto_99

    .line 3578
    :pswitch_c5
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v5, v6}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    .line 3579
    iput v7, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    .line 3581
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3583
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v3, :cond_20

    .line 3584
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 3585
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_20

    .line 3590
    :pswitch_e8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-nez v0, :cond_f6

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v0, v4, v5}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    if-eqz v0, :cond_108

    :cond_f6
    move v4, v2

    .line 3591
    :goto_f7
    if-eqz v4, :cond_10a

    const v0, 0x7f0800b9

    :goto_fc
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    .line 3593
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v4, :cond_10e

    move v0, v1

    :goto_103
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_20

    :cond_108
    move v4, v1

    .line 3590
    goto :goto_f7

    .line 3591
    :cond_10a
    const v0, 0x7f0801c1

    goto :goto_fc

    :cond_10e
    move v0, v3

    .line 3593
    goto :goto_103

    .line 3622
    :cond_110
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_38

    :cond_117
    move v0, v1

    goto/16 :goto_5e

    .line 3539
    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_c5
        :pswitch_e8
    .end packed-switch
.end method

.method private updateProgressIcon(J)V
    .registers 5
    .parameter

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_18

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_18

    .line 4641
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->isProgressActive(J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4643
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const v1, 0x7f040042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 4648
    :cond_18
    :goto_18
    return-void

    .line 4645
    :cond_19
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_18
.end method

.method private updateSelectionModeView()V
    .registers 2

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4082
    return-void
.end method


# virtual methods
.method public SearchOnServer(Landroid/app/Activity;JJ)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2613
    invoke-static {p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    if-ne v0, v5, :cond_14

    .line 2614
    iput-wide p4, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousMailboxId:J

    .line 2615
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    .line 2616
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/CustomizeDate;->startActivity(Landroid/app/Activity;JJILjava/lang/String;)V

    .line 2641
    :goto_13
    return-void

    .line 2621
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2622
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2623
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    if-ne v2, v5, :cond_54

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SUBJECT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2636
    :goto_49
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, p4, p5, v0}, Lcom/android/email/Controller;->searchOnServer(JLjava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_4f

    goto :goto_13

    .line 2637
    :catch_4f
    move-exception v0

    .line 2638
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 2625
    :cond_54
    :try_start_54
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_aa

    .line 2626
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    .line 2627
    const/4 v3, 0x5

    if-eq v2, v3, :cond_6c

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8b

    .line 2629
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TO {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 2631
    :cond_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " FROM {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 2634
    :cond_aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TEXT {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_c7} :catch_4f

    move-result-object v0

    goto :goto_49
.end method

.method public clearContent()V
    .registers 3

    .prologue
    .line 1611
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 1612
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 1613
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 1614
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_19

    .line 1615
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1616
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 1618
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setListShownNoAnimation(Z)V

    .line 1619
    return-void
.end method

.method public clearSelection()V
    .registers 2

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4776
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4777
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 4778
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 4779
    return-void
.end method

.method public doAutoRefresh()V
    .registers 2

    .prologue
    .line 3321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDoAutoRefresh:Z

    .line 3322
    return-void
.end method

.method public doesSelectionContainFlaggedMessage(I)Z
    .registers 4
    .parameter "defaultflag"

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Lcom/android/email/activity/MessageListFragment;->testIntMultiple(Ljava/util/Set;II)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainNonStarredMessage()Z
    .registers 4

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainOnlyConversation()Z
    .registers 4

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;ILjava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .registers 4

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doseSelectionContainFlaggedMessage()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 3296
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3305
    :cond_9
    :goto_9
    return v0

    .line 3298
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v1

    .line 3299
    goto :goto_9

    .line 3300
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainFlaggedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move v0, v2

    .line 3301
    goto :goto_9
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    goto :goto_6
.end method

.method public getMailboxId()J
    .registers 3

    .prologue
    .line 1696
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    return-wide v0
.end method

.method public getSelectedCount()I
    .registers 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/email/activity/MessageListFragment$State;
    .registers 3

    .prologue
    .line 4701
    new-instance v0, Lcom/android/email/activity/MessageListFragment$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    return-object v0
.end method

.method public initListAdapter()V
    .registers 3

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_f

    .line 1601
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1602
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 1604
    :cond_f
    return-void
.end method

.method public isInSelectionMode()Z
    .registers 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMagicMailbox()Z
    .registers 5

    .prologue
    .line 1704
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOutbox()Z
    .registers 5

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method loadState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    .line 1086
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 1087
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 1088
    const-string v0, "MessageListFragment.state.sortType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 1089
    return-void
.end method

.method public needRefreshList()V
    .registers 1

    .prologue
    .line 3450
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 3451
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f020265

    const/4 v5, 0x1

    const v4, 0x7f020264

    const/4 v3, 0x0

    .line 803
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 807
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 808
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 809
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 810
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 811
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 812
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0202c3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 815
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 816
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 817
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 819
    sget v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_65

    .line 820
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    .line 822
    :cond_65
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 823
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040097

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 825
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v1, 0x7f1001c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    .line 829
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040098

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    .line 831
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 832
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    .line 839
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 840
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    :goto_d2
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    const v1, 0x7f1001c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 850
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initScaleGestureDetector()V

    .line 851
    if-eqz p1, :cond_fb

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->loadState(Landroid/os/Bundle;)V

    .line 858
    :cond_fb
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    .line 859
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->ctx:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    .line 872
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 877
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->setEmptyMessage(I)V

    .line 879
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->useFlickUp(Z)V

    .line 881
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 887
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->isPhoneMode()Z

    move-result v0

    if-nez v0, :cond_132

    .line 888
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageListFragment;->setListViewPadding(Z)V

    .line 891
    :cond_132
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 892
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 894
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 896
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 898
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 906
    :goto_14f
    return-void

    .line 842
    :cond_150
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d2

    .line 901
    :cond_159
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 902
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLineBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 903
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 904
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_14f
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItemContainer;Z)V
    .registers 7
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 3381
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 3382
    .local v0, messageIds:[J
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    .line 3383
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V

    .line 3384
    return-void
.end method

.method public onAdapterFollowUpChanged(Lcom/android/email/activity/MessageListItemContainer;I)V
    .registers 7
    .parameter "itemView"
    .parameter "newFollowUpFlag"

    .prologue
    .line 3438
    const/4 v1, 0x1

    new-array v0, v1, [J

    .line 3439
    .local v0, messageIds:[J
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    aput-wide v2, v0, v1

    .line 3440
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/email/activity/MessageListFragment;->onSetMessageFollowUpFlag([JIJ)V

    .line 3441
    return-void
.end method

.method public onAdapterSelectedAllChanged()V
    .registers 1

    .prologue
    .line 3389
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 3390
    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItemContainer;ZI)V
    .registers 5
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "mSelectedCount"

    .prologue
    .line 3425
    invoke-virtual {p1}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_10

    .line 3426
    if-eqz p2, :cond_14

    .line 3427
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 3432
    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 3433
    return-void

    .line 3429
    :cond_14
    sget v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    goto :goto_10
.end method

.method public onBackPress(Z)Z
    .registers 14
    .parameter "isSystemBackKey"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1622
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_5e

    .line 1623
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-ne v0, v11, :cond_10

    move v0, v10

    .line 1642
    :goto_f
    return v0

    .line 1625
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5e

    .line 1627
    :try_start_1c
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousMailboxId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_38

    .line 1629
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mPreviousMailboxId:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    :goto_36
    move v0, v11

    .line 1634
    goto :goto_f

    .line 1631
    :cond_38
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 1632
    .local v9, inbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_58

    goto :goto_36

    .line 1635
    .end local v9           #inbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catch_58
    move-exception v8

    .line 1636
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v10

    .line 1637
    goto :goto_f

    .end local v8           #e:Ljava/lang/Exception;
    :cond_5e
    move v0, v10

    .line 1642
    goto :goto_f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 2195
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    .line 2197
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2198
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sput v1, Lcom/android/email/activity/MessageListFragment;->MINIMUM_LOAD_MORE_HEIGHT:F

    .line 2199
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/email/activity/MessageListFragment;->LOAD_MORE_FULL_HEIGHT:F

    .line 2201
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    .line 2203
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2204
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 2205
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 2208
    :cond_31
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2209
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1453
    const-string v0, "Email"

    const-string v1, "MessageListFragment onContextItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f10030d

    if-eq v0, v1, :cond_12

    .line 1486
    :goto_11
    return v4

    .line 1459
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1462
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItemContainer;

    .line 1463
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v0

    .line 1465
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    goto :goto_11

    .line 1467
    :pswitch_28
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onDeleteOneItem(J)V

    goto :goto_11

    .line 1470
    :pswitch_2e
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReply(J)V

    goto :goto_11

    .line 1473
    :pswitch_34
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onReplyAll(J)V

    goto :goto_11

    .line 1476
    :pswitch_3a
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onForward(J)V

    goto :goto_11

    .line 1479
    :pswitch_40
    const/4 v1, 0x1

    iget-wide v2, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_11

    .line 1482
    :pswitch_47
    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v4, v0, v1}, Lcom/android/email/activity/MessageListFragment;->onMessageMarkAsReadUnread(ZJ)V

    goto :goto_11

    .line 1465
    nop

    :pswitch_data_4e
    .packed-switch 0x7f10030e
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_47
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 645
    const-string v3, "Email"

    const-string v4, "MessageListFragment onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 651
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 652
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->MINIMUM_LOAD_MORE_HEIGHT:F

    .line 653
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->LOAD_MORE_FULL_HEIGHT:F

    .line 655
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 656
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 657
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v3, v4}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 659
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMAILSEARCH_COMPLETED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    sget v3, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_da

    .line 663
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sListFragmentPadding:I

    .line 665
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sFooterProgressWidth:I

    .line 667
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    .line 669
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    .line 671
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorWhiteTheme:I

    .line 673
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v3

    if-eqz v3, :cond_da

    .line 674
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    .line 676
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    .line 678
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sMessageListFooterTextColorDarkTheme:I

    .line 683
    :cond_da
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 684
    .local v2, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mBgColor:I

    .line 685
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v3

    if-eqz v3, :cond_112

    .line 686
    sget v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightDarkTheme:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    .line 687
    sget v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkDarkTheme:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    .line 694
    :goto_f4
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/email/activity/MessageListFragment;->sListFooterViewHeight:I

    .line 697
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    .line 698
    return-void

    .line 689
    :cond_112
    sget v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgLightWhiteTheme:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    .line 690
    sget v3, Lcom/android/email/activity/MessageListFragment;->sMessageListColorBgDarkWhiteTheme:I

    iput v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    goto :goto_f4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f100313

    const v10, 0x7f100312

    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1358
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1359
    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateContextMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1361
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-ne v0, v1, :cond_1c

    .line 1449
    :cond_1b
    :goto_1b
    return-void

    .line 1363
    :cond_1c
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/email/activity/MessageListItemContainer;

    .line 1364
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v4

    .line 1365
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-virtual {v1, v5, v6}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v1

    if-eqz v1, :cond_141

    :cond_32
    move v1, v3

    .line 1366
    :goto_33
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getItemMode()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eq v0, v3, :cond_1b

    .line 1368
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1370
    if-eqz v0, :cond_4f

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v5, v9, :cond_4f

    if-eq v1, v3, :cond_1b

    .line 1373
    :cond_4f
    if-eqz v0, :cond_5a

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eq v1, v9, :cond_5a

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5a

    .line 1375
    :cond_5a
    const-string v0, " "

    .line 1377
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_14d

    .line 1378
    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-eqz v0, :cond_144

    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_144

    .line 1379
    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 1390
    :goto_70
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1392
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1393
    const v1, 0x7f0f001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1396
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1397
    iget-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1398
    if-eqz v0, :cond_18f

    .line 1399
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v1

    .line 1400
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    .line 1401
    add-int/2addr v0, v1

    .line 1404
    :goto_a6
    const v1, 0x7f10030f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1405
    const v5, 0x7f100310

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1406
    const v6, 0x7f100311

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1407
    const v7, 0x7f10030d

    invoke-interface {p1, v7, v3}, Landroid/view/ContextMenu;->setGroupEnabled(IZ)V

    .line 1408
    const v7, 0x7f10030e

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1410
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1411
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1413
    if-le v0, v3, :cond_166

    .line 1414
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    :goto_d6
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    iget-wide v7, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_16b

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_e9

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-ne v0, v9, :cond_16b

    .line 1421
    :cond_e9
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1422
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1434
    :goto_f7
    :try_start_f7
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    iget-wide v7, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v0, v7, v8}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v0

    .line 1435
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v2

    if-ne v2, v3, :cond_115

    .line 1436
    :cond_111
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1438
    :cond_115
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isReplyAllAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_123

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v1

    if-ne v1, v3, :cond_127

    .line 1440
    :cond_123
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1442
    :cond_127
    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->isForwardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v3, :cond_1b

    .line 1444
    :cond_135
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_139} :catch_13b

    goto/16 :goto_1b

    .line 1446
    :catch_13b
    move-exception v0

    .line 1447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    :cond_141
    move v1, v2

    .line 1365
    goto/16 :goto_33

    .line 1381
    :cond_144
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 1385
    :cond_14d
    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-eqz v0, :cond_15d

    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15d

    .line 1386
    iget-object v0, v4, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    goto/16 :goto_70

    .line 1388
    :cond_15d
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    .line 1416
    :cond_166
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d6

    .line 1424
    :cond_16b
    iget-boolean v0, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_17f

    .line 1425
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1426
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f7

    .line 1428
    :cond_17f
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1429
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_f7

    :cond_18f
    move v0, v2

    goto/16 :goto_a6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1093
    const v0, 0x7f0f0020

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1094
    const-string v0, "Email"

    const-string v1, "MessageListFragment onCreateOptionsMenu1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const v0, 0x7f1002d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    .line 1098
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 1100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1102
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1109
    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ea

    .line 1110
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1111
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1113
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_a7

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_79

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_79

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a7

    .line 1116
    :cond_79
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0125

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1118
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0126

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1143
    :goto_93
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1144
    invoke-virtual {v1, v4, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1145
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    new-instance v1, Lcom/android/email/activity/MessageListFragment$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$3;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    :cond_a3
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1157
    return-void

    .line 1121
    :cond_a7
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1123
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0124

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_93

    .line 1127
    :cond_c2
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1129
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1131
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c011b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_93

    .line 1135
    :cond_ea
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1137
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1139
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0117

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_93
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 789
    const v0, 0x7f040096

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    .line 790
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 791
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    .line 792
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    .line 793
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    const v1, 0x7f1001c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    .line 794
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    return-object v0
.end method

.method public onDeselectAll()V
    .registers 3

    .prologue
    .line 2503
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 2519
    :cond_10
    :goto_10
    return-void

    .line 2507
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2508
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 2509
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 2511
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->clearBlockCounter()V

    .line 2512
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 2513
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2514
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3d} :catch_3e

    goto :goto_10

    .line 2516
    :catch_3e
    move-exception v0

    .line 2517
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1006
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1008
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1010
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 1011
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageOpenTask:Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    .line 1012
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 1013
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 1015
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    .line 1019
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    .line 1020
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesPanel:Landroid/widget/TextView;

    .line 1021
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mNoMessagesIcon:Landroid/view/View;

    .line 1022
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewText2:Landroid/widget/TextView;

    .line 1023
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine2:Landroid/widget/ImageView;

    .line 1024
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterViewLine3:Landroid/widget/ImageView;

    .line 1026
    :try_start_2f
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eqz v1, :cond_41

    .line 1027
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1028
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 1030
    :cond_41
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v1, :cond_53

    .line 1031
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1032
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    .line 1038
    :cond_53
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->stopLoaders()V

    .line 1039
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_68

    .line 1040
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->initAdapter()V

    .line 1041
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessagesAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1042
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 1044
    :cond_68
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_72

    .line 1045
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_72} :catch_95

    .line 1055
    :cond_72
    :goto_72
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1056
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    .line 1057
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 1058
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 1059
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1060
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 1061
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1062
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 1063
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 1064
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1065
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    .line 1066
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 1067
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListFragment:Landroid/view/View;

    .line 1068
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 1069
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    .line 1070
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 1071
    return-void

    .line 1051
    :catch_95
    move-exception v0

    .line 1052
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 2060
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 1726
    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 1727
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-ne p2, v0, :cond_b

    .line 1728
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    .line 1749
    :cond_a
    :goto_a
    return-void

    :cond_b
    move-object v6, p2

    .line 1730
    check-cast v6, Lcom/android/email/activity/MessageListItemContainer;

    .line 1731
    .local v6, itemContainer:Lcom/android/email/activity/MessageListItemContainer;
    invoke-virtual {v6}, Lcom/android/email/activity/MessageListItemContainer;->getItemMode()I

    move-result v0

    if-nez v0, :cond_4f

    .line 1732
    invoke-virtual {v6}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v7

    .line 1733
    .local v7, itemView:Lcom/android/email/activity/MessageListItem;
    iget-boolean v0, v7, Lcom/android/email/activity/MessageListItem;->isSms:Z

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    .line 1734
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    if-nez v0, :cond_a

    .line 1735
    iget v0, v7, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    iget v0, v7, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    int-to-long v0, v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 1737
    :cond_2e
    iget-wide v1, v7, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    iget-wide v3, v7, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    iget v5, v7, Lcom/android/email/activity/MessageListItem;->mPosition:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment;->showSendingFailDetail(JJI)V

    goto :goto_a

    .line 1739
    :cond_39
    iget-wide v0, v7, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    iget-wide v2, v7, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 1740
    iget v0, v7, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1741
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListFragment;->setHasOptionsMenu(Z)V

    goto :goto_a

    .line 1744
    .end local v7           #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_4f
    invoke-virtual {v6}, Lcom/android/email/activity/MessageListItemContainer;->getItemMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1745
    invoke-virtual {v6}, Lcom/android/email/activity/MessageListItemContainer;->getListSubTitleItem()Lcom/android/email/activity/MessageListSubTitleItem;

    move-result-object v7

    .line 1746
    .local v7, itemView:Lcom/android/email/activity/MessageListSubTitleItem;
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget v1, v7, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->updateArrow(I)V

    goto :goto_a
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
    .line 2360
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e

    const/16 v4, 0x14

    const/16 v3, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2213
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_11c

    :cond_f
    :goto_f
    move v0, v2

    .line 2295
    :goto_10
    return v0

    .line 2215
    :pswitch_11
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 2217
    if-ne p2, v5, :cond_17

    move v0, v1

    .line 2218
    goto :goto_10

    .line 2221
    :cond_17
    const/16 v0, 0x70

    if-ne p2, v0, :cond_5a

    .line 2222
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_58

    .line 2223
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2224
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2225
    if-eqz v0, :cond_58

    .line 2226
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItemContainer;

    .line 2227
    const-class v2, Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2228
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v0

    .line 2229
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2230
    iget-wide v3, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2231
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    :cond_58
    move v0, v1

    .line 2236
    goto :goto_10

    .line 2239
    :cond_5a
    if-eq p2, v4, :cond_60

    const/16 v0, 0x16

    if-ne p2, v0, :cond_7e

    .line 2240
    :cond_60
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_a3

    .line 2241
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a3

    .line 2242
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_f

    .line 2246
    :cond_7e
    if-ne p2, v3, :cond_a3

    .line 2247
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_a3

    .line 2248
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    if-ne v0, v1, :cond_a3

    .line 2249
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2254
    :cond_a3
    if-ne p2, v4, :cond_f

    .line 2255
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_f

    .line 2256
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_f

    .line 2267
    :pswitch_b7
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsKeyDownEvent:Z

    .line 2269
    if-ne p2, v5, :cond_ed

    .line 2270
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_ed

    .line 2271
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2272
    if-eqz v0, :cond_ed

    .line 2273
    check-cast v0, Lcom/android/email/activity/MessageListItemContainer;

    .line 2274
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getItemMode()I

    move-result v2

    if-nez v2, :cond_db

    .line 2275
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v2

    .line 2276
    iget v2, v2, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItemContainer;I)V

    :cond_d8
    :goto_d8
    move v0, v1

    .line 2281
    goto/16 :goto_10

    .line 2277
    :cond_db
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getItemMode()I

    move-result v2

    if-ne v2, v1, :cond_d8

    .line 2278
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->getListSubTitleItem()Lcom/android/email/activity/MessageListSubTitleItem;

    move-result-object v0

    .line 2279
    iget v2, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mSubTitleIndex:I

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListSubTitleItem;->mIsChecked:Z

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiSelection(IZ)V

    goto :goto_d8

    .line 2286
    :cond_ed
    if-ne p2, v3, :cond_f

    .line 2287
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_f

    .line 2288
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getFirstListItem()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 2290
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_f

    .line 2213
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_11
    .end packed-switch
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .registers 10
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 2674
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->onConversationMoveAlways(Ljava/util/Set;J)V

    .line 2679
    return-void
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .registers 7
    .parameter "targetAccountId"
    .parameter "newMailboxId"
    .parameter "messageIds"
    .parameter "moveType"

    .prologue
    .line 2483
    return-void
.end method

.method public onMultiDelete()V
    .registers 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V

    .line 2460
    return-void
.end method

.method public onMultiFollowUpFlag(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFollowUpFlag(Ljava/util/Set;I)V

    .line 2800
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2801
    return-void
.end method

.method public onMultiMove()V
    .registers 3

    .prologue
    .line 2467
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 2468
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMoveMessages([J)V

    .line 2473
    return-void
.end method

.method public onMultiToggleFavorite()V
    .registers 2

    .prologue
    .line 2447
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_a

    .line 2448
    sget-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onFollowUpViewShown()V

    .line 2456
    :goto_9
    return-void

    .line 2451
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V

    .line 2452
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_9
.end method

.method public onMultiToggleRead()V
    .registers 2

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V

    .line 2443
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2444
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1280
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_aa

    move v0, v2

    .line 1332
    :goto_16
    return v0

    .line 1284
    :sswitch_17
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onComposeFromMessageListFragment()V

    move v0, v1

    .line 1285
    goto :goto_16

    .line 1287
    :sswitch_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onRefreshFromMessageListFragment()V

    move v0, v1

    .line 1288
    goto :goto_16

    .line 1290
    :sswitch_25
    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1291
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1292
    :cond_40
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1293
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailBoxList()V

    move v0, v1

    .line 1295
    goto :goto_16

    .line 1297
    :sswitch_4c
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onSearchFromMessageListFragment()V

    move v0, v1

    .line 1298
    goto :goto_16

    .line 1301
    :sswitch_53
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1302
    goto :goto_16

    .line 1305
    :sswitch_5e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    move v0, v1

    .line 1306
    goto :goto_16

    .line 1308
    :sswitch_6a
    invoke-static {}, Lcom/android/email/activity/MessageListFragment;->getStartTimeForCreate()Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1309
    const-wide/32 v5, 0x36ee80

    add-long/2addr v5, v3

    .line 1310
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    const-string v7, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string v7, "beginTime"

    invoke-virtual {v0, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1318
    const-string v3, "endTime"

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1319
    const-string v3, "isAllday"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1321
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListFragment;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 1322
    goto :goto_16

    .line 1325
    :sswitch_96
    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a7

    .line 1326
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    :cond_a7
    move v0, v1

    .line 1330
    goto/16 :goto_16

    .line 1282
    :sswitch_data_aa
    .sparse-switch
        0x7f1002d4 -> :sswitch_17
        0x7f1002f7 -> :sswitch_96
        0x7f1002fb -> :sswitch_1e
        0x7f100314 -> :sswitch_4c
        0x7f100315 -> :sswitch_25
        0x7f100317 -> :sswitch_53
        0x7f100319 -> :sswitch_5e
        0x7f10031b -> :sswitch_6a
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 987
    const-string v0, "Email"

    const-string v1, "MessageListFragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 989
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 990
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 991
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 12
    .parameter

    .prologue
    const v4, 0x7f100314

    const v9, 0x7f100316

    const v8, 0x7f100318

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1161
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1163
    const-string v0, "Email"

    const-string v3, "MessageListFragment onPrepareOptionsMenu"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const v0, 0x7f1002d4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1165
    const v0, 0x7f1002fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    .line 1166
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_f9

    move v0, v1

    :goto_34
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1170
    const v0, 0x7f10031c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1171
    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v3, :cond_104

    .line 1173
    const-wide/16 v3, 0x0

    .line 1174
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v6, :cond_50

    .line 1175
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1177
    :cond_50
    const-wide/high16 v6, 0x4028

    cmpg-double v3, v3, v6

    if-gez v3, :cond_fc

    .line 1178
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1179
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1188
    :goto_5c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 1189
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_10c

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10c

    .line 1190
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1198
    :goto_70
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMenuitemRefresh:Landroid/view/MenuItem;

    if-eqz v0, :cond_79

    .line 1199
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->updateProgressIcon(J)V

    .line 1201
    :cond_79
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getViewMode()I

    move-result v0

    if-ne v0, v1, :cond_11b

    .line 1202
    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1203
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1204
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1217
    :goto_8b
    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v0, :cond_95

    .line 1218
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeGroup(I)V

    .line 1219
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeGroup(I)V

    .line 1222
    :cond_95
    const v0, 0x7f10031b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1223
    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v3, :cond_131

    .line 1224
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1225
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1231
    :goto_a6
    const v0, 0x7f1002f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1234
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_b9

    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v3, :cond_139

    .line 1235
    :cond_b9
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1236
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    :cond_bf
    :goto_bf
    const v0, 0x7f10030b

    :try_start_c2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1261
    const v2, 0x7f10032c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1262
    const v3, 0x7f1002ee

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1263
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter;->isReplyBlock()Z

    move-result v4

    if-ne v4, v1, :cond_e0

    .line 1264
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1266
    :cond_e0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isReplyAllBlock()Z

    move-result v0

    if-ne v0, v1, :cond_ec

    .line 1267
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1269
    :cond_ec
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v0

    if-ne v0, v1, :cond_f8

    .line 1270
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_f8} :catch_181

    .line 1275
    :cond_f8
    :goto_f8
    return-void

    :cond_f9
    move v0, v2

    .line 1166
    goto/16 :goto_34

    .line 1181
    :cond_fc
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1182
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_5c

    .line 1185
    :cond_104
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1186
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5c

    .line 1192
    :cond_10c
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_70

    .line 1195
    :cond_111
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_70

    .line 1206
    :cond_116
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_8b

    .line 1209
    :cond_11b
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1210
    invoke-interface {p1, v9, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1211
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_8b

    .line 1213
    :cond_129
    invoke-interface {p1, v9, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1214
    invoke-interface {p1, v8, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_8b

    .line 1227
    :cond_131
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1228
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a6

    .line 1238
    :cond_139
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_16d

    .line 1241
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1242
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1247
    :goto_14a
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_bf

    .line 1249
    :try_start_14e
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_174

    .line 1250
    const v0, 0x7f100314

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_165} :catch_167

    goto/16 :goto_bf

    .line 1253
    :catch_167
    move-exception v0

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bf

    .line 1244
    :cond_16d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1245
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_14a

    .line 1252
    :cond_174
    const v0, 0x7f100314

    :try_start_177
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17f} :catch_167

    goto/16 :goto_bf

    .line 1272
    :catch_181
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f8
.end method

.method public onReDrawList()V
    .registers 3

    .prologue
    .line 3396
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_9

    .line 3397
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->notifyDataSetInvalidated()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 3402
    :cond_9
    :goto_9
    return-void

    .line 3399
    :catch_a
    move-exception v0

    .line 3400
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public onRefresh(Z)V
    .registers 8
    .parameter "userRequest"

    .prologue
    .line 2490
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v0, :cond_5

    .line 2500
    :goto_4
    return-void

    .line 2494
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    .line 2495
    .local v1, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_18

    .line 2496
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_4

    .line 2498
    :cond_18
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->refreshAllAccount()V

    goto :goto_4
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 929
    const-string v0, "Email"

    const-string v1, "MessageListFragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 931
    sput-boolean v4, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 935
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    .line 936
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mLoadReserved:Z

    if-eqz v0, :cond_20

    .line 937
    :cond_1d
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    .line 971
    :cond_20
    :goto_20
    sget-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_2b

    .line 972
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->refreshList()V

    .line 974
    :cond_2b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->isFavorite:Ljava/lang/Boolean;

    .line 976
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_4a

    .line 977
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->composeLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 981
    :cond_4a
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->noImagelayout()V

    .line 983
    return-void

    .line 940
    :cond_4e
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_20

    .line 943
    :cond_5a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    .line 967
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListLoadingMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_20
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 1075
    const-string v0, "Email"

    const-string v1, "MessageListFragment onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1077
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1078
    const-string v0, "MessageListFragment.state.listState"

    new-instance v1, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1079
    const-string v0, "MessageListFragment.state.sortType"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1081
    return-void
.end method

.method public onSendPendingMessages()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2692
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2694
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4f

    move v0, v1

    .line 2697
    :goto_17
    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v3, :cond_3b

    if-eqz v0, :cond_3b

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2698
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080576

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2703
    :cond_3b
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    .line 2704
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_51

    .line 2705
    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    .line 2710
    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    move v0, v2

    .line 2694
    goto :goto_17

    .line 2706
    :cond_51
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_4e

    .line 2708
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_4e
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 918
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 919
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 996
    const-string v0, "Email"

    const-string v1, "MessageListFragment onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 998
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2067
    .line 2068
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 2070
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2071
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_14

    .line 2072
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2074
    :cond_14
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_19

    .line 2169
    :cond_18
    :goto_18
    return v7

    .line 2076
    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_f8

    goto :goto_18

    .line 2106
    :pswitch_21
    iput v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    .line 2107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$1002(I)I

    .line 2109
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z

    if-eqz v1, :cond_18

    .line 2113
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    if-ne v1, v6, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 2114
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 2115
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2116
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_67

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 2117
    :cond_67
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    goto :goto_18

    .line 2102
    :pswitch_6a
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    goto :goto_18

    .line 2125
    :pswitch_6d
    iput-boolean v7, p0, Lcom/android/email/activity/MessageListFragment;->mMultiTouchEnabled:Z

    .line 2149
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mNeedToFlickUpLoadMore:Z

    if-ne v1, v6, :cond_f3

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    if-ne v1, v6, :cond_f3

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_f3

    .line 2150
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 2151
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_bd

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_e8

    .line 2153
    :cond_bd
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView2:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/email/activity/MessageListFragment;->LOAD_MORE_FULL_HEIGHT:F

    div-float/2addr v2, v3

    .line 2154
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mPrevRawY:I

    int-to-float v3, v3

    int-to-float v0, v0

    sget v4, Lcom/android/email/activity/MessageListFragment;->LOAD_MORE_FULL_HEIGHT:F

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    sget v4, Lcom/android/email/activity/MessageListFragment;->MINIMUM_LOAD_MORE_HEIGHT:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_e8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    if-eqz v0, :cond_e8

    .line 2155
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListFragment;->bIsScrollingDown:Z

    .line 2156
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isLoadMoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2157
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    .line 2161
    :cond_e8
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v1, v0, :cond_f3

    .line 2162
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->setSelection(I)V

    .line 2166
    :cond_f3
    iput-boolean v7, p0, Lcom/android/email/activity/MessageListFragment;->bIsDown:Z

    goto/16 :goto_18

    .line 2076
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_21
        :pswitch_6d
        :pswitch_6a
    .end packed-switch
.end method

.method public openMailbox(JZ)V
    .registers 6
    .parameter "mailboxId"
    .parameter "openResultBox"

    .prologue
    .line 1655
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 1656
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 1658
    :cond_c
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    .line 1669
    :cond_12
    :goto_12
    return-void

    .line 1662
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mOpenRequested:Z

    .line 1663
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    .line 1664
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->initListAdapter()V

    .line 1665
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 1666
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-nez v0, :cond_24

    if-eqz p3, :cond_12

    .line 1667
    :cond_24
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    goto :goto_12
.end method

.method public refreshList()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 3806
    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    .line 3820
    :goto_b
    return-void

    .line 3810
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_b

    .line 3812
    :catch_1c
    move-exception v0

    .line 3813
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v1, v7, v8, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_b
.end method

.method public setActionBarDisplayHomeEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3629
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 1490
    if-eqz p1, :cond_9

    .end local p1
    :goto_2
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1492
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    sput-object v0, Lcom/android/email/activity/MessageListFragment;->activity_CALLBACK:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 1494
    return-void

    .line 1490
    .restart local p1
    :cond_9
    sget-object p1, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_2
.end method

.method public setEmptyMessage(I)V
    .registers 2
    .parameter "resID"

    .prologue
    .line 5324
    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 4
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V

    .line 3413
    return-void
.end method

.method public setListBackgroundColor(Z)V
    .registers 5
    .parameter "isDark"

    .prologue
    const/16 v2, 0x8

    .line 1575
    if-eqz p1, :cond_23

    .line 1576
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgDark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1583
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1584
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    :goto_1c
    return-void

    .line 1586
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 1589
    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    iget v1, p0, Lcom/android/email/activity/MessageListFragment;->mMessageListColorBgLight:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1595
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c
.end method

.method public setListSplit(I)V
    .registers 2
    .parameter "imageType"

    .prologue
    .line 4830
    return-void
.end method

.method public setListViewPadding(Z)V
    .registers 6
    .parameter "isNeedSidePadding"

    .prologue
    const/4 v3, 0x0

    .line 1517
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_10

    .line 1518
    if-eqz p1, :cond_11

    .line 1519
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    sget v2, Lcom/android/email/activity/MessageListFragment;->sListPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1540
    :cond_10
    :goto_10
    return-void

    .line 1531
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_10

    .line 1532
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_10
.end method

.method public setMessageListFontSize(I)V
    .registers 5
    .parameter

    .prologue
    .line 2539
    .line 2540
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isQ1Model()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2541
    if-nez p1, :cond_21

    .line 2542
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2543
    rsub-int/lit8 p1, v0, 0x4

    .line 2550
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_20

    .line 2551
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setListItemSize(I)V

    .line 2552
    :cond_20
    return-void

    .line 2545
    :cond_21
    add-int/lit8 p1, p1, -0x1

    goto :goto_17
.end method

.method public setMoveToMailboxFlag(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 4837
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z

    .line 4838
    return-void
.end method

.method public setPreviewLinstSize(I)V
    .registers 3
    .parameter "previewLineSize"

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v0, :cond_9

    .line 2556
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setPreviewLineSize(I)V

    .line 2557
    :cond_9
    return-void
.end method

.method public setSelectedMessage(JI)V
    .registers 6
    .parameter "messageId"
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 1672
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 1673
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_a

    .line 1674
    invoke-direct {p0, v1, p3, v1}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(ZIZ)V

    .line 1676
    :cond_a
    return-void
.end method

.method public setSendingProgressFlag(Z)V
    .registers 4
    .parameter "bool"

    .prologue
    .line 4782
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    .line 4783
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v1, :cond_35

    .line 4784
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessagesAdapter;->setCheckboxStatus(Z)V

    .line 4785
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4787
    :try_start_11
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4788
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4789
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 4790
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 4791
    const/4 v1, 0x0

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 4792
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_39

    .line 4798
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    .line 4799
    return-void

    .line 4793
    :catch_39
    move-exception v0

    .line 4794
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V
    .registers 4
    .parameter "bool"
    .parameter "item"

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/email/activity/MessageListFragment$Callback;->setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V

    .line 3418
    return-void
.end method

.method public setTotalCountFromMailbox(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 4833
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCountFromMailbox:I

    .line 4834
    return-void
.end method

.method public updateMessageCount()V
    .registers 6

    .prologue
    .line 4742
    const/4 v1, 0x0

    .line 4749
    .local v1, footerStr:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 4750
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-nez v2, :cond_a

    .line 4772
    :cond_9
    :goto_9
    return-void

    .line 4752
    :cond_a
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    if-nez v2, :cond_3c

    .line 4753
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    .line 4759
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_51

    .line 4765
    :goto_20
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterCountText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4766
    iget v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextId:I

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4767
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_9

    .line 4769
    :catch_37
    move-exception v0

    .line 4770
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 4755
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 4756
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 4762
    :cond_51
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mFooterTextBuf:Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mUnReadCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mTotalCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_64} :catch_37

    goto :goto_20
.end method

.method public updateSelectionMode()V
    .registers 5

    .prologue
    .line 4044
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v1

    .line 4046
    .local v1, numSelected:I
    if-eqz v1, :cond_e

    :try_start_6
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsVisible:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsSending:Z

    if-eqz v2, :cond_33

    .line 4047
    :cond_e
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 4048
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->getSelectedTitleSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 4049
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter;->unCheckAllSubTitleCheckBox()V

    .line 4050
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 4051
    const/4 v2, 0x0

    sput v2, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 4052
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 4065
    :goto_32
    return-void

    .line 4055
    :cond_33
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 4056
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 4057
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_43} :catch_44

    goto :goto_32

    .line 4062
    :catch_44
    move-exception v0

    .line 4063
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 4059
    .end local v0           #e:Ljava/lang/Exception;
    :cond_49
    :try_start_49
    new-instance v2, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 4060
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_44

    goto :goto_32
.end method

.method public useFlickUp(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 5287
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mUseFlickUp:Z

    .line 5288
    return-void
.end method
