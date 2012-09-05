.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.super Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    }
.end annotation


# static fields
.field public static FMC_MODE:Z

.field private static bCallLogPaused:Z

.field public static bCheckedBefore:Z

.field private static bCheckedFirstTime:Z

.field private static mContext:Landroid/content/Context;

.field private static mContextForDialog:Landroid/content/Context;

.field private static mNumberForDialog:Ljava/lang/String;


# instance fields
.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDINFO:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field public mAddContactDlg:Landroid/app/AlertDialog;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

.field private mItemPosition:Ljava/lang/Integer;

.field private mItemSize:Ljava/lang/Integer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field public mScrollToTop:Z

.field private mShowOptionsMenu:Z

.field public mStrNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mViewByDlg:Landroid/app/AlertDialog;

.field private mVoiceMailNumber:Ljava/lang/String;

.field public mWhichButton:I

.field private mstrName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 153
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 172
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 173
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    .line 174
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 179
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 159
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CALL:I

    .line 160
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDMSG:I

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_EDITNUMBER:I

    .line 162
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDINFO:I

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_VIEWCONTACT:I

    .line 164
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SAVECONTACT:I

    .line 165
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKCONTACT:I

    .line 166
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 167
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVELOG:I

    .line 190
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method private loadPref()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "logslist_pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 418
    return-void
.end method

.method private openViewByDialog()V
    .registers 5

    .prologue
    .line 748
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a029f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f06

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0288

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 764
    return-void
.end method

.method private refreshData()V
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    .line 893
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startCallsQuery()V

    .line 894
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry()V

    .line 895
    return-void
.end method

.method private removeMissedCallNotifications()V
    .registers 3

    .prologue
    .line 900
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_10

    .line 903
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 911
    :goto_f
    return-void

    .line 905
    :cond_10
    const-string v0, "CallLogFragment"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_f

    .line 908
    :catch_18
    move-exception v0

    .line 909
    const-string v0, "CallLogFragment"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .parameter "mContext"
    .parameter "mNumber"

    .prologue
    .line 552
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 553
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400ae

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 555
    .local v0, discover_notify:Landroid/widget/LinearLayout;
    const v4, 0x7f0d01f6

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 557
    .local v3, notify_confirm:Landroid/widget/LinearLayout;
    const v4, 0x7f0d01f7

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 560
    .local v2, not_show_again:Landroid/widget/CheckBox;
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 561
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    .line 563
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;

    invoke-direct {v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0299

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02bb

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02ba

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;

    invoke-direct {v6, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 581
    return-void
.end method

.method private updateOnEntry()V
    .registers 2

    .prologue
    .line 920
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 921
    return-void
.end method

.method private updateOnExit()V
    .registers 2

    .prologue
    .line 915
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 916
    return-void
.end method

.method private updateOnTransition(Z)V
    .registers 5
    .parameter "onEntry"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_10

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-nez v1, :cond_11

    .line 948
    :cond_10
    :goto_10
    return-void

    .line 934
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity;

    .line 935
    .local v0, mActivity:Lcom/android/contacts/activities/DialtactsActivity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 943
    if-nez p1, :cond_2a

    .line 944
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 946
    :cond_2a
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    goto :goto_10
.end method

.method private updateSweepActionFeasibility()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_6

    .line 979
    :goto_5
    return-void

    .line 967
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 970
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 971
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    goto :goto_5

    .line 973
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_26

    .line 974
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    .line 976
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    goto :goto_5
.end method


# virtual methods
.method public callFirstEntry()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 821
    if-eqz v0, :cond_45

    .line 822
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 830
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0304

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 856
    :cond_45
    :goto_45
    return-void

    .line 835
    :cond_46
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 851
    :goto_59
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 853
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_45

    .line 841
    :cond_62
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 842
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    if-eq v0, v4, :cond_74

    const/4 v2, 0x3

    if-ne v0, v2, :cond_89

    .line 846
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    :goto_7a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_59

    :cond_89
    move-object v0, v1

    goto :goto_7a
.end method

.method public callSelectedEntry()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v0

    .line 776
    if-gez v0, :cond_d

    .line 780
    const/4 v0, 0x0

    .line 782
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 783
    if-eqz v0, :cond_41

    .line 784
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 816
    :cond_41
    :goto_41
    return-void

    .line 796
    :cond_42
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 812
    :goto_55
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_41

    .line 802
    :cond_5e
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 803
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    if-eq v0, v3, :cond_70

    const/4 v2, 0x3

    if-ne v0, v2, :cond_85

    .line 807
    :cond_70
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_55

    :cond_85
    move-object v0, v1

    goto :goto_76
.end method

.method protected configureSweepActionCallbackAndListener()V
    .registers 6

    .prologue
    .line 237
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V

    .line 238
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 240
    return-void
.end method

.method public fetchLogs()V
    .registers 3

    .prologue
    .line 397
    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 400
    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .registers 2
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSweepActionEnabled()Z
    .registers 2

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 279
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCallsFetched ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 295
    :cond_19
    :goto_19
    return-void

    .line 283
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 287
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_19

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    .line 289
    .local v0, listView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_3c

    .line 290
    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 292
    :cond_3c
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->smoothScrollToPosition(I)V

    .line 293
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    goto :goto_19
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 641
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 642
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_11

    .line 643
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_90

    .line 700
    :cond_11
    :goto_11
    return v9

    .line 645
    :pswitch_12
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 648
    :pswitch_1a
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 652
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSaveToDialog()V

    goto :goto_11

    .line 656
    :pswitch_26
    const/4 v6, -0x1

    .line 657
    .local v6, contact_Id:I
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 662
    .local v7, phonesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_57

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 664
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 667
    :cond_54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_57
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_11

    .line 674
    .end local v6           #contact_Id:I
    .end local v7           #phonesCursor:Landroid/database/Cursor;
    :pswitch_5d
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 678
    :pswitch_65
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_71

    .line 679
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 681
    :cond_71
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 685
    :pswitch_79
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    .line 689
    :pswitch_81
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 693
    :pswitch_8b
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V

    goto :goto_11

    .line 643
    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_12
        :pswitch_5d
        :pswitch_1a
        :pswitch_81
        :pswitch_26
        :pswitch_22
        :pswitch_65
        :pswitch_79
        :pswitch_8b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 260
    const-string v0, "CallLogFragment"

    const-string v1, "========= onCreate ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 263
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    .line 266
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 267
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 269
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 274
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 422
    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 423
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateContextMenu ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_a
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    move-object v9, v0
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_f} :catch_70

    .line 432
    .local v9, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    const/4 v12, 0x0

    .line 433
    .local v12, tv:Landroid/widget/TextView;
    const v1, 0x7f0d0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #tv:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 434
    .restart local v12       #tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 436
    const v1, 0x7f0d007f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #tv:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 437
    .restart local v12       #tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 439
    const v1, 0x7f0d007f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #tv:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 440
    .restart local v12       #tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    .line 442
    const v1, 0x7f0d0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #tv:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 443
    .restart local v12       #tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 448
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x0

    const v4, 0x7f0a0290

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 523
    .end local v9           #info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .end local v12           #tv:Landroid/widget/TextView;
    :goto_6f
    return-void

    .line 427
    :catch_70
    move-exception v7

    .line 428
    .local v7, e:Ljava/lang/ClassCastException;
    invoke-virtual {v7}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_6f

    .line 452
    .end local v7           #e:Ljava/lang/ClassCastException;
    .restart local v9       #info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .restart local v12       #tv:Landroid/widget/TextView;
    :cond_75
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_115

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 458
    :goto_84
    const/4 v8, 0x0

    .line 459
    .local v8, formatPhoneNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 462
    .local v10, menu_call:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 465
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f0a0292

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f0a0293

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 469
    :cond_cb
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x0

    const v4, 0x7f0a0290

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 471
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 477
    .local v11, phonesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_12f

    .line 478
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_11c

    .line 479
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x7f0a0295

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 480
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x7f0a0297

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    :goto_110
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6f

    .line 455
    .end local v8           #formatPhoneNumber:Ljava/lang/String;
    .end local v10           #menu_call:Ljava/lang/String;
    .end local v11           #phonesCursor:Landroid/database/Cursor;
    :cond_115
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_84

    .line 482
    .restart local v8       #formatPhoneNumber:Ljava/lang/String;
    .restart local v10       #menu_call:Ljava/lang/String;
    .restart local v11       #phonesCursor:Landroid/database/Cursor;
    :cond_11c
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x7f0a0296

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 483
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0a0298

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_110

    .line 487
    :cond_12f
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0a0298

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 488
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x7f0a0296

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_6f
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 705
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 706
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_11

    .line 707
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 709
    :cond_11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 302
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 308
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 380
    const-string v0, "CallLogFragment"

    const-string v1, "========= onDestroy ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroy()V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 384
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 720
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 743
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 722
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 723
    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 727
    :pswitch_1e
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V

    goto :goto_9

    .line 731
    :pswitch_22
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    const-string v2, "view_by"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 733
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 720
    :pswitch_data_38
    .packed-switch 0x7f0d0251
        :pswitch_a
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 362
    const-string v0, "CallLogFragment"

    const-string v1, "========= onPause ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPause()V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 367
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    if-eqz v0, :cond_1d

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewStatusPreference()V

    .line 370
    :cond_1d
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_1f

    .line 714
    const v0, 0x7f0d0253

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 716
    :cond_1f
    return-void

    .line 714
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v0, "CallLogFragment"

    const-string v1, "========= onResume ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onResume()V

    .line 349
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    .line 350
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 351
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 355
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStart()V

    .line 343
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 374
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStop()V

    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 376
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 313
    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 315
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, currentCountryIso:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 319
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 337
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 870
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v1, p1, :cond_f

    .line 871
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 874
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_f

    .line 875
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 879
    .end local v0           #activity:Landroid/app/Activity;
    :cond_f
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 880
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    .line 883
    :cond_1a
    if-nez p1, :cond_1f

    .line 884
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 886
    :cond_1f
    return-void
.end method

.method public openSaveToDialog()V
    .registers 4

    .prologue
    .line 527
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0298

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0288

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 549
    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public saveViewStatusPreference()V
    .registers 6

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 410
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    return-void
.end method

.method protected setCallLogAdapter(I)V
    .registers 3
    .parameter "selection"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 771
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 772
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V
    .registers 2
    .parameter "sweepActionBarCallBack"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 246
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 953
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    .line 954
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .registers 2
    .parameter "sweepActionListener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 251
    return-void
.end method

.method public showDeleteLogsConfirmDlg()V
    .registers 6

    .prologue
    .line 585
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v1, deleteLogsDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a02b9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02ba

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0288

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 634
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0a0039

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 635
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 637
    return-void
.end method

.method public startCallsQuery()V
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 406
    return-void
.end method
