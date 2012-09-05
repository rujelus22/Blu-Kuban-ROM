.class public Lcom/android/email/activity/MessageListXL;
.super Landroid/app/Activity;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/FragmentInstallable;
.implements Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;
.implements Lcom/android/email/combined/MessageFacade$MessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXL$ManagedDialog;,
        Lcom/android/email/activity/MessageListXL$MessageListDialog;,
        Lcom/android/email/activity/MessageListXL$ControllerResult;,
        Lcom/android/email/activity/MessageListXL$RefreshAllTask;,
        Lcom/android/email/activity/MessageListXL$RefreshTask;,
        Lcom/android/email/activity/MessageListXL$MessageCheckerTask;,
        Lcom/android/email/activity/MessageListXL$MailboxCheckTask;,
        Lcom/android/email/activity/MessageListXL$TextSizeItemView;,
        Lcom/android/email/activity/MessageListXL$TextSizeItem;,
        Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;,
        Lcom/android/email/activity/MessageListXL$RefreshListener;,
        Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;
    }
.end annotation


# static fields
.field private static INTENT_OPEN_FROM_MINI_APP2:Ljava/lang/String;

.field public static SELECT_MESSAGE_NEWER:I

.field public static SELECT_MESSAGE_NORMAL:I

.field public static SELECT_MESSAGE_OLDER:I

.field private static doesMadUsersRefresh:Z

.field public static isLeftSplitPressed:Z

.field public static isRightSplitPressed:Z

.field private static mComposeNewLayout:Landroid/widget/LinearLayout;

.field public static mContext:Landroid/content/Context;

.field private static mDefaultSelection:I

.field private static mIsActivityStarted:Z

.field public static mPreviousOrientation:I

.field private static mSharedPreference:Landroid/content/SharedPreferences;

.field private static mSplitMode:Z

.field private static mTopLineMode:I

.field private static sAccountId:J

.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sDayFormat:Ljava/text/DateFormat;

.field public static sDefaultLeftLandSplitPoint:I

.field public static sDefaultLeftPortSplitPoint:I

.field public static sDefaultRightSplitPoint:I

.field private static sEasSearchString:Ljava/lang/String;

.field private static sInit:Z

.field public static sLeftSplitType:I

.field public static sLeftSplitpoint:I

.field public static sLeftSplitpointLand:I

.field public static sLeftSplitpointPort:I

.field private static sPreviousSortType:I

.field public static sRightSplitType:I

.field public static sRightSplitpoint:I

.field private static sSearchBarLayout:Landroid/widget/LinearLayout;

.field private static sSearchEditFrame:Landroid/view/View;

.field private static sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

.field private static sSearchMarginListLand:I

.field private static sSearchMarginViewLand:I

.field private static sSearchMode:Z

.field private static sSearchStrWithEscape:Ljava/lang/String;

.field private static sSearchString:Ljava/lang/String;

.field private static sSearchString_datefrom:J

.field private static sSearchString_dateto:J

.field private static sSelectedSearchType:I

.field private static sSortType:I

.field private static sTimeFormat:Ljava/text/DateFormat;

.field public static sTypeface:Landroid/graphics/Typeface;

.field private static sViewMode:I

.field private static xlargeDisplayLandSize:I

.field private static xlargeDisplayPortSize:I


# instance fields
.field private final DPMReceiver:Landroid/content/BroadcastReceiver;

.field private final MessageOpenReceiver:Landroid/content/BroadcastReceiver;

.field private final SIZE_HUGE:I

.field private final SIZE_LARGE:I

.field private final SIZE_NORMAL:I

.field private final SIZE_SMALL:I

.field private final SIZE_TINY:I

.field private mAccountDummyAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarCustomView:Landroid/view/View;

.field private mAnimationStarted:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mDialog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/email/activity/MessageListXL$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessageView:Landroid/widget/TextView;

.field private mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/email/activity/setup/SpinnerOption;",
            ">;"
        }
    .end annotation
.end field

.field private mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

.field private mIsCreated:Z

.field private mIsMenuOpened:Z

.field private mItem:Lcom/android/email/activity/MessageListItemContainer;

.field private mItemCheckboxPressed:Z

.field private mLandSplitMaxSize:I

.field private mLandSplitMinSize:I

.field private mLastErrorAccountId:J

.field private mLastUpdatedTime:J

.field private mLeftSplitPrevX:I

.field private mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

.field private mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

.field private mMailboxCursor:Landroid/database/Cursor;

.field private mMailboxId:J

.field private mMenuOpenAgain:Z

.field private mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

.field private mMessageFacade:Lcom/android/email/combined/MessageFacade;

.field private mMessageId:J

.field private mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

.field private mMessageViewFragmentCallback:Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

.field private mMonth:I

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mOrientation:I

.field private mPartnerTooManyDialog:Landroid/app/AlertDialog;

.field private final mPortSplitMaxSize:I

.field private mPreviewLineSize:I

.field private mQueryDummyText:Landroid/widget/TextView;

.field private mQueryTextView:Landroid/widget/EditText;

.field private mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

.field private mRightSplitPrevX:I

.field private mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

.field private mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

.field private mSubItem:Lcom/android/email/activity/MessageListItemContainer;

.field private mSubItemCheckboxPressed:Z

.field private mThreePane:Lcom/android/email/activity/ThreePaneLayout;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mYear:I

.field private mfontSize:I

.field private waitExceptionHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 189
    sput v5, Lcom/android/email/activity/MessageListXL;->mDefaultSelection:I

    .line 191
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 199
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 338
    sput v2, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 340
    sput v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 372
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 400
    sput-object v4, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 427
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 446
    sput-object v4, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    .line 449
    sput v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 451
    sput v3, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 462
    const/16 v0, 0x500

    sput v0, Lcom/android/email/activity/MessageListXL;->xlargeDisplayLandSize:I

    .line 464
    const/16 v0, 0x320

    sput v0, Lcom/android/email/activity/MessageListXL;->xlargeDisplayPortSize:I

    .line 483
    sput v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    .line 485
    sput-object v4, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 487
    sput-object v4, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    .line 489
    sput v2, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 491
    sput-wide v6, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    .line 493
    sput-wide v6, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    .line 495
    sput v2, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    .line 497
    sput v2, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    .line 499
    sput v2, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    .line 501
    sput v5, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    .line 503
    const/4 v0, 0x2

    sput v0, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    .line 505
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sInit:Z

    .line 544
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->mIsActivityStarted:Z

    .line 546
    const-string v0, "com.android.email.intent.miniapp_open2"

    sput-object v0, Lcom/android/email/activity/MessageListXL;->INTENT_OPEN_FROM_MINI_APP2:Ljava/lang/String;

    .line 4680
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4682
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4688
    sput v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4690
    sput v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    .line 4692
    sput v3, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    .line 4694
    sput v3, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4697
    sput v3, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 4699
    sput v3, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 4701
    sput v3, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 251
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$RefreshListener;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    .line 276
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXLFragmentManager;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    .line 278
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    .line 280
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageViewFragmentCallback:Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    .line 361
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->SIZE_TINY:I

    .line 363
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_SMALL:I

    .line 365
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_NORMAL:I

    .line 367
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_LARGE:I

    .line 369
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->SIZE_HUGE:I

    .line 374
    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 376
    iput-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    .line 453
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    .line 457
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    .line 460
    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPortSplitMaxSize:I

    .line 518
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 520
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 522
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 526
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 528
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    .line 530
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 532
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    .line 534
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    .line 538
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    .line 542
    iput-object v3, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 548
    new-instance v0, Lcom/android/email/activity/MessageListXL$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$1;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->MessageOpenReceiver:Landroid/content/BroadcastReceiver;

    .line 1924
    new-instance v0, Lcom/android/email/activity/MessageListXL$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$3;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->waitExceptionHandler:Landroid/os/Handler;

    .line 3018
    new-instance v0, Lcom/android/email/activity/MessageListXL$13;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$13;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 3945
    new-instance v0, Lcom/android/email/activity/MessageListXL$19;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$19;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 4684
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4686
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 5377
    return-void
.end method

.method private ConversationMoveAlways(Ljava/util/Set;JJJ)V
    .registers 19
    .parameter
    .parameter "toMailboxId"
    .parameter "targetAccountId"
    .parameter "fromMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 1590
    .local p1, selectedTitleSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1591
    .local v9, cloneSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1592
    .local v3, convId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    const/4 v8, 0x1

    move-wide/from16 v1, p6

    move-wide v4, p4

    move-wide v6, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller;->moveConversationAlways(JLjava/lang/String;JJI)V

    goto :goto_9

    .line 1595
    .end local v3           #convId:Ljava/lang/String;
    :cond_20
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1598
    return-void
.end method

.method private IsEAS()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 3043
    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 3059
    :cond_9
    :goto_9
    return v0

    .line 3046
    :cond_a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 3047
    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 3049
    if-eqz v2, :cond_9

    .line 3052
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 3055
    if-eqz v1, :cond_9

    .line 3058
    iget-object v0, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 3059
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListXL;)Landroid/app/ActionBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListXL;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListXL;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1700()I
    .registers 1

    .prologue
    .line 139
    sget v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput p0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCompose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900()I
    .registers 1

    .prologue
    .line 139
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput p0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListXL;[J)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onMoveMessages([J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListXL;[J[Ljava/lang/String;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->onConversationMoveAlways([J[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/email/activity/MessageListXL;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItemContainer;)Lcom/android/email/activity/MessageListItemContainer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageListXL;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListItemContainer;)Lcom/android/email/activity/MessageListItemContainer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListXL;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->waitExceptionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()J
    .registers 2

    .prologue
    .line 139
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    return-void
.end method

.method static synthetic access$302(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide p0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageOrderManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListXL;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageListXL;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListXL;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageListXL;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$4100()I
    .registers 1

    .prologue
    .line 139
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method static synthetic access$4102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput p0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return p0
.end method

.method static synthetic access$4200()I
    .registers 1

    .prologue
    .line 139
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method static synthetic access$4202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return p0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageListXL;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/email/activity/MessageListXL;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$4600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageListXL;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/email/activity/MessageListXL;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListXL;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageListXL;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageListXL;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageListXL;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageListXL;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageListXL;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageListXL;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageListXL;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    return p1
.end method

.method static synthetic access$5502(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    return-wide p0
.end method

.method static synthetic access$5602(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    sput-wide p0, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    return-wide p0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageListXL;JZ)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/ThreePaneLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageListXL;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageListXL;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/email/activity/MessageListXL;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL;->mPartnerTooManyDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageListXL;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method public static actionOpenAccount(Landroid/app/Activity;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 605
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 606
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_11

    .line 607
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 609
    :cond_11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method

.method public static actionOpenMailbox(Landroid/app/Activity;JJ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 621
    cmp-long v0, p1, v1

    if-eqz v0, :cond_a

    cmp-long v0, p3, v1

    if-nez v0, :cond_10

    .line 622
    :cond_a
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 639
    :cond_10
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 640
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 641
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 644
    return-void
.end method

.method public static actionOpenMessage(Landroid/app/Activity;JJJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 656
    cmp-long v0, p1, v1

    if-eqz v0, :cond_e

    cmp-long v0, p3, v1

    if-eqz v0, :cond_e

    cmp-long v0, p5, v1

    if-nez v0, :cond_14

    .line 657
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 675
    :cond_14
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 676
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 677
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 678
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 681
    return-void
.end method

.method public static applyEasSearchString()V
    .registers 1

    .prologue
    .line 5405
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sEasSearchString:Ljava/lang/String;

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 5406
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 5407
    return-void
.end method

.method private changeFontSize_preference()V
    .registers 5

    .prologue
    .line 2526
    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 2527
    .local v2, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    .line 2528
    .local v0, fontSize:I
    const/4 v1, 0x0

    .line 2531
    .local v1, realFontSize:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 2532
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/email/activity/MessageViewFragment;->setViewFontSize(I)V

    .line 2535
    :cond_20
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/email/activity/MessageListFragment;->setMessageListFontSize(I)V

    .line 2536
    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    .line 2538
    return-void
.end method

.method private changePreviewLineSize_preference()V
    .registers 4

    .prologue
    .line 2541
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 2542
    .local v1, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v0

    .line 2543
    .local v0, previewLineSize:I
    iget v2, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    if-eq v2, v0, :cond_19

    .line 2544
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageListFragment;->setPreviewLinstSize(I)V

    .line 2545
    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    .line 2547
    :cond_19
    return-void
.end method

.method private changeSplitMode_preference()V
    .registers 4

    .prologue
    .line 2560
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2562
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2563
    const/4 v1, 0x1

    .line 2568
    .local v1, splitMode:Z
    :goto_d
    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-eq v2, v1, :cond_13

    .line 2569
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 2571
    :cond_13
    return-void

    .line 2565
    .end local v1           #splitMode:Z
    :cond_14
    const/4 v1, 0x0

    .restart local v1       #splitMode:Z
    goto :goto_d
.end method

.method private changeTopLineMode_preference()V
    .registers 4

    .prologue
    .line 2551
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2552
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    .line 2553
    .local v1, topLineMode:I
    sget v2, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    if-eq v2, v1, :cond_10

    .line 2554
    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    .line 2556
    :cond_10
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .registers 2

    .prologue
    .line 3030
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3034
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3035
    const/4 v0, 0x0

    .line 3038
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private clearErrorMessage(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_9

    .line 2231
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    .line 2233
    :cond_9
    return-void
.end method

.method private dismissErrorMessage()V
    .registers 1

    .prologue
    .line 2240
    return-void
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .registers 6
    .parameter "millis"
    .parameter "withYear"

    .prologue
    .line 3937
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    if-nez v1, :cond_a

    .line 3938
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    .line 3940
    :cond_a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3942
    .local v0, date:Ljava/util/Date;
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentAccountId()J
    .registers 2

    .prologue
    .line 2438
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    return-wide v0
.end method

.method public static getDateFormat()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 2450
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getEasSearchString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 5393
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sEasSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSearchMarginListLand()I
    .registers 1

    .prologue
    .line 2462
    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    return v0
.end method

.method public static getSearchMarginViewLand()I
    .registers 1

    .prologue
    .line 2466
    sget v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    return v0
.end method

.method public static getSearchSelectionString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3397
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    .line 3398
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    packed-switch v0, :pswitch_data_106

    .line 3416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _id IN (SELECT messageKey FROM BodyDatabase.Body WHERE textContent like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'\\\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3431
    :goto_64
    return-object v0

    .line 3400
    :pswitch_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 3404
    :pswitch_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( displayName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 3408
    :pswitch_b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( timeStamp between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_datefrom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sSearchString_dateto:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 3412
    :pswitch_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND ( subject like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchStrWithEscape:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' ESCAPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_64

    .line 3398
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_65
        :pswitch_8d
        :pswitch_b5
        :pswitch_dd
    .end packed-switch
.end method

.method public static getSearchString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2446
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSelectedSearchType()I
    .registers 1

    .prologue
    .line 2442
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    return v0
.end method

.method public static getSortType()I
    .registers 1

    .prologue
    .line 2421
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    return v0
.end method

.method private getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 3583
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 3585
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_82

    .line 3586
    long-to-int v0, v0

    .line 3591
    :goto_12
    if-eq v0, v9, :cond_27

    if-eq v0, v5, :cond_27

    const/4 v1, 0x5

    if-eq v0, v1, :cond_27

    int-to-long v1, v0

    const-wide/16 v3, -0x5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    int-to-long v0, v0

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_8f

    .line 3594
    :cond_27
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 3608
    :goto_81
    return-object v0

    .line 3588
    :cond_82
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    goto :goto_12

    .line 3602
    :cond_8f
    new-array v0, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0801d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    goto :goto_81
.end method

.method public static getSplitMode()Z
    .registers 1

    .prologue
    .line 2478
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    return v0
.end method

.method public static getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 3382
    .line 3383
    if-eqz p0, :cond_23

    .line 3384
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3385
    const-string v1, "\\%"

    const-string v2, "\\\\%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3386
    const-string v1, "\\_"

    const-string v2, "\\\\_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3387
    const-string v1, "\\\'"

    const-string v2, "\\\\\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3391
    :goto_22
    return-object v0

    .line 3389
    :cond_23
    const-string v0, ""

    goto :goto_22
.end method

.method public static getTimeFormat()Ljava/text/DateFormat;
    .registers 1

    .prologue
    .line 2458
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getTopLineMode()I
    .registers 1

    .prologue
    .line 2474
    sget v0, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    return v0
.end method

.method public static getTypeface()Landroid/graphics/Typeface;
    .registers 1

    .prologue
    .line 2434
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getViewMode()I
    .registers 1

    .prologue
    .line 2430
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    return v0
.end method

.method private handleLeftSplit(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v3, v6

    .line 4857
    .local v3, pointX:I
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v6

    if-nez v6, :cond_1e

    move v0, v4

    .line 4859
    .local v0, canMoveLeftSeparator:Z
    :goto_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_230

    .line 5011
    :cond_19
    :goto_19
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_22d

    .line 5014
    :goto_1d
    return v4

    .end local v0           #canMoveLeftSeparator:Z
    :cond_1e
    move v0, v5

    .line 4857
    goto :goto_12

    .line 4861
    .restart local v0       #canMoveLeftSeparator:Z
    :pswitch_20
    if-eqz v0, :cond_19

    .line 4862
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4863
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_32

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gez v6, :cond_40

    :cond_32
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    if-gtz v6, :cond_19

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v6, v3, v6

    const/16 v7, -0x1e

    if-le v6, v7, :cond_19

    .line 4865
    :cond_40
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4866
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4867
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4868
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto :goto_19

    .line 4873
    :pswitch_5b
    if-eqz v0, :cond_19

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_19

    .line 4874
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v6, v9, :cond_d6

    .line 4875
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-lt v3, v6, :cond_6d

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-le v3, v6, :cond_98

    .line 4876
    :cond_6d
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-ge v3, v6, :cond_19

    .line 4877
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4878
    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4879
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4881
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 4882
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4883
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4885
    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto :goto_19

    .line 4889
    :cond_98
    const/4 v1, 0x0

    .line 4890
    .local v1, needUpdateSplitImage:Z
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_a1

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_a2

    .line 4892
    :cond_a1
    const/4 v1, 0x1

    .line 4894
    :cond_a2
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4895
    if-eqz v1, :cond_b6

    .line 4896
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4899
    :cond_b6
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-le v6, v7, :cond_c9

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v6, v7, :cond_c9

    .line 4901
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4903
    :cond_c9
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4904
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_19

    .line 4906
    .end local v1           #needUpdateSplitImage:Z
    :cond_d6
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-lt v3, v6, :cond_dc

    if-le v3, v10, :cond_11a

    .line 4913
    :cond_dc
    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-ge v3, v6, :cond_19

    .line 4914
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6, v8}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4915
    sput v8, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4916
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    .line 4917
    .local v2, newWidth:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v6, :cond_106

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    if-eqz v6, :cond_106

    .line 4919
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4922
    :cond_106
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 4923
    sput v4, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4924
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4926
    iput v5, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    goto/16 :goto_19

    .line 4930
    .end local v2           #newWidth:I
    :cond_11a
    const/4 v1, 0x0

    .line 4931
    .restart local v1       #needUpdateSplitImage:Z
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-eq v6, v8, :cond_123

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    if-eq v6, v4, :cond_124

    .line 4933
    :cond_123
    const/4 v1, 0x1

    .line 4935
    :cond_124
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    sub-int/2addr v7, v3

    neg-int v7, v7

    add-int/2addr v6, v7

    sput v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 4936
    if-eqz v1, :cond_138

    .line 4937
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4940
    :cond_138
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_149

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ge v6, v10, :cond_149

    .line 4947
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-virtual {v6, v7}, Lcom/android/email/activity/ThreePaneLayout;->controlLeftSplitBar(I)V

    .line 4949
    :cond_149
    iput v3, p0, Lcom/android/email/activity/MessageListXL;->mLeftSplitPrevX:I

    .line 4950
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_19

    .line 4955
    .end local v1           #needUpdateSplitImage:Z
    :pswitch_156
    if-eqz v0, :cond_1b2

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_1b2

    .line 4961
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-le v6, v7, :cond_185

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ge v6, v10, :cond_185

    .line 4962
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v6}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    sub-int v2, v6, v7

    .line 4963
    .restart local v2       #newWidth:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v6, :cond_185

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    if-eqz v6, :cond_185

    .line 4965
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4968
    .end local v2           #newWidth:I
    :cond_185
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4969
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4970
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_1a5

    .line 4971
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4972
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4974
    :cond_1a5
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4975
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4977
    :cond_1b2
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_19

    .line 4978
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4979
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_1c9

    .line 4980
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4981
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4983
    :cond_1c9
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4984
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4989
    :pswitch_1d6
    if-eqz v0, :cond_209

    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_209

    .line 4990
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 4991
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 4992
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_1fc

    .line 4993
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4994
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4996
    :cond_1fc
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4997
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 4999
    :cond_209
    sget-boolean v6, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    if-eqz v6, :cond_19

    .line 5000
    sput-boolean v5, Lcom/android/email/activity/MessageListXL;->isLeftSplitPressed:Z

    .line 5001
    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    if-ne v6, v8, :cond_220

    .line 5002
    sput v9, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 5003
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    .line 5005
    :cond_220
    sput v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 5006
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    goto/16 :goto_19

    :cond_22d
    move v4, v5

    .line 5014
    goto/16 :goto_1d

    .line 4859
    :pswitch_data_230
    .packed-switch 0x0
        :pswitch_20
        :pswitch_156
        :pswitch_5b
        :pswitch_1d6
    .end packed-switch
.end method

.method private handleRightSplit(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 4706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    .line 4707
    .local v2, pointX:I
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_2d

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v5

    if-ne v5, v3, :cond_2d

    move v0, v3

    .line 4709
    .local v0, canMoveRightSeparator:Z
    :goto_15
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-gez v5, :cond_21

    sget-boolean v5, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v5, :cond_21

    .line 4710
    sget v5, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4712
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_246

    .line 4848
    :cond_28
    :goto_28
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_242

    .line 4851
    :goto_2c
    return v3

    .end local v0           #canMoveRightSeparator:Z
    :cond_2d
    move v0, v4

    .line 4707
    goto :goto_15

    .line 4714
    .restart local v0       #canMoveRightSeparator:Z
    :pswitch_2f
    if-eqz v0, :cond_28

    .line 4715
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 4716
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_41

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gez v5, :cond_4f

    :cond_41
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    if-gtz v5, :cond_28

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v5, v2, v5

    const/16 v6, -0xf

    if-le v5, v6, :cond_28

    .line 4718
    :cond_4f
    sput-boolean v3, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4719
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4720
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_6e

    .line 4721
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4722
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_28

    .line 4724
    :cond_6e
    sput v3, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4725
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_28

    .line 4732
    :pswitch_7a
    if-eqz v0, :cond_28

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_28

    .line 4733
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-lt v2, v5, :cond_28

    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-gt v2, v5, :cond_28

    .line 4759
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    if-eq v5, v3, :cond_95

    .line 4760
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4762
    :cond_95
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    sub-int/2addr v6, v2

    neg-int v6, v6

    add-int/2addr v5, v6

    sput v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 4764
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    if-le v5, v6, :cond_b1

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_b1

    .line 4766
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/ThreePaneLayout;->controlRightSplitBar(I)V

    .line 4768
    :cond_b1
    iput v2, p0, Lcom/android/email/activity/MessageListXL;->mRightSplitPrevX:I

    .line 4769
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->updateMessageCount()V

    goto/16 :goto_28

    .line 4773
    :pswitch_be
    if-eqz v0, :cond_17d

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_17d

    .line 4774
    iget v5, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v5, v8, :cond_124

    .line 4775
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0xa0

    if-le v5, v6, :cond_f3

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    iget v6, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    if-ge v5, v6, :cond_f3

    .line 4776
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    .line 4777
    .local v1, newWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v5, :cond_f3

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    if-eqz v5, :cond_f3

    .line 4779
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4782
    .end local v1           #newWidth:I
    :cond_f3
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4783
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4784
    sget-object v5, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4799
    :goto_113
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_170

    .line 4800
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4801
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_28

    .line 4787
    :cond_124
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x64

    if-le v5, v6, :cond_14f

    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    const/16 v6, 0x212

    if-ge v5, v6, :cond_14f

    .line 4788
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v5

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    sub-int v1, v5, v6

    .line 4789
    .restart local v1       #newWidth:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v5, :cond_14f

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    if-eqz v5, :cond_14f

    .line 4791
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/email/activity/MessageViewFragment;->setBubbleLayout(I)V

    .line 4794
    .end local v1           #newWidth:I
    :cond_14f
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4795
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4796
    sget-object v5, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_113

    .line 4803
    :cond_170
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4804
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto/16 :goto_28

    .line 4806
    :cond_17d
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_28

    .line 4807
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4808
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4809
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_1b2

    .line 4810
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4811
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4816
    :goto_19f
    sget-object v5, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_28

    .line 4813
    :cond_1b2
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4814
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_19f

    .line 4821
    :pswitch_1be
    if-eqz v0, :cond_201

    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_201

    .line 4822
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4823
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4824
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_1f5

    .line 4825
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4826
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4831
    :goto_1e2
    sget-object v5, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_28

    .line 4828
    :cond_1f5
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4829
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_1e2

    .line 4833
    :cond_201
    sget-boolean v5, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v5, :cond_28

    .line 4834
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    .line 4835
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    .line 4836
    sget v5, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    if-ne v5, v9, :cond_236

    .line 4837
    sput v8, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4838
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4843
    :goto_223
    sget-object v5, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "prefer_split_point"

    sget v7, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_28

    .line 4840
    :cond_236
    sput v4, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4841
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    goto :goto_223

    :cond_242
    move v3, v4

    .line 4851
    goto/16 :goto_2c

    .line 4712
    nop

    :pswitch_data_246
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_be
        :pswitch_7a
        :pswitch_1be
    .end packed-switch
.end method

.method private initFromIntent()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 968
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 969
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 970
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 971
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    .line 976
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 977
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 978
    const v0, 0x7f080287

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 984
    :cond_3e
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5e

    .line 985
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAccountId()J

    move-result-wide v1

    .line 987
    cmp-long v3, v1, v4

    if-nez v3, :cond_71

    .line 988
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 992
    :goto_58
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 994
    :cond_5e
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_70

    .line 995
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 997
    :cond_70
    return-void

    .line 990
    :cond_71
    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto :goto_58
.end method

.method public static isEmailListActive(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 579
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 580
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 581
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 582
    const-class v1, Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInSearchMode()Z
    .registers 1

    .prologue
    .line 2470
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    return v0
.end method

.method public static isNetworkConnected()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3068
    :try_start_1
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lcom/android/email/Email;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3070
    if-nez v0, :cond_1c

    .line 3071
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3086
    :goto_1b
    return v0

    .line 3074
    :cond_1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3075
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 3076
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_3b

    .line 3077
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_33

    .line 3078
    const/4 v0, 0x1

    goto :goto_1b

    .line 3081
    :catch_33
    move-exception v0

    .line 3082
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): exception..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :cond_3b
    const-string v0, "Email"

    const-string v2, "isNetworkConnected(): network is disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3086
    goto :goto_1b
.end method

.method public static isQ1Model()Z
    .registers 1

    .prologue
    .line 2677
    invoke-static {}, Lcom/android/email/util/EmailFeature;->isQ1BasedModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2678
    const/4 v0, 0x1

    .line 2680
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadAccounts()V
    .registers 5

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListXL$6;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$6;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2275
    return-void
.end method

.method private moveToNewer()Z
    .registers 5

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1683
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 1685
    const/4 v0, 0x1

    .line 1687
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private moveToOlder()Z
    .registers 5

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1673
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(JI)V

    .line 1675
    const/4 v0, 0x1

    .line 1677
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onAccountSettings()Z
    .registers 3

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 3192
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSerachWithoutAnimation()V

    .line 3193
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    .line 3194
    const/4 v0, 0x1

    return v0
.end method

.method private onBackPressed(Z)Z
    .registers 6
    .parameter "isSystemBackKey"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1438
    sget-boolean v2, Lcom/android/email/activity/Welcome;->needFull:Z

    if-eqz v2, :cond_c

    .line 1439
    sput-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    .line 1440
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1472
    :cond_b
    :goto_b
    return v0

    .line 1444
    :cond_c
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-ne v2, v1, :cond_12

    move v0, v1

    .line 1445
    goto :goto_b

    .line 1451
    :cond_12
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    if-ne v2, v1, :cond_34

    .line 1454
    :cond_1f
    if-eqz p1, :cond_b

    .line 1456
    sget-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v2, :cond_30

    .line 1457
    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 1459
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_2e

    .line 1460
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    :cond_2e
    move v0, v1

    .line 1463
    goto :goto_b

    .line 1465
    :cond_30
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_b

    .line 1469
    :cond_34
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v1

    .line 1470
    goto :goto_b
.end method

.method private onCompose()Z
    .registers 9

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x0

    .line 3158
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3159
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 3187
    :goto_12
    const/4 v2, 0x1

    :cond_13
    return v2

    .line 3162
    :cond_14
    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4c

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4c

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_4c

    .line 3163
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 3164
    .local v0, accountId:J
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-wide v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_48

    .line 3165
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3168
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_12

    .line 3170
    :cond_48
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_12

    .line 3174
    .end local v0           #accountId:J
    :cond_4c
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v4, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 3175
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3178
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    goto :goto_12

    .line 3180
    :cond_6a
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_12
.end method

.method private onConversationMoveAlways([J[Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1540
    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1541
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 1543
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1546
    :cond_1a
    return-void
.end method

.method private onMoveMessages([J)V
    .registers 5
    .parameter

    .prologue
    .line 1528
    invoke-static {}, Lcom/android/email/activity/MoveMessageToDialog;->hasShowingDialog()Z

    move-result v0

    if-nez v0, :cond_1c

    array-length v0, p1

    if-eqz v0, :cond_1c

    .line 1529
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 1530
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    .line 1531
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1533
    :cond_1c
    return-void
.end method

.method private onResultSearchClose()V
    .registers 3

    .prologue
    .line 3734
    const-string v0, "Email"

    const-string v1, "onClose "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3736
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3739
    return-void
.end method

.method private refreshActionBarLayout()V
    .registers 15

    .prologue
    const v13, 0x7f0c0107

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 3198
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    if-nez v0, :cond_14

    .line 3314
    :cond_13
    :goto_13
    return-void

    .line 3206
    :cond_14
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1000c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3208
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f1000ca

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 3211
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v2}, Lcom/android/email/activity/CustomSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 3213
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3215
    sget-object v4, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 3218
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 3220
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 3223
    iget v7, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_169

    .line 3224
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_ef

    .line 3225
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3227
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3229
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3231
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0115

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3233
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0112

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3235
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0110

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3237
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_ad

    .line 3238
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3257
    :cond_ad
    :goto_ad
    if-eqz v2, :cond_d8

    .line 3258
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3261
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v7, v10, :cond_14b

    .line 3262
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0101

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3264
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v12, :cond_d8

    .line 3265
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 3309
    :cond_d8
    :goto_d8
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v7, v2}, Lcom/android/email/activity/CustomSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3310
    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3311
    sget-object v2, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3312
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3313
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    .line 3240
    :cond_ef
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3242
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3244
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3246
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0114

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3248
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0112

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3250
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3252
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_ad

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_ad

    .line 3254
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_ad

    .line 3267
    :cond_14b
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0100

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3269
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_d8

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_d8

    .line 3271
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_d8

    .line 3282
    :cond_169
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0108

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3284
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3286
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0106

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3288
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3290
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0111

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3292
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3295
    if-eqz v2, :cond_1d3

    .line 3296
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3298
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3302
    :cond_1d3
    const-string v7, "MessageListXL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sSearchMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fromWidget : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/email/activity/Welcome;->fromWidget:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3303
    sget-boolean v7, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-nez v7, :cond_d8

    sget-boolean v7, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v7, :cond_d8

    sget-boolean v7, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-nez v7, :cond_d8

    .line 3304
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v7

    if-eq v7, v11, :cond_d8

    .line 3305
    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_d8
.end method

.method public static releaseEasSearchString()V
    .registers 1

    .prologue
    .line 5397
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sEasSearchString:Ljava/lang/String;

    .line 5398
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getViewMode()I

    move-result v0

    if-nez v0, :cond_e

    .line 5399
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 5402
    :goto_d
    return-void

    .line 5401
    :cond_e
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    goto :goto_d
.end method

.method private restartAcconts()V
    .registers 5

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2279
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    .line 2304
    :goto_9
    return-void

    .line 2281
    :cond_a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListXL$7;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$7;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_9
.end method

.method public static setEasSearchString()V
    .registers 2

    .prologue
    .line 5389
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sEasSearchString:Ljava/lang/String;

    .line 5390
    return-void
.end method

.method public static setEasSearchString(Ljava/lang/String;)V
    .registers 1
    .parameter "str"

    .prologue
    .line 5385
    sput-object p0, Lcom/android/email/activity/MessageListXL;->sEasSearchString:Ljava/lang/String;

    .line 5386
    return-void
.end method

.method public static setSearchFrameLayout(I)V
    .registers 2
    .parameter "leftMargin"

    .prologue
    .line 2415
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 2416
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2418
    :cond_8
    return-void
.end method

.method public static setSearchString(Ljava/lang/String;)V
    .registers 1
    .parameter "searchStr"

    .prologue
    .line 2404
    sput-object p0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 2405
    return-void
.end method

.method public static setSortType(I)V
    .registers 3
    .parameter "sortType"

    .prologue
    .line 2397
    sput p0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 2398
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_15

    .line 2399
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2401
    :cond_15
    return-void
.end method

.method private setupAccountView()V
    .registers 3

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3506
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3507
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$15;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$15;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3550
    return-void
.end method

.method private setupFollowUpFlagView()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2140
    const v0, 0x7f1001cd

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/CustomSpinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 2141
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2142
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/email/activity/setup/SpinnerOption;

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080334

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080333

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080332

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 2148
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0400be

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    .line 2150
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2152
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 2153
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v1, Lcom/android/email/activity/MessageListXL$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$4;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2161
    return-void
.end method

.method private setupSearchIndexView()V
    .registers 4

    .prologue
    .line 3613
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f0400bd

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 3614
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3615
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 3616
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/CustomSpinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3617
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    new-instance v2, Lcom/android/email/activity/MessageListXL$16;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$16;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3699
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3700
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mYear:I

    .line 3701
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mMonth:I

    .line 3702
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mDay:I

    .line 3703
    return-void
.end method

.method private setupSearchView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3438
    new-instance v0, Lcom/android/email/activity/MessageListXL$14;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXL$14;-><init>(Lcom/android/email/activity/MessageListXL;)V

    .line 3453
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3454
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3455
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    .line 3456
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3487
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_2a

    .line 3488
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    .line 3502
    :goto_29
    return-void

    .line 3490
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3492
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3493
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3494
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3495
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    .line 3496
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3497
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3498
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    .line 3500
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    goto :goto_29
.end method

.method private showErrorMessage(Ljava/lang/String;J)V
    .registers 6
    .parameter "rawMessage"
    .parameter "accountId"

    .prologue
    .line 2195
    new-instance v0, Lcom/android/email/activity/MessageListXL$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/activity/MessageListXL$5;-><init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2224
    return-void
.end method

.method private showFollowUpView()V
    .registers 2

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_9

    .line 2166
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 2168
    :cond_9
    return-void
.end method

.method private stopLoaders()V
    .registers 3

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 2244
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2245
    return-void
.end method

.method private stopMessageOrderManager()V
    .registers 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_c

    .line 1640
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 1641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1643
    :cond_c
    return-void
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .registers 11
    .parameter "accountsCursor"

    .prologue
    .line 2307
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2308
    .local v2, count:I
    if-nez v2, :cond_9

    .line 2346
    :goto_8
    return-void

    .line 2318
    :cond_9
    const/4 v3, 0x0

    .line 2319
    .local v3, defaultSelection:I
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2320
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2321
    const/4 v4, 0x0

    .line 2322
    .local v4, i:I
    :goto_17
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2323
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v0

    .line 2324
    .local v0, accountId:J
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_4e

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v5

    sget-object v7, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4e

    .line 2327
    move v3, v4

    .line 2341
    .end local v0           #accountId:J
    .end local v4           #i:I
    :cond_38
    :goto_38
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-eqz v5, :cond_41

    .line 2342
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2344
    :cond_41
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2345
    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v5, v3}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    goto :goto_8

    .line 2329
    .restart local v0       #accountId:J
    .restart local v4       #i:I
    :cond_4e
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v5, v5, v7

    if-nez v5, :cond_60

    const-wide/high16 v5, 0x1000

    cmp-long v5, v0, v5

    if-nez v5, :cond_60

    .line 2331
    move v3, v4

    .line 2332
    goto :goto_38

    .line 2333
    :cond_60
    const-wide v5, 0x100000000000002L

    cmp-long v5, v0, v5

    if-nez v5, :cond_6b

    .line 2334
    move v3, v4

    .line 2335
    goto :goto_38

    .line 2337
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    .line 2338
    goto :goto_17
.end method

.method private updateMessageOrderManager()V
    .registers 6

    .prologue
    .line 1605
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMailboxSelected()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1616
    :cond_8
    :goto_8
    return-void

    .line 1608
    :cond_9
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 1609
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->getMailboxId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_29

    .line 1610
    :cond_1d
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1611
    new-instance v2, Lcom/android/email/activity/MessageOrderManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1613
    :cond_29
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1614
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    goto :goto_8
.end method

.method private updateNavigationArrows()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1660
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-nez v0, :cond_b

    .line 1662
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    .line 1668
    :goto_a
    return-void

    .line 1664
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    goto :goto_a
.end method

.method private updateOrderManager()V
    .registers 2

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_a

    .line 2128
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 2132
    :goto_9
    return-void

    .line 2130
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    goto :goto_9
.end method

.method private updateViewsVisibility()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 3745
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3746
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_28

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3748
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_1e

    .line 3749
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget-boolean v3, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v3, :cond_2a

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3751
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_27

    .line 3752
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3754
    :cond_27
    return-void

    :cond_28
    move v0, v2

    .line 3746
    goto :goto_e

    :cond_2a
    move v1, v2

    .line 3749
    goto :goto_1b
.end method

.method private updatedMailbox_toast(Ljava/lang/Long;)V
    .registers 15
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/16 v12, 0x20

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5179
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    .line 5181
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    .line 5185
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "syncTime"

    aput-object v0, v2, v10

    .line 5188
    const-string v0, "_id=?"

    .line 5189
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5194
    :try_start_35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 5195
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5196
    if-eqz v0, :cond_61

    .line 5197
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5198
    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    sub-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_5c

    move-result-wide v3

    const-wide/16 v8, 0x9c4

    cmp-long v3, v3, v8

    if-gez v3, :cond_62

    .line 5204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5216
    :cond_5b
    :goto_5b
    return-void

    .line 5204
    :catchall_5c
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_61
    move-wide v0, v6

    :cond_62
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5206
    cmp-long v2, v0, v6

    if-eqz v2, :cond_5b

    .line 5208
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mTimeFormat:Ljava/text/DateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5211
    sget-object v3, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v4, 0x7f080324

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5214
    const-string v2, "Email"

    const-string v3, "updatedMailbox_toast "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastUpdatedTime:J

    goto :goto_5b
.end method


# virtual methods
.method public changeFontSize()Landroid/app/Dialog;
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2596
    .line 2599
    invoke-static {}, Lcom/android/email/util/EmailFeature;->is5FontModel()Z

    move-result v0

    if-nez v0, :cond_46

    .line 2600
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2602
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2611
    :goto_23
    array-length v2, v0

    new-array v6, v2, [F

    .line 2612
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 2613
    :goto_2c
    array-length v8, v0

    if-ge v2, v8, :cond_61

    .line 2614
    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v2

    .line 2616
    new-instance v8, Lcom/android/email/activity/MessageListXL$TextSizeItem;

    aget-object v9, v1, v2

    aget v10, v6, v2

    invoke-direct {v8, p0, v9, v10}, Lcom/android/email/activity/MessageListXL$TextSizeItem;-><init>(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;F)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2605
    :cond_46
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2607
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 2622
    :cond_61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2623
    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2627
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isQ1Model()Z

    move-result v1

    if-nez v1, :cond_78

    invoke-static {}, Lcom/android/email/util/EmailFeature;->is5FontModel()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2628
    :cond_78
    iget v3, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    .line 2639
    :cond_7a
    :goto_7a
    new-instance v1, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;

    const v2, 0x7f0400c1

    invoke-direct {v1, p0, p0, v2, v7}, Lcom/android/email/activity/MessageListXL$MessageListTextSizeAdapter;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/content/Context;ILjava/util/ArrayList;)V

    new-instance v2, Lcom/android/email/activity/MessageListXL$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$10;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2671
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2630
    :cond_9a
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-eq v1, v4, :cond_7a

    .line 2632
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    if-ne v1, v5, :cond_a4

    move v3, v4

    .line 2633
    goto :goto_7a

    .line 2634
    :cond_a4
    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ab

    move v3, v5

    .line 2635
    goto :goto_7a

    :cond_ab
    move v3, v4

    goto :goto_7a
.end method

.method public checkAvailableMailboxToMove()V
    .registers 3

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1693
    new-instance v0, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1694
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MailboxCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1695
    return-void
.end method

.method public controlAccountSpinnerVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_9

    .line 720
    :cond_8
    :goto_8
    return-void

    .line 714
    :cond_9
    if-eqz p1, :cond_12

    .line 715
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_8

    .line 717
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 718
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_8
.end method

.method public controlSearchVisible(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 684
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_b

    .line 708
    :cond_a
    :goto_a
    return-void

    .line 687
    :cond_b
    if-eqz p1, :cond_33

    .line 688
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 690
    sget v0, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 691
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    goto :goto_a

    .line 695
    :cond_20
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 696
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 697
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_a

    .line 701
    :cond_33
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 703
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    if-ne v0, v3, :cond_4c

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 704
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_a

    .line 706
    :cond_4c
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_a
.end method

.method public createListByDialog()Landroid/app/Dialog;
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 2784
    .line 2786
    sget-wide v3, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v5, 0x1000

    cmp-long v0, v3, v5

    if-nez v0, :cond_75

    .line 2787
    new-array v0, v2, [Ljava/lang/String;

    const v3, 0x7f0801d3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d6

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2815
    :goto_47
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2816
    const v3, 0x7f0801e5

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2817
    sget v3, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 2818
    sget-boolean v5, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v5, :cond_137

    .line 2819
    sget v5, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_11b

    .line 2842
    :cond_5e
    :goto_5e
    new-instance v2, Lcom/android/email/activity/MessageListXL$11;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$11;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2878
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MessageListXL$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$12;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2885
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2793
    :cond_75
    sget-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_d5

    .line 2794
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d6

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080337

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080335

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x7

    const v4, 0x7f08033b

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    goto/16 :goto_47

    .line 2804
    :cond_d5
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801d3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801d4

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801d5

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const/4 v3, 0x3

    const v4, 0x7f0801d6

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_47

    .line 2821
    :cond_11b
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0x9

    if-ne v1, v5, :cond_124

    move v1, v2

    .line 2822
    goto/16 :goto_5e

    .line 2823
    :cond_124
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_12d

    .line 2824
    const/4 v1, 0x7

    goto/16 :goto_5e

    .line 2825
    :cond_12d
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_145

    .line 2826
    const/16 v1, 0x8

    goto/16 :goto_5e

    .line 2827
    :cond_137
    sget-wide v5, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v7, 0x1000

    cmp-long v5, v5, v7

    if-nez v5, :cond_148

    .line 2828
    sget v2, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-eq v2, v5, :cond_5e

    :cond_145
    move v1, v3

    goto/16 :goto_5e

    .line 2831
    :cond_148
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/16 v5, 0xb

    if-ne v1, v5, :cond_145

    move v1, v2

    .line 2832
    goto/16 :goto_5e
.end method

.method public createViewModeDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 2483
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0801ef

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0801f0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2488
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2489
    const v2, 0x7f080233

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2490
    sget v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    new-instance v3, Lcom/android/email/activity/MessageListXL$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$8;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2511
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/email/activity/MessageListXL$9;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageListXL$9;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2518
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 2890
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_20

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_20

    .line 2891
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    sget v1, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v1, v3, :cond_20

    .line 2893
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 2897
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 5022
    .local v1, pointY:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_28

    .line 5023
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/ThreePaneLayout;->getAnimationStatus()Z

    move-result v3

    if-ne v3, v2, :cond_1c

    .line 5068
    :cond_1b
    :goto_1b
    return v2

    .line 5025
    :cond_1c
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleLeftSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 5027
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->handleRightSplit(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 5031
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_94

    .line 5064
    :cond_2f
    :goto_2f
    :pswitch_2f
    :try_start_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_92

    move-result v2

    goto :goto_1b

    .line 5038
    :pswitch_34
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    if-eqz v3, :cond_4b

    .line 5039
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 5040
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v3

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 5041
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    .line 5043
    :cond_4b
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    if-eqz v3, :cond_2f

    .line 5044
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 5045
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->getListSubTitleItem()Lcom/android/email/activity/MessageListSubTitleItem;

    move-result-object v3

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    .line 5046
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    goto :goto_2f

    .line 5051
    :pswitch_63
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    if-eqz v3, :cond_7a

    .line 5052
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mItemCheckboxPressed:Z

    .line 5053
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->getListItem()Lcom/android/email/activity/MessageListItem;

    move-result-object v3

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 5054
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    .line 5056
    :cond_7a
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    if-eqz v3, :cond_2f

    .line 5057
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mSubItemCheckboxPressed:Z

    .line 5058
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->getListSubTitleItem()Lcom/android/email/activity/MessageListSubTitleItem;

    move-result-object v3

    iput-boolean v4, v3, Lcom/android/email/activity/MessageListSubTitleItem;->mCheckboxPressed:Z

    .line 5059
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    goto :goto_2f

    .line 5065
    :catch_92
    move-exception v0

    .line 5068
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1b

    .line 5031
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_34
        :pswitch_2f
        :pswitch_63
    .end packed-switch
.end method

.method public getListFragmentManager()Lcom/android/email/activity/MessageListXLFragmentManager;
    .registers 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method public onAccountChanged(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 2172
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 2173
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 2123
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->startActivity(Landroid/content/Intent;)V

    .line 2124
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4644
    if-ne p1, v0, :cond_1a

    .line 4645
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 4646
    if-eqz p3, :cond_1a

    .line 4648
    :try_start_8
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    const-string v1, "com.android.email.activity.messagelistxl.searchfolderid"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_30

    .line 4659
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 4660
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4663
    :cond_2f
    return-void

    .line 4651
    :catch_30
    move-exception v0

    .line 4652
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 1354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    .line 1355
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_22

    .line 1495
    :cond_7
    :goto_7
    return-void

    .line 1479
    :sswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    goto :goto_7

    .line 1482
    :sswitch_c
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1483
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_7

    .line 1486
    :cond_1a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_7

    .line 1487
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_7

    .line 1477
    :sswitch_data_22
    .sparse-switch
        0x7f1000cd -> :sswitch_c
        0x7f1001ce -> :sswitch_8
    .end sparse-switch
.end method

.method public onCloseSearch()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3879
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 3880
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    .line 3881
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3883
    :cond_a
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3884
    return-void
.end method

.method public onCloseSerachWithoutAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3887
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3888
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3889
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    .line 3891
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3892
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->clearFocus()V

    .line 3893
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 3894
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3896
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchClose()V

    .line 3897
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 3898
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3899
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3900
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1359
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    sput v0, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    .line 1360
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    .line 1365
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_38

    .line 1366
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_91

    .line 1367
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_port_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1369
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_land_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 1371
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v0, v3, :cond_8c

    .line 1372
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 1388
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    .line 1390
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_46

    .line 1391
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    .line 1393
    :cond_46
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    if-eqz v0, :cond_4d

    .line 1394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 1397
    :cond_4d
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    if-eqz v0, :cond_59

    .line 1398
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mMenuOpenAgain:Z

    .line 1399
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->closeOptionsMenu()V

    .line 1400
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->openOptionsMenu()V

    .line 1402
    :cond_59
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->getDropDownItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1404
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_86

    .line 1405
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->onDetachedFromWindow()V

    .line 1407
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setLayout(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->performClick()Z

    .line 1412
    :cond_86
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 1414
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1415
    return-void

    .line 1374
    :cond_8c
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_38

    .line 1376
    :cond_91
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_left_land_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1378
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_port_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 1380
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v0, v3, :cond_b5

    .line 1381
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto :goto_38

    .line 1383
    :cond_b5
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_38
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x200

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 724
    const-string v0, "Email"

    const-string v1, "MessageListXL onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->resetDatas()V

    .line 728
    sput-boolean v4, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 729
    sput v4, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    .line 730
    sput v4, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 731
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 733
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->MessageOpenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/email/activity/MessageListXL;->INTENT_OPEN_FROM_MINI_APP2:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListXL;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListXL;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 740
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 742
    const v0, 0x7f04009a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->setContentView(I)V

    .line 745
    const-string v0, "AndroidMail.MessageList"

    invoke-virtual {p0, v0, v4}, Lcom/android/email/activity/MessageListXL;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 746
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 747
    sget v0, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 748
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefer_view_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 751
    sget v1, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-ne v1, v6, :cond_2af

    .line 752
    const/4 v0, 0x7

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 753
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 762
    :goto_5f
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->setSortType(I)V

    .line 764
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    .line 766
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    sput v0, Lcom/android/email/activity/MessageListXL;->mPreviousOrientation:I

    .line 768
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sInit:Z

    if-nez v0, :cond_92

    .line 769
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    .line 771
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    .line 776
    :cond_92
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_land_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    .line 778
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_left_port_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    .line 780
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_point"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    .line 783
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    .line 784
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    .line 787
    const v0, 0x7f1001cf

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 790
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-nez v0, :cond_2c6

    .line 791
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    const v1, 0x7f0203d5

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->setBackgroundResource(I)V

    .line 796
    :goto_e3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setVisibleMessageSendingProgress(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout;->initCurrentPaneState()V

    .line 801
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d3

    .line 802
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    if-eq v0, v3, :cond_2cd

    .line 803
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftLandSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    .line 813
    :goto_fa
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    if-eq v0, v3, :cond_2e3

    .line 814
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultRightSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 821
    :goto_102
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    .line 823
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    .line 824
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040040

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    .line 825
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 826
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    .line 837
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    .line 838
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/CustomSpinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 840
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/CustomSpinner;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 843
    new-instance v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0400be

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v1, 0x7f0400bd

    invoke-virtual {v0, v1}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    .line 847
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 848
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    .line 849
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    const v1, 0x7f1000cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    .line 852
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 855
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onActivityViewReady(I)V

    .line 857
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupAccountView()V

    .line 858
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V

    .line 859
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupSearchView()V

    .line 861
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->setupFollowUpFlagView()V

    .line 863
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    .line 864
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 865
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 868
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v1, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 869
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v1, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageViewFragmentCallback:Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 875
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 877
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountDummyAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 879
    if-eqz p1, :cond_2f1

    .line 880
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->loadState(Landroid/os/Bundle;)V

    .line 884
    :goto_21e
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    .line 890
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    .line 891
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    new-instance v0, Lcom/android/email/activity/BannerController;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 898
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminate(Z)V

    .line 899
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminateVisibility(Z)V

    .line 901
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 903
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 905
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 910
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/combined/CombinedEmailManager;->getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/combined/CombinedEmailManager;->getMessageFacade()Lcom/android/email/combined/MessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 912
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v0, p0}, Lcom/android/email/combined/MessageFacade;->addListener(Landroid/content/Context;)V

    .line 916
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mfontSize:I

    .line 918
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getPreViewLine()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListXL;->mPreviewLineSize:I

    .line 920
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getTopLineInfoMode()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->mTopLineMode:I

    .line 922
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getSplitMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->mSplitMode:Z

    .line 928
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMaxSize:I

    .line 930
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListXL;->mLandSplitMinSize:I

    .line 933
    return-void

    .line 755
    :cond_2af
    sget v1, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-eq v0, v1, :cond_2bb

    .line 756
    sput v4, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 760
    :goto_2b5
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    goto/16 :goto_5f

    .line 758
    :cond_2bb
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_sort_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    goto :goto_2b5

    .line 793
    :cond_2c6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/ThreePaneLayout;->setBackgroundResource(I)V

    goto/16 :goto_e3

    .line 805
    :cond_2cd
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_fa

    .line 807
    :cond_2d3
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    if-eq v0, v3, :cond_2dd

    .line 808
    sget v0, Lcom/android/email/activity/MessageListXL;->sDefaultLeftPortSplitPoint:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_fa

    .line 810
    :cond_2dd
    sget v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointPort:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    goto/16 :goto_fa

    .line 816
    :cond_2e3
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "prefer_split_point"

    sget v2, Lcom/android/email/activity/MessageListXL;->sLeftSplitpointLand:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    goto/16 :goto_102

    .line 882
    :cond_2f1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->initFromIntent()V

    goto/16 :goto_21e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    .line 2975
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2978
    :try_start_3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    .line 2987
    :goto_d
    const/4 v0, 0x1

    return v0

    .line 2984
    :catch_f
    move-exception v0

    .line 2985
    const-string v1, "MessageListXL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMenuInflater().inflate failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onCurrentMessageGone()V
    .registers 4

    .prologue
    .line 1498
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 1515
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1516
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1517
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/email/activity/MessageViewFragment;->mMessageIdToOpen:J

    .line 1519
    :cond_2d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 1521
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 1522
    :cond_35
    :goto_35
    return-void

    .line 1500
    :pswitch_36
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1502
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    .line 1506
    :pswitch_43
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1508
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_35

    .line 1498
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1234
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1236
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopLoaders()V

    .line 1239
    sget-object v4, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 1240
    .local v3, settingValue:Lcom/android/email/Preferences;
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setAccountId(J)V

    .line 1241
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Preferences;->setMailboxId(J)V

    .line 1244
    sget-object v4, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sRightSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1246
    iget v4, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12d

    .line 1247
    sget-object v4, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_land_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1253
    :goto_48
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 1254
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1255
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1256
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 1257
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1258
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 1259
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1260
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1261
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1262
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCheckTask:Lcom/android/email/activity/MessageListXL$MailboxCheckTask;

    .line 1263
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v4, v5}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 1264
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    .line 1266
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 1267
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 1268
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_86

    .line 1269
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1270
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1272
    :cond_86
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1273
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 1274
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_98

    .line 1275
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1276
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1279
    :cond_98
    sput-object v7, Lcom/android/email/activity/MessageListXL;->mComposeNewLayout:Landroid/widget/LinearLayout;

    .line 1280
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagAdapter:Landroid/widget/ArrayAdapter;

    .line 1281
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v4, :cond_a7

    .line 1282
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1283
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFollowUpFlagViewSpinner:Lcom/android/email/activity/CustomSpinner;

    .line 1285
    :cond_a7
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    .line 1286
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mCloseButton:Landroid/widget/ImageView;

    .line 1287
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchEditFrame:Landroid/view/View;

    .line 1288
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    .line 1289
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    .line 1290
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1291
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    .line 1292
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    .line 1293
    sput-object v7, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 1300
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1301
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    if-eqz v4, :cond_c7

    .line 1302
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/ThreePaneLayout;->destroy()V

    .line 1304
    :cond_c7
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mThreePane:Lcom/android/email/activity/ThreePaneLayout;

    .line 1305
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    .line 1306
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mItem:Lcom/android/email/activity/MessageListItemContainer;

    .line 1307
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mSubItem:Lcom/android/email/activity/MessageListItemContainer;

    .line 1308
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1309
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1310
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    .line 1312
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 1313
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1314
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mMailboxCursor:Landroid/database/Cursor;

    .line 1316
    :cond_e9
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 1317
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 1318
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 1319
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onDestroy()V

    .line 1320
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    .line 1322
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    if-eqz v4, :cond_108

    .line 1323
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    invoke-virtual {v4, p0}, Lcom/android/email/combined/MessageFacade;->removeListener(Landroid/content/Context;)V

    .line 1332
    :cond_108
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-eqz v4, :cond_142

    .line 1333
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1334
    .local v2, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_113
    if-ge v0, v2, :cond_140

    .line 1335
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 1336
    .local v1, md:Lcom/android/email/activity/MessageListXL$ManagedDialog;
    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1337
    iget-object v4, v1, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->dismiss()V

    .line 1334
    :cond_12a
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    .line 1249
    .end local v0           #i:I
    .end local v1           #md:Lcom/android/email/activity/MessageListXL$ManagedDialog;
    .end local v2           #num:I
    :cond_12d
    sget-object v4, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "prefer_split_left_port_point"

    sget v6, Lcom/android/email/activity/MessageListXL;->sLeftSplitpoint:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_48

    .line 1340
    .restart local v0       #i:I
    .restart local v2       #num:I
    :cond_140
    iput-object v7, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 1343
    .end local v0           #i:I
    .end local v2           #num:I
    :cond_142
    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->MessageOpenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageListXL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1346
    return-void
.end method

.method public onFolderFailed(Lcom/android/email/combined/EmailException;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 5224
    return-void
.end method

.method public onFolderFinished(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 5175
    return-void
.end method

.method public onFolderStarted()V
    .registers 1

    .prologue
    .line 5168
    return-void
.end method

.method public onInstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 940
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_20

    .line 941
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onInstallFragment fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_20
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 944
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onInstallFragment(Landroid/app/Fragment;)V

    .line 945
    instance-of v0, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_36

    .line 946
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMessageViewFragmentCallback:Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 949
    :cond_36
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2903
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2905
    sparse-switch p1, :sswitch_data_68

    .line 2951
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_d
    :goto_d
    return v1

    .line 2907
    :sswitch_e
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1b

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    if-ne v2, v1, :cond_d

    .line 2912
    :cond_1b
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_d

    .line 2913
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2914
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_d

    .line 2916
    :cond_2c
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2919
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_d

    .line 2937
    :sswitch_40
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2938
    const/4 v0, 0x0

    .line 2939
    .local v0, webView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 2941
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragment;->getMessageWebView()Lcom/android/email/activity/MessageWebView;

    move-result-object v0

    .line 2943
    :cond_5f
    if-eqz v0, :cond_9

    .line 2944
    invoke-virtual {v0}, Landroid/webkit/WebView;->copySelectionSec()Z

    .line 2945
    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    goto :goto_d

    .line 2905
    :sswitch_data_68
    .sparse-switch
        0x1f -> :sswitch_40
        0x54 -> :sswitch_e
    .end sparse-switch
.end method

.method public onMailboxChanged(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "newMailboxId"

    .prologue
    .line 2179
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 2963
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMessageFailed(Lcom/android/email/combined/EmailException;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 5134
    return-void
.end method

.method public onMessageFinished(J)V
    .registers 5
    .parameter "accountId"

    .prologue
    .line 5151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/activity/MessageListXL$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/MessageListXL$20;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5159
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5161
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    .line 5164
    :goto_10
    return-void

    .line 5162
    :catch_11
    move-exception v1

    goto :goto_10
.end method

.method public onMessageStarted()V
    .registers 1

    .prologue
    .line 5129
    return-void
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .registers 19
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "moveType"

    .prologue
    .line 1569
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 1570
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1572
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1574
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1585
    :cond_29
    :goto_29
    return-void

    .line 1576
    :cond_2a
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-wide v1, p5, v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    .line 1578
    .local v10, mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v10, :cond_29

    .line 1579
    new-instance v1, Ljava/util/HashSet;

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-wide v6, v10, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageListXL;->ConversationMoveAlways(Ljava/util/Set;JJJ)V

    .line 1581
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 1582
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_29
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .registers 17
    .parameter "targetAccountId"
    .parameter "targetMailboxId"
    .parameter "messageIds"
    .parameter "moveType"

    .prologue
    .line 1553
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 1554
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1556
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;-><init>(Lcom/android/email/activity/MessageListXL;Landroid/app/Activity;JJ[J[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    .line 1558
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$MessageCheckerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1564
    :goto_27
    return-void

    .line 1560
    :cond_28
    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    .line 1561
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 1562
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_27
.end method

.method public onMoveToNewer()V
    .registers 1

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    .line 2184
    return-void
.end method

.method public onMoveToOlder()V
    .registers 1

    .prologue
    .line 2188
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    .line 2189
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter

    .prologue
    .line 5411
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 5412
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL;->setIntent(Landroid/content/Intent;)V

    .line 5413
    const-string v0, "IntentSingTop"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 5415
    const-string v2, "ACCOUNT_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 5416
    const-string v2, "MAILBOX_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 5417
    const-string v2, "MESSAGE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    .line 5419
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_33

    .line 5443
    :cond_32
    :goto_32
    return-void

    .line 5422
    :cond_33
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 5423
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 5424
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAccountId()J

    move-result-wide v1

    .line 5425
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_88

    .line 5426
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 5430
    :goto_51
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getMailboxId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 5433
    :cond_57
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 5434
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v0

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8b

    .line 5435
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_7b

    .line 5436
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    .line 5438
    :cond_7b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJZZZ)V

    goto :goto_32

    .line 5428
    :cond_88
    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto :goto_51

    .line 5440
    :cond_8b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageListXL;->mMessageId:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    goto :goto_32
.end method

.method public onOpenSearch()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 3903
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_8

    .line 3934
    :goto_7
    return-void

    .line 3907
    :cond_8
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-eqz v0, :cond_10

    .line 3908
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    goto :goto_7

    .line 3912
    :cond_10
    sput-boolean v2, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    .line 3913
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    .line 3914
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 3915
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_28

    .line 3916
    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    if-ne v0, v2, :cond_3b

    .line 3917
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 3928
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3930
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->setLayoutAnim_slideSideToSide(Z)V

    .line 3931
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    .line 3932
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 3933
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateViewsVisibility()V

    goto :goto_7

    .line 3919
    :cond_3b
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4b

    .line 3920
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->isMesssageListLeftside()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3921
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginViewLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3925
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    goto :goto_28

    .line 3923
    :cond_51
    sget-object v0, Lcom/android/email/activity/MessageListXL;->sSearchFrameLayoutParam:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSearchMarginListLand:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 3094
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    .line 3153
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_c
    return v5

    .line 3103
    :sswitch_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v5

    goto :goto_c

    .line 3129
    :sswitch_13
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onAccountSettings()Z

    move-result v5

    goto :goto_c

    .line 3141
    :sswitch_18
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_c

    .line 3145
    :sswitch_1d
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 3146
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    .line 3148
    :cond_2b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    .line 3149
    sget-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJI)V

    goto :goto_c

    .line 3094
    nop

    :sswitch_data_3c
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f1002da -> :sswitch_13
        0x7f10031a -> :sswitch_18
        0x7f10031c -> :sswitch_1d
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 2968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsMenuOpened:Z

    .line 2969
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2970
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 1207
    const-string v0, "Email"

    const-string v1, "MessageListXL onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 1212
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1213
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onPause()V

    .line 1214
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 3009
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRefresh()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 3325
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "onRefresh() START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    .line 3328
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 3329
    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 3330
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 3332
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3341
    :goto_39
    return-void

    .line 3336
    :cond_3a
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 3337
    iput-object v4, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 3338
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    .line 3339
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshAllTask:Lcom/android/email/activity/MessageListXL$RefreshAllTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39
.end method

.method public onRefreshFromFragment()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3344
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3345
    const v1, 0x7f0803ec

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3378
    :goto_12
    return v0

    .line 3350
    :cond_13
    sget-object v2, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_35

    move v2, v1

    .line 3352
    :goto_22
    if-eqz v2, :cond_37

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_37

    .line 3353
    const v1, 0x7f080576

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_12

    :cond_35
    move v2, v0

    .line 3350
    goto :goto_22

    .line 3360
    :cond_37
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 3361
    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 3362
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    .line 3369
    :cond_42
    :goto_42
    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_67

    .line 3370
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    :goto_5b
    move v0, v1

    .line 3378
    goto :goto_12

    .line 3363
    :cond_5d
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    if-nez v0, :cond_42

    .line 3364
    sput-boolean v1, Lcom/android/email/activity/MessageListXL;->doesMadUsersRefresh:Z

    .line 3365
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    goto :goto_42

    .line 3372
    :cond_67
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v2

    .line 3373
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 3375
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->updatedMailbox_toast(Ljava/lang/Long;)V

    goto :goto_5b
.end method

.method public onResultSearchRequested()Z
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 3706
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    if-nez v1, :cond_7

    .line 3730
    :goto_6
    return v0

    .line 3713
    :cond_7
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previous sort type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_65

    .line 3716
    :cond_3f
    const/4 v1, 0x0

    sput-object v1, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3717
    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    if-ne v1, v4, :cond_54

    .line 3718
    sput v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 3719
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3720
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    .line 3730
    :cond_52
    :goto_52
    const/4 v0, 0x1

    goto :goto_6

    .line 3721
    :cond_54
    sget v0, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    if-eq v0, v1, :cond_52

    .line 3722
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3723
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_52

    .line 3726
    :cond_65
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sSearchString:Ljava/lang/String;

    .line 3727
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3728
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    goto :goto_52
.end method

.method protected onResume()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1032
    const-string v0, "Email"

    const-string v1, "MessageListXL onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-nez v0, :cond_23

    .line 1036
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountDummyAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 1038
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_23

    .line 1039
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1043
    :cond_23
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeFontSize_preference()V

    .line 1044
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changePreviewLineSize_preference()V

    .line 1045
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeTopLineMode_preference()V

    .line 1046
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->changeSplitMode_preference()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDateFormat:Ljava/text/DateFormat;

    .line 1050
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sDayFormat:Ljava/text/DateFormat;

    .line 1051
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageListXL;->sTimeFormat:Ljava/text/DateFormat;

    .line 1053
    sget v0, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 1054
    sget v1, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 1055
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prefer_view_mode"

    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    .line 1058
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    if-eqz v2, :cond_69

    .line 1059
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/android/email/activity/MessageListXL;->sTypeface:Landroid/graphics/Typeface;

    .line 1061
    :cond_69
    sget v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-ne v2, v7, :cond_126

    .line 1062
    const/4 v1, 0x7

    sput v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 1063
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    .line 1073
    :goto_74
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    if-eq v0, v1, :cond_82

    .line 1074
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 1075
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateOrderManager()V

    .line 1078
    :cond_82
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget v1, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->refreshFragment(I)V

    .line 1080
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9c

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v7, :cond_9c

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-ne v0, v5, :cond_9f

    .line 1083
    :cond_9c
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->refreshActionBarLayout()V

    .line 1086
    :cond_9f
    sget-boolean v0, Lcom/android/email/activity/Welcome;->fromWidget:Z

    if-eqz v0, :cond_a5

    .line 1087
    sput-boolean v8, Lcom/android/email/activity/Welcome;->fromWidget:Z

    .line 1090
    :cond_a5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onFragmentSetHasOptionMenu()V

    .line 1092
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    .line 1094
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v5, :cond_13d

    .line 1095
    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListXL;->controlSearchVisible(Z)V

    .line 1096
    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageListXL;->controlAccountSpinnerVisible(Z)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    .line 1106
    :goto_c4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL;->mMailboxId:J

    sget-wide v5, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/email/activity/MessageListFragment;->resetNewMessageCount(Landroid/content/Context;JJ)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1114
    if-eqz v9, :cond_e9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_147

    .line 1116
    :cond_e9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FROM_SHORTCUT"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1117
    const v0, 0x7f080287

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1121
    :cond_ff
    const-string v0, "Email"

    const-string v1, "[toma] MessageListXL onResume ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1123
    if-eqz v9, :cond_10e

    .line 1124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1126
    :cond_10e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->finish()V

    .line 1190
    :goto_111
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1201
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_125

    .line 1202
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_125
    :goto_125
    return-void

    .line 1065
    :cond_126
    sget v2, Lcom/android/email/activity/MessageListXL;->sViewMode:I

    if-eq v1, v2, :cond_132

    .line 1066
    sput v8, Lcom/android/email/activity/MessageListXL;->sSortType:I

    .line 1070
    :goto_12c
    sget v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    sput v1, Lcom/android/email/activity/MessageListXL;->sPreviousSortType:I

    goto/16 :goto_74

    .line 1068
    :cond_132
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "prefer_sort_type"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListXL;->sSortType:I

    goto :goto_12c

    .line 1099
    :cond_13d
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1100
    invoke-virtual {p0, v8}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    goto/16 :goto_c4

    .line 1129
    :cond_147
    sget-wide v0, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1131
    if-eqz v1, :cond_177

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_177

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_177

    .line 1134
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_1bd

    .line 1135
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1137
    cmp-long v2, v0, v10

    if-eqz v2, :cond_177

    .line 1138
    new-instance v2, Lcom/android/email/activity/MessageListXL$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageListXL$2;-><init>(Lcom/android/email/activity/MessageListXL;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXL$2;->start()V

    .line 1161
    :cond_177
    :goto_177
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->restartAcconts()V

    .line 1164
    const/4 v0, -0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1165
    :cond_17e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 1166
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19e

    const-wide/high16 v0, 0x1000

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17e

    .line 1169
    :cond_19e
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    .line 1170
    if-eqz v9, :cond_1a8

    .line 1171
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_1a8
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_125

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    if-ne v0, v7, :cond_125

    .line 1176
    sput-boolean v8, Lcom/android/email/activity/setup/AccountSetupNames;->forceSync:Z

    .line 1177
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V

    .line 1178
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->finish()V

    goto/16 :goto_125

    .line 1146
    :cond_1bd
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_177

    .line 1147
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    sget-wide v2, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    invoke-static {v0, v2, v3, v7}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 1149
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v2, 0x7f08012a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    const v3, 0x7f08012b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 1153
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    .line 1154
    const/4 v6, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_177

    .line 1183
    :cond_1ec
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1184
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1185
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-wide v3, v10

    move-wide v5, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 1186
    sput-wide v1, Lcom/android/email/activity/MessageListXL;->sAccountId:J

    goto/16 :goto_111
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1006
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9

    .line 1011
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_10

    .line 1015
    :goto_8
    return-void

    .line 1007
    :catch_9
    move-exception v0

    .line 1008
    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1012
    :catch_10
    move-exception v0

    .line 1013
    const-string v1, "MessageListXL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3857
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 3875
    :cond_e
    :goto_e
    return v2

    .line 3861
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3867
    :cond_1f
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    if-ne v0, v2, :cond_2e

    .line 3868
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-nez v0, :cond_2a

    .line 3869
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onCloseSearch()V

    .line 3871
    :cond_2a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->sSearchMode:Z

    goto :goto_e

    .line 3873
    :cond_2e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->onOpenSearch()V

    goto :goto_e
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 1022
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1023
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->mIsActivityStarted:Z

    .line 1024
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStart()V

    .line 1025
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1026
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    .line 1028
    :cond_16
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 1221
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListXL;->mIsActivityStarted:Z

    .line 1223
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStop()V

    .line 1224
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 1225
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 5074
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 5099
    :cond_9
    :pswitch_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 5076
    :pswitch_b
    sget v1, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    if-ne v1, v2, :cond_9

    .line 5078
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    goto :goto_a

    .line 5089
    :pswitch_13
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    goto :goto_a

    .line 5094
    :pswitch_18
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z

    if-eqz v1, :cond_9

    goto :goto_a

    .line 5074
    nop

    :pswitch_data_1e
    .packed-switch 0x7f1000c4
        :pswitch_9
        :pswitch_18
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_13
        :pswitch_9
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public onUninstallFragment(Landroid/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 954
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 955
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_26

    .line 956
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onUninstallFragment fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 961
    :cond_2b
    return-void
.end method

.method public setAccountVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    if-eqz v0, :cond_9

    .line 2409
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/CustomSpinner;->setVisibility(I)V

    .line 2412
    :cond_9
    return-void
.end method

.method public setActionBarCustomForMessageList()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1422
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1423
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/email/activity/MessageListXL;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1424
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1427
    :goto_17
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mActionBarCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1429
    return-void

    .line 1426
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_17
.end method

.method public setImeVisibility(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3757
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3758
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3759
    if-eqz v1, :cond_1a

    .line 3760
    if-eqz p1, :cond_1b

    .line 3765
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 3773
    :cond_1a
    :goto_1a
    return-void

    .line 3769
    :cond_1b
    if-eqz v0, :cond_1a

    .line 3770
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1a
.end method

.method public setLayoutAnim_slideSideToSide(Z)V
    .registers 16
    .parameter "directionToLeft"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3777
    sget-object v3, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_9

    .line 3853
    :goto_8
    return-void

    .line 3779
    :cond_9
    if-nez p1, :cond_28

    .line 3780
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3784
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3786
    new-instance v1, Lcom/android/email/activity/MessageListXL$17;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$17;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3814
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8

    .line 3816
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_28
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move-object v5, v0

    move v6, v1

    move v7, v4

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3819
    .restart local v0       #ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3820
    new-instance v1, Lcom/android/email/activity/MessageListXL$18;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageListXL$18;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3850
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3851
    sget-object v1, Lcom/android/email/activity/MessageListXL;->sSearchBarLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8
.end method

.method public setLeftSplitType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 4666
    sput p1, Lcom/android/email/activity/MessageListXL;->sLeftSplitType:I

    .line 4667
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MailboxListFragment;->setListSplit(I)V

    .line 4668
    return-void
.end method

.method public setRightSplitToPreference(I)V
    .registers 4
    .parameter "width"

    .prologue
    .line 4676
    sget-object v0, Lcom/android/email/activity/MessageListXL;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefer_split_point"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4677
    return-void
.end method

.method public setRightSplitType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 4671
    sput p1, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    .line 4672
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListFragment;->setListSplit(I)V

    .line 4673
    return-void
.end method

.method public setSearchSpinnerOption()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3570
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    if-eqz v1, :cond_34

    .line 3571
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->getSpinnerOptions()[Lcom/android/email/activity/setup/SpinnerOption;

    move-result-object v0

    .line 3572
    .local v0, localOption:[Lcom/android/email/activity/setup/SpinnerOption;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3573
    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 3574
    new-instance v1, Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400be

    invoke-direct {v1, v2, v3, v0}, Lcom/android/email/activity/SearchTypeSelectorAdapter;-><init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    .line 3576
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    const v2, 0x7f0400bd

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setDropDownViewResource(I)V

    .line 3577
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3578
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;

    sget v2, Lcom/android/email/activity/MessageListXL;->sSelectedSearchType:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/CustomSpinner;->setSelection(I)V

    .line 3580
    .end local v0           #localOption:[Lcom/android/email/activity/setup/SpinnerOption;
    :cond_34
    return-void
.end method

.method public showDialog2(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5227
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 5228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 5230
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 5231
    if-nez v0, :cond_32

    .line 5232
    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    .line 5233
    invoke-static {p1, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    .line 5234
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5246
    :goto_26
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5247
    :cond_31
    return-void

    .line 5235
    :cond_32
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    .line 5239
    :try_start_3b
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 5240
    const-string v2, "bundle"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5241
    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_4c

    goto :goto_26

    .line 5242
    :catch_4c
    move-exception v1

    .line 5243
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public showDialog2(ILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 5250
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 5251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    .line 5253
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    .line 5254
    if-nez v0, :cond_32

    .line 5255
    new-instance v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    .line 5256
    invoke-static {p1, p2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->newInstance(ILandroid/os/Bundle;)Lcom/android/email/activity/MessageListXL$MessageListDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    .line 5257
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mDialog:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5269
    :goto_26
    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MessageListXL"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5270
    :cond_31
    return-void

    .line 5258
    :cond_32
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    .line 5262
    :try_start_3b
    iget-object v1, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 5263
    const-string v2, "bundle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5264
    iget-object v2, v0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

    invoke-virtual {v2, v1}, Lcom/android/email/activity/MessageListXL$MessageListDialog;->setArguments(Landroid/os/Bundle;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_4c

    goto :goto_26

    .line 5265
    :catch_4c
    move-exception v1

    .line 5266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public showFollowUpFlag()V
    .registers 1

    .prologue
    .line 2136
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->showFollowUpView()V

    .line 2137
    return-void
.end method
