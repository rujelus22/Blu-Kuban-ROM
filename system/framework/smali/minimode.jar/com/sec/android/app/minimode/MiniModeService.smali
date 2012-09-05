.class public abstract Lcom/sec/android/app/minimode/MiniModeService;
.super Landroid/app/Service;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MiniModeService$TouchListener;,
        Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field public static final CATEGORY_NAME:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field public static final CLOSE_EFFECT_DEFAULT:I = 0x0

.field public static final CLOSE_EFFECT_FULLMODE:I = 0x1

.field public static final CLOSE_REASON_ALARM:I = 0x6

.field public static final CLOSE_REASON_APPLICATION_REQUEST:I = 0x7

.field public static final CLOSE_REASON_BACK_KEY_PRESSED:I = 0x1

.field public static final CLOSE_REASON_CLOSE_BUTTON_CLICKED:I = 0x3

.field public static final CLOSE_REASON_FORCE_CLOSED:I = 0x2

.field public static final CLOSE_REASON_FULL_BUTTON_CLICKED:I = 0x4

.field public static final CLOSE_REASON_INCOMING_CALL:I = 0x5

.field private static final CLOSE_REQUESTED_MSG:I = 0x4

.field static final DEBUG:Z = false

.field static final DEBUG_APP_POSITION:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_VERBOSE:Z = false

.field static final DEBUG_WINDOW_SIZE:Z = false

.field private static final DUMMY_NOTIFICATION_ID:I = 0x1

.field static final ENABLE_DEBUG_BY_SERVICE_NAME:Z = false

.field private static final FLOATING_ALPHA_DOWN_SCALE_FACTOR:F = 0.6f

.field private static final FLOATING_DEFAULT_ANIMATION_DURATION:I = 0x96

.field private static final FLOATING_SIZE_SCALE_FACTOR:F = 0.95f

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final LAYOUT_CHANGED_MSG:I = 0x3

.field public static final MAIN_ACTIVITY_META_DATA:Ljava/lang/String; = "com.sec.minimode.main_activity"

.field private static final MINIMODE_RES_PACKAGE:Ljava/lang/String; = "com.sec.android.app.minimode.res"

.field public static final MINI_MODE_APP_MANAGER:Ljava/lang/String; = "mini_mode_app_manager"

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field static final SCALE_DOWN_ANIM:Z = false

.field public static final SOFT_INPUT_MODE_NOT_INITIALIZED:I = -0x1

.field static STATIC_TAG:Ljava/lang/String; = null

.field public static final WINDOW_DEFAULT_HEIGHT:I = 0x0

.field public static final WINDOW_DEFAULT_POS_X:I = -0x2710

.field public static final WINDOW_DEFAULT_POS_Y:I = -0x2710

.field public static final WINDOW_DEFAULT_WIDTH:I = 0x0

.field public static final WINDOW_POS_X:Ljava/lang/String; = "window.pos.x"

.field public static final WINDOW_POS_Y:Ljava/lang/String; = "window.pos.y"

.field public static final X_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field public static final Y_AXIS_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4


# instance fields
.field TAG:Ljava/lang/String;

.field private lastKeyCode:I

.field private lastKeyEvent:Landroid/view/KeyEvent;

.field private mAlarmStateListner:Landroid/content/BroadcastReceiver;

.field private mAnimView:Landroid/view/View;

.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field private mAttached:Z

.field public mAxisXGapBetweenMultiMiniApp:I

.field public mAxisYGapBetweenMultiMiniApp:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBgEnabled:Z

.field private mBodyView:Landroid/view/View;

.field private mBottomPaddingOfMiniApp:I

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorContentView:Landroid/view/ViewGroup;

.field private mDialog:Landroid/app/Dialog;

.field private mDimEnabled:Z

.field private mDimView:Landroid/view/View;

.field private mFirstShow:Z

.field private mFloatingEndAnim:Landroid/animation/AnimatorSet;

.field private mFloatingStartAnim:Landroid/animation/AnimatorSet;

.field private mHandler:Landroid/os/Handler;

.field private mIsTabletMode:Z

.field private mLastDisplayRect:Landroid/graphics/Rect;

.field private mLastFocus:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftPaddingOfMiniApp:I

.field private mMainActivity:Landroid/content/ComponentName;

.field protected mMainView:Lcom/sec/android/app/minimode/MainView;

.field private mOldDecorViewHeight:I

.field private mOldDecorViewWidth:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStatusBarHeight:I

.field private mResources:Landroid/content/res/Resources;

.field private mRightPaddingOfMiniApp:I

.field private mSavedSoftInputMode:I

.field protected mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mSavedWindowAttributesFlags:I

.field private mStartDrag:Z

.field private mStatusBarHeight:I

.field private mTitleView:Landroid/view/View;

.field private mTopPaddingOfMiniApp:I

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-string v0, "MiniModeService"

    sput-object v0, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    sget-object v0, Lcom/sec/android/app/minimode/MiniModeService;->STATIC_TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 166
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 168
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    .line 174
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributesFlags:I

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    .line 178
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 180
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 182
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 184
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 188
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 190
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 192
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 196
    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 212
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 214
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 216
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 218
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 220
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 222
    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 226
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    .line 228
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 230
    iput-boolean v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 249
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$1;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 430
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$5;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 1079
    new-instance v0, Lcom/sec/android/app/minimode/MiniModeService$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/MiniModeService$13;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    .line 1588
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/minimode/MiniModeService;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/minimode/MiniModeService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFirstShow:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/minimode/MiniModeService;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/minimode/MiniModeService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedSoftInputMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View$OnLayoutChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/minimode/MiniModeService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->startDrag()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/minimode/MiniModeService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->endDrag()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/minimode/MiniModeService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/minimode/MiniModeService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/minimode/MiniModeService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/KeyEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/Window;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method private static calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .registers 27
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    .line 701
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 702
    .local v18, virtualDisplayRect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    .line 703
    .local v11, miniAppWidth:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 708
    .local v10, miniAppHeight:I
    int-to-double v0, v11

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v19, v21, v23

    .line 709
    .local v19, widthCanBeOutside:D
    int-to-double v0, v10

    move-wide/from16 v21, v0

    const-wide v23, 0x3fd999999999999aL

    mul-double v6, v21, v23

    .line 711
    .local v6, heightCanBeOutside:D
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 713
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 714
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    double-to-int v0, v6

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 717
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_187

    .line 718
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 719
    .local v16, unionRect:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 722
    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 723
    .local v12, sP0:Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 724
    .local v13, sP1:Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 725
    .local v14, sP2:Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 727
    .local v15, sP3:Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 728
    .local v2, eP0:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 729
    .local v3, eP1:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 730
    .local v4, eP2:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 732
    .local v5, eP3:Landroid/graphics/Point;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v12, v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x1

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v13, v3}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x2

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v4}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    const/16 v21, 0x3

    new-instance v22, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v5}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v22, v17, v21

    .line 737
    .local v17, vectors:[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/16 v21, 0x0

    aget-object v9, v17, v21

    .line 738
    .local v9, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_16b
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_194

    .line 739
    invoke-virtual {v9}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v21

    aget-object v22, v17, v8

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v22

    cmpg-float v21, v21, v22

    if-gez v21, :cond_184

    .line 740
    aget-object v9, v17, v8

    .line 738
    :cond_184
    add-int/lit8 v8, v8, 0x1

    goto :goto_16b

    .line 747
    .end local v2           #eP0:Landroid/graphics/Point;
    .end local v3           #eP1:Landroid/graphics/Point;
    .end local v4           #eP2:Landroid/graphics/Point;
    .end local v5           #eP3:Landroid/graphics/Point;
    .end local v8           #i:I
    .end local v9           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v12           #sP0:Landroid/graphics/Point;
    .end local v13           #sP1:Landroid/graphics/Point;
    .end local v14           #sP2:Landroid/graphics/Point;
    .end local v15           #sP3:Landroid/graphics/Point;
    .end local v16           #unionRect:Landroid/graphics/Rect;
    .end local v17           #vectors:[Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_187
    new-instance v9, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    :cond_194
    return-object v9
.end method

.method private calculateNextPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 15
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 612
    const/4 v4, 0x0

    .line 613
    .local v4, xExceeded:Z
    const/4 v6, 0x0

    .line 614
    .local v6, yExceeded:Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 615
    .local v0, nextMiniAppRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 616
    .local v2, tmpPoint:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 618
    .local v1, nextPoint:Landroid/graphics/Point;
    :cond_f
    :goto_f
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Lcom/sec/minimode/manager/MiniModeAppManager;->isOccupiedPosition(II)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 620
    :cond_21
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_5e

    move v4, v7

    .line 621
    :goto_28
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_60

    move v6, v7

    .line 623
    :goto_2f
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v1, Landroid/graphics/Point;->x:I

    .line 624
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v1, Landroid/graphics/Point;->y:I

    .line 626
    if-eqz v4, :cond_62

    .line 627
    iput v8, v1, Landroid/graphics/Point;->x:I

    .line 628
    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 632
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v9, v10

    .line 633
    .local v3, xDiff:I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 634
    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 637
    iget v9, v1, Landroid/graphics/Point;->y:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v9, v10

    .line 638
    .local v5, yDiff:I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 639
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_f

    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :cond_5e
    move v4, v8

    .line 620
    goto :goto_28

    :cond_60
    move v6, v8

    .line 621
    goto :goto_2f

    .line 642
    :cond_62
    if-eqz v6, :cond_94

    .line 643
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v2

    .line 644
    iget v9, v2, Landroid/graphics/Point;->x:I

    iput v9, v1, Landroid/graphics/Point;->x:I

    .line 645
    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 649
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v9, v10

    .line 650
    .restart local v3       #xDiff:I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 651
    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 654
    iget v9, v1, Landroid/graphics/Point;->y:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v9, v10

    .line 655
    .restart local v5       #yDiff:I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 656
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 660
    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :cond_94
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/minimode/MiniModeService;->shiftMiniAppPosition(II)Landroid/graphics/Point;

    move-result-object v2

    .line 661
    iget v9, v2, Landroid/graphics/Point;->x:I

    iput v9, v1, Landroid/graphics/Point;->x:I

    .line 662
    iget v9, v2, Landroid/graphics/Point;->y:I

    iput v9, v1, Landroid/graphics/Point;->y:I

    .line 666
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v9, v10

    .line 667
    .restart local v3       #xDiff:I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 668
    iget v9, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 671
    iget v9, v1, Landroid/graphics/Point;->y:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int v5, v9, v10

    .line 672
    .restart local v5       #yDiff:I
    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 673
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 676
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_e6

    move v4, v7

    .line 677
    :goto_cb
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_e8

    move v6, v7

    .line 678
    :goto_d2
    if-eqz v6, :cond_f

    if-nez v4, :cond_f

    .line 680
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 681
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_f

    :cond_e6
    move v4, v8

    .line 676
    goto :goto_cb

    :cond_e8
    move v6, v8

    .line 677
    goto :goto_d2

    .line 690
    .end local v3           #xDiff:I
    .end local v5           #yDiff:I
    :cond_ea
    return-object v0
.end method

.method private calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 19
    .parameter "displayRect"
    .parameter "miniAppRect"

    .prologue
    .line 577
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 578
    .local v1, calculatedMiniAppRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 579
    .local v5, referencePointOfMiniApp:Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 583
    .local v4, nextPoint:Landroid/graphics/Point;
    iget v12, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 584
    .local v6, relativeRateX:D
    iget v12, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 587
    .local v8, relativeRateY:D
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    double-to-int v2, v12

    .line 588
    .local v2, calculatedReferencePointX:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-double v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    double-to-int v3, v12

    .line 591
    .local v3, calculatedReferencePointY:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v2, v12

    iput v12, v4, Landroid/graphics/Point;->x:I

    .line 592
    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 596
    iget v12, v4, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int v10, v12, v13

    .line 597
    .local v10, xDiff:I
    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->left:I

    .line 598
    iget v12, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v10

    iput v12, v1, Landroid/graphics/Rect;->right:I

    .line 601
    iget v12, v4, Landroid/graphics/Point;->y:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    .line 602
    .local v11, yDiff:I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 603
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    iput v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 607
    return-object v1
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, -0x2710

    .line 1449
    const/16 v3, 0x7d2

    .line 1451
    .local v3, windowType:I
    :try_start_6
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "TYPE_MINI_APP"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1452
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_14

    .line 1453
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_13} :catch_5c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_13} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_13} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_13} :catch_56

    move-result v3

    .line 1464
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_14
    :goto_14
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1040360

    const/4 v5, -0x3

    invoke-direct {v1, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 1473
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1474
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1475
    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1476
    const/16 v4, 0x20

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1477
    const v4, 0x7f070001

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1478
    const-string v4, "com.sec.android.app.minimode.res"

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1481
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 1482
    .local v2, pos:Landroid/graphics/Rect;
    if-eqz v2, :cond_55

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ne v4, v6, :cond_55

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ne v4, v6, :cond_55

    .line 1483
    const/16 v4, 0x11

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1484
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1485
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1488
    :cond_55
    return-object v1

    .line 1458
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #pos:Landroid/graphics/Rect;
    :catch_56
    move-exception v4

    goto :goto_14

    .line 1457
    :catch_58
    move-exception v4

    goto :goto_14

    .line 1456
    :catch_5a
    move-exception v4

    goto :goto_14

    .line 1455
    :catch_5c
    move-exception v4

    goto :goto_14
.end method

.method private endDrag()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 753
    iget-boolean v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    if-eqz v6, :cond_7d

    .line 754
    iput-boolean v9, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 756
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 757
    .local v0, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 759
    .local v3, miniAppRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 760
    invoke-static {v0, v3}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v2

    .line 762
    .local v2, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 763
    .local v4, start:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v8, v2, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-direct {v1, v6, v7}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;-><init>(II)V

    .line 766
    .local v1, end:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$6;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 773
    .local v5, translateAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 774
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$7;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 784
    new-instance v6, Lcom/sec/android/app/minimode/MiniModeService$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/minimode/MiniModeService$8;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 817
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->getLength()F

    move-result v7

    float-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 818
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 828
    .end local v1           #end:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v2           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v4           #start:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    .end local v5           #translateAnim:Landroid/animation/ValueAnimator;
    :cond_73
    :goto_73
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/sec/android/app/minimode/MiniModeService$9;

    invoke-direct {v7, p0}, Lcom/sec/android/app/minimode/MiniModeService$9;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 865
    .end local v0           #displayRect:Landroid/graphics/Rect;
    .end local v3           #miniAppRect:Landroid/graphics/Rect;
    :cond_7d
    return-void

    .line 820
    .restart local v0       #displayRect:Landroid/graphics/Rect;
    .restart local v3       #miniAppRect:Landroid/graphics/Rect;
    :cond_7e
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x96

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 822
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v6, v7, :cond_99

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, v7, :cond_73

    .line 824
    :cond_99
    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v7, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    goto :goto_73
.end method

.method private getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getFocusedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 286
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_8

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 289
    :cond_8
    return-object v0
.end method

.method private handleClose(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 1417
    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onClose(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1430
    :goto_6
    return-void

    .line 1420
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->isNeededToSave(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 1427
    :goto_1a
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->hide()V

    .line 1429
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->stopSelf()V

    goto :goto_6

    .line 1424
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_1a
.end method

.method private initAlarmEventListener()V
    .registers 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1c

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/minimode/MiniModeService$4;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1c
    return-void
.end method

.method private initFloatingAnimations()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x96

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1005
    new-array v4, v6, [F

    fill-array-data v4, :array_7e

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1006
    .local v3, startSizeAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1007
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$11;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1016
    new-array v4, v6, [F

    fill-array-data v4, :array_86

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1018
    .local v2, startAlphaAnim:Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1019
    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$12;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$12;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1026
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    .line 1027
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v2, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1028
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingStartAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1030
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    .line 1031
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1032
    .local v1, endSizeAnim:Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_8e

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1033
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1034
    .local v0, endAlphaAnim:Landroid/animation/ValueAnimator;
    new-array v4, v6, [F

    fill-array-data v4, :array_96

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1035
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v1, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1036
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mFloatingEndAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1037
    return-void

    .line 1005
    :array_7e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x73t 0x3ft
    .end array-data

    .line 1016
    :array_86
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    .line 1032
    :array_8e
    .array-data 0x4
        0x33t 0x33t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1034
    :array_96
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initTelephonyEventListener()V
    .registers 5

    .prologue
    .line 393
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 395
    :try_start_a
    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/minimode/MiniModeService$3;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 409
    :goto_1a
    return-void

    .line 405
    :catch_1b
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private initWindowEventListeners()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 868
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    new-instance v1, Lcom/sec/android/app/minimode/MiniModeService$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/minimode/MiniModeService$10;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 1001
    return-void
.end method

.method private isNeededToSave(I)Z
    .registers 3
    .parameter "reason"

    .prologue
    const/4 v0, 0x0

    .line 1433
    packed-switch p1, :pswitch_data_8

    .line 1444
    :goto_4
    :pswitch_4
    return v0

    .line 1442
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1433
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private shiftMiniAppPosition(II)Landroid/graphics/Point;
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 694
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 695
    .local v0, result:Landroid/graphics/Point;
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 696
    iget v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 697
    return-object v0
.end method

.method private startDrag()V
    .registers 5

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v0

    .line 505
    .local v0, v:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_47

    .line 509
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 510
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 519
    :goto_34
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 525
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStartDrag:Z

    .line 530
    return-void

    .line 512
    :cond_47
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mSavedWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    goto :goto_34
.end method


# virtual methods
.method protected closeOtherMiniApps()V
    .registers 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v0}, Lcom/sec/minimode/manager/MiniModeAppManager;->closeOthers()V

    .line 1685
    return-void
.end method

.method protected enableBg(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1716
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eq v0, p1, :cond_18

    .line 1717
    if-eqz p1, :cond_1b

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1721
    :goto_e
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/sec/android/app/minimode/MainView;->setPadding(IIII)V

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->postInvalidate()V

    .line 1725
    :cond_18
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    .line 1726
    return-void

    .line 1720
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/minimode/MainView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e
.end method

.method protected enableDim(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 1689
    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    if-eq v1, p1, :cond_42

    .line 1690
    if-eqz p1, :cond_45

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-nez v1, :cond_45

    .line 1691
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1692
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1693
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1694
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1696
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1698
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewWidth:I

    .line 1699
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mOldDecorViewHeight:I

    .line 1701
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1708
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/minimode/MainView;->postInvalidateDelayed(J)V

    .line 1711
    :cond_42
    iput-boolean p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimEnabled:Z

    .line 1712
    return-void

    .line 1703
    :cond_45
    if-nez p1, :cond_3b

    iget-boolean v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v1, :cond_3b

    .line 1704
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1705
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MainView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_3b
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .parameter "tag"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;
    .registers 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    if-nez v0, :cond_a

    .line 1146
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    .line 1149
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    goto :goto_9
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDisplayRect()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 534
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 538
    .local v1, dmReal:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 555
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    rsub-int/lit8 v2, v2, 0x0

    iget v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    rsub-int/lit8 v3, v3, 0x0

    iget v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 560
    .local v0, displayRect:Landroid/graphics/Rect;
    return-object v0
.end method

.method protected getFocusedComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMainActivityComponent()Landroid/content/ComponentName;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1658
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1659
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 1661
    .local v3, si:Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_18

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_19

    .line 1672
    :cond_18
    :goto_18
    return-object v4

    .line 1666
    :cond_19
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.sec.minimode.main_activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    .local v2, ma:Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 1672
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_33} :catch_34

    goto :goto_18

    .line 1674
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #ma:Ljava/lang/String;
    .end local v3           #si:Landroid/content/pm/ServiceInfo;
    :catch_34
    move-exception v1

    .line 1675
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error parsing main.app"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getMainView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    return-object v0
.end method

.method protected getMiniAppRect()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 564
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 565
    .local v3, miniAppX:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 566
    .local v4, miniAppY:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getWidth()I

    move-result v2

    .line 567
    .local v2, miniAppWidth:I
    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v5}, Lcom/sec/android/app/minimode/MainView;->getHeight()I

    move-result v0

    .line 569
    .local v0, miniAppHeight:I
    new-instance v1, Landroid/graphics/Rect;

    add-int v5, v3, v2

    add-int v6, v4, v0

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 572
    .local v1, miniAppRect:Landroid/graphics/Rect;
    return-object v1
.end method

.method public getWindowManger()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v0}, Lcom/sec/android/app/minimode/MainView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1519
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v2, :cond_6

    .line 1540
    :goto_5
    return-void

    .line 1522
    :cond_6
    iput-boolean v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 1523
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1531
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    :try_start_c
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 1532
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v2}, Lcom/sec/minimode/manager/MiniModeAppManager;->removePosition()V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_16} :catch_2b

    .line 1537
    :goto_16
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 1538
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 1539
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->stopForeground(Z)V

    goto :goto_5

    .line 1533
    :catch_2b
    move-exception v0

    .line 1534
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_16
.end method

.method public move(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1282
    iget-boolean v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v0, :cond_13

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1285
    :cond_13
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClose(I)Z
    .registers 3
    .parameter "reason"

    .prologue
    .line 1410
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .parameter "newConfig"

    .prologue
    .line 1289
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1293
    iget-boolean v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-nez v4, :cond_8

    .line 1329
    :goto_7
    return-void

    .line 1297
    :cond_8
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    if-eq v4, v5, :cond_6d

    .line 1298
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1299
    .local v0, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1302
    .local v2, miniAppRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateRotatedPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1306
    .local v3, rotatedMiniAppRect:Landroid/graphics/Rect;
    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 1308
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1309
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1310
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1314
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 1315
    invoke-static {v0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->calculateGoingInsideVector(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/sec/android/app/minimode/MiniModeService$Vec2D;

    move-result-object v1

    .line 1316
    .local v1, max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->x:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1317
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v6, v1, Lcom/sec/android/app/minimode/MiniModeService$Vec2D;->y:F

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1319
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1322
    .end local v1           #max:Lcom/sec/android/app/minimode/MiniModeService$Vec2D;
    :cond_5c
    iget-boolean v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastFocus:Z

    if-eqz v4, :cond_72

    .line 1323
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->setPosition(II)V

    .line 1328
    .end local v0           #displayRect:Landroid/graphics/Rect;
    .end local v2           #miniAppRect:Landroid/graphics/Rect;
    .end local v3           #rotatedMiniAppRect:Landroid/graphics/Rect;
    :cond_6d
    :goto_6d
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    goto :goto_7

    .line 1325
    .restart local v0       #displayRect:Landroid/graphics/Rect;
    .restart local v2       #miniAppRect:Landroid/graphics/Rect;
    .restart local v3       #rotatedMiniAppRect:Landroid/graphics/Rect;
    :cond_72
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->updatePosition(II)V

    goto :goto_6d
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 295
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mComponentName:Landroid/content/ComponentName;

    .line 306
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowManager:Landroid/view/WindowManager;

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getAppManager()Lcom/sec/minimode/manager/MiniModeAppManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMainActivityComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;

    .line 313
    :try_start_2a
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.sec.android.app.minimode.res"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_34} :catch_12a

    .line 319
    :goto_34
    iput-object p0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_37
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 323
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4b} :catch_137

    .line 328
    :goto_4b
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_11d

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/minimode/MainView;

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Lcom/sec/android/app/minimode/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 334
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 335
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 336
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBgEnabled:Z

    if-eqz v2, :cond_8f

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/minimode/MainView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    :cond_8f
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLeftPaddingOfMiniApp:I

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTopPaddingOfMiniApp:I

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mRightPaddingOfMiniApp:I

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBottomPaddingOfMiniApp:I

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    .line 348
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mIsTabletMode:Z

    if-nez v2, :cond_d8

    .line 349
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStatusBarHeight:I

    .line 352
    :cond_d8
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisXGapBetweenMultiMiniApp:I

    .line 353
    iget v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mStatusBarHeight:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAxisYGapBetweenMultiMiniApp:I

    .line 355
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 356
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 359
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 361
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$2;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 386
    :cond_11d
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initWindowEventListeners()V

    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initFloatingAnimations()V

    .line 388
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initTelephonyEventListener()V

    .line 389
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->initAlarmEventListener()V

    .line 390
    return-void

    .line 314
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_12a
    move-exception v1

    .line 315
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v3, "Error on get minimode res"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_34

    .line 325
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_137
    move-exception v1

    .line 326
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4b
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1334
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->hide()V

    .line 1335
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1338
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    if-eqz v1, :cond_24

    .line 1339
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/minimode/MainView;->setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V

    .line 1340
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/minimode/MainView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1341
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v1}, Lcom/sec/android/app/minimode/MainView;->removeAllViews()V

    .line 1342
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    .line 1343
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    .line 1344
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAnimView:Landroid/view/View;

    .line 1345
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1348
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_30

    .line 1350
    :try_start_28
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_30} :catch_43

    .line 1358
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3d

    .line 1359
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1360
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAlarmStateListner:Landroid/content/BroadcastReceiver;

    .line 1363
    :cond_3d
    iput-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContext:Landroid/content/Context;

    .line 1365
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1366
    return-void

    .line 1352
    :catch_43
    move-exception v0

    .line 1353
    .local v0, e:Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiniApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t have the permssion READ_PHONE_STATE. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 501
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(I)Landroid/os/Bundle;
    .registers 3
    .parameter "reason"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x2

    const/16 v7, -0x2710

    .line 1373
    iget-boolean v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v4, :cond_8

    .line 1406
    :goto_7
    return v8

    .line 1378
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1380
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v2

    .line 1382
    .local v2, lastPosition:Landroid/graphics/Rect;
    if-eqz v2, :cond_34

    .line 1383
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "window.pos.x"

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1384
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "window.pos.y"

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1386
    :cond_34
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v4, v7, :cond_40

    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v4, v7, :cond_46

    .line 1388
    :cond_40
    iget-object v4, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1393
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1395
    .local v1, displayRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getMiniAppRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1399
    .local v3, miniAppRect:Landroid/graphics/Rect;
    iput-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLastDisplayRect:Landroid/graphics/Rect;

    .line 1401
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->show()V

    .line 1404
    .end local v1           #displayRect:Landroid/graphics/Rect;
    .end local v2           #lastPosition:Landroid/graphics/Rect;
    .end local v3           #miniAppRect:Landroid/graphics/Rect;
    :cond_53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_7
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1646
    return-void
.end method

.method public setClosingAnimation(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 1048
    return-void
.end method

.method public setContentView(IIII)V
    .registers 11
    .parameter "main"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"

    .prologue
    .line 1241
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(IIIII)V

    .line 1242
    return-void
.end method

.method public setContentView(IIIII)V
    .registers 9
    .parameter "main"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentView() : updated main id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1249
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 1252
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    .line 1253
    return-void
.end method

.method public setContentView(Landroid/view/View;II)V
    .registers 10
    .parameter "contentView"
    .parameter "close"
    .parameter "title"

    .prologue
    const/4 v4, -0x1

    .line 1153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1154
    return-void
.end method

.method public setContentView(Landroid/view/View;III)V
    .registers 11
    .parameter "contentView"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"

    .prologue
    .line 1158
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentView(Landroid/view/View;IIII)V

    .line 1159
    return-void
.end method

.method public setContentView(Landroid/view/View;IIII)V
    .registers 8
    .parameter "contentView"
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    .line 1162
    if-nez p1, :cond_a

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->TAG:Ljava/lang/String;

    const-string v1, "setContentView() : contentView is null !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_9
    return-void

    .line 1168
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 1171
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1174
    :cond_13
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    .line 1175
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDecorContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1177
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V

    goto :goto_9
.end method

.method protected setContentViewInner(IIII)V
    .registers 11
    .parameter "close"
    .parameter "title"
    .parameter "launchMain"
    .parameter "body"

    .prologue
    const/4 v5, 0x1

    .line 1181
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1182
    .local v0, closeButton:Landroid/view/View;
    if-eqz v0, :cond_11

    .line 1183
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$14;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    .line 1191
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    if-eqz v3, :cond_55

    .line 1193
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1194
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$15;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$15;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1204
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    new-instance v4, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;

    invoke-direct {v4, p0}, Lcom/sec/android/app/minimode/MiniModeService$TouchListener;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1206
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mTitleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1207
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_3d
    if-eqz v2, :cond_55

    .line 1208
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_50

    move-object v3, v2

    .line 1209
    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    move-object v3, v2

    .line 1210
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    .line 1214
    :cond_50
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_3d

    .line 1218
    .end local v2           #viewParent:Landroid/view/ViewParent;
    :cond_55
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1219
    .local v1, launchMainButton:Landroid/view/View;
    if-eqz v1, :cond_65

    .line 1220
    new-instance v3, Lcom/sec/android/app/minimode/MiniModeService$16;

    invoke-direct {v3, p0}, Lcom/sec/android/app/minimode/MiniModeService$16;-><init>(Lcom/sec/android/app/minimode/MiniModeService;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    :cond_65
    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mContentView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mBodyView:Landroid/view/View;

    .line 1238
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1493
    iget-boolean v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    if-eqz v2, :cond_6

    .line 1515
    :goto_5
    return-void

    .line 1496
    :cond_6
    iput-boolean v5, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAttached:Z

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCurrentOrientation:I

    .line 1499
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/minimode/manager/MiniModeAppManager;->getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v1

    .line 1502
    .local v1, state:Landroid/os/Bundle;
    if-eqz v1, :cond_23

    .line 1503
    :try_start_20
    invoke-virtual {p0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1505
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_28} :catch_49

    .line 1510
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 1512
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v3, p0, Lcom/sec/android/app/minimode/MiniModeService;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;)V

    .line 1513
    iget-object v2, p0, Lcom/sec/android/app/minimode/MiniModeService;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/minimode/manager/MiniModeAppManager;->requestFocus(Landroid/content/ComponentName;Z)V

    .line 1514
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/minimode/MiniModeService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_5

    .line 1506
    :catch_49
    move-exception v0

    .line 1507
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_28
.end method
