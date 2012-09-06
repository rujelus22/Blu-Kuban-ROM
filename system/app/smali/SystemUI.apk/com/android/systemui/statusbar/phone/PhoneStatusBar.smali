.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/StatusBar;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field static final ANIM_FRAME_DURATION:I = 0x10

.field private static final BRIGHTNESS_MAX:I = 0xe1

.field private static final BRIGHTNESS_MIN:I = 0x1e

.field private static final BROP_DONE:I = 0x2

.field private static final BROP_ING:I = 0x1

.field private static final BROP_NONE:I = 0x0

.field public static final CHATTY:Z = false

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field public static final DEBUG:Z = false

.field public static final DUMPTRUCK:Z = true

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final INTRUDER_ALERT_DECAY_MS:I = 0x2710

.field private static final MSG_ANIMATE:I = 0x64

.field private static final MSG_ANIMATE_REVEAL:I = 0x65

.field private static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field private static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field private static final MSG_HIDE_INTRUDER:I = 0x3eb

.field private static final MSG_LONG_PRESS:I = 0x7d0

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_RECENTS_PANEL:I = 0x3fc

.field private static final MSG_SHOW_INTRUDER:I = 0x3ea

.field public static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"


# instance fields
.field m4GModeLayout:Landroid/widget/LinearLayout;

.field mAbsPos:[I

.field mAirplaneModeLayout:Landroid/widget/LinearLayout;

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mAutoRotationLayout:Landroid/widget/LinearLayout;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBatteryController2:Lcom/android/systemui/statusbar/policy/BatteryControllerBar;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBluetoothLayout:Landroid/widget/LinearLayout;

.field private mBrightNessContentObs:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallOnGoingView:Landroid/view/View;

.field mCameraButton:Landroid/view/View;

.field private mCameraButtonListener:Landroid/view/View$OnClickListener;

.field mClearButton:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClock:Landroid/view/View;

.field mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mEdgeBorder:I

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

.field mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mGpsLayout:Landroid/widget/LinearLayout;

.field mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

.field mIMSIconBroadcastReceiver:Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mIntruderAlertView:Landroid/view/View;

.field private mIsAutoBrightNess:Z

.field private mIsBrightNessMode:I

.field private mIsStatusBarBrightNess:Z

.field mLatestNotificationText:Landroid/widget/TextView;

.field mLatestNotificationTitle:Landroid/widget/LinearLayout;

.field mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMiniConPile:Landroid/widget/LinearLayout;

.field mMobileDataLayout:Landroid/widget/LinearLayout;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNetworkNotificationUI:Lcom/android/systemui/statusbar/policy/NetworkNotificationUI;

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mOngoingNotificationText:Landroid/widget/TextView;

.field mOngoingNotificationTitle:Landroid/widget/LinearLayout;

.field mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mPanelSlightlyVisible:Z

.field mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mPowerWidget:Lcom/android/wanam/systemui/StBar/PowerWidget;

.field private mPropFactor:Ljava/lang/Float;

.field mQueueLock:Ljava/lang/Object;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field mScrollView:Landroid/widget/ScrollView;

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mSettingsButton:Landroid/view/View;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSilentModeLayout:Landroid/widget/LinearLayout;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

.field private mUseMiniCon:Z

.field private mUseStatusBarMarquee:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field mWifiLayout:Landroid/widget/LinearLayout;

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBar;-><init>()V

    .line 180
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 181
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 182
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 235
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 246
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 276
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 278
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 279
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 283
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 286
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 288
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 693
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1633
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2255
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2670
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 2771
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 2784
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2894
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 2904
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 2920
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCameraButtonListener:Landroid/view/View$OnClickListener;

    .line 2943
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    .line 2945
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightNessContentObs:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;

    .line 3081
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 3082
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePropFactorValue()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAutoBrightNess:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkAutoBrightNess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIntruderView()V
    .registers 10

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v6

    .line 750
    .local v6, height:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e1

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 761
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 762
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-double v1, v1

    int-to-double v3, v6

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 763
    const-string v1, "IntruderAlert"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 765
    const v1, 0x7f0c000a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 767
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    return-void
.end method

.method private addNavigationBar()V
    .registers 4

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_5

    .line 714
    :goto_4
    return-void

    .line 710
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 712
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private checkAutoBrightNess()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2961
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private checkMinMax(I)I
    .registers 4
    .parameter "brightNess"

    .prologue
    .line 2966
    move v0, p1

    .line 2967
    .local v0, checkBrightNess:I
    if-gez v0, :cond_5

    .line 2968
    const/4 v0, 0x0

    .line 2973
    :cond_4
    :goto_4
    return v0

    .line 2969
    :cond_5
    const/16 v1, 0xe1

    if-ge v1, v0, :cond_4

    .line 2970
    const/16 v0, 0xe1

    goto :goto_4
.end method

.method private doBrightNess(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 2982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPropFactor:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkMinMax(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1e

    .line 2984
    .local v0, brightNess:I
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2986
    :try_start_24
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2988
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_33

    .line 2989
    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_34

    .line 2993
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_33
    :goto_33
    return-void

    .line 2991
    :catch_34
    move-exception v2

    goto :goto_33
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 726
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x4800068

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 737
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 738
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 741
    :cond_1c
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 744
    return-object v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .registers 23
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 1333
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    .line 1334
    .local v18, sbn:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1335
    .local v16, remoteViews:Landroid/widget/RemoteViews;
    if-nez v16, :cond_12

    .line 1336
    const/4 v4, 0x0

    .line 1410
    :goto_11
    return v4

    .line 1340
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1344
    .local v14, inflater:Landroid/view/LayoutInflater;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_f0

    const v4, 0x7f030027

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1348
    .local v17, row:Landroid/view/View;
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v19

    .line 1349
    .local v19, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f080073

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1353
    const v4, 0x7f0f0080

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1354
    .local v15, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_fc

    .line 1355
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1356
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1361
    :goto_6b
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1364
    const v4, 0x7f0f0074

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1366
    .local v9, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1368
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1369
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_109

    .line 1370
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1374
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1380
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_a4
    const/4 v12, 0x0

    .line 1381
    .local v12, expanded:Landroid/view/View;
    const/4 v11, 0x0

    .line 1383
    .local v11, exception:Ljava/lang/Exception;
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_af
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_af} :catch_110

    move-result-object v12

    .line 1388
    :goto_b0
    if-nez v12, :cond_113

    .line 1389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1390
    .local v13, ident:Ljava/lang/String;
    const-string v4, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1391
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 1344
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #content:Landroid/view/ViewGroup;
    .end local v11           #exception:Ljava/lang/Exception;
    .end local v12           #expanded:Landroid/view/View;
    .end local v13           #ident:Ljava/lang/String;
    .end local v15           #largeIcon:Landroid/widget/ImageView;
    .end local v17           #row:Landroid/view/View;
    .end local v19           #vetoButton:Landroid/view/View;
    :cond_f0
    const v4, 0x7f030015

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_2c

    .line 1358
    .restart local v15       #largeIcon:Landroid/widget/ImageView;
    .restart local v17       #row:Landroid/view/View;
    .restart local v19       #vetoButton:Landroid/view/View;
    :cond_fc
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1359
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6b

    .line 1376
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    .restart local v9       #content:Landroid/view/ViewGroup;
    :cond_109
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a4

    .line 1385
    .restart local v11       #exception:Ljava/lang/Exception;
    .restart local v12       #expanded:Landroid/view/View;
    :catch_110
    move-exception v10

    .line 1386
    .local v10, e:Ljava/lang/RuntimeException;
    move-object v11, v10

    goto :goto_b0

    .line 1396
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_113
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_11f

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-nez v4, :cond_122

    .line 1397
    :cond_11f
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1400
    :cond_122
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1403
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 1405
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1406
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 1407
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1408
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    .line 1410
    const/4 v4, 0x1

    goto/16 :goto_11
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .registers 5
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2266
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2267
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_b

    .line 2268
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2270
    :cond_b
    return-object v0
.end method

.method private loadNotificationShade()V
    .registers 12

    .prologue
    .line 1147
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1149
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_20

    .line 1152
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v5, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1153
    .local v5, row:Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1156
    .end local v5           #row:Landroid/view/View;
    :cond_20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_26
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_40

    .line 1158
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1159
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 1160
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1164
    .end local v1           #child:Landroid/view/View;
    :cond_40
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1165
    .local v4, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_44

    .line 1168
    .end local v4           #remove:Landroid/view/View;
    :cond_56
    const/4 v2, 0x0

    :goto_57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_72

    .line 1169
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1170
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_6f

    .line 1171
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1168
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1174
    .end local v8           #v:Landroid/view/View;
    :cond_72
    return-void
.end method

.method private makeExpandedVisible()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1643
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_6

    .line 1658
    :goto_5
    return-void

    .line 1646
    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 1647
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 1649
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedView;->requestFocus(I)Z

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    goto :goto_5
.end method

.method private notifyUiVisibilityChanged()V
    .registers 3

    .prologue
    .line 2111
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2114
    :goto_7
    return-void

    .line 2112
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private prepareNavigationBarView()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    return-void
.end method

.method private reloadAllNotificationIcons()V
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v0, :cond_5

    .line 1278
    :goto_4
    return-void

    .line 1276
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeAllViews()V

    .line 1277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    goto :goto_4
.end method

.method private repositionNavigationBar()V
    .registers 4

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_5

    .line 723
    :goto_4
    return-void

    .line 719
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 721
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private setAreThereNotifications()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    .line 1454
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v6

    if-lez v6, :cond_4b

    move v0, v2

    .line 1456
    .local v0, any:Z
    :goto_e
    if-eqz v0, :cond_4d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v6

    if-eqz v6, :cond_4d

    move v1, v2

    .line 1464
    .local v1, clearable:Z
    :goto_19
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v6, :cond_5d

    .line 1465
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 1466
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_4f

    move v6, v2

    :goto_30
    if-eq v1, v6, :cond_4a

    .line 1467
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v2, [F

    if-eqz v1, :cond_51

    move v2, v4

    :goto_3b
    aput v2, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1496
    :cond_4a
    :goto_4a
    return-void

    .end local v0           #any:Z
    .end local v1           #clearable:Z
    :cond_4b
    move v0, v3

    .line 1454
    goto :goto_e

    .restart local v0       #any:Z
    :cond_4d
    move v1, v3

    .line 1456
    goto :goto_19

    .restart local v1       #clearable:Z
    :cond_4f
    move v6, v3

    .line 1466
    goto :goto_30

    :cond_51
    move v2, v5

    .line 1467
    goto :goto_3b

    .line 1473
    :cond_53
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v1, :cond_5b

    :goto_57
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4a

    :cond_5b
    move v4, v5

    goto :goto_57

    .line 1476
    :cond_5d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v1, :cond_72

    :goto_69
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4a

    .line 1477
    :cond_72
    const v4, 0x3ecccccd

    goto :goto_69
.end method

.method private setIntruderAlertVisibility(Z)V
    .registers 4
    .parameter "vis"

    .prologue
    .line 2814
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2815
    return-void

    .line 2814
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 4
    .parameter "n"

    .prologue
    .line 2200
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2201
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_1a

    .line 2203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 2206
    :cond_1a
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 2071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2072
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2073
    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2074
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2075
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2076
    return-void
.end method

.method private tw_loadNotificationShade()V
    .registers 16

    .prologue
    .line 1178
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1180
    .local v0, N:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v11, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v9, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v10, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v0, :cond_62

    .line 1185
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1186
    .local v5, row:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v13

    if-eqz v13, :cond_48

    .line 1187
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1188
    :cond_48
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 1189
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1191
    :cond_5e
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 1194
    .end local v5           #row:Landroid/view/View;
    :cond_62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v8, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_68
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_82

    .line 1197
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1198
    .local v1, child:Landroid/view/View;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7f

    .line 1199
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 1203
    .end local v1           #child:Landroid/view/View;
    :cond_82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    .local v6, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_88
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_a2

    .line 1206
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1207
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9f

    .line 1208
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 1212
    .end local v1           #child:Landroid/view/View;
    :cond_a2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    .local v7, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_a8
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_c2

    .line 1215
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1216
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bf

    .line 1217
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 1221
    .end local v1           #child:Landroid/view/View;
    :cond_c2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1222
    .local v4, remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_c6

    .line 1225
    .end local v4           #remove:Landroid/view/View;
    :cond_d8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1226
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_dc

    .line 1229
    .end local v4           #remove:Landroid/view/View;
    :cond_ee
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1230
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_f2

    .line 1233
    .end local v4           #remove:Landroid/view/View;
    :cond_104
    const/4 v2, 0x0

    :goto_105
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_120

    .line 1234
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1235
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_11d

    .line 1236
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1233
    :cond_11d
    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    .line 1240
    .end local v12           #v:Landroid/view/View;
    :cond_120
    const/4 v2, 0x0

    :goto_121
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_13c

    .line 1241
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1242
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_139

    .line 1243
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1240
    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    .line 1247
    .end local v12           #v:Landroid/view/View;
    :cond_13c
    const/4 v2, 0x0

    :goto_13d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_158

    .line 1248
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1249
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_155

    .line 1250
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1247
    :cond_155
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 1254
    .end local v12           #v:Landroid/view/View;
    :cond_158
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_189

    .line 1255
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1259
    :goto_164
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_191

    .line 1260
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1261
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    :goto_176
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1a0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1a0

    .line 1268
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1272
    :goto_188
    return-void

    .line 1257
    :cond_189
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_164

    .line 1263
    :cond_191
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1264
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_176

    .line 1270
    :cond_1a0
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_188
.end method

.method private updateNotificationIcons()V
    .registers 12

    .prologue
    .line 1289
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_35

    .line 1290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tw_loadNotificationShade()V

    .line 1297
    :goto_7
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1300
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1306
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v0, :cond_39

    .line 1309
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1292
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    goto :goto_7

    .line 1312
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_3f
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_59

    .line 1314
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1315
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_56

    .line 1316
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1320
    .end local v1           #child:Landroid/view/View;
    :cond_59
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1321
    .local v5, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_5d

    .line 1324
    .end local v5           #remove:Landroid/view/View;
    :cond_6f
    const/4 v2, 0x0

    :goto_70
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_8a

    .line 1325
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1326
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_87

    .line 1327
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v8, v2, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1324
    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 1330
    .end local v8           #v:Landroid/view/View;
    :cond_8a
    return-void
.end method

.method private updatePropFactorValue()V
    .registers 3

    .prologue
    .line 2957
    const/high16 v0, 0x4361

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPropFactor:Ljava/lang/Float;

    .line 2958
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .parameter "v"

    .prologue
    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 10
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 773
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 774
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 775
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget;->updateWidget()V

    .line 776
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 15
    .parameter "key"
    .parameter "notification"

    .prologue
    const/16 v11, 0x3eb

    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v9

    .line 793
    .local v9, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v9, :cond_9

    .line 845
    :goto_8
    return-void

    .line 795
    :cond_9
    const/4 v10, 0x0

    .line 797
    .local v10, immersive:Z
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_a2

    move-result v10

    .line 803
    :goto_12
    if-eqz v10, :cond_87

    .line 804
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7e

    .line 805
    const-string v0, "PhoneStatusBar"

    const-string v1, "Presenting high-priority notification in immersive activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 810
    .local v6, alertIcon:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 811
    .local v7, alertText:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 817
    .local v8, button:Landroid/view/View;
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 843
    .end local v6           #alertIcon:Landroid/widget/ImageView;
    .end local v7           #alertText:Landroid/widget/TextView;
    .end local v8           #button:Landroid/view/View;
    :cond_7e
    :goto_7e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 844
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_8

    .line 828
    :cond_87
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9e

    .line 830
    const-string v0, "PhoneStatusBar"

    const-string v1, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :try_start_94
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_9b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_94 .. :try_end_9b} :catch_9c

    goto :goto_7e

    .line 833
    :catch_9c
    move-exception v0

    goto :goto_7e

    .line 839
    :cond_9e
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    goto :goto_7e

    .line 801
    :catch_a2
    move-exception v0

    goto/16 :goto_12
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 13
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v9, 0x0

    .line 1083
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v7, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1086
    .local v7, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1088
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 1093
    .local v0, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1143
    .end local v7           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_62
    return-object v7

    .line 1098
    .restart local v7       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_63
    new-instance v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v6, p1, p2, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1101
    .local v6, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v1, :cond_ae

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1102
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD:MiniCon-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1106
    goto :goto_62

    .line 1111
    :cond_ae
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_fb

    .line 1112
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1116
    goto :goto_62

    .line 1119
    :cond_da
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1122
    goto/16 :goto_62

    .line 1126
    :cond_fb
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1129
    goto/16 :goto_62

    .line 1137
    :cond_11c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v8

    .line 1141
    .local v8, pos:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    goto/16 :goto_62
.end method

.method public animateCollapse()V
    .registers 2

    .prologue
    .line 1674
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    .line 1675
    return-void
.end method

.method public animateCollapse(Z)V
    .registers 3
    .parameter "excludeRecents"

    .prologue
    .line 1678
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(ZF)V

    .line 1679
    return-void
.end method

.method public animateCollapse(ZF)V
    .registers 7
    .parameter "excludeRecents"
    .parameter "velocityMultiplier"

    .prologue
    const/16 v3, 0x3fd

    const/4 v2, 0x1

    .line 1691
    if-nez p1, :cond_f

    .line 1692
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1693
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 1696
    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v1, :cond_14

    .line 1711
    :goto_13
    return-void

    .line 1701
    :cond_14
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_29

    .line 1702
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v1

    .line 1708
    .local v0, y:I
    :goto_1b
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 1709
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 1710
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_13

    .line 1704
    .end local v0           #y:I
    :cond_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #y:I
    goto :goto_1b
.end method

.method public animateExpand()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1662
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 1671
    :cond_9
    :goto_9
    return-void

    .line 1665
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v0, :cond_9

    .line 1669
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 1670
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_9
.end method

.method applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .registers 9
    .parameter "sbn"
    .parameter "content"

    .prologue
    .line 1414
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x109009e

    if-eq v3, v4, :cond_2d

    .line 1416
    const/4 v2, 0x0

    .line 1418
    .local v2, version:I
    :try_start_e
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1419
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_2e

    .line 1423
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_1d
    if-lez v2, :cond_4a

    const/16 v3, 0x9

    if-ge v2, v3, :cond_4a

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v3, :cond_4a

    .line 1424
    const v3, 0x7f02003d

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1429
    .end local v2           #version:I
    :cond_2d
    :goto_2d
    return-void

    .line 1420
    .restart local v2       #version:I
    :catch_2e
    move-exception v0

    .line 1421
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 1426
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4a
    const v3, 0x7f02003c

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2d
.end method

.method public disable(I)V
    .registers 13
    .parameter "state"

    .prologue
    const/high16 v10, 0x100

    const/high16 v9, 0x80

    const/high16 v8, 0x8

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    .line 1509
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1510
    .local v2, old:I
    xor-int v0, p1, v2

    .line 1511
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1519
    .local v1, flagdbg:Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    and-int v4, p1, v6

    if-eqz v4, :cond_11b

    const-string v4, "EXPAND"

    :goto_20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    and-int v4, v0, v6

    if-eqz v4, :cond_11f

    const-string v4, "* "

    :goto_29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    and-int v4, p1, v7

    if-eqz v4, :cond_123

    const-string v4, "ICONS"

    :goto_32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    and-int v4, v0, v7

    if-eqz v4, :cond_127

    const-string v4, "* "

    :goto_3b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    const/high16 v4, 0x4

    and-int/2addr v4, p1

    if-eqz v4, :cond_12b

    const-string v4, "ALERTS"

    :goto_45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    const/high16 v4, 0x4

    and-int/2addr v4, v0

    if-eqz v4, :cond_12f

    const-string v4, "* "

    :goto_4f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    and-int v4, p1, v8

    if-eqz v4, :cond_133

    const-string v4, "TICKER"

    :goto_58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    and-int v4, v0, v8

    if-eqz v4, :cond_137

    const-string v4, "* "

    :goto_61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const/high16 v4, 0x10

    and-int/2addr v4, p1

    if-eqz v4, :cond_13b

    const-string v4, "SYSTEM_INFO"

    :goto_6b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    if-eqz v4, :cond_13f

    const-string v4, "* "

    :goto_75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    const/high16 v4, 0x40

    and-int/2addr v4, p1

    if-eqz v4, :cond_143

    const-string v4, "BACK"

    :goto_7f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    const/high16 v4, 0x40

    and-int/2addr v4, v0

    if-eqz v4, :cond_147

    const-string v4, "* "

    :goto_89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    const/high16 v4, 0x20

    and-int/2addr v4, p1

    if-eqz v4, :cond_14b

    const-string v4, "HOME"

    :goto_93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    const/high16 v4, 0x20

    and-int/2addr v4, v0

    if-eqz v4, :cond_14f

    const-string v4, "* "

    :goto_9d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    and-int v4, p1, v10

    if-eqz v4, :cond_153

    const-string v4, "RECENT"

    :goto_a6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    and-int v4, v0, v10

    if-eqz v4, :cond_157

    const-string v4, "* "

    :goto_af
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    and-int v4, p1, v9

    if-eqz v4, :cond_15b

    const-string v4, "CLOCK"

    :goto_b8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    and-int v4, v0, v9

    if-eqz v4, :cond_15f

    const-string v4, "* "

    :goto_c1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    and-int v4, v0, v9

    if-eqz v4, :cond_de

    .line 1542
    and-int v4, p1, v9

    if-nez v4, :cond_163

    const/4 v3, 0x1

    .line 1543
    .local v3, show:Z
    :goto_db
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 1545
    .end local v3           #show:Z
    :cond_de
    and-int v4, v0, v6

    if-eqz v4, :cond_e9

    .line 1546
    and-int v4, p1, v6

    if-eqz v4, :cond_e9

    .line 1547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 1551
    :cond_e9
    const/high16 v4, 0x160

    and-int/2addr v4, v0

    if-eqz v4, :cond_109

    .line 1555
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_f7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 1557
    :cond_f7
    and-int v4, p1, v10

    if-eqz v4, :cond_109

    .line 1559
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1560
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v5, 0x3fd

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 1564
    :cond_109
    and-int v4, v0, v7

    if-eqz v4, :cond_179

    .line 1565
    and-int v4, p1, v7

    if-eqz v4, :cond_16e

    .line 1566
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_166

    .line 1567
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 1581
    :cond_11a
    :goto_11a
    return-void

    .line 1520
    :cond_11b
    const-string v4, "expand"

    goto/16 :goto_20

    .line 1521
    :cond_11f
    const-string v4, " "

    goto/16 :goto_29

    .line 1522
    :cond_123
    const-string v4, "icons"

    goto/16 :goto_32

    .line 1523
    :cond_127
    const-string v4, " "

    goto/16 :goto_3b

    .line 1524
    :cond_12b
    const-string v4, "alerts"

    goto/16 :goto_45

    .line 1525
    :cond_12f
    const-string v4, " "

    goto/16 :goto_4f

    .line 1526
    :cond_133
    const-string v4, "ticker"

    goto/16 :goto_58

    .line 1527
    :cond_137
    const-string v4, " "

    goto/16 :goto_61

    .line 1528
    :cond_13b
    const-string v4, "system_info"

    goto/16 :goto_6b

    .line 1529
    :cond_13f
    const-string v4, " "

    goto/16 :goto_75

    .line 1530
    :cond_143
    const-string v4, "back"

    goto/16 :goto_7f

    .line 1531
    :cond_147
    const-string v4, " "

    goto/16 :goto_89

    .line 1532
    :cond_14b
    const-string v4, "home"

    goto/16 :goto_93

    .line 1533
    :cond_14f
    const-string v4, " "

    goto/16 :goto_9d

    .line 1534
    :cond_153
    const-string v4, "recent"

    goto/16 :goto_a6

    .line 1535
    :cond_157
    const-string v4, " "

    goto/16 :goto_af

    .line 1536
    :cond_15b
    const-string v4, "clock"

    goto/16 :goto_b8

    .line 1537
    :cond_15f
    const-string v4, " "

    goto/16 :goto_c1

    .line 1542
    :cond_163
    const/4 v3, 0x0

    goto/16 :goto_db

    .line 1569
    :cond_166
    const/4 v4, 0x0

    const v5, 0x10a0001

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_11a

    .line 1572
    :cond_16e
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v4, :cond_11a

    .line 1573
    const/4 v4, 0x1

    const/high16 v5, 0x10a

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_11a

    .line 1576
    :cond_179
    and-int v4, v0, v8

    if-eqz v4, :cond_11a

    .line 1577
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_11a

    and-int v4, p1, v8

    if-eqz v4, :cond_11a

    .line 1578
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto :goto_11a
.end method

.method doAnimation()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1774
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v0, :cond_1f

    .line 1777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    .line 1779
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_20

    .line 1781
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1782
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performExpand()V

    .line 1797
    :cond_1f
    :goto_1f
    return-void

    .line 1785
    :cond_20
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    .line 1787
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1788
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1789
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    goto :goto_1f

    .line 1792
    :cond_36
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1793
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1f
.end method

.method doRevealAnimation()V
    .registers 6

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1820
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    .line 1821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    .line 1822
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_31

    .line 1823
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 1824
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1832
    :cond_30
    :goto_30
    return-void

    .line 1826
    :cond_31
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1827
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 1828
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_30
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2279
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2280
    :try_start_3
    const-string v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpanded="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimVel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimAccel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurAnimationTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mAnimLastTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimatingReveal="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mViewDelta="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedDialog: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_317

    .line 2300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mOngoingNotifications: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLatestNotifications: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    :goto_1b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNoNotificationsTitle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCloseView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScrollView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " scroll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    monitor-exit v6
    :try_end_245
    .catchall {:try_start_3 .. :try_end_245} :catchall_335

    .line 2313
    const-string v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2314
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_338

    .line 2315
    const-string v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2321
    :goto_253
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    .line 2322
    :try_start_256
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2323
    .local v0, N:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notification icons: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    const/4 v2, 0x0

    .local v2, i:I
    :goto_273
    if-ge v2, v0, :cond_33f

    .line 2325
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 2326
    .local v1, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2327
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 2328
    .local v4, n:Lcom/android/internal/statusbar/StatusBarNotification;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " priority="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         notification="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         tickerText=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_313
    .catchall {:try_start_256 .. :try_end_313} :catchall_38a

    .line 2324
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_273

    .line 2303
    .end local v0           #N:I
    .end local v1           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2           #i:I
    .end local v4           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_317
    :try_start_317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mPile: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 2311
    :catchall_335
    move-exception v5

    monitor-exit v6
    :try_end_337
    .catchall {:try_start_317 .. :try_end_337} :catchall_335

    throw v5

    .line 2317
    :cond_338
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_253

    .line 2332
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_33f
    :try_start_33f
    monitor-exit v6
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_38a

    .line 2334
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    const/4 v2, 0x0

    :goto_35d
    if-ge v2, v0, :cond_38d

    .line 2337
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2338
    .local v3, ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2336
    add-int/lit8 v2, v2, 0x1

    goto :goto_35d

    .line 2332
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_38a
    move-exception v5

    :try_start_38b
    monitor-exit v6
    :try_end_38c
    .catchall {:try_start_38b .. :try_end_38c} :catchall_38a

    throw v5

    .line 2368
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_38d
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2369
    return-void
.end method

.method getExpandedHeight(I)I
    .registers 4
    .parameter "disph"

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .registers 9
    .parameter "layoutParams"

    .prologue
    .line 633
    const/4 v6, 0x0

    .line 634
    .local v6, opaque:Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7de

    const v4, 0x820100

    if-eqz v6, :cond_34

    const/4 v5, -0x1

    :goto_f
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 642
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 643
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 645
    :cond_21
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 646
    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 647
    const v1, 0x7f0c0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 648
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 650
    return-object v0

    .line 634
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_34
    const/4 v5, -0x3

    goto :goto_f
.end method

.method protected getStatusBarGravity()I
    .registers 2

    .prologue
    .line 685
    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .registers 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 690
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .registers 11
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 2215
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 2217
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    .line 2221
    :goto_13
    return-void

    .line 2218
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public hideCallOnGoingView()V
    .registers 3

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeView(Landroid/view/View;)V

    .line 3077
    return-void
.end method

.method incrementAnim()V
    .registers 9

    .prologue
    .line 1806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1807
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 1808
    .local v3, t:F
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 1809
    .local v5, y:F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 1810
    .local v4, v:F
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1811
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 1812
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 1813
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 1816
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20
    .parameter "event"

    .prologue
    .line 1949
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_b

    .line 1950
    const/4 v12, 0x0

    .line 2065
    :goto_a
    return v12

    .line 1953
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1954
    .local v1, action:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v6

    .line 1955
    .local v6, statusBarSize:I
    mul-int/lit8 v3, v6, 0x2

    .line 1956
    .local v3, hitSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v10, v12

    .line 1957
    .local v10, y:I
    if-nez v1, :cond_e1

    .line 1958
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v12, :cond_bc

    .line 1959
    sub-int v12, v6, v10

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    .line 1964
    :goto_2c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v12, :cond_34

    if-lt v10, v3, :cond_43

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v12, :cond_66

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v12, v3

    if-le v10, v12, :cond_66

    .line 1970
    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v8, v12

    .line 1971
    .local v8, x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1972
    .local v2, edgeBorder:I
    if-lt v8, v2, :cond_66

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v12, v2

    if-ge v8, v12, :cond_66

    .line 1973
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v12, :cond_de

    const/4 v12, 0x1

    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 1974
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1978
    .end local v2           #edgeBorder:I
    .end local v8           #x:I
    :cond_66
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    if-eqz v12, :cond_90

    .line 1979
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    .line 1980
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAutoBrightNess:Z

    if-nez v12, :cond_90

    .line 1981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v14, 0x7d0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2057
    :cond_90
    :goto_90
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b9

    .line 2058
    :cond_9e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    if-eqz v12, :cond_b9

    .line 2059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 2060
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2065
    :cond_b9
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1961
    :cond_bc
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/TrackingView;->getLocationOnScreen([I)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    sub-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    goto/16 :goto_2c

    .line 1973
    .restart local v2       #edgeBorder:I
    .restart local v8       #x:I
    :cond_de
    const/4 v12, 0x0

    goto/16 :goto_5e

    .line 1986
    .end local v2           #edgeBorder:I
    .end local v8           #x:I
    :cond_e1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    if-eqz v12, :cond_90

    .line 1987
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v12

    add-int v4, v6, v12

    .line 1989
    .local v4, minY:I
    const/4 v12, 0x2

    if-ne v1, v12, :cond_150

    .line 1990
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v12, :cond_112

    if-ge v10, v4, :cond_112

    .line 1992
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    if-eqz v12, :cond_90

    .line 1993
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_90

    .line 1994
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doBrightNess(Landroid/view/MotionEvent;)V

    .line 1995
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 2001
    :cond_112
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    if-eqz v12, :cond_13f

    .line 2002
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAutoBrightNess:Z

    if-nez v12, :cond_133

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_133

    .line 2003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2005
    :cond_133
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13f

    .line 2006
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    .line 2011
    :cond_13f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 2012
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_90

    .line 2014
    :cond_150
    const/4 v12, 0x1

    if-eq v1, v12, :cond_156

    const/4 v12, 0x3

    if-ne v1, v12, :cond_90

    .line 2016
    :cond_156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    .line 2019
    .local v11, yVel:F
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_1bf

    const/4 v5, 0x1

    .line 2021
    .local v5, negative:Z
    :goto_16d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 2022
    .local v9, xVel:F
    const/4 v12, 0x0

    cmpg-float v12, v9, v12

    if-gez v12, :cond_17b

    .line 2023
    neg-float v9, v9

    .line 2025
    :cond_17b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    cmpl-float v12, v9, v12

    if-lez v12, :cond_187

    .line 2026
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 2029
    :cond_187
    float-to-double v12, v11

    float-to-double v14, v9

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v7, v12

    .line 2030
    .local v7, vel:F
    if-eqz v5, :cond_191

    .line 2031
    neg-float v7, v7

    .line 2043
    :cond_191
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    if-eqz v12, :cond_1ac

    .line 2044
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_1ac

    .line 2045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v13, 0x7d0

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2048
    :cond_1ac
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsBrightNessMode:I

    if-nez v12, :cond_90

    .line 2049
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v12, v10

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto/16 :goto_90

    .line 2019
    .end local v5           #negative:Z
    .end local v7           #vel:F
    .end local v9           #xVel:F
    :cond_1bf
    const/4 v5, 0x0

    goto :goto_16d
.end method

.method protected loadDimens()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2845
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2847
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 2850
    const v3, 0x105000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2852
    .local v1, newIconSize:I
    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2855
    .local v0, newIconHPadding:I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_26

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_2a

    .line 2857
    :cond_26
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 2858
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 2862
    :cond_2a
    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 2864
    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    .line 2865
    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    .line 2866
    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    .line 2867
    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    .line 2869
    const v3, 0x7f0a0017

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    .line 2870
    const v3, 0x7f0a0018

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    .line 2872
    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    .line 2873
    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    .line 2875
    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 2878
    return-void
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;
    .registers 11
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2134
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .registers 23
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 1012
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v16, v0

    .line 1013
    .local v16, n:Landroid/app/Notification;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 1014
    .local v17, remoteViews:Landroid/widget/RemoteViews;
    if-nez v17, :cond_10

    .line 1015
    const/4 v4, 0x0

    .line 1075
    :goto_f
    return-object v4

    .line 1019
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1023
    .local v14, inflater:Landroid/view/LayoutInflater;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_e1

    const v4, 0x7f030027

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1028
    .local v18, row:Landroid/view/View;
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v19

    .line 1029
    .local v19, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f080073

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1033
    const v4, 0x7f0f0080

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1034
    .local v15, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_ed

    .line 1035
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1042
    :goto_60
    const v4, 0x7f0f0074

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1043
    .local v9, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1045
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1046
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_fa

    .line 1047
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1050
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_95
    const/4 v12, 0x0

    .line 1057
    .local v12, expanded:Landroid/view/View;
    const/4 v11, 0x0

    .line 1059
    .local v11, exception:Ljava/lang/Exception;
    :try_start_97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_a0} :catch_101

    move-result-object v12

    .line 1064
    :goto_a1
    if-nez v12, :cond_104

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1066
    .local v13, ident:Ljava/lang/String;
    const-string v4, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 1023
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #content:Landroid/view/ViewGroup;
    .end local v11           #exception:Ljava/lang/Exception;
    .end local v12           #expanded:Landroid/view/View;
    .end local v13           #ident:Ljava/lang/String;
    .end local v15           #largeIcon:Landroid/widget/ImageView;
    .end local v18           #row:Landroid/view/View;
    .end local v19           #vetoButton:Landroid/view/View;
    :cond_e1
    const v4, 0x7f030015

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_2a

    .line 1037
    .restart local v15       #largeIcon:Landroid/widget/ImageView;
    .restart local v18       #row:Landroid/view/View;
    .restart local v19       #vetoButton:Landroid/view/View;
    :cond_ed
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1038
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_60

    .line 1052
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    .restart local v9       #content:Landroid/view/ViewGroup;
    :cond_fa
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_95

    .line 1061
    .restart local v11       #exception:Ljava/lang/Exception;
    .restart local v12       #expanded:Landroid/view/View;
    :catch_101
    move-exception v10

    .line 1062
    .local v10, e:Ljava/lang/RuntimeException;
    move-object v11, v10

    goto :goto_a1

    .line 1069
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_104
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1070
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1073
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 1075
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    aput-object v9, v4, v6

    const/4 v6, 0x2

    aput-object v12, v4, v6

    goto/16 :goto_f
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .registers 26

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 350
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 352
    .local v16, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 355
    const v21, 0x105000e

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 362
    const/4 v4, 0x0

    .line 363
    .local v4, expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_6b6

    .line 365
    const v21, 0x7f030023

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    check-cast v4, Lcom/android/systemui/statusbar/phone/ExpandedView;

    .line 378
    .restart local v4       #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    :goto_33
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 380
    const v21, 0x7f030003

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setClickable(Z)V

    .line 392
    const/16 v17, 0x0

    .line 393
    .local v17, sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_6c7

    .line 394
    const v21, 0x7f030022

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17           #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    check-cast v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 400
    .restart local v17       #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 401
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 404
    :try_start_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v18

    .line 405
    .local v18, showNav:Z
    if-eqz v18, :cond_b1

    .line 406
    const v21, 0x7f030004

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_b1} :catch_712

    .line 416
    .end local v18           #showNav:Z
    :cond_b1
    :goto_b1
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 417
    const v21, 0x7f0f0026

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 418
    const v21, 0x7f0f0025

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 419
    const v21, 0x7f0f0024

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 421
    const v21, 0x7f0f0023

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    .line 422
    const v21, 0x7f0f002c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 424
    new-instance v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    .line 425
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    .line 426
    const v21, 0x7f0f0042

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    const v21, 0x7f0f0041

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setAlpha(F)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setEnabled(Z)V

    .line 433
    const v21, 0x7f0f003f

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 434
    const v21, 0x7f0f0040

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/view/View;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    const v21, 0x7f0f00e4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCameraButton:Landroid/view/View;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCameraButton:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCameraButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    const v21, 0x7f0f0043

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ScrollView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 439
    const v21, 0x7f0f00e5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/wanam/systemui/StBar/PowerWidget;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/wanam/systemui/StBar/PowerWidget;

    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_6d8

    .line 440
    const v21, 0x7f0f00ce

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    .line 441
    const v21, 0x7f0f00d1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    .line 442
    const v21, 0x7f0f00d0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 443
    const v21, 0x7f0f00d3

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 444
    const v21, 0x7f0f00cf

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    .line 445
    const v21, 0x7f0f00d2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 453
    :goto_26b
    new-instance v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 455
    const v21, 0x7f0f002e

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 456
    .local v20, tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 459
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_6f7

    .line 460
    const v21, 0x7f03002a

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    .line 466
    :goto_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v21, v0

    const v22, 0x7f0f00a8

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 470
    const/high16 v21, 0x7f0a

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 476
    new-instance v21, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 477
    new-instance v21, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v22, v0

    const v21, 0x7f0f002a

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->addIconView(Landroid/widget/ImageView;)V

    new-instance v21, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController2:Lcom/android/systemui/statusbar/policy/BatteryControllerBar;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController2:Lcom/android/systemui/statusbar/policy/BatteryControllerBar;

    move-object/from16 v22, v0

    const v21, 0x7f0f00e6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerBar;->addIconView(Landroid/widget/ImageView;)V

    .line 481
    const v21, 0x7f0f007b

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 487
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_3c5

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "display_battery_percentage"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "display_battery_percentage"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_70e

    const/16 v21, 0x0

    :goto_3be
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :cond_3c5
    new-instance v21, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 504
    new-instance v21, Lcom/android/systemui/statusbar/policy/NetworkNotificationUI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/android/systemui/statusbar/policy/NetworkNotificationUI;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkNotificationUI:Lcom/android/systemui/statusbar/policy/NetworkNotificationUI;

    .line 515
    const v21, 0x7f0f0029

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 517
    .local v19, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v22, v0

    const v21, 0x7f0f001d

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWimaxIconView(Landroid/widget/ImageView;)V

    .line 521
    new-instance v21, Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    .line 525
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 526
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v21, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 534
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v21, :cond_5d4

    .line 536
    const v21, 0x7f0f00ba

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWifiLayout:Landroid/widget/LinearLayout;

    .line 537
    const v21, 0x7f0f00bc

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothLayout:Landroid/widget/LinearLayout;

    .line 538
    const v21, 0x7f0f00be

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGpsLayout:Landroid/widget/LinearLayout;

    .line 539
    const v21, 0x7f0f00c4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoRotationLayout:Landroid/widget/LinearLayout;

    .line 540
    const v21, 0x7f0f00c2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSilentModeLayout:Landroid/widget/LinearLayout;

    .line 541
    const v21, 0x7f0f00c8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAirplaneModeLayout:Landroid/widget/LinearLayout;

    .line 542
    const v21, 0x7f0f00c0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMobileDataLayout:Landroid/widget/LinearLayout;

    .line 543
    const v21, 0x7f0f00c6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m4GModeLayout:Landroid/widget/LinearLayout;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWifiLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGpsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoRotationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSilentModeLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    new-instance v13, Lcom/android/systemui/statusbar/policy/WifiController;

    const v21, 0x7f0f00bb

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v13, v3, v0}, Lcom/android/systemui/statusbar/policy/WifiController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 552
    .local v13, mWifi:Lcom/android/systemui/statusbar/policy/WifiController;
    new-instance v9, Lcom/android/systemui/statusbar/policy/BluetoothController;

    const v21, 0x7f0f00bd

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v9, v3, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 553
    .local v9, mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;
    new-instance v10, Lcom/android/systemui/statusbar/policy/LocationController;

    const v21, 0x7f0f00bf

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v10, v3, v0}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 554
    .local v10, mGps:Lcom/android/systemui/statusbar/policy/LocationController;
    new-instance v8, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    const v21, 0x7f0f00c5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v8, v3, v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 555
    .local v8, mAutoRotation:Lcom/android/systemui/statusbar/policy/AutoRotateController;
    new-instance v12, Lcom/android/systemui/statusbar/policy/SilentModeController;

    const v21, 0x7f0f00c3

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v12, v3, v0}, Lcom/android/systemui/statusbar/policy/SilentModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 556
    .local v12, mSilentMode:Lcom/android/systemui/statusbar/policy/SilentModeController;
    new-instance v7, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    const v21, 0x7f0f00c9

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v7, v3, v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 557
    .local v7, mAirplaneMode:Lcom/android/systemui/statusbar/policy/AirplaneModeController;
    new-instance v11, Lcom/android/systemui/statusbar/policy/MobileDataController;

    const v21, 0x7f0f00c1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v11, v3, v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 558
    .local v11, mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;
    new-instance v6, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;

    const v21, 0x7f0f00c7

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-object/from16 v0, v21

    invoke-direct {v6, v3, v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    .line 567
    .local v6, m4GButton:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutoRotationLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->m4GModeLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    const v21, 0x7f0f00c1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 587
    .end local v6           #m4GButton:Lcom/android/systemui/statusbar/policy/WimaxSettingButton;
    .end local v7           #mAirplaneMode:Lcom/android/systemui/statusbar/policy/AirplaneModeController;
    .end local v8           #mAutoRotation:Lcom/android/systemui/statusbar/policy/AutoRotateController;
    .end local v9           #mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;
    .end local v10           #mGps:Lcom/android/systemui/statusbar/policy/LocationController;
    .end local v11           #mMobileData:Lcom/android/systemui/statusbar/policy/MobileDataController;
    .end local v12           #mSilentMode:Lcom/android/systemui/statusbar/policy/SilentModeController;
    .end local v13           #mWifi:Lcom/android/systemui/statusbar/policy/WifiController;
    :cond_5d4
    const v21, 0x7f07000e

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    .line 588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsStatusBarBrightNess:Z

    move/from16 v21, v0

    if-eqz v21, :cond_615

    .line 589
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkAutoBrightNess()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAutoBrightNess:Z

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_brightness_mode"

    invoke-static/range {v22 .. v22}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightNessContentObs:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightNessContentObserver;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 592
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePropFactorValue()V

    .line 596
    :cond_615
    const v21, 0x7f070007

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    .line 597
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    move/from16 v21, v0

    if-eqz v21, :cond_66d

    .line 598
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 600
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 603
    const v21, 0x7f0f00cc

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 604
    .local v14, miniControllerLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 609
    .end local v14           #miniControllerLayout:Landroid/widget/LinearLayout;
    .end local v15           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_66d
    const v21, 0x7f070009

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/wanam/systemui/StBar/PowerWidget;

    move-object/from16 v1, v0

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupWidget()V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v21, v0

    const v22, 0x7f0f002b

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setClickable(Z)V

    .line 629
    return-object v17

    .line 367
    .end local v5           #filter:Landroid/content/IntentFilter;
    .end local v17           #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .end local v19           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v20           #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_6b6
    const v21, 0x7f030008

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    check-cast v4, Lcom/android/systemui/statusbar/phone/ExpandedView;

    .restart local v4       #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    goto/16 :goto_33

    .line 396
    .restart local v17       #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    :cond_6c7
    const v21, 0x7f030006

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .end local v17           #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    check-cast v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .restart local v17       #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    goto/16 :goto_75

    .line 448
    :cond_6d8
    const v21, 0x7f0f0044

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    goto/16 :goto_26b

    .line 462
    .restart local v20       #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_6f7
    const v21, 0x7f03001e

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    goto/16 :goto_2ae

    .line 495
    :cond_70e
    const/16 v21, 0x8

    goto/16 :goto_3be

    .line 411
    .end local v20           #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :catch_712
    move-exception v21

    goto/16 :goto_b1
.end method

.method onBarViewAttached()V
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 2375
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 2382
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2383
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_f

    .line 2384
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 2387
    :cond_f
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2396
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2397
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2400
    :cond_2a
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2401
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2402
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2403
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 2405
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2406
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 1008
    return-void
.end method

.method onTrackingViewAttached()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 2413
    const/4 v1, -0x3

    .line 2415
    .local v1, pixelFormat:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2416
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2417
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2418
    const/16 v2, 0x7e1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2419
    const/16 v2, 0x1328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2425
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2426
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2428
    :cond_2e
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2429
    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2430
    const-string v2, "StatusBarExpanded"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2431
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 2432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 2433
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 2435
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2436
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2439
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2440
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2441
    return-void
.end method

.method performCollapse()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1738
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v1, :cond_6

    .line 1771
    :cond_5
    :goto_5
    return-void

    .line 1743
    :cond_6
    const-string v1, "PhoneStatusBar"

    const-string v2, " performCollapse() : sendBroadcast COLLAPSED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.phone.COLLAPSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v0, collapseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1748
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 1749
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 1750
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1751
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1752
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1753
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    .line 1755
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_51

    .line 1756
    const/4 v1, 0x1

    const/high16 v2, 0x10a

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    .line 1759
    :cond_51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v1, :cond_5

    .line 1764
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1766
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 1767
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 1768
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1769
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    goto :goto_5
.end method

.method performDisableActions(I)V
    .registers 8
    .parameter "net"

    .prologue
    const/high16 v5, 0x8

    const/high16 v4, 0x2

    const/high16 v3, 0x1

    .line 2637
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2638
    .local v1, old:I
    xor-int v0, p1, v1

    .line 2639
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2642
    and-int v2, v0, v3

    if-eqz v2, :cond_1e

    .line 2643
    and-int v2, p1, v3

    if-eqz v2, :cond_1e

    .line 2644
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_EXPAND: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 2648
    :cond_1e
    and-int v2, v0, v4

    if-eqz v2, :cond_57

    .line 2649
    and-int v2, p1, v4

    if-eqz v2, :cond_45

    .line 2650
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_3d

    .line 2652
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2653
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 2668
    :cond_3c
    :goto_3c
    return-void

    .line 2655
    :cond_3d
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_3c

    .line 2658
    :cond_45
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_3c

    .line 2660
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_3c

    .line 2663
    :cond_57
    and-int v2, v0, v5

    if-eqz v2, :cond_3c

    .line 2664
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_3c

    and-int v2, p1, v5

    if-eqz v2, :cond_3c

    .line 2665
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto :goto_3c
.end method

.method performExpand()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1715
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 1732
    :cond_8
    :goto_8
    return-void

    .line 1718
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v0, :cond_8

    .line 1722
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 1723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 1724
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_8
.end method

.method performFling(IFZ)V
    .registers 12
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/16 v7, 0x64

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 1876
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 1878
    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 1879
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 1883
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v2, :cond_70

    .line 1884
    if-nez p3, :cond_64

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_2f

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_64

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_64

    .line 1890
    :cond_2f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1891
    cmpg-float v2, p2, v5

    if-gez v2, :cond_39

    .line 1892
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 1926
    :cond_39
    :goto_39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1927
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 1928
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 1929
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1930
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1931
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1932
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1933
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopTracking()V

    .line 1934
    return-void

    .line 1897
    .end local v0           #now:J
    :cond_64
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1898
    cmpl-float v2, p2, v5

    if-lez v2, :cond_39

    .line 1899
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_39

    .line 1903
    :cond_70
    if-nez p3, :cond_8e

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_8e

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_99

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_99

    .line 1909
    :cond_8e
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1910
    cmpg-float v2, p2, v5

    if-gez v2, :cond_39

    .line 1911
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_39

    .line 1917
    :cond_99
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1918
    cmpl-float v2, p2, v5

    if-lez v2, :cond_39

    .line 1919
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_39
.end method

.method postStartTracing()V
    .registers 5

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2886
    return-void
.end method

.method prepareTracking(IZ)V
    .registers 9
    .parameter "y"
    .parameter "opening"

    .prologue
    const/16 v5, 0x65

    const/16 v3, 0x64

    const/4 v4, 0x1

    .line 1841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 1843
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    .line 1844
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1845
    if-eqz p2, :cond_55

    .line 1846
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 1847
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 1848
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 1849
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1850
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1851
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 1852
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1853
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1855
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 1856
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 1857
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1858
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 1869
    .end local v0           #now:J
    :goto_54
    return-void

    .line 1863
    :cond_55
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v2, :cond_61

    .line 1864
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 1865
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1867
    :cond_61
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_54
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .registers 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 789
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 984
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_23

    .line 987
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v1, :cond_f

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 992
    :cond_f
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 994
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-nez v1, :cond_23

    .line 995
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 999
    :cond_23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1000
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .registers 8
    .parameter "key"

    .prologue
    .line 1432
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1433
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_22

    .line 1434
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v3, 0x0

    .line 1450
    :goto_21
    return-object v3

    .line 1439
    :cond_22
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1440
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE:MiniCon-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1442
    .local v1, expandedParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_57

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1448
    .end local v1           #expandedParent:Landroid/view/ViewGroup;
    :cond_57
    :goto_57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 1450
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_21

    .line 1445
    :cond_5d
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1446
    .local v2, rowParent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_57

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_57
.end method

.method public setHardKeyboardStatus(ZZ)V
    .registers 3
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 2131
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 4
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 2129
    return-void
.end method

.method public setLightsOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    .line 2101
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    if-eqz p1, :cond_28

    .line 2103
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    .line 2107
    :goto_27
    return-void

    .line 2105
    :cond_28
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    goto :goto_27
.end method

.method setNotificationIconVisibility(ZI)V
    .registers 7
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2444
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    .line 2445
    .local v0, old:I
    if-eqz p1, :cond_1b

    const/4 v1, 0x0

    .line 2446
    .local v1, v:I
    :goto_9
    if-eq v0, v1, :cond_1a

    .line 2447
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2448
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2450
    :cond_1a
    return-void

    .line 2445
    .end local v1           #v:I
    :cond_1b
    const/4 v1, 0x4

    goto :goto_9
.end method

.method public setSystemUiVisibility(I)V
    .registers 6
    .parameter "vis"

    .prologue
    .line 2080
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2081
    .local v2, old:I
    xor-int v0, p1, v2

    .line 2083
    .local v0, diff:I
    if-eqz v0, :cond_22

    .line 2084
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2086
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1f

    .line 2087
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    .line 2088
    .local v1, lightsOut:Z
    :goto_11
    if-eqz v1, :cond_16

    .line 2089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 2091
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1f

    .line 2092
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    .line 2096
    .end local v1           #lightsOut:Z
    :cond_1f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged()V

    .line 2098
    :cond_22
    return-void

    .line 2087
    :cond_23
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public showCallOnGoingView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 3061
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    if-nez v1, :cond_16

    .line 3062
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    .line 3063
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    const v2, 0x7f0200e3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3065
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_2c

    .line 3066
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3068
    .local v0, vglp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3070
    .end local v0           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2c
    return-void
.end method

.method public showClock(Z)V
    .registers 5
    .parameter "show"

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f002b

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    .local v0, clock:Landroid/view/View;
    if-eqz v0, :cond_11

    .line 1501
    if-eqz p1, :cond_12

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    :cond_11
    return-void

    .line 1501
    :cond_12
    const/16 v1, 0x8

    goto :goto_e
.end method

.method public start()V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 331
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 334
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->start()V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 341
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 342
    return-void
.end method

.method stopTracking()V
    .registers 2

    .prologue
    .line 1800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    .line 1801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1803
    return-void
.end method

.method public toggleNotificationPanel()V
    .registers 3

    .prologue
    .line 2611
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_11

    const/16 v0, 0x3e9

    .line 2613
    .local v0, msg:I
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 2615
    return-void

    .line 2611
    .end local v0           #msg:I
    :cond_11
    const/16 v0, 0x3e8

    goto :goto_6
.end method

.method public toggleRecentApps()V
    .registers 3

    .prologue
    .line 2603
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v0, 0x3fd

    .line 2605
    .local v0, msg:I
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 2607
    return-void

    .line 2603
    .end local v0           #msg:I
    :cond_15
    const/16 v0, 0x3fc

    goto :goto_a
.end method

.method public topAppWindowChanged(Z)V
    .registers 3
    .parameter "showMenu"

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_9

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 2125
    :cond_9
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 2126
    :cond_f
    return-void
.end method

.method updateDisplaySize()V
    .registers 3

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2580
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 2581
    return-void
.end method

.method updateExpandedInvisiblePosition()V
    .registers 4

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    if-eqz v0, :cond_20

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_20

    .line 2456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2457
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2460
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_38

    .line 2461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2464
    :cond_38
    return-void
.end method

.method updateExpandedSize()V
    .registers 3

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_27

    .line 2588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_28

    .line 2591
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    .line 2600
    :cond_27
    :goto_27
    return-void

    .line 2593
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_27
.end method

.method updateExpandedViewPos(I)V
    .registers 14
    .parameter "expandedPosition"

    .prologue
    const/16 v11, -0x2710

    const/4 v7, 0x1

    .line 2473
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v3

    .line 2474
    .local v3, h:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2478
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v8, :cond_15

    .line 2479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    .line 2565
    :cond_14
    :goto_14
    return-void

    .line 2485
    :cond_15
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_b8

    .line 2486
    move v6, v3

    .line 2499
    .local v6, pos:I
    :goto_1a
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2500
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2501
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2503
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_14

    .line 2504
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_cb

    .line 2505
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getLocationInWindow([I)V

    .line 2506
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v0, v8, v7

    .line 2509
    .local v0, closePos:I
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_58

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_c8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    :goto_56
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 2511
    :cond_58
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2512
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 2514
    .local v1, contentsBottom:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2532
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    :goto_7d
    move v4, v3

    .line 2533
    .local v4, max:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_88

    .line 2534
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2536
    :cond_88
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2537
    .local v5, min:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_94

    .line 2538
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2541
    :cond_94
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_d5

    .line 2542
    .local v7, visible:Z
    :goto_9f
    if-nez v7, :cond_a6

    .line 2545
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2547
    :cond_a6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2552
    if-eq p1, v11, :cond_14

    .line 2554
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    goto/16 :goto_14

    .line 2488
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_b8
    if-ne p1, v11, :cond_be

    .line 2489
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1a

    .line 2492
    .end local v6           #pos:I
    :cond_be
    if-gt p1, v2, :cond_c6

    .line 2493
    move v6, p1

    .line 2497
    .restart local v6       #pos:I
    :goto_c1
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1a

    .line 2495
    .end local v6           #pos:I
    :cond_c6
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_c1

    .line 2509
    .restart local v0       #closePos:I
    :cond_c8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto :goto_56

    .line 2530
    .end local v0           #closePos:I
    :cond_cb
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v9, v9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_7d

    .line 2541
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_d5
    const/4 v7, 0x0

    goto :goto_9f
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 8
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 783
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 784
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 25
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    .line 851
    .local v17, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v17, :cond_27

    .line 852
    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification for unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_26
    return-void

    .line 856
    :cond_27
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    .line 857
    .local v18, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 859
    .local v16, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 876
    .local v12, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_1c1

    if-eqz v12, :cond_1c1

    if-eqz v16, :cond_1c1

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c1

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c1

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c1

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-ne v4, v7, :cond_1c1

    const/4 v13, 0x1

    .line 884
    .local v13, contentsUnchanged:Z
    :goto_6a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v9, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_1c4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    if-ne v4, v7, :cond_1c4

    const/16 v19, 0x1

    .line 888
    .local v19, orderUnchanged:Z
    :goto_86
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1c8

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c8

    const/16 v21, 0x1

    .line 893
    .local v21, updateTicker:Z
    :goto_a4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_1cf

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 894
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 895
    .local v20, rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1cc

    const/4 v15, 0x1

    .line 906
    .local v15, isFirstAnyway:Z
    :goto_c7
    if-eqz v13, :cond_252

    if-nez v19, :cond_cd

    if-eqz v15, :cond_252

    .line 908
    :cond_cd
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 912
    :try_start_d3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_20f

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_20f

    .line 913
    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE:MiniCon-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 920
    :goto_108
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 921
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_21c

    .line 922
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 926
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_12a
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v11, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 937
    .local v6, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_226

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t update icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_171} :catch_173

    goto/16 :goto_26

    .line 949
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_173
    move-exception v14

    .line 951
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t reapply views for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 953
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 963
    .end local v14           #e:Ljava/lang/RuntimeException;
    :goto_196
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    .line 966
    if-eqz v21, :cond_1b5

    .line 968
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v4, :cond_1ae

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 972
    :cond_1ae
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 976
    :cond_1b5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 977
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_26

    .line 876
    .end local v13           #contentsUnchanged:Z
    .end local v15           #isFirstAnyway:Z
    .end local v19           #orderUnchanged:Z
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    .end local v21           #updateTicker:Z
    :cond_1c1
    const/4 v13, 0x0

    goto/16 :goto_6a

    .line 884
    .restart local v13       #contentsUnchanged:Z
    :cond_1c4
    const/16 v19, 0x0

    goto/16 :goto_86

    .line 888
    .restart local v19       #orderUnchanged:Z
    :cond_1c8
    const/16 v21, 0x0

    goto/16 :goto_a4

    .line 895
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    .restart local v21       #updateTicker:Z
    :cond_1cc
    const/4 v15, 0x0

    goto/16 :goto_c7

    .line 897
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    :cond_1cf
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1f4

    .line 898
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 899
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1f2

    const/4 v15, 0x1

    .restart local v15       #isFirstAnyway:Z
    :goto_1f0
    goto/16 :goto_c7

    .end local v15           #isFirstAnyway:Z
    :cond_1f2
    const/4 v15, 0x0

    goto :goto_1f0

    .line 901
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    :cond_1f4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 902
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_20d

    const/4 v15, 0x1

    .restart local v15       #isFirstAnyway:Z
    :goto_20b
    goto/16 :goto_c7

    .end local v15           #isFirstAnyway:Z
    :cond_20d
    const/4 v15, 0x0

    goto :goto_20b

    .line 917
    .restart local v15       #isFirstAnyway:Z
    :cond_20f
    :try_start_20f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_108

    .line 928
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    :cond_21c
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12a

    .line 942
    .restart local v6       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_226
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_23d

    .line 943
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_196

    .line 945
    :cond_23d
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 946
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_250
    .catch Ljava/lang/RuntimeException; {:try_start_20f .. :try_end_250} :catch_173

    goto/16 :goto_196

    .line 957
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_252
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 958
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto/16 :goto_196
.end method

.method protected updateRecentsPanel()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 655
    const/4 v3, 0x0

    .line 656
    .local v3, visible:Z
    const/4 v1, 0x0

    .line 657
    .local v1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v4, :cond_1e

    .line 658
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    .line 659
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 660
    if-eqz v3, :cond_1e

    .line 661
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getRecentTasksList()Ljava/util/ArrayList;

    move-result-object v1

    .line 666
    :cond_1e
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 667
    .local v2, tmpRoot:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030018

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 669
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V

    .line 670
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;

    const/16 v6, 0x3fd

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 676
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setBar(Lcom/android/systemui/statusbar/StatusBar;)V

    .line 678
    if-eqz v3, :cond_79

    .line 679
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    .line 682
    :cond_79
    return-void
.end method

.method updateResources()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2826
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2828
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_23

    .line 2829
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2830
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080006

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2832
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2834
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v3, 0x7f08000d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2835
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2836
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2837
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2838
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    const v3, 0x7f08000f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 2842
    return-void
.end method

.method vibrate()V
    .registers 4

    .prologue
    .line 2889
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2891
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2892
    return-void
.end method

.method visibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 2626
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_b

    .line 2627
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    .line 2629
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 2634
    :cond_b
    :goto_b
    return-void

    .line 2630
    :catch_c
    move-exception v0

    goto :goto_b
.end method
