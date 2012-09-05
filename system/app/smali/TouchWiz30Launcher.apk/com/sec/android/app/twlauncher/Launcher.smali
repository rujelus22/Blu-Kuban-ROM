.class public final Lcom/sec/android/app/twlauncher/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;,
        Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;,
        Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;,
        Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$TextDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;,
        Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$NameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field static DEFAULT_SCREEN:I

.field static DEFAULT_SCREEN_COUNT:I

.field static DEFAULT_SCREEN_NO:I

.field static NUMBER_CELLS_X:I

.field static NUMBER_CELLS_Y:I

.field static SCREEN_COUNT:I

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z

.field static USE_MAINMENU_LISTMODE:Z

.field protected static mCameraFirmVer:Ljava/lang/String;

.field protected static mCscVer:Ljava/lang/String;

.field protected static mHwVer:Ljava/lang/String;

.field protected static mIsDefaultIMSI:Z

.field protected static mIsSmdPbaTested:Ljava/lang/String;

.field private static mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected static mPdaVer:Ljava/lang/String;

.field protected static mPhoneVer:Ljava/lang/String;

.field protected static mRfCalDate:Ljava/lang/String;

.field protected static mTskFirmVer:Ljava/lang/String;

.field protected static mTspFirmVer:Ljava/lang/String;

.field protected static mUART:Ljava/lang/String;

.field protected static mUNnumber:Ljava/lang/String;

.field protected static mUSB:Ljava/lang/String;

.field static mUninstallPackageName:Ljava/lang/String;

.field private static sIsChangedBadge:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field private static sScreen:I


# instance fields
.field private final ACTION_APP_MORECONTENTS:Ljava/lang/String;

.field private final APP_CALLER_HOME:I

.field private final EXT_KEY_APP_CALLER:Ljava/lang/String;

.field private final UNINSTALL_COMPLETE:I

.field private config:Lcom/sec/android/app/twlauncher/appConfig;

.field private isDone:Z

.field public m32BitWindow:Z

.field private mActiveMenuId:I

.field private mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/twlauncher/TextIconAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/SimpleTextIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

.field private mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

.field private mAddWidgetType:I

.field private mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field protected mAppUnistallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

.field private mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

.field private mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

.field private mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

.field mBlankScreen:[I

.field private final mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mBootInProgress:Z

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDeleteIndex:I

.field private mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private final mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field private mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mForce32BitWindow:Z

.field private mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActive:Z

.field private mIsDeletePopup:Z

.field private mIsMoveDefaultScreen:Z

.field private mIsNewIntent:Z

.field private mIsOpaqueWindow:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

.field private mLocaleChanged:Z

.field private mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mMenuScreenCount:I

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOptionsMenuState:I

.field public mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field public mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field public mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field mProductModelFamilyName:Ljava/lang/String;

.field mProductModelName:Ljava/lang/String;

.field private mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

.field private mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoring:Z

.field private mRunBadgeChanged:Ljava/lang/Runnable;

.field private mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

.field private mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mSpans:[I

.field private mStateQuickNavigation:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mWaitingForResult:Z

.field private mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field public mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mWidget:Lcom/sec/android/app/twlauncher/Widget;

.field private mWidgetId:I

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private minsertAtFirst:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 298
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 299
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    .line 301
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 304
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 307
    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 310
    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 353
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 360
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 454
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 456
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    .line 458
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 460
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 651
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    .line 665
    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 666
    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    .line 668
    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 669
    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    .line 670
    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 711
    invoke-direct {p0, v5}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 154
    invoke-static {}, Lcom/sec/android/app/twlauncher/appConfig;->getInstance()Lcom/sec/android/app/twlauncher/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    .line 464
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    .line 474
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 476
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 478
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    .line 487
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    .line 531
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 541
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 550
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    .line 556
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 609
    const-string v0, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->ACTION_APP_MORECONTENTS:Ljava/lang/String;

    .line 611
    const-string v0, "KEY_APP_CALLER"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->EXT_KEY_APP_CALLER:Ljava/lang/String;

    .line 613
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->APP_CALLER_HOME:I

    .line 627
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 629
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 631
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 633
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 639
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 681
    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 683
    const-string v0, "GT-I9000"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 685
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    .line 686
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    .line 696
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 1085
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1145
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1166
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 6568
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    .line 6577
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$11;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 6759
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$12;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    .line 6996
    iput v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 6998
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 7000
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 7002
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 7004
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 7006
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 7008
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 7010
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    .line 7236
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$13;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    .line 7321
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 714
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Launcher created: %x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method private acceptFilter()Z
    .registers 3

    .prologue
    .line 1672
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1673
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMSI()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->resetAndRestartLoaders()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->removePackageFromWorkspace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelAdd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onFavoritesChanged()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5802(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    sput-boolean p0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkSamsungAppWidgetExternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgetExternal()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method private activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter "aMenu"
    .parameter "adapter"

    .prologue
    .line 5519
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 5520
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 5521
    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    .line 5522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 5528
    :cond_16
    :goto_16
    return-void

    .line 5524
    :cond_17
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 5525
    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->activate()V

    .line 5526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    goto :goto_16
.end method

.method private addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 3902
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3903
    if-nez p1, :cond_20

    .line 3904
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 3908
    :goto_12
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 3910
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3912
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    .line 3913
    const/4 v2, -0x1

    if-ne v0, v2, :cond_24

    .line 3914
    const/4 v1, 0x0

    .line 3931
    :goto_1f
    return-object v1

    .line 3906
    :cond_20
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 3915
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_31

    .line 3916
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 3920
    :cond_31
    const-wide/16 v2, -0x64

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3923
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    .line 3924
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3927
    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v3

    .line 3929
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v7, v9

    move v8, v9

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1f
.end method

.method private addItems()V
    .registers 2

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 3478
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3961
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3962
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3965
    const/4 v6, 0x0

    .line 3968
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 3969
    if-eqz v3, :cond_9c

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_9c

    .line 3971
    :try_start_1c
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_7a

    .line 3972
    :try_start_20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3973
    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 3975
    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 3976
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_98

    move-result-object v4

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    .line 3982
    :goto_39
    if-nez v2, :cond_9a

    .line 3983
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .line 3986
    :goto_47
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 3987
    iput-object v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3988
    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setFiltered(Z)V

    .line 3989
    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 3990
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 3991
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 3992
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 3993
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 3996
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3999
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4001
    return-object v2

    .line 3977
    :catch_7a
    move-exception v2

    move-object v2, v4

    .line 3978
    :goto_7c
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load live folder icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto :goto_39

    .line 3977
    :catch_98
    move-exception v7

    goto :goto_7c

    :cond_9a
    move-object v3, v2

    goto :goto_47

    :cond_9c
    move-object v2, v4

    goto :goto_39
.end method

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 12
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2462
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 2463
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2467
    return-object v1
.end method

.method private bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4610
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_8

    .line 4666
    :goto_7
    return-void

    .line 4613
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4614
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4618
    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_82

    .line 4620
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4622
    iget v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4623
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 4625
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4628
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_4c

    .line 4629
    const-string v3, "Launcher"

    const-string v4, "about to setAppWidget for id=%d, info=%s"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    :cond_4c
    if-eqz v2, :cond_75

    .line 4639
    iget v3, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v4, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 4642
    iget-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 4643
    iget-object v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4645
    iget-object v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v9, :cond_8f

    :goto_6f
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4648
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4651
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 4652
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 4657
    :cond_82
    if-eqz p2, :cond_91

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 4662
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto/16 :goto_7

    :cond_8f
    move v7, v8

    .line 4645
    goto :goto_6f

    .line 4664
    :cond_91
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7
.end method

.method private bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .registers 5
    .parameter "binder"
    .parameter "appAdapter"

    .prologue
    .line 4587
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 4588
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_1b

    .line 4589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4590
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4592
    :cond_1b
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    .line 4593
    return-void
.end method

.method private bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4444
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_e

    .line 4446
    :cond_6
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  ------> a source is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    :goto_d
    return-void

    .line 4450
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4451
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    .line 4452
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_25

    .line 4453
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4452
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 4455
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 4470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_35

    .line 4471
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 4474
    :cond_35
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    .line 4475
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_d
.end method

.method private bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4482
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4484
    add-int/lit8 v1, p3, 0x6

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 4487
    :goto_a
    if-ge p3, v10, :cond_e2

    .line 4488
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 4490
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added a item in workspace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    iget v1, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    sparse-switch v1, :sswitch_data_f8

    .line 4487
    :goto_30
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :sswitch_33
    move-object v1, v8

    .line 4494
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    .line 4495
    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_67

    const/4 v7, 0x1

    :goto_45
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4498
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 4495
    :cond_67
    const/4 v7, 0x0

    goto :goto_45

    .line 4501
    :sswitch_69
    const v3, 0x7f03000a

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-static {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v1

    .line 4504
    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_8c

    const/4 v7, 0x1

    :goto_88
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_30

    :cond_8c
    const/4 v7, 0x0

    goto :goto_88

    .line 4508
    :sswitch_8e
    const v3, 0x7f03000f

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-static {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 4512
    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_b1

    const/4 v7, 0x1

    :goto_ad
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_30

    :cond_b1
    const/4 v7, 0x0

    goto :goto_ad

    .line 4516
    :sswitch_b3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 4517
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 4520
    const v1, 0x7f060052

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Search;

    .line 4521
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4523
    check-cast v8, Lcom/sec/android/app/twlauncher/Widget;

    .line 4524
    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4526
    if-nez v9, :cond_e0

    const/4 v1, 0x1

    :goto_db
    invoke-virtual {v0, v2, v8, v1}, Lcom/sec/android/app/twlauncher/Workspace;->addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V

    goto/16 :goto_30

    :cond_e0
    const/4 v1, 0x0

    goto :goto_db

    .line 4531
    :cond_e2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4533
    if-ge v10, p4, :cond_eb

    .line 4534
    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->continueBindingItems(I)V

    .line 4540
    :cond_ea
    :goto_ea
    return-void

    .line 4536
    :cond_eb
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->finishBindDesktopItems()V

    .line 4537
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingApplications()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 4538
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    goto :goto_ea

    .line 4491
    :sswitch_data_f8
    .sparse-switch
        0x0 -> :sswitch_33
        0x1 -> :sswitch_33
        0x2 -> :sswitch_69
        0x3 -> :sswitch_8e
        0x3e9 -> :sswitch_b3
    .end sparse-switch
.end method

.method private bindSamsungAppWidgetExternal()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 6789
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6790
    if-nez v1, :cond_8

    .line 6847
    :cond_7
    :goto_7
    return-void

    .line 6793
    :cond_8
    const-string v2, "widgetInstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 6794
    const-string v3, "widgetInstall"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6795
    if-eqz v2, :cond_7

    .line 6798
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6799
    const-string v3, "className"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6800
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 6803
    const-string v4, "packageName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6804
    const-string v4, "className"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 6806
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 6807
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v4, :cond_54

    .line 6808
    const-string v4, "Launcher"

    const-string v5, "Failed to get Add Item Cell Info from findAllVacantCellsFromModel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6815
    :goto_42
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const-string v5, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v3, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v1

    .line 6817
    if-eqz v1, :cond_5f

    .line 6819
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    goto :goto_7

    .line 6810
    :cond_54
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    goto :goto_42

    .line 6822
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 6823
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    .line 6824
    :goto_6a
    if-ge v1, v5, :cond_7

    .line 6825
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 6826
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.widgetapp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_84

    .line 6824
    :cond_80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6a

    .line 6829
    :cond_84
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 6830
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 6832
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 6833
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 6834
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6835
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6836
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6838
    :try_start_af
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 6839
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_bd} :catch_bf

    goto/16 :goto_7

    .line 6840
    :catch_bf
    move-exception v0

    .line 6841
    const-string v1, "Launcher"

    const-string v2, "Failed to bind AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7
.end method

.method private bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x2

    const/4 v9, 0x0

    .line 4671
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4672
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4674
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 4675
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4677
    iget-object v11, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 4678
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4685
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v1

    .line 4688
    if-eqz v1, :cond_c5

    .line 4689
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, v1, v8}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4691
    iget-object v1, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4692
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4694
    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v10, :cond_c3

    :goto_46
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4697
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 4714
    :goto_4c
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added a item in workspace (type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_8a

    .line 4716
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    :cond_8a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 4721
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 4724
    :cond_97
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 4725
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 4728
    :cond_a4
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 4733
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 4734
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 4738
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c2

    .line 4739
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteIndex(I)V

    .line 4745
    :cond_c2
    :goto_c2
    return-void

    :cond_c3
    move v7, v9

    .line 4694
    goto :goto_46

    .line 4699
    :cond_c5
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 4700
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4703
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4704
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4705
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4706
    iput-object v1, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4708
    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v10, :cond_f3

    :goto_eb
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 4711
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto/16 :goto_4c

    :cond_f3
    move v7, v9

    .line 4708
    goto :goto_eb

    .line 4742
    :cond_f5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_c2
.end method

.method private checkForLocaleChange()V
    .registers 11

    .prologue
    .line 1209
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    .line 1210
    .local v2, localeConfiguration:Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1214
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1215
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1218
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1220
    .local v3, mcc:I
    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1221
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1223
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    if-ne v3, v6, :cond_2b

    if-eq v4, v7, :cond_54

    :cond_2b
    const/4 v8, 0x1

    :goto_2c
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 1236
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_3b

    .line 1237
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1238
    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1239
    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 1244
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 1250
    :cond_3b
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    sget-object v9, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPkgModFlag()Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 1251
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_53

    .line 1256
    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    .line 1258
    :cond_53
    return-void

    .line 1223
    :cond_54
    const/4 v8, 0x0

    goto :goto_2c
.end method

.method private checkSamsungAppWidgetExternal()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 6772
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6773
    if-nez v1, :cond_8

    .line 6785
    :cond_7
    :goto_7
    return v0

    .line 6776
    :cond_8
    const-string v2, "widgetInstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 6777
    if-eqz v2, :cond_7

    .line 6780
    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6781
    const-string v3, "className"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6782
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 6785
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1765
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1767
    return-void
.end method

.method private closeDrawer(Z)V
    .registers 6
    .parameter "animated"

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 4269
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4271
    .local v1, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4272
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 4273
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    .line 4275
    :cond_14
    if-eqz p1, :cond_3c

    .line 4276
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 4277
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateOpen()V

    .line 4281
    :goto_1c
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4282
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 4288
    :cond_31
    const/16 v2, 0x10

    :try_start_33
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_40

    .line 4293
    :goto_36
    const/16 v2, 0x11

    :try_start_38
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_42

    .line 4302
    :cond_3b
    :goto_3b
    return-void

    .line 4279
    :cond_3c
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_1c

    .line 4289
    :catch_40
    move-exception v2

    goto :goto_36

    .line 4294
    :catch_42
    move-exception v2

    goto :goto_3b
.end method

.method private closeFolder()V
    .registers 3

    .prologue
    .line 4305
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 4306
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_b

    .line 4307
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 4309
    :cond_b
    return-void
.end method

.method private completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 21
    .parameter
    .parameter

    .prologue
    .line 2231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v13

    .line 2232
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v8

    .line 2233
    iget-object v2, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 2238
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_36

    .line 2239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2242
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 2244
    iget v3, v13, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v4, v13, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v10

    .line 2247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2248
    const/4 v2, 0x0

    aget v5, v10, v2

    const/4 v2, 0x1

    aget v6, v10, v2

    if-nez v9, :cond_1bb

    const/4 v7, 0x1

    :goto_57
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v2

    if-nez v2, :cond_1fd

    .line 2249
    const/4 v5, 0x0

    .line 2251
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 2252
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget v6, v10, v6

    aput v6, v2, v3

    .line 2254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget v6, v10, v6

    aput v6, v2, v3

    .line 2256
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 2258
    if-eqz v9, :cond_28b

    .line 2259
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v9

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    .line 2262
    if-eqz v9, :cond_287

    array-length v2, v9

    const/4 v3, 0x1

    if-le v2, v3, :cond_287

    .line 2263
    const/4 v3, -0x1

    .line 2264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget v7, v10, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "x"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    aget v7, v10, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2265
    const/4 v2, 0x0

    :goto_ba
    array-length v11, v9

    if-ge v2, v11, :cond_284

    .line 2266
    aget-object v11, v9, v2

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1be

    .line 2272
    :goto_c5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v11

    move v3, v6

    .line 2274
    :goto_ce
    if-ge v6, v11, :cond_12e

    .line 2275
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v12

    move v7, v2

    .line 2277
    :goto_d9
    if-ltz v7, :cond_12c

    .line 2278
    aget-object v14, v9, v7

    .line 2279
    const/4 v15, 0x0

    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 2281
    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2283
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v16

    .line 2284
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15, v14}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v16

    if-eqz v16, :cond_1c2

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v15, v10, v7

    aput v15, v3, v5

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x1

    const/4 v7, 0x1

    aput v14, v10, v7

    aput v14, v3, v5

    .line 2287
    const/4 v5, 0x1

    move v3, v6

    .line 2293
    :cond_12c
    if-eqz v5, :cond_1c6

    .line 2298
    :cond_12e
    if-nez v5, :cond_281

    if-eqz v3, :cond_281

    .line 2300
    add-int/lit8 v6, v3, -0x1

    :goto_134
    if-ltz v6, :cond_281

    .line 2301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v11

    move v7, v2

    .line 2303
    :goto_13f
    if-ltz v7, :cond_187

    .line 2304
    aget-object v12, v9, v7

    .line 2305
    const/4 v14, 0x0

    const/16 v15, 0x78

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2307
    const/16 v15, 0x78

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2309
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v15

    .line 2310
    invoke-virtual {v15, v4, v14, v12}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v15

    if-eqz v15, :cond_1ca

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v14, v10, v7

    aput v14, v3, v5

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x1

    const/4 v7, 0x1

    aput v12, v10, v7

    aput v12, v3, v5

    .line 2313
    const/4 v5, 0x1

    move v3, v6

    .line 2319
    :cond_187
    if-eqz v5, :cond_1ce

    move v2, v3

    .line 2325
    :goto_18a
    if-eqz v5, :cond_19b

    .line 2326
    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v6, 0x1

    aget v6, v10, v6

    iget-object v7, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v6, v7, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_19b
    move v3, v2

    move v2, v5

    .line 2332
    :goto_19d
    if-nez v2, :cond_1d2

    .line 2333
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    .line 2348
    :goto_1a5
    if-nez v2, :cond_1fd

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1f6

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2390
    :cond_1ba
    :goto_1ba
    return-void

    .line 2248
    :cond_1bb
    const/4 v7, 0x0

    goto/16 :goto_57

    .line 2265
    :cond_1be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ba

    .line 2277
    :cond_1c2
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_d9

    .line 2274
    :cond_1c6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_ce

    .line 2303
    :cond_1ca
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_13f

    .line 2300
    :cond_1ce
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_134

    .line 2337
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    if-eq v3, v5, :cond_1f0

    .line 2338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2339
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    .line 2340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    goto :goto_1ba

    .line 2343
    :cond_1f0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    goto :goto_1a5

    .line 2352
    :cond_1f6
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_1ba

    .line 2359
    :cond_1fd
    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-direct {v6, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    .line 2360
    const/4 v2, 0x0

    aget v2, v10, v2

    iput v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2361
    const/4 v2, 0x1

    aget v2, v10, v2

    iput v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2362
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    .line 2364
    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    const/4 v2, 0x0

    aget v10, v4, v2

    const/4 v2, 0x1

    aget v11, v4, v2

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2368
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v2, :cond_272

    .line 2369
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0, v13}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2375
    iget-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2376
    iget-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v9, v4, v5

    const/4 v5, 0x1

    aget v5, v4, v5

    iget v10, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    move v4, v9

    move v6, v10

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_1ba

    .line 2380
    :cond_272
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 2381
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto/16 :goto_1ba

    :cond_281
    move v2, v3

    goto/16 :goto_18a

    :cond_284
    move v2, v3

    goto/16 :goto_c5

    :cond_287
    move v3, v6

    move v2, v5

    goto/16 :goto_19d

    :cond_28b
    move v2, v5

    goto/16 :goto_1a5
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2213
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2214
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2217
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeAddAppWidget(): dumping extras content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    .line 2221
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 2222
    return-void
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3937
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    .line 3938
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 3956
    :cond_8
    :goto_8
    return-void

    .line 3940
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 3941
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 3944
    :cond_16
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v1

    .line 3946
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_47

    .line 3947
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    .line 3949
    const v2, 0x7f03000f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 3951
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v6, v5

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_8

    .line 3953
    :cond_47
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3954
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    goto :goto_8
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .registers 7
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2165
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    .line 2166
    .local v1, page:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 2182
    :cond_7
    :goto_7
    return-void

    .line 2168
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 2169
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2172
    :cond_15
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 2173
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v2, :cond_24

    .line 2178
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_7

    .line 2179
    :cond_24
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2180
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    goto :goto_7
.end method

.method private completePreviewAppWidget()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2437
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_a

    .line 2438
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2453
    :goto_9
    return-void

    .line 2441
    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2443
    .local v9, xy:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2445
    .local v1, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2447
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v8

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2451
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v4, v9, v7

    aget v5, v9, v8

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v10, :cond_38

    :goto_33
    move v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_9

    :cond_38
    move v8, v7

    goto :goto_33
.end method

.method private createBlankPage()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 7217
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v4

    if-ne v1, v0, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v1, v0, :cond_10

    .line 7233
    :cond_f
    :goto_f
    return v0

    .line 7219
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 7220
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 7221
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v1, v3, :cond_f

    .line 7222
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001c

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 7224
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7226
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    .line 7228
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v4

    .line 7229
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v0, v1

    .line 7231
    goto :goto_f
.end method

.method public static createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .registers 2
    .parameter "aOwner"

    .prologue
    .line 3895
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 3896
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 3897
    return-object v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z
    .registers 11
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 4071
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    return v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z
    .registers 11
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showMessage"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4076
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 4077
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v4, "launcher.add_occupied_cells"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 4079
    .local v0, occupied:[Z
    :goto_14
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p1

    .line 4080
    if-eqz p1, :cond_2b

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 4081
    if-nez p5, :cond_27

    .line 4087
    .end local v0           #occupied:[Z
    :goto_24
    return v1

    .line 4077
    :cond_25
    const/4 v0, 0x0

    goto :goto_14

    .line 4083
    .restart local v0       #occupied:[Z
    :cond_27
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    goto :goto_24

    .end local v0           #occupied:[Z
    :cond_2b
    move v1, v2

    .line 4087
    goto :goto_24
.end method

.method private finishBindDesktopItems()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 4543
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v8, :cond_49

    .line 4544
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 4545
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 4548
    :cond_1c
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v9, "launcher.user_folder"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 4549
    .local v7, userFolders:[J
    if-eqz v7, :cond_46

    .line 4550
    move-object v0, v7

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_29
    if-ge v3, v5, :cond_3b

    aget-wide v1, v0, v3

    .line 4551
    .local v1, folderId:J
    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v4

    .line 4552
    .local v4, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v4, :cond_38

    .line 4553
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4550
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 4556
    .end local v1           #folderId:J
    .end local v4           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_3b
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v6

    .line 4557
    .local v6, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v6, :cond_46

    .line 4558
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    .line 4562
    .end local v0           #arr$:[J
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_46
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 4565
    .end local v7           #userFolders:[J
    :cond_49
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v8, :cond_52

    .line 4566
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v8}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4570
    :cond_52
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_67

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_67

    .line 4571
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    .line 4575
    :cond_67
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4577
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_77

    .line 4578
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 4579
    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 4584
    :cond_76
    :goto_76
    return-void

    .line 4580
    :cond_77
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v8, :cond_76

    .line 4581
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 4582
    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_76
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1058
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1059
    const/4 v2, 0x0

    .line 1062
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_40
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_51
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_34

    .line 1066
    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1067
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_4e

    goto :goto_14

    .line 1069
    :catch_1e
    move-exception v0

    .line 1070
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_4b

    .line 1074
    if-eqz v1, :cond_27

    .line 1076
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_47

    .line 1081
    :cond_27
    :goto_27
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_2c
    if-eqz v1, :cond_27

    .line 1076
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_27

    .line 1077
    :catch_32
    move-exception v0

    goto :goto_27

    .line 1071
    :catch_34
    move-exception v0

    .line 1072
    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1074
    if-eqz v2, :cond_27

    .line 1076
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_27

    .line 1077
    :catch_3e
    move-exception v0

    goto :goto_27

    .line 1074
    :catchall_40
    move-exception v0

    :goto_41
    if-eqz v2, :cond_46

    .line 1076
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49

    .line 1078
    :cond_46
    :goto_46
    throw v0

    .line 1077
    :catch_47
    move-exception v0

    goto :goto_27

    :catch_49
    move-exception v1

    goto :goto_46

    .line 1074
    :catchall_4b
    move-exception v0

    move-object v2, v1

    goto :goto_41

    .line 1071
    :catch_4e
    move-exception v0

    move-object v2, v1

    goto :goto_35

    .line 1069
    :catch_51
    move-exception v0

    move-object v1, v2

    goto :goto_1f
.end method

.method static getModel()Lcom/sec/android/app/twlauncher/LauncherModel;
    .registers 1

    .prologue
    .line 5013
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static getScreen()I
    .registers 2

    .prologue
    .line 1325
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1326
    :try_start_3
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 1327
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getTypedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackKey(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_29

    .line 3178
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3227
    :cond_15
    :goto_15
    return v1

    .line 3180
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 3181
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 3182
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 3183
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    goto :goto_15

    .line 3187
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v1, :cond_45

    .line 3189
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_15

    .line 3195
    :cond_45
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeFolderOnCurrentPage()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 3211
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_15

    .line 3205
    :pswitch_6a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->handleBackKey()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    goto :goto_15

    .line 3218
    :cond_78
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_86

    .line 3223
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3226
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    goto :goto_15

    .line 3203
    :pswitch_data_8c
    .packed-switch 0x2
        :pswitch_6a
    .end packed-switch
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 5
    .parameter "folderInfo"

    .prologue
    .line 4870
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_b

    .line 4872
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4874
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4896
    :cond_a
    :goto_a
    return-void

    .line 4877
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 4879
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v1, :cond_2b

    .line 4880
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 4882
    .local v0, folderScreen:I
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 4883
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v0, v2, :cond_a

    .line 4885
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4887
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_a

    .line 4891
    .end local v0           #folderScreen:I
    :cond_2b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 4893
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_a
.end method

.method private static infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 2096
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2097
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2100
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_4c

    move-result-object v1

    .line 2108
    :goto_f
    if-eqz v1, :cond_4b

    .line 2109
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2111
    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2112
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_28

    .line 2113
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2116
    :cond_28
    const/high16 v4, 0x1020

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 2118
    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2119
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2121
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2122
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_43

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_56

    .line 2124
    :cond_43
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 2129
    :goto_47
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 2134
    :cond_4b
    return-object v0

    .line 2104
    :catch_4c
    move-exception v1

    .line 2105
    const-string v4, "Launcher"

    const-string v5, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_f

    .line 2126
    :cond_56
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_47
.end method

.method private static infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2471
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2472
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2473
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2480
    if-eqz v2, :cond_46

    .line 2481
    new-instance v5, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-static {v2, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v5

    move v5, v3

    .line 2500
    :goto_26
    if-nez v2, :cond_30

    .line 2501
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2504
    :cond_30
    new-instance v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2505
    iput-object v2, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2506
    invoke-virtual {v7, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2507
    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2508
    invoke-virtual {v7, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    .line 2509
    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    .line 2510
    iput-object v4, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2512
    return-object v7

    .line 2485
    :cond_46
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2486
    if-eqz v3, :cond_92

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_92

    .line 2488
    :try_start_52
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_71

    .line 2489
    :try_start_56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2490
    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 2492
    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2493
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6b} :catch_90

    move-result-object v4

    move v3, v5

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    .line 2496
    goto :goto_26

    .line 2494
    :catch_71
    move-exception v2

    move-object v2, v4

    .line 2495
    :goto_73
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load shortcut icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto :goto_26

    .line 2494
    :catch_90
    move-exception v7

    goto :goto_73

    :cond_92
    move v3, v5

    move-object v2, v4

    goto :goto_26
.end method

.method private isMenuEditDialogAvailable()Z
    .registers 4

    .prologue
    .line 7914
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MenuEditDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionDialogAvailable()Z
    .registers 4

    .prologue
    .line 7751
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionSettingOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7756
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method private launchAppWidgetPicker()V
    .registers 15

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5758
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    .line 5766
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5767
    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5768
    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5769
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5770
    if-nez v0, :cond_22

    .line 5824
    :goto_21
    return-void

    .line 5773
    :cond_22
    new-array v1, v4, [Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ResolveInfo;

    .line 5774
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5775
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5777
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5778
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_43
    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_dc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 5780
    array-length v3, v0

    move v2, v4

    :goto_51
    if-ge v2, v3, :cond_fe

    aget-object v6, v0, v2

    .line 5781
    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d8

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d8

    .line 5783
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    move v3, v2

    .line 5789
    :goto_74
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    if-eqz v2, :cond_fc

    .line 5791
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5792
    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move v6, v5

    move v2, v4

    .line 5799
    :goto_92
    if-nez v6, :cond_99

    .line 5800
    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5803
    :cond_99
    :goto_99
    if-eqz v2, :cond_43

    .line 5804
    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 5805
    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    iput-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 5806
    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 5807
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 5808
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5810
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5811
    const-string v3, "custom_widget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5812
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_43

    .line 5780
    :cond_d8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_51

    .line 5816
    :cond_dc
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5817
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5818
    const-string v1, "customInfo"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5820
    const-string v1, "customExtras"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5823
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_21

    :cond_f9
    move v6, v4

    move v2, v5

    goto :goto_92

    :cond_fc
    move v2, v5

    goto :goto_99

    :cond_fe
    move v3, v4

    goto/16 :goto_74
.end method

.method private onAppWidgetReset()V
    .registers 3

    .prologue
    .line 4325
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_a

    .line 4326
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 4330
    :goto_9
    return-void

    .line 4328
    :cond_a
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private onBadgeChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4335
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4382
    :cond_10
    :goto_10
    return-void

    .line 4339
    :cond_11
    sput-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    .line 4342
    :try_start_13
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_35} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_35} :catch_56

    move-result-object v0

    .line 4350
    :goto_36
    if-nez v0, :cond_71

    .line 4351
    sput-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    goto :goto_10

    .line 4345
    :catch_3b
    move-exception v0

    .line 4346
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 4349
    goto :goto_36

    .line 4347
    :catch_56
    move-exception v0

    .line 4348
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_36

    .line 4355
    :cond_71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4357
    :cond_76
    :goto_76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 4358
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4359
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4360
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 4362
    if-eqz v2, :cond_76

    if-eqz v3, :cond_76

    .line 4363
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    .line 4365
    if-eqz v2, :cond_76

    .line 4366
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    .line 4367
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 4371
    :cond_a0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4373
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    .line 4374
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4376
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->requestLayout()V

    .line 4379
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 4381
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_10
.end method

.method private onFavoritesChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    .line 4317
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4318
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1, p0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 4319
    return-void
.end method

.method private onShareAppRequested()V
    .registers 4

    .prologue
    .line 3471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3472
    const-string v1, "com.sec.android.app.shareapp"

    const-string v2, "com.sec.android.app.shareapp.ShareApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3473
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3474
    return-void
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 10
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    .line 4941
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 4942
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v1, :cond_8

    .line 4949
    :goto_7
    return-void

    .line 4945
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    .line 4946
    .local v7, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 4948
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    goto :goto_7
.end method

.method private prepareWidgetPreview(I)V
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7013
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 7015
    if-ne p1, v3, :cond_2d

    .line 7016
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSearch()V

    .line 7026
    :goto_d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    .line 7027
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 7029
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 7031
    const/4 v0, -0x1

    .line 7032
    .local v0, blankscreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_3f

    .line 7033
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    .line 7037
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAutoScrollScreen(I)V

    .line 7038
    .end local v0           #blankscreen:I
    :goto_2c
    return-void

    .line 7017
    :cond_2d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    .line 7018
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    goto :goto_d

    .line 7019
    :cond_34
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3b

    .line 7020
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_d

    .line 7022
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2c

    .line 7034
    .restart local v0       #blankscreen:I
    :cond_3f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v3

    if-eq v1, v4, :cond_27

    .line 7035
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v3

    goto :goto_27
.end method

.method private previewAppWidget()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2403
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_e

    .line 2404
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2434
    :goto_d
    return-void

    .line 2408
    :cond_e
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 2409
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 2410
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2413
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    .line 2414
    aget v4, v1, v8

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2415
    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2418
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v4, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2422
    iget-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2423
    iget-object v0, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2425
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2426
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2428
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v5, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v7

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v7

    invoke-direct {v6, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 2432
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2433
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    goto :goto_d
.end method

.method private processAddToWallpapersMenuSelection(IJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 7595
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_2e

    .line 7596
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7597
    if-eqz v0, :cond_2e

    .line 7598
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7599
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7601
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 7602
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7605
    :cond_2e
    return-void
.end method

.method private processAddToWorkspaceMenuSelection(IJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 7562
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7564
    long-to-int v0, p2

    packed-switch v0, :pswitch_data_2a

    .line 7592
    :goto_9
    :pswitch_9
    return-void

    .line 7568
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_9

    .line 7573
    :pswitch_e
    const-string v0, "android.permission.BIND_APPWIDGET"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 7577
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_9

    .line 7575
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_9

    .line 7583
    :pswitch_21
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_9

    .line 7588
    :pswitch_25
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_9

    .line 7564
    nop

    :pswitch_data_2a
    .packed-switch 0x7f080017
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_21
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private processAppShortcutMenuSelection(IJ)V
    .registers 9
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7608
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 7609
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v2, :cond_34

    .line 7610
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7612
    .local v0, app:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7613
    .local v1, shortcutIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7622
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_35

    const/4 v2, 0x1

    :goto_2e
    invoke-virtual {p0, p0, v1, v3, v2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    .line 7624
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7626
    .end local v0           #app:Landroid/content/pm/ResolveInfo;
    .end local v1           #shortcutIntent:Landroid/content/Intent;
    :cond_34
    return-void

    .line 7622
    .restart local v0       #app:Landroid/content/pm/ResolveInfo;
    .restart local v1       #shortcutIntent:Landroid/content/Intent;
    :cond_35
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method private processFolderMenuSelection(IJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 7630
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2b

    .line 7631
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    :goto_c
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    .line 7632
    if-eqz v0, :cond_25

    .line 7638
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getFactor()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_22

    .line 7641
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    .line 7643
    :cond_22
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 7657
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 7658
    return-void

    .line 7631
    :cond_29
    const/4 v0, 0x0

    goto :goto_c

    .line 7646
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 7647
    long-to-int v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 7649
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7650
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7651
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7653
    const-string v0, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7654
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25
.end method

.method private processShortcutMenuSelection(IJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 7661
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1b

    .line 7662
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7663
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 7664
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 7667
    :cond_17
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    .line 7686
    :cond_1a
    :goto_1a
    return-void

    .line 7669
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 7672
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    long-to-int v0, v0

    .line 7673
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7675
    if-eqz v0, :cond_1a

    .line 7677
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 7678
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7680
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7681
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7682
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    goto :goto_1a
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .registers 6
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 1273
    const/4 v0, 0x0

    .line 1275
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_31

    .line 1276
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 1277
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 1278
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_43
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1e} :catch_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_46

    .line 1287
    if-eqz v1, :cond_4c

    .line 1289
    :try_start_20
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    move-object v0, v1

    .line 1295
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_24
    :goto_24
    return-void

    .line 1290
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_25
    move-exception v2

    move-object v0, v1

    .line 1292
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_24

    .line 1282
    :catch_28
    move-exception v2

    .line 1287
    :goto_29
    if-eqz v0, :cond_24

    .line 1289
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 1290
    :catch_2f
    move-exception v2

    goto :goto_24

    .line 1284
    :catch_31
    move-exception v2

    .line 1287
    :goto_32
    if-eqz v0, :cond_24

    .line 1289
    :try_start_34
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_24

    .line 1290
    :catch_38
    move-exception v2

    goto :goto_24

    .line 1287
    :catchall_3a
    move-exception v2

    :goto_3b
    if-eqz v0, :cond_40

    .line 1289
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 1292
    :cond_40
    :goto_40
    throw v2

    .line 1290
    :catch_41
    move-exception v3

    goto :goto_40

    .line 1287
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_43
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3b

    .line 1284
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_46
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_32

    .line 1282
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_49
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_29

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_4c
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_24
.end method

.method private registerContentObservers()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4155
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4156
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4157
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4159
    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4162
    const-string v1, "maximum_power_saving"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4163
    if-eqz v1, :cond_2c

    .line 4164
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4165
    :cond_2c
    return-void
.end method

.method private registerIntentReceivers()V
    .registers 4

    .prologue
    .line 4098
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4099
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4100
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4101
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4102
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4104
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4106
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4107
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4110
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4111
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4112
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a5

    .line 4115
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4117
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;-><init>(Lcom/sec/android/app/twlauncher/Launcher;J)V

    .line 4125
    :goto_5e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4127
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4131
    const-string v1, "android.intent.action.WIDGETS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4132
    const-string v1, "android.intent.action.SHORTCUTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4134
    const-string v1, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4136
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4137
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4140
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4141
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4145
    const-string v1, "android.intent.action.TSTORE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4146
    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4147
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4148
    return-void

    .line 4120
    :cond_a5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    .line 4121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    goto :goto_5e
.end method

.method private removePackageFromWorkspace(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 3481
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 3482
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removePackage(Ljava/lang/String;)V

    .line 3484
    :cond_d
    return-void
.end method

.method private resetAndRestartLoaders()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1347
    const-string v1, "Launcher"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "resetAndRestartLoaders. Launcher: %x"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 1351
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 1352
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v6, p0, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    .line 1353
    .local v0, loadApplications:Z
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v6, p0, v7, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 1355
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1356
    return-void
.end method

.method private restoreActiveMenu()V
    .registers 3

    .prologue
    .line 5500
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 5501
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 5514
    :cond_f
    :goto_f
    return-void

    .line 5502
    :cond_10
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getId()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 5503
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_f

    .line 5504
    :cond_21
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 5505
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_f

    .line 5506
    :cond_2f
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3d

    .line 5507
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_f

    .line 5508
    :cond_3d
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 5509
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    goto :goto_f

    .line 5510
    :cond_4b
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 5511
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_f
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedState"

    .prologue
    .line 1775
    if-nez p1, :cond_3

    .line 1857
    :cond_2
    :goto_2
    return-void

    .line 1779
    :cond_3
    const-string v15, "launcher.delete_application"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1781
    const-string v15, "launcher.current_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1782
    .local v5, currentScreen:I
    const/4 v15, -0x1

    if-le v5, v15, :cond_23

    .line 1783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v15, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1786
    :cond_23
    const-string v15, "launcher.menu_mode"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1788
    .local v9, mmMode:I
    const/4 v15, 0x2

    if-ne v9, v15, :cond_47

    .line 1789
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1790
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreEditModeFactor()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreLM()V

    .line 1794
    :cond_47
    const-string v15, "launcher.menu_current_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1795
    .local v8, mmCurrentScreen:I
    const/4 v15, -0x1

    if-le v8, v15, :cond_5d

    .line 1796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    .line 1799
    :cond_5d
    const-string v15, "launcher.add_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1800
    .local v3, addScreen:I
    const/4 v15, -0x1

    if-le v3, v15, :cond_ce

    .line 1801
    new-instance v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v15}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1803
    .local v2, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1804
    iput v3, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1805
    const-string v15, "launcher.add_cellX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 1806
    const-string v15, "launcher.add_cellY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 1807
    const-string v15, "launcher.add_spanX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 1808
    const-string v15, "launcher.add_spanY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 1809
    const-string v15, "launcher.add_occupied_cells"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v15

    const-string v16, "launcher.add_countX"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "launcher.add_countY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 1813
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1816
    .end local v2           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_ce
    const-string v15, "launcher.active_menu_id"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 1817
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreActiveMenu()V

    .line 1819
    sget-object v15, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v10

    .line 1820
    .local v10, model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v14

    .line 1822
    .local v14, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const-string v15, "launcher.remove_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1823
    .local v12, removeFolder:Z
    if-eqz v12, :cond_105

    .line 1824
    const-string v15, "launcher.remove_folder_id"

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1827
    :cond_105
    const-string v15, "launcher.rename_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1828
    .local v13, renameFolder:Z
    if-eqz v13, :cond_130

    .line 1829
    const-string v15, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1830
    .local v11, owner:I
    packed-switch v11, :pswitch_data_1a6

    .line 1839
    :goto_11e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v15, :cond_130

    .line 1840
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v15, v11}, Lcom/sec/android/app/twlauncher/FolderInfo;->setOwner(I)V

    .line 1841
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1845
    .end local v11           #owner:I
    :cond_130
    const-string v15, "launcher.all_apps_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1846
    .local v4, allApps:Z
    if-eqz v4, :cond_145

    .line 1847
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    .line 1850
    :cond_145
    const-string v15, "launcher.quick_navigation"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1852
    const-string v15, "launcher.menu_screen_count"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 1854
    const-string v15, "launcher.delete_index"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 1855
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-ltz v15, :cond_2

    .line 1856
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_2

    .line 1832
    .end local v4           #allApps:Z
    .restart local v11       #owner:I
    :pswitch_182
    const-string v15, "launcher.rename_folder_id"

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto :goto_11e

    .line 1835
    :pswitch_18f
    const-string v15, "launcher.rename_folder_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1836
    .local v6, id:J
    sget-object v15, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto/16 :goto_11e

    .line 1830
    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_18f
        :pswitch_182
    .end packed-switch
.end method

.method static setScreen(I)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 1331
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1332
    :try_start_3
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1333
    monitor-exit v1

    .line 1334
    return-void

    .line 1333
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private setSomethingsInDefaultIMSI()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 976
    const-string v1, "ro.build.PDA"

    const-string v2, "Not Available"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 977
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uartapcpmode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 978
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usbapcpmode"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 979
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getBatteryLevel()Ljava/lang/String;

    .line 980
    const-string v1, ""

    .line 982
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.hw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDA : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ro.build.PDA"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.sw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSC : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.official_cscver"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RF Cal. Date : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.rfcal_date"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    .line 990
    const-string v1, "N/A"

    .line 992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAMERA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    .line 993
    const-string v1, "SMD,PBA : N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    .line 995
    const-string v1, "UniqueNumber : N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    .line 998
    :try_start_d5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v6, "PATH_TSP_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e7} :catch_16b

    .line 1000
    :try_start_e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TSP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_100} :catch_192

    .line 1004
    :goto_100
    if-eqz v1, :cond_194

    .line 1006
    :try_start_102
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_18a

    .line 1012
    :goto_105
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "I9103"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 1014
    :try_start_115
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v6, "PATH_TSK_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_127} :catch_175

    .line 1015
    :try_start_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TSK : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_140} :catch_18f

    .line 1019
    :goto_140
    if-eqz v1, :cond_145

    .line 1021
    :try_start_142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_18d

    .line 1028
    :cond_145
    :goto_145
    if-nez v2, :cond_184

    const-string v0, "UART : MODEM"

    :goto_149
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    .line 1029
    if-nez v3, :cond_187

    const-string v0, "USB : MODEM"

    :goto_14f
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    .line 1031
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1032
    const-string v1, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1034
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.RequestLauncherDisplay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1055
    return-void

    .line 1001
    :catch_16b
    move-exception v1

    move-object v1, v0

    .line 1002
    :goto_16d
    const-string v4, "Launcher"

    const-string v5, "Tsp firmver read error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 1016
    :catch_175
    move-exception v1

    .line 1017
    :goto_176
    const-string v1, "Launcher"

    const-string v4, "Tsk firmver read error"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_140

    .line 1025
    :cond_17f
    const-string v0, "TSK : N/A"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    goto :goto_145

    .line 1028
    :cond_184
    const-string v0, "UART : PDA"

    goto :goto_149

    .line 1029
    :cond_187
    const-string v0, "USB : PDA"

    goto :goto_14f

    .line 1007
    :catch_18a
    move-exception v1

    goto/16 :goto_105

    .line 1022
    :catch_18d
    move-exception v0

    goto :goto_145

    .line 1016
    :catch_18f
    move-exception v0

    move-object v0, v1

    goto :goto_176

    .line 1001
    :catch_192
    move-exception v4

    goto :goto_16d

    :cond_194
    move-object v0, v1

    goto/16 :goto_105
.end method

.method private setWallpaperDimension()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1363
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 1365
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1366
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_60

    move v5, v2

    .line 1368
    :goto_1d
    if-eqz v5, :cond_62

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    move v4, v1

    .line 1369
    :goto_24
    if-eqz v5, :cond_68

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1371
    :goto_2a
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    if-nez v5, :cond_82

    .line 1373
    const-string v5, "Launcher"

    const-string v7, "It\'s image wallpaper. suggestDesiredDimensions(-1,-1)"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :try_start_37
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIntrinsicWidth()I

    move-result v5

    .line 1379
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIntrinsicHeight()I

    move-result v7

    .line 1381
    mul-int/lit8 v5, v5, 0xc

    div-int/lit8 v5, v5, 0xa

    if-ge v7, v5, :cond_6d

    .line 1382
    :goto_45
    if-eqz v2, :cond_6f

    .line 1384
    mul-int/lit8 v2, v4, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4c} :catch_79

    .line 1401
    :goto_4c
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5f

    .line 1402
    mul-int/lit8 v0, v4, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1404
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1406
    :cond_5f
    return-void

    :cond_60
    move v5, v3

    .line 1366
    goto :goto_1d

    .line 1368
    :cond_62
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    move v4, v1

    goto :goto_24

    .line 1369
    :cond_68
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_2a

    :cond_6d
    move v2, v3

    .line 1381
    goto :goto_45

    .line 1387
    :cond_6f
    :try_start_6f
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-nez v2, :cond_7e

    .line 1388
    invoke-virtual {v0, v4, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_78} :catch_79

    goto :goto_4c

    .line 1392
    :catch_79
    move-exception v0

    .line 1393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 1390
    :cond_7e
    :try_start_7e
    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_79

    goto :goto_4c

    .line 1397
    :cond_82
    const-string v2, "Launcher"

    const-string v5, "It\'s live wallpaper. suggestDesiredDimensions() with SPAN 2"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    mul-int/lit8 v2, v4, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_4c
.end method

.method private setupViews()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 1864
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .line 1866
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1867
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1869
    const v0, 0x7f060014

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1870
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1872
    const v0, 0x7f060015

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1873
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1875
    const v0, 0x7f060022

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    .line 1877
    const v0, 0x7f060018

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1878
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1879
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1880
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1882
    const v0, 0x7f060019

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    .line 1885
    const v0, 0x7f060017

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1886
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1887
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 1888
    invoke-virtual {v7, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1890
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_81

    .line 1891
    const-string v0, "Launcher"

    const-string v1, "setupViews loadMenuMode() == MenuManager.EDIT_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1895
    :cond_81
    invoke-virtual {v7, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "screencount"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    move v2, v3

    .line 1899
    :goto_8f
    if-ge v2, v8, :cond_b0

    .line 1900
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1902
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1903
    if-nez v1, :cond_a9

    .line 1904
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1907
    :cond_a9
    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1899
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8f

    .line 1911
    :cond_b0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    .line 1913
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "defaultscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1921
    const-string v0, "ro.csc.homescreen.defaultscreen"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1923
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "currentscreen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1924
    if-eq v0, v9, :cond_d3

    if-lt v0, v8, :cond_d5

    .line 1926
    :cond_d3
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1929
    :cond_d5
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1931
    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1932
    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1933
    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1934
    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    .line 1938
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    .line 1940
    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 1941
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1943
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 1946
    const v0, 0x7f06002d

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1949
    const v0, 0x7f06002a

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1953
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDefaultScreen(I)V

    .line 1955
    const v0, 0x7f06002b

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1959
    const v0, 0x7f060027

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1960
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setSetHomeMenu(Landroid/view/View;)V

    .line 1961
    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1962
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1966
    const v0, 0x7f060029

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    .line 1974
    const v0, 0x7f06001a

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1975
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1978
    const v0, 0x7f060021

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    .line 1979
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1980
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1982
    const v0, 0x7f06001d

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1983
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1984
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1986
    const v0, 0x7f06001e

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1988
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1990
    const v0, 0x7f06001f

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1992
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1994
    const v0, 0x7f060020

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1996
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    .line 1998
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    .line 1999
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 2000
    return-void
.end method

.method private showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5375
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5377
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 5379
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5382
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    if-nez v1, :cond_5a

    .line 5383
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5385
    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v3, 0x7f030018

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    .line 5388
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001c

    const v5, 0x7f020030

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5395
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f080017

    const v5, 0x7f020034

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5399
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001b

    const v5, 0x7f02002e

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5401
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001d

    const v5, 0x7f020035

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 5404
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5405
    return-void
.end method

.method private showAppShortcutMenu()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 5408
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5409
    new-instance v4, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v1, 0x7f030018

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5412
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5413
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5415
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5416
    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5417
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v1, :cond_53

    .line 5419
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5420
    new-instance v7, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v2

    goto :goto_2c

    .line 5424
    :cond_53
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5425
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5426
    return-void
.end method

.method private showFolderMenu()V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 5429
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5430
    new-instance v5, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030018

    invoke-direct {v5, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5435
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 5436
    invoke-virtual {v6, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5437
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_4e

    .line 5439
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5440
    new-instance v8, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v8, v1, v9, v0, v2}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v3

    goto :goto_28

    .line 5444
    :cond_4e
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5446
    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v10, v1, v3, v2}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v5, v0, v10}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    .line 5449
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5450
    return-void
.end method

.method private showNotifications()V
    .registers 3

    .prologue
    .line 4091
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 4092
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_d

    .line 4093
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 4095
    :cond_d
    return-void
.end method

.method private showShortcutMenu()V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5453
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5454
    new-instance v7, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030018

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5459
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5460
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5461
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_4e

    .line 5463
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v5

    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5464
    new-instance v9, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v9, v1, v10, v0, v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v3

    goto :goto_28

    .line 5468
    :cond_4e
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5469
    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080016

    const v4, 0x7f02002f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIIZ)V

    invoke-virtual {v7, v0, v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    .line 5471
    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5472
    return-void
.end method

.method private showWallpaperMenu()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 5476
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5478
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    .line 5480
    new-instance v4, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v1, 0x7f030018

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 5483
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5485
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 5486
    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 5487
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v1, :cond_51

    .line 5489
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5490
    new-instance v7, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v2

    goto :goto_2a

    .line 5494
    :cond_51
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    .line 5495
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 5496
    return-void
.end method

.method private startLoaders()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1337
    const-string v3, "Launcher"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "startLoaders. Launcher: %x"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 1340
    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, v1, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    .line 1341
    .local v0, loadApplications:Z
    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-nez v4, :cond_36

    :goto_2e
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, v1, p0, v4, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    .line 1343
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1344
    return-void

    :cond_36
    move v1, v2

    .line 1341
    goto :goto_2e
.end method

.method private triggerModelAdd(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 6140
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_9

    .line 6141
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 6144
    :cond_9
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    .line 6146
    .local v0, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 6148
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$9;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6158
    return-void
.end method

.method private triggerModelUpdate(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 6211
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_9

    .line 6212
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 6215
    :cond_9
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    .line 6217
    .local v0, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    .line 6219
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$10;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$10;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6225
    return-void
.end method

.method private uninstallPackage()Z
    .registers 7

    .prologue
    .line 6528
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallPackage(). package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6529
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 6531
    const/4 v2, 0x0

    .line 6532
    .local v2, requestSucceded:Z
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 6533
    .local v1, observer:Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6535
    :try_start_2c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_40

    .line 6536
    const/4 v2, 0x1

    .line 6541
    :goto_37
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6542
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 6543
    return v2

    .line 6537
    :catch_40
    move-exception v0

    .line 6538
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallPackage() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_37
.end method

.method private updateAddItemCellInfo()V
    .registers 3

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_c

    .line 2144
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2147
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 2148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2149
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2e

    .line 2150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2153
    :cond_2e
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 3487
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 3488
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    .line 3490
    :cond_d
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .registers 7
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 1298
    const/4 v1, 0x0

    .line 1300
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_44
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_32

    .line 1301
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_d
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1302
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1303
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1307
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1f} :catch_53
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_50

    .line 1314
    if-eqz v2, :cond_56

    .line 1316
    :try_start_21
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26

    move-object v1, v2

    .line 1322
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_25
    :goto_25
    return-void

    .line 1317
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_26
    move-exception v3

    move-object v1, v2

    .line 1319
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_25

    .line 1308
    :catch_29
    move-exception v3

    .line 1314
    :goto_2a
    if-eqz v1, :cond_25

    .line 1316
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_25

    .line 1317
    :catch_30
    move-exception v3

    goto :goto_25

    .line 1310
    :catch_32
    move-exception v0

    .line 1312
    .local v0, e:Ljava/io/IOException;
    :goto_33
    :try_start_33
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_44

    .line 1314
    if-eqz v1, :cond_25

    .line 1316
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_25

    .line 1317
    :catch_42
    move-exception v3

    goto :goto_25

    .line 1314
    .end local v0           #e:Ljava/io/IOException;
    :catchall_44
    move-exception v3

    :goto_45
    if-eqz v1, :cond_4a

    .line 1316
    :try_start_47
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 1319
    :cond_4a
    :goto_4a
    throw v3

    .line 1317
    :catch_4b
    move-exception v4

    goto :goto_4a

    .line 1314
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_4d
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_45

    .line 1310
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_50
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_33

    .line 1308
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_53
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2a

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_56
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_25
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    .line 3614
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3616
    const-string v0, "custom_widget"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3618
    if-eqz v2, :cond_4a

    .line 3619
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 3621
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 3622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3629
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3630
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 3657
    :goto_49
    return-void

    .line 3638
    :cond_4a
    const-string v0, "search_widget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 3642
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch()V

    goto :goto_49

    .line 3644
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 3646
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_7a

    .line 3648
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3649
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3650
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3651
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_49

    .line 3654
    :cond_7a
    invoke-virtual {p0, v7, v6, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_49
.end method

.method public addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2185
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2189
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_13} :catch_21

    .line 2197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2200
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    .line 2202
    :goto_20
    return-void

    .line 2190
    :catch_21
    move-exception v0

    .line 2191
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught SecurityException while trying to bind app widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    const-string v0, "Launcher"

    const-string v1, "Launching picker instead of adding widget."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_20
.end method

.method addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const v3, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 3734
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3736
    if-nez p2, :cond_32

    .line 3737
    const-string v0, "Launcher"

    const-string v1, "addNewDroppedSamsungWidget() : cellInfo is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3739
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_28

    .line 3740
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3745
    :goto_22
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3798
    :cond_27
    :goto_27
    return-void

    .line 3743
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 3750
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3751
    if-nez v0, :cond_81

    .line 3752
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3754
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_77

    .line 3755
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3760
    :goto_71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27

    .line 3758
    :cond_77
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_71

    .line 3764
    :cond_81
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 3767
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3769
    aget v0, v8, v7

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3770
    aget v0, v8, v10

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3772
    aget v0, v8, v7

    aget v1, v8, v10

    invoke-direct {p0, p2, v9, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 3773
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3774
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 3775
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 3777
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 3779
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_27

    .line 3781
    :cond_ca
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_27

    .line 3785
    :cond_cf
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3786
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3789
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 3790
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3792
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v9, v7

    aget v3, v9, v10

    aget v4, v8, v7

    aget v5, v8, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 3795
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_27

    .line 3796
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_27
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 6916
    if-nez p1, :cond_f

    .line 6917
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6918
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 6937
    :cond_e
    :goto_e
    return-void

    .line 6922
    :cond_f
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 6923
    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 6924
    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 6926
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 6927
    const-wide/16 v2, -0x64

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 6930
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 6931
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 6933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v8, v7

    aget v4, v8, v11

    move v2, p2

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 6934
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, p2, :cond_e

    .line 6935
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_e
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .registers 13
    .parameter

    .prologue
    const/4 v5, 0x3

    const v4, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 3802
    if-nez p1, :cond_9

    .line 3877
    :cond_8
    :goto_8
    return-void

    .line 3804
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 3806
    if-nez v1, :cond_19

    .line 3807
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3811
    :cond_19
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 3813
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3815
    if-nez v0, :cond_48

    .line 3816
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : cellInfo is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3818
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3e

    .line 3819
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3824
    :goto_38
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 3822
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 3828
    :cond_48
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 3829
    if-nez v2, :cond_93

    .line 3830
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3832
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_89

    .line 3833
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 3838
    :goto_83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 3836
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_83

    .line 3842
    :cond_93
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 3845
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3847
    aget v2, v8, v7

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3848
    aget v2, v8, v10

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3850
    aget v2, v8, v7

    aget v3, v8, v10

    invoke-direct {p0, v0, v9, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 3851
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3852
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 3853
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 3855
    iput v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3856
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 3857
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_8

    .line 3859
    :cond_d8
    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_8

    .line 3864
    :cond_dd
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3865
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3868
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 3869
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3871
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v4, v9, v7

    aget v5, v9, v10

    aget v6, v8, v7

    aget v7, v8, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 3874
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_8

    .line 3875
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_8
.end method

.method addSearch()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 3660
    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v1

    .line 3661
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3663
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3664
    iget v9, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 3665
    iget v10, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 3667
    invoke-direct {p0, v0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_34

    .line 3668
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v9, v0, v7

    .line 3669
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v10, v0, v11

    .line 3670
    iput v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 3671
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3673
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3690
    :goto_2f
    return-void

    .line 3675
    :cond_30
    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_2f

    .line 3680
    :cond_34
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    .line 3681
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3684
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3685
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3686
    const v0, 0x7f060052

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3687
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3689
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v11

    move-object v1, v4

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_2f
.end method

.method addSearch(Lcom/sec/android/app/twlauncher/Widget;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 3712
    if-nez p1, :cond_5

    .line 3726
    :goto_4
    return-void

    .line 3714
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 3716
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    .line 3717
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v9

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 3720
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3721
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3722
    const v0, 0x7f060052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3723
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3725
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v9

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_4
.end method

.method cancelAddWidget()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 7088
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 7089
    .local v0, type:I
    if-ne v0, v5, :cond_1d

    .line 7090
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 7105
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 7106
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 7108
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    .line 7110
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 7111
    return-void

    .line 7091
    :cond_1d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 7092
    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v1, v3, :cond_2b

    .line 7093
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 7094
    :cond_2b
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 7095
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 7096
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_9

    .line 7097
    :cond_32
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 7098
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_48

    .line 7099
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 7102
    :cond_48
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_9
.end method

.method cancelRemovePage()V
    .registers 2

    .prologue
    .line 6499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6500
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 6502
    return-void
.end method

.method checkWidgetSpace(I)Z
    .registers 11
    .parameter "screen"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7041
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 7042
    .local v3, type:I
    if-eq v3, v6, :cond_d

    const/4 v7, 0x2

    if-eq v3, v7, :cond_d

    const/4 v7, 0x3

    if-ne v3, v7, :cond_27

    .line 7045
    :cond_d
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    .line 7046
    .local v1, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 7048
    .local v2, spans:[I
    invoke-virtual {v1, v8, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 7051
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 7052
    .local v4, xy:[I
    if-eqz v0, :cond_28

    aget v7, v2, v5

    aget v8, v2, v6

    invoke-direct {p0, v0, v4, v7, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v7

    if-nez v7, :cond_28

    .line 7060
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :cond_27
    :goto_27
    return v5

    .line 7056
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #spans:[I
    .restart local v4       #xy:[I
    :cond_28
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v6

    .line 7057
    goto :goto_27
.end method

.method clearAddWidget()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 7114
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 7116
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 7117
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    .line 7118
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 7120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 7121
    return-void
.end method

.method closeAllApplications()V
    .registers 2

    .prologue
    .line 5017
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    .line 5018
    return-void
.end method

.method closeQuickViewMainMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5102
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5118
    :goto_9
    return-void

    .line 5105
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 5106
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    .line 5108
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 5109
    .local v0, newMenuPage:I
    if-ltz v0, :cond_28

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_39

    .line 5110
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    .line 5116
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 5117
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    goto :goto_9

    .line 5111
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v1

    if-eq v1, v0, :cond_2e

    .line 5112
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_2e
.end method

.method closeQuickViewWorkspace()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 5047
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_a

    .line 5072
    :goto_9
    return-void

    .line 5050
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 5051
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    .line 5053
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 5054
    .local v1, newWorkspace:I
    if-ltz v1, :cond_28

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_58

    .line 5055
    :cond_28
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 5060
    :cond_2e
    :goto_2e
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 5062
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 5063
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 5064
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 5066
    move v0, v1

    .line 5067
    .local v0, newScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 5056
    .end local v0           #newScreen:I
    :cond_58
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v2, v1, :cond_2e

    .line 5057
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 5058
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_2e
.end method

.method closeSystemDialogs()V
    .registers 2

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 2523
    const/4 v0, 0x2

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 2525
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_6f

    .line 2532
    :goto_10
    const/4 v0, 0x7

    :try_start_11
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    .line 2534
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_6d

    .line 2541
    :goto_19
    const/4 v0, 0x0

    :try_start_1a
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 2542
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_6b

    .line 2549
    :goto_20
    const/4 v0, 0x4

    :try_start_21
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_55

    .line 2556
    :goto_24
    const/4 v0, 0x5

    :try_start_25
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_57

    .line 2563
    :goto_28
    const/4 v0, 0x6

    :try_start_29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_59

    .line 2570
    :goto_2c
    const/16 v0, 0x8

    :try_start_2e
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_5b

    .line 2576
    :goto_31
    const/16 v0, 0x9

    :try_start_33
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_5d

    .line 2582
    :goto_36
    const/16 v0, 0xa

    :try_start_38
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_5f

    .line 2588
    :goto_3b
    const/16 v0, 0xb

    :try_start_3d
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_61

    .line 2596
    :goto_40
    const/16 v0, 0xd

    :try_start_42
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_63

    .line 2602
    :goto_45
    const/16 v0, 0xe

    :try_start_47
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_65

    .line 2608
    :goto_4a
    const/16 v0, 0xf

    :try_start_4c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_67

    .line 2615
    :goto_4f
    const/16 v0, 0x12

    :try_start_51
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_69

    .line 2621
    :goto_54
    return-void

    .line 2550
    :catch_55
    move-exception v0

    goto :goto_24

    .line 2557
    :catch_57
    move-exception v0

    goto :goto_28

    .line 2564
    :catch_59
    move-exception v0

    goto :goto_2c

    .line 2571
    :catch_5b
    move-exception v0

    goto :goto_31

    .line 2577
    :catch_5d
    move-exception v0

    goto :goto_36

    .line 2583
    :catch_5f
    move-exception v0

    goto :goto_3b

    .line 2589
    :catch_61
    move-exception v0

    goto :goto_40

    .line 2597
    :catch_63
    move-exception v0

    goto :goto_45

    .line 2603
    :catch_65
    move-exception v0

    goto :goto_4a

    .line 2609
    :catch_67
    move-exception v0

    goto :goto_4f

    .line 2616
    :catch_69
    move-exception v0

    goto :goto_54

    .line 2543
    :catch_6b
    move-exception v0

    goto :goto_20

    .line 2535
    :catch_6d
    move-exception v0

    goto :goto_19

    .line 2526
    :catch_6f
    move-exception v0

    goto :goto_10
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .registers 8
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2082
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    .line 2083
    .local v1, page:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 2093
    :cond_7
    :goto_7
    return-void

    .line 2085
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 2086
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    .line 2089
    :cond_15
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 2090
    .local v0, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_7

    .line 2091
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p3, p4}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_7
.end method

.method completeAddWidget(I)V
    .registers 7
    .parameter "screen"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7064
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 7066
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_19

    .line 7067
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    .line 7068
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v3

    .line 7071
    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 7073
    if-ne v0, v3, :cond_34

    .line 7074
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch(Lcom/sec/android/app/twlauncher/Widget;)V

    .line 7081
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 7083
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 7084
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 7085
    return-void

    .line 7075
    :cond_34
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    .line 7076
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    goto :goto_25

    .line 7077
    :cond_3b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 7078
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V

    goto :goto_25
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 8
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 908
    .local v1, remoteCtxt:Landroid/content/Context;
    if-eqz v1, :cond_1f

    .line 909
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 910
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 911
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1f

    .line 912
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 913
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 916
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1f
    return-object v1
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 8
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 2055
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2056
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-nez v2, :cond_d

    .line 2057
    const/4 v0, 0x0

    .line 2070
    :goto_c
    return-object v0

    :cond_d
    move-object v0, v1

    .line 2059
    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    .line 2060
    .local v0, favorite:Lcom/sec/android/app/twlauncher/BubbleTextView;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_22

    .line 2061
    iget-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2062
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2065
    :cond_22
    iget-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2066
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2067
    invoke-virtual {v0, p3}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 2068
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 2041
    const v1, 0x7f030001

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public deactivateAllScrollMenus()V
    .registers 3

    .prologue
    .line 7689
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getSetHomeMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    .line 7694
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 7696
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 7698
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7700
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7701
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7702
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    .line 7703
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 7705
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 7706
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    .line 7710
    :cond_57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    .line 7711
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4183
    sget-object v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4188
    :try_start_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_22

    .line 4200
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_f0

    .line 4263
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1

    :goto_16
    return v0

    .line 4210
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->handleBackKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4211
    monitor-exit v1

    goto :goto_16

    .line 4264
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0

    .line 4224
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_11

    .line 4227
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 4229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_f6

    .line 4237
    monitor-exit v1

    goto :goto_16

    .line 4233
    :pswitch_37
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 4234
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4235
    monitor-exit v1

    goto :goto_16

    .line 4240
    :cond_41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_fc

    goto :goto_11

    .line 4242
    :sswitch_49
    monitor-exit v1

    goto :goto_16

    .line 4245
    :sswitch_4b
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_57

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v2, :cond_57

    :cond_57
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_63

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v2, v0, :cond_e3

    .line 4249
    :cond_63
    const-string v2, "Launcher"

    const-string v3, "In this case, Option menu is not shown #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mQuickViewWorkspace open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAnimating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mQuickViewMainMenu open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAnimating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAnimating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mStateQuickNavigation  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    monitor-exit v1

    goto/16 :goto_16

    .line 4255
    :cond_e3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4256
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V
    :try_end_ee
    .catchall {:try_start_22 .. :try_end_ee} :catchall_1f

    goto/16 :goto_11

    .line 4200
    :pswitch_data_f0
    .packed-switch 0x4
        :pswitch_17
    .end packed-switch

    .line 4229
    :pswitch_data_f6
    .packed-switch 0x4
        :pswitch_37
    .end packed-switch

    .line 4240
    :sswitch_data_fc
    .sparse-switch
        0x4 -> :sswitch_49
        0x52 -> :sswitch_4b
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 4169
    const/4 v0, 0x0

    .line 4170
    .local v0, res:Z
    sget-object v2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4171
    :try_start_4
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4172
    monitor-exit v2

    .line 4173
    return v0

    .line 4172
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I
    .registers 10
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 4015
    const/4 v0, 0x2

    new-array v2, v0, [I

    .local v2, xy:[I
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    .line 4016
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4017
    aget v0, v2, v5

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 4018
    aget v0, v2, v3

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 4019
    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 4026
    :cond_19
    :goto_19
    return v6

    .line 4021
    :cond_1a
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v6

    .line 4023
    .local v6, page:I
    if-ne v6, v7, :cond_19

    move v6, v7

    .line 4024
    goto :goto_19
.end method

.method public findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4040
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 4041
    new-array v1, v2, [I

    .line 4042
    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aput v0, v1, v7

    .line 4043
    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    aput v0, v1, v8

    .line 4045
    new-array v2, v2, [I

    .line 4046
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4047
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    .line 4048
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v0

    .line 4050
    const/4 v3, -0x1

    if-eq v0, v3, :cond_49

    .line 4051
    aget v3, v2, v7

    iput v3, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 4052
    aget v2, v2, v8

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 4053
    aget v2, v1, v7

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 4054
    aget v1, v1, v8

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 4055
    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 4057
    :cond_49
    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .registers 15
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"
    .parameter "cellInfo"
    .parameter "createPage"

    .prologue
    .line 6851
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I

    move-result v0

    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I
    .registers 17
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"
    .parameter "cellInfo"
    .parameter "isDefault"
    .parameter "createPage"

    .prologue
    .line 6856
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 6857
    .local v6, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 6858
    .local v0, count:I
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 6860
    .local v1, currentScreen:I
    move v2, v1

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_40

    .line 6861
    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6862
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_38

    .line 6863
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6868
    .local v5, span:[I
    :goto_17
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6869
    if-eqz p5, :cond_2b

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 6870
    :cond_2b
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6871
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6912
    .end local v2           #i:I
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :goto_37
    return v2

    .line 6865
    .restart local v2       #i:I
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_38
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_17

    .line 6860
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6876
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_40
    if-lez v1, :cond_79

    .line 6878
    add-int/lit8 v2, v1, -0x1

    :goto_44
    if-ltz v2, :cond_79

    .line 6879
    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6880
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_71

    .line 6881
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6886
    .restart local v5       #span:[I
    :goto_50
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6887
    if-eqz p5, :cond_64

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 6888
    :cond_64
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6889
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    goto :goto_37

    .line 6883
    .end local v5           #span:[I
    :cond_71
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_50

    .line 6878
    :cond_76
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    .line 6895
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_79
    if-eqz p7, :cond_b8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v7

    if-nez v7, :cond_b8

    .line 6896
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 6897
    .local v4, page:I
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 6898
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p6, :cond_b3

    .line 6899
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 6904
    .restart local v5       #span:[I
    :goto_91
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    .line 6905
    if-eqz p5, :cond_a5

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 6906
    :cond_a5
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 6907
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v2, v4

    .line 6908
    goto :goto_37

    .line 6901
    .end local v5           #span:[I
    :cond_b3
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_91

    .line 6912
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #page:I
    .end local v5           #span:[I
    :cond_b8
    const/4 v2, -0x1

    goto/16 :goto_37
.end method

.method getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;
    .registers 2

    .prologue
    .line 5121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    return-object v0
.end method

.method getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .registers 2

    .prologue
    .line 5129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method getAdjacentBlankScreen(I)I
    .registers 14
    .parameter "screen"

    .prologue
    .line 7178
    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 7179
    .local v7, type:I
    const/4 v4, -0x1

    .line 7180
    .local v4, ret:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_c

    const/4 v10, 0x2

    if-eq v7, v10, :cond_c

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6c

    .line 7182
    :cond_c
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 7183
    .local v9, xy:[I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 7185
    .local v6, spans:[I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 7186
    .local v8, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 7188
    .local v1, count:I
    move v2, p1

    .local v2, i:I
    :goto_17
    if-ge v2, v1, :cond_39

    .line 7189
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 7190
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 7191
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_3d

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 7192
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 7193
    move v4, v2

    .line 7198
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_39
    if-nez p1, :cond_40

    move v5, v4

    .line 7213
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #ret:I
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    .local v5, ret:I
    :goto_3c
    return v5

    .line 7188
    .end local v5           #ret:I
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #ret:I
    .restart local v6       #spans:[I
    .restart local v8       #w:Lcom/sec/android/app/twlauncher/Workspace;
    .restart local v9       #xy:[I
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 7201
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_40
    add-int/lit8 v2, p1, -0x1

    :goto_42
    if-ltz v2, :cond_6c

    .line 7202
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 7203
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 7204
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_69

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 7205
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    .line 7206
    const/4 v10, -0x1

    if-ne v4, v10, :cond_67

    .line 7207
    move v4, v2

    :cond_67
    move v5, v4

    .line 7208
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_3c

    .line 7201
    .end local v5           #ret:I
    .restart local v4       #ret:I
    :cond_69
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    :cond_6c
    move v5, v4

    .line 7213
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_3c
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .registers 2

    .prologue
    .line 5165
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .registers 2

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .registers 2

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .registers 2

    .prologue
    .line 5177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method public getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4901
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_56

    .line 4902
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 4904
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    if-ne v0, v3, :cond_61

    move-object v0, p1

    .line 4905
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v0

    .line 4907
    if-nez v0, :cond_4b

    .line 4908
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 4909
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4910
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    if-ne v0, v3, :cond_42

    .line 4911
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080081

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_33
    move-object v0, v1

    .line 4926
    :goto_34
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 4927
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4928
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4929
    iput-boolean v3, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 4930
    :goto_41
    return-object v0

    .line 4913
    :cond_42
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080082

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_33

    .line 4916
    :cond_4b
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 4917
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 4921
    :cond_56
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v0, :cond_5f

    .line 4922
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v0

    goto :goto_34

    .line 4924
    :cond_5f
    const/4 v0, 0x0

    goto :goto_41

    :cond_61
    move-object v0, v1

    goto :goto_34
.end method

.method getGLSurfaceViewGroup()Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .registers 2

    .prologue
    .line 5181
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;
    .registers 2

    .prologue
    .line 5185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .registers 2

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method public getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 7778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_24

    .line 7779
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7780
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7781
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 7783
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method public getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 7787
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_24

    .line 7788
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7789
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7790
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 7792
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .registers 2

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method protected getNewFolderName(I)Ljava/lang/CharSequence;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    .line 5321
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\\d+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 5328
    if-ne p1, v1, :cond_78

    .line 5329
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getWorkspaceFolderList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5336
    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_44
    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5337
    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-ne v6, v7, :cond_44

    .line 5340
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5341
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 5342
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 5345
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 5330
    :cond_78
    if-ne p1, v7, :cond_81

    .line 5331
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerFolderList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_40

    .line 5333
    :cond_81
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5371
    :goto_85
    return-object v0

    .line 5363
    :cond_86
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5366
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5367
    if-lt v1, v0, :cond_b8

    if-ltz v0, :cond_b8

    .line 5368
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_a4
    move v1, v0

    goto :goto_8d

    .line 5371
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    :cond_b8
    move v0, v1

    goto :goto_a4
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .registers 2

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .registers 2

    .prologue
    .line 5075
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .registers 2

    .prologue
    .line 5161
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 7544
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .registers 2

    .prologue
    .line 7294
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;
    .registers 13
    .parameter "widget"

    .prologue
    const/16 v10, 0x78

    .line 3544
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>()V

    .line 3545
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v1

    .line 3546
    .local v1, array:[Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 3547
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_35

    aget-object v5, v0, v2

    .line 3548
    .local v5, parsed:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3549
    .local v6, spanX:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3550
    .local v7, spanY:I
    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/twlauncher/MultipleSize;->setSize(II)Z

    .line 3547
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3553
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #parsed:Ljava/lang/String;
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    :cond_35
    return-object v4
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .registers 2

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method ignoreGLPauseResume()Z
    .registers 3

    .prologue
    .line 196
    const-string v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FROYO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAddWidgetState()Z
    .registers 2

    .prologue
    .line 5197
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isAllPageSlot(I)Z
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f080053

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 7156
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v3, v2, v0

    .line 7157
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v3, v2, v1

    .line 7158
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    move-result v2

    .line 7160
    if-ne v2, v3, :cond_21

    .line 7161
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 7162
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v3, :cond_22

    .line 7163
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    .line 7174
    :cond_21
    :goto_21
    return v0

    .line 7165
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_37

    .line 7166
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 7170
    :goto_30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 7171
    goto :goto_21

    .line 7169
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method public isAppWidgetPreviewVisible()Z
    .registers 3

    .prologue
    .line 2393
    const/4 v0, 0x0

    .line 2394
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 2395
    const/4 v0, 0x1

    .line 2398
    :cond_a
    return v0
.end method

.method public isDefaultIMSI()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 921
    .line 941
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v2

    if-ne v2, v0, :cond_23

    .line 942
    const-string v4, "357858010034783"

    .line 943
    const-string v3, "004400152020002"

    .line 944
    const-string v2, "ril.IMEI"

    const-string v5, "Default"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 953
    :goto_14
    if-eqz v2, :cond_2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 959
    :cond_22
    :goto_22
    return v0

    .line 948
    :cond_23
    const-string v4, "999999999999999"

    .line 949
    const-string v3, "999999999999999"

    .line 950
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 955
    :cond_2e
    if-eqz v2, :cond_42

    const-string v0, "Default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 957
    goto :goto_22

    :cond_42
    move v0, v1

    .line 959
    goto :goto_22
.end method

.method public isManagingWallpaper()Z
    .registers 2

    .prologue
    .line 7384
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isSearchManagerVisible()Z
    .registers 4

    .prologue
    .line 3058
    const/4 v0, 0x0

    .line 3060
    .local v0, bRetVal:Z
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 3061
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v0

    .line 3062
    return v0
.end method

.method isWindowOpaque()Z
    .registers 2

    .prologue
    .line 7324
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .registers 2

    .prologue
    .line 4958
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method loadMenuMode()I
    .registers 4

    .prologue
    .line 6964
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "menu"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3557
    .line 3559
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3560
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3561
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3562
    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 3568
    :try_start_17
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_21} :catch_6f

    move-result-object v0

    .line 3574
    :goto_22
    if-eqz v0, :cond_6e

    .line 3575
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3576
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3578
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3579
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 3580
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.sec.android.appwidget.widgetinfo"

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3582
    if-eqz v0, :cond_6e

    .line 3586
    :cond_56
    :try_start_56
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_59} :catch_75
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_7a

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_60

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    .line 3594
    :cond_60
    :goto_60
    const-string v2, "supportCellSizes"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3596
    if-lez v0, :cond_7f

    .line 3597
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_6d
    move-object v1, v0

    .line 3605
    :cond_6e
    return-object v1

    .line 3570
    :catch_6f
    move-exception v0

    .line 3571
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_22

    .line 3588
    :catch_75
    move-exception v2

    .line 3589
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_60

    .line 3590
    :catch_7a
    move-exception v2

    .line 3591
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :cond_7f
    move-object v0, v1

    goto :goto_6d
.end method

.method menudiscard()V
    .registers 2

    .prologue
    .line 6474
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    .line 6475
    return-void
.end method

.method menusave()Z
    .registers 2

    .prologue
    .line 6470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1410
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1412
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v2, :cond_11

    .line 1413
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1424
    :cond_11
    if-ne p2, v3, :cond_81

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v2, :cond_81

    .line 1425
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    .line 1426
    packed-switch p1, :pswitch_data_9a

    .line 1477
    :cond_21
    :goto_21
    :pswitch_21
    return-void

    .line 1428
    :pswitch_22
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_2c

    :goto_28
    invoke-virtual {p0, p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_21

    :cond_2c
    move v0, v1

    goto :goto_28

    .line 1433
    :pswitch_2e
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_38

    :goto_34
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_21

    :cond_38
    move v0, v1

    goto :goto_34

    .line 1438
    :pswitch_3a
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_44

    :goto_40
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_21

    :cond_44
    move v0, v1

    goto :goto_40

    .line 1442
    :pswitch_46
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1444
    const-string v0, "appWidgetComponentName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1447
    if-nez v0, :cond_5e

    .line 1448
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_21

    .line 1451
    :cond_5e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1461
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_21

    .line 1466
    :pswitch_75
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_7f

    :goto_7b
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_21

    :cond_7f
    move v0, v1

    goto :goto_7b

    .line 1469
    :cond_81
    const/16 v0, 0x9

    if-eq p1, v0, :cond_88

    const/4 v0, 0x5

    if-ne p1, v0, :cond_21

    :cond_88
    if-nez p2, :cond_21

    if-eqz p3, :cond_21

    .line 1472
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1473
    if-eq v0, v3, :cond_21

    .line 1474
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_21

    .line 1426
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_21
        :pswitch_21
        :pswitch_3a
        :pswitch_75
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_46
    .end packed-switch
.end method

.method onApplicationsLoaded(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .registers 4
    .parameter

    .prologue
    .line 4424
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_2c

    .line 4425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->skippedApplications()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4426
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 4427
    :cond_15
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_2b

    .line 4428
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4429
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4436
    :cond_2b
    :goto_2b
    return-void

    .line 4433
    :cond_2c
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onApplicationsLoaded() : DISCARD applications. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 4753
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4754
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v1, :cond_10

    .line 4755
    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 4771
    :cond_f
    :goto_f
    return-void

    .line 4758
    :cond_10
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_f

    .line 4760
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4761
    if-nez v0, :cond_24

    .line 4762
    const-string v0, "Launcher"

    const-string v1, "Failed to find inntent for application shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4764
    :cond_24
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4765
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4766
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v5

    aget v4, v1, v7

    aget v5, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v1, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 4768
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 724
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onCreate. Launcher: %x, mDestroyed: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 728
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    .line 730
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 733
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 762
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 765
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 768
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    .line 769
    if-nez v0, :cond_202

    .line 770
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    .line 775
    :goto_62
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 776
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->registerPkgChangeListener(Landroid/app/Application;)V

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 778
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 779
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 780
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate():  product model family:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " product model : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    .line 784
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    .line 787
    const-string v1, ""

    .line 788
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    const/high16 v2, 0x7f0a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 792
    const v2, 0x7f0a0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 793
    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 794
    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 796
    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 797
    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 798
    const-string v0, "ro.csc.homescreen.screencount"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 799
    if-lez v0, :cond_102

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-gt v0, v2, :cond_102

    .line 800
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 803
    :cond_102
    const-string v0, "TWM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 804
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 806
    :cond_10d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 808
    const-string v0, "launcher"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 810
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 812
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    .line 813
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    .line 824
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    .line 826
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 829
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 831
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    .line 847
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 853
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 860
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_179

    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    .line 865
    :cond_179
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 872
    new-instance v0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    .line 875
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v1, v2, v5, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMSI()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 885
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMSI()V

    .line 890
    :cond_1b8
    new-instance v0, Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/DataConnChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    .line 891
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 892
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 893
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.twlauncher.ACTION_MAIN_LAUNCHER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 901
    return-void

    .line 773
    :cond_202
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    goto/16 :goto_62
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5202
    .line 5203
    packed-switch p1, :pswitch_data_c2

    .line 5272
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 5275
    :goto_8
    :pswitch_8
    return-object v0

    .line 5207
    :pswitch_9
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createRenameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5210
    :pswitch_13
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5213
    :pswitch_1d
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5216
    :pswitch_27
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5219
    :pswitch_31
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5222
    :pswitch_3b
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;->createNameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5225
    :pswitch_45
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080077

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5229
    :pswitch_52
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080078

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5232
    :pswitch_5f
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080079

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5236
    :pswitch_6c
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5239
    :pswitch_76
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 5245
    :pswitch_80
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    #calls: Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->createDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->access$2300(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5248
    :pswitch_8b
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    #calls: Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;->createDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;->access$2500(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5251
    :pswitch_96
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    #calls: Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->createDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->access$2700(Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5255
    :pswitch_a1
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5261
    :pswitch_ac
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5267
    :pswitch_b7
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_8

    .line 5203
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_13
        :pswitch_1d
        :pswitch_27
        :pswitch_31
        :pswitch_3b
        :pswitch_45
        :pswitch_52
        :pswitch_5f
        :pswitch_6c
        :pswitch_76
        :pswitch_80
        :pswitch_8b
        :pswitch_96
        :pswitch_a1
        :pswitch_ac
        :pswitch_b7
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f02003a

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 3067
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_17

    .line 3068
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :goto_16
    return v0

    .line 3072
    :cond_17
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3074
    const/4 v1, 0x1

    const v2, 0x7f08002d

    invoke-interface {p1, v1, v4, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020036

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x41

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3076
    const v1, 0x7f08002e

    invoke-interface {p1, v0, v6, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020041

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x57

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3078
    const v1, 0x7f08002f

    invoke-interface {p1, v0, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3080
    const/4 v1, 0x5

    const v2, 0x7f080030

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020038

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3082
    const/16 v1, 0xd

    const v2, 0x7f080033

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x45

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3085
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3086
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3090
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3093
    const/4 v2, 0x7

    const v3, 0x7f080032

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3097
    const/16 v1, 0x8

    const v2, 0x7f080033

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3102
    const/16 v1, 0x12

    const v2, 0x7f08003a

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3125
    const/16 v1, 0xf

    const v2, 0x7f080039

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020040

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3134
    const/16 v1, 0x12

    const v2, 0x7f08003a

    invoke-interface {p1, v6, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3145
    const/16 v1, 0xf

    const v2, 0x7f080039

    invoke-interface {p1, v6, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020040

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3149
    const/16 v1, 0xb

    const v2, 0x7f080037

    invoke-interface {p1, v5, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3151
    const/16 v1, 0xc

    const v2, 0x7f080038

    invoke-interface {p1, v5, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020037

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3154
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3155
    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3157
    const/16 v3, 0x10

    const v4, 0x7f08003f

    invoke-interface {p1, v5, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3160
    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3161
    const/16 v2, 0x11

    const v3, 0x7f080040

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 3167
    const/4 v1, 0x7

    const/16 v2, 0x16

    const v3, 0x7f0800a9

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3172
    const/4 v0, 0x1

    goto/16 :goto_16
.end method

.method onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4415
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_8

    .line 4416
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher;->bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4421
    :goto_7
    return-void

    .line 4418
    :cond_8
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onDesktopItemsLoaded() : DISCARD desktop items. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public onDestroy()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2895
    const-string v6, "Launcher"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "onDestroy. Launcher: %x"

    new-array v9, v13, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    .line 2899
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 2901
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2913
    :try_start_24
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_29} :catch_64

    .line 2921
    :goto_29
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    if-eqz v6, :cond_34

    .line 2922
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v6, v12}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 2923
    iput-object v12, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    .line 2930
    :cond_34
    const/4 v2, 0x0

    .local v2, i:I
    :goto_35
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_70

    .line 2931
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2933
    .local v0, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, j:I
    :goto_4b
    if-ltz v3, :cond_6d

    .line 2934
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2935
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    if-eqz v6, :cond_61

    move-object v6, v5

    .line 2936
    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->destroyLauncherReferences()V

    .line 2937
    invoke-virtual {v5, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2938
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2933
    :cond_61
    add-int/lit8 v3, v3, -0x1

    goto :goto_4b

    .line 2914
    .end local v0           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #v:Landroid/view/View;
    :catch_64
    move-exception v1

    .line 2915
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v6, "Launcher"

    const-string v7, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 2930
    .end local v1           #ex:Ljava/lang/NullPointerException;
    .restart local v0       #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 2943
    .end local v0           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #j:I
    :cond_70
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/method/TextKeyListener;->release()V

    .line 2945
    sget-object v6, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbind(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 2947
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 2948
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDestroy()V

    .line 2950
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    .line 2952
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2953
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2954
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2955
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2956
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2957
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2958
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2959
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2960
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2961
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2962
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2966
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2967
    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)V
    .registers 6
    .parameter "menu"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7548
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_8

    .line 7549
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWorkspaceMenuSelection(IJ)V

    .line 7558
    :cond_7
    :goto_7
    return-void

    .line 7550
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_10

    .line 7551
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWallpapersMenuSelection(IJ)V

    goto :goto_7

    .line 7552
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_18

    .line 7553
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcutMenuSelection(IJ)V

    goto :goto_7

    .line 7554
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_20

    .line 7555
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAppShortcutMenuSelection(IJ)V

    goto :goto_7

    .line 7556
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_7

    .line 7557
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processFolderMenuSelection(IJ)V

    goto :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1682
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1684
    .local v1, handled:Z
    if-nez v1, :cond_2f

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x42

    if-eq p1, v2, :cond_2f

    .line 1687
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1689
    .local v0, gotKey:Z
    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 1697
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v1

    .line 1716
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_2e
    :goto_2e
    return v1

    .line 1702
    .restart local v1       #handled:Z
    :cond_2f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_38

    .line 1703
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->isDone:Z

    .line 1706
    :cond_38
    const/16 v2, 0x52

    if-ne p1, v2, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1707
    const/4 v1, 0x1

    goto :goto_2e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4963
    const-string v0, "IconDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher.java onLongClick mDesktopLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v0, :cond_22

    move v0, v1

    .line 5009
    :goto_21
    return v0

    .line 4968
    :cond_22
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_a3

    .line 4969
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4972
    :goto_2c
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 4975
    if-nez v0, :cond_3d

    .line 4976
    const-string v0, "IconDebug"

    const-string v1, "Launcher.java onLongClick cellInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 4977
    goto :goto_21

    .line 4980
    :cond_3d
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 4981
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v3, :cond_82

    .line 4982
    const-string v3, "IconDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher.java onLongClick cellInfo.valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_74

    .line 4985
    const-string v0, "IconDebug"

    const-string v1, "Launcher.java onLongClick cellInfo.vacantCells.size()==0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 4986
    goto :goto_21

    .line 4988
    :cond_74
    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v3, :cond_80

    .line 4990
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    .line 4991
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_80
    :goto_80
    move v0, v2

    .line 5009
    goto :goto_21

    .line 4994
    :cond_82
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_80

    .line 4996
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v1

    if-eqz v1, :cond_90

    move v0, v2

    .line 4997
    goto :goto_21

    .line 5000
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 5003
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5005
    :cond_9d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_80

    :cond_a3
    move-object v0, p1

    goto :goto_2c
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v5, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2625
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 2627
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 2629
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2632
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 2633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2634
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2644
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 2647
    const-string v0, "widgetInstall"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2649
    if-eqz v0, :cond_ef

    .line 2650
    const-string v3, "widgetInstall"

    const-string v4, "widgetInstall"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2652
    const-string v3, "packageName"

    const-string v4, "packageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2654
    const-string v3, "className"

    const-string v4, "className"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    .line 2660
    :goto_51
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_e2

    .line 2661
    const-string v3, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a2

    .line 2663
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2664
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 2667
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2668
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2677
    :cond_6f
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2679
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2680
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2701
    :cond_83
    :goto_83
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 2702
    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 2703
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2704
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2714
    :cond_a2
    :goto_a2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 2715
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    .line 2717
    :cond_aa
    return-void

    .line 2682
    :cond_ab
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 2683
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_bc

    .line 2684
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    goto :goto_83

    .line 2686
    :cond_bc
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_83

    .line 2688
    :cond_c0
    if-nez v0, :cond_83

    .line 2689
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "screencount"

    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2692
    const-string v3, "ro.csc.homescreen.defaultscreen"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 2693
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    if-lt v3, v0, :cond_df

    .line 2694
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 2697
    :cond_df
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_83

    .line 2708
    :cond_e2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2709
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 2710
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2711
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_a2

    :cond_ef
    move v0, v2

    goto/16 :goto_51
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 3367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_b0

    .line 3455
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    :pswitch_d
    return v0

    .line 3369
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    goto :goto_d

    .line 3372
    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_d

    .line 3375
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    goto :goto_d

    .line 3378
    :pswitch_1a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    goto :goto_d

    .line 3386
    :pswitch_1e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2d

    .line 3387
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_d

    .line 3389
    :cond_2d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMenuEditDialogAvailable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3390
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3392
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_d

    .line 3398
    :pswitch_3f
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v1, :cond_49

    .line 3399
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_d

    .line 3401
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_d

    .line 3405
    :pswitch_4f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_d

    .line 3408
    :pswitch_55
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    goto :goto_d

    .line 3411
    :pswitch_59
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    goto :goto_d

    .line 3414
    :pswitch_5d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 3415
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto :goto_d

    .line 3418
    :pswitch_68
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto :goto_d

    .line 3422
    :pswitch_6c
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onShareAppRequested()V

    goto :goto_d

    .line 3427
    :pswitch_70
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(ZZ)V

    goto :goto_d

    .line 3432
    :pswitch_80
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(ZZ)V

    goto/16 :goto_d

    .line 3435
    :pswitch_91
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto/16 :goto_d

    .line 3439
    :pswitch_98
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto/16 :goto_d

    .line 3444
    :pswitch_9f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    goto/16 :goto_d

    .line 3449
    :pswitch_a8
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto/16 :goto_d

    .line 3367
    nop

    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_d
        :pswitch_9
        :pswitch_1e
        :pswitch_3f
        :pswitch_4f
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_68
        :pswitch_6c
        :pswitch_70
        :pswitch_80
        :pswitch_a8
        :pswitch_9
        :pswitch_91
        :pswitch_98
        :pswitch_9f
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 3361
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3362
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 3363
    return-void
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1607
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onPause. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1615
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isSearchManagerVisible()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1616
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->stopSearch()V

    .line 1619
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3c

    .line 1620
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1621
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1628
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1630
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1632
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1656
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5280
    sparse-switch p1, :sswitch_data_2c

    .line 5297
    :cond_3
    :goto_3
    :sswitch_3
    return-void

    .line 5285
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_3

    .line 5286
    const v0, 0x7f060049

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5287
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5288
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5289
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_3

    .line 5293
    :sswitch_1e
    const v0, 0x7f06003b

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 5294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 5280
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x7 -> :sswitch_4
        0xb -> :sswitch_1e
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3233
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 3237
    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    if-eqz v2, :cond_29

    .line 3238
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In this case, Option menu is not shown #3 mOptionsMenuState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 3356
    :goto_28
    return v0

    .line 3248
    :cond_29
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    .line 3249
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #4 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3255
    :cond_39
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3261
    :cond_49
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 3262
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #6 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3256
    :cond_59
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #5 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3266
    :cond_61
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 3267
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3268
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3269
    const/4 v2, 0x5

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3271
    const/4 v2, 0x7

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3280
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-nez v2, :cond_b7

    .line 3281
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3282
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3283
    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3300
    :cond_88
    :goto_88
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 3301
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3306
    :goto_9b
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_100

    .line 3309
    :cond_ab
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b4
    :goto_b4
    move v0, v1

    .line 3356
    goto/16 :goto_28

    .line 3285
    :cond_b7
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_c7

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_d1

    .line 3287
    :cond_c7
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3288
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3289
    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_88

    .line 3290
    :cond_d1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_88

    .line 3291
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3292
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3293
    invoke-interface {p1, v6, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3294
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_88

    .line 3303
    :cond_f6
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_9b

    .line 3311
    :cond_100
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b4

    .line 3315
    :cond_10a
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 3317
    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3318
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3319
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3320
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3321
    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3322
    const/4 v2, 0x5

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3323
    const/4 v2, 0x7

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3325
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getSetHomeMenu()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b4

    .line 3326
    const/4 v2, 0x7

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_b4

    .line 3333
    :cond_13b
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v2

    .line 3334
    if-nez v2, :cond_14c

    .line 3335
    const-string v0, "Launcher"

    const-string v2, "Unable to find a vacant cell from the model"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 3337
    :cond_14c
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v2

    .line 3338
    const/4 v3, -0x1

    if-ne v2, v3, :cond_17e

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v2, v3, :cond_17e

    .line 3339
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 3344
    :goto_160
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3345
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3346
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3347
    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3348
    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3349
    const/4 v2, 0x5

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3351
    const/4 v2, 0x7

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3353
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    goto/16 :goto_b4

    .line 3341
    :cond_17e
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_160
.end method

.method protected onRestart()V
    .registers 7

    .prologue
    .line 1482
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onRestart. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onResume()V

    .line 1488
    :cond_26
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 1489
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2765
    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2766
    const/4 v1, 0x0

    .line 2769
    if-eqz v2, :cond_20

    .line 2770
    const-string v1, "android:views"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2771
    const-string v3, "android:views"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2772
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2773
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2776
    :cond_20
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2778
    if-eqz v2, :cond_34

    .line 2779
    const-string v3, "android:views"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2780
    const-string v1, "android:focusedViewId"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2781
    const-string v0, "android:Panels"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2784
    :cond_34
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 2785
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1506
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onResume. Launcher: %x, mIsNewIntent: %b"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    .line 1511
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->stopSuspendingDrawing()V

    .line 1514
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 1516
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1518
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1520
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_cb

    .line 1521
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    .line 1529
    :cond_41
    :goto_41
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelOutAnimIfRunning()Z

    .line 1547
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_fd

    .line 1548
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1549
    if-eqz v0, :cond_f1

    .line 1550
    const-string v1, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1551
    const-string v0, "Launcher"

    const-string v1, "onResume: get Intent Action[LAUNCHER_ACTION_ALL_APPS] by HW Application key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 1553
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1555
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 1557
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 1558
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v7, :cond_8f

    .line 1559
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    .line 1572
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1578
    :goto_98
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1579
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1581
    :cond_a5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1585
    :cond_b2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 1587
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1588
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 1596
    return-void

    .line 1523
    :cond_cb
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_41

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1524
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_41

    .line 1562
    :cond_e7
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateClose()V

    .line 1563
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateOpen()V

    .line 1564
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    goto :goto_8f

    .line 1569
    :cond_f1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v0, :cond_8f

    .line 1570
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_8f

    .line 1574
    :cond_fd
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_98
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_9

    .line 1662
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 1668
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 18
    .parameter "outState"

    .prologue
    .line 2789
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2791
    const-string v13, "launcher.current_screen"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v8

    .line 2795
    .local v8, menuScreen:I
    const-string v13, "launcher.delete_application"

    sget-object v14, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v9

    .line 2797
    .local v9, mmMode:I
    const-string v13, "launcher.menu_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2799
    const-string v13, "launcher.menu_current_screen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2801
    const-string v13, "launcher.menu_screen_count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2802
    const-string v13, "launcher.active_menu_id"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2805
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v14, -0x1

    if-le v13, v14, :cond_a8

    .line 2806
    const-string v13, "launcher.quick_navigation"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2807
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v14, -0x1

    if-le v13, v14, :cond_9f

    .line 2808
    const-string v13, "launcher.delete_index"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2826
    :goto_77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v3

    .line 2827
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_fc

    .line 2828
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2829
    .local v2, count:I
    new-array v5, v2, [J

    .line 2830
    .local v5, ids:[J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8c
    if-ge v4, v2, :cond_f5

    .line 2831
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v6

    .line 2832
    .local v6, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    iget-wide v13, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    aput-wide v13, v5, v4

    .line 2830
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 2810
    .end local v2           #count:I
    .end local v3           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_9f
    const-string v13, "launcher.delete_index"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2812
    :cond_a8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_d9

    .line 2813
    const-string v13, "launcher.quick_navigation"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2814
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    if-eqz v13, :cond_d0

    .line 2815
    const-string v13, "launcher.delete_index"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2818
    :cond_d0
    const-string v13, "launcher.delete_index"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2820
    :cond_d9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_ec

    .line 2821
    const-string v13, "launcher.quick_navigation"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2823
    :cond_ec
    const-string v13, "launcher.quick_navigation"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_77

    .line 2834
    .restart local v2       #count:I
    .restart local v3       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    :cond_f5
    const-string v13, "launcher.user_folder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2842
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    :cond_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_10e

    .line 2843
    const-string v13, "launcher.all_apps_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2846
    :cond_10e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v13, :cond_139

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v13, v13, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v13, :cond_139

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v13, :cond_139

    .line 2847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2848
    .local v1, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    .line 2850
    .local v7, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v7, :cond_185

    .line 2851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 2865
    .end local v1           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v7           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_139
    :goto_139
    sget-object v13, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v10

    .line 2866
    .local v10, model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v12

    .line 2867
    .local v12, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const-string v13, "launcher.remove_folder_id"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    const-string v13, "launcher.rename_folder_id"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v13, :cond_16d

    .line 2871
    const-string v13, "launcher.rename_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2872
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v11

    .line 2873
    .local v11, owner:I
    const-string v13, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2874
    packed-switch v11, :pswitch_data_1f8

    .line 2886
    .end local v11           #owner:I
    :cond_16d
    :goto_16d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_184

    .line 2887
    const-string v13, "launcher.remove_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2888
    const-string v13, "launcher.remove_folder_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    :cond_184
    return-void

    .line 2853
    .end local v10           #model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    .end local v12           #special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    .restart local v1       #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v7       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_185
    const-string v13, "launcher.add_screen"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2854
    const-string v13, "launcher.add_cellX"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2855
    const-string v13, "launcher.add_cellY"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2856
    const-string v13, "launcher.add_spanX"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2857
    const-string v13, "launcher.add_spanY"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2858
    const-string v13, "launcher.add_countX"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2859
    const-string v13, "launcher.add_countY"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2860
    const-string v13, "launcher.add_occupied_cells"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_139

    .line 2876
    .end local v1           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v7           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v10       #model:Lcom/sec/android/app/twlauncher/UserFolderModel;
    .restart local v11       #owner:I
    .restart local v12       #special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    :pswitch_1d5
    const-string v13, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v14, v14, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_16d

    .line 2879
    :pswitch_1e3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v13, v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_16d

    .line 2880
    const-string v14, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16d

    .line 2874
    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_1d5
        :pswitch_1e3
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3465
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3466
    return v1
.end method

.method protected onStop()V
    .registers 7

    .prologue
    .line 1494
    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onStop. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onPause()V

    .line 1500
    :cond_26
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 1501
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter

    .prologue
    .line 7299
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7301
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 7303
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 7305
    if-eqz p1, :cond_2e

    .line 7314
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->stopSuspendingDrawing()V

    .line 7319
    :goto_2d
    return-void

    .line 7316
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 7317
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_2d
.end method

.method openQuickViewMainMenu()V
    .registers 3

    .prologue
    .line 5079
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5099
    :goto_8
    return-void

    .line 5082
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5084
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5087
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 5088
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 5089
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    .line 5090
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 5091
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_5e

    .line 5092
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    .line 5097
    :goto_55
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 5098
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_8

    .line 5094
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    goto :goto_55
.end method

.method openQuickViewWorkspace()V
    .registers 6

    .prologue
    .line 5021
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 5023
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5025
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5028
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 5030
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 5031
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 5033
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    .line 5035
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 5036
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    .line 5038
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 5039
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5044
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .registers 3

    .prologue
    .line 7414
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_d

    .line 7415
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 7417
    :cond_d
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .registers 3

    .prologue
    .line 7420
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_d

    .line 7421
    const v0, 0x7f040008

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 7423
    :cond_d
    return-void
.end method

.method previewAddSamsungWidget()V
    .registers 8

    .prologue
    .line 3880
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v0, :cond_8

    .line 3881
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3892
    :goto_7
    return-void

    .line 3885
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 3887
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3888
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3890
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v1, v6

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v0, v2

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method

.method previewAddSearch()V
    .registers 8

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    if-nez v0, :cond_8

    .line 3694
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 3709
    :goto_7
    return-void

    .line 3698
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    .line 3699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3700
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3701
    const v0, 0x7f060052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    .line 3702
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3704
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3705
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3707
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v6

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v3

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7
.end method

.method removePage()V
    .registers 2

    .prologue
    .line 6493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6494
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    .line 6496
    return-void
.end method

.method saveMenuMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 6955
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMenuMode mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6957
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6958
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6959
    return-void
.end method

.method public saveScreenInfo()V
    .registers 4

    .prologue
    .line 6644
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6645
    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6646
    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6649
    const-string v1, "defaultscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6659
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4596
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4597
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4598
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4599
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4600
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4601
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4602
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 4603
    return-void
.end method

.method public setBackgroundNotification(I)V
    .registers 3
    .parameter

    .prologue
    .line 7288
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7289
    return-void
.end method

.method setWindowOpaque()V
    .registers 3

    .prologue
    .line 7401
    const-string v0, "Launcher"

    const-string v1, "setWindowOpaque()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7402
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7403
    if-eqz v0, :cond_1e

    .line 7404
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7405
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 7406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7410
    :goto_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 7411
    return-void

    .line 7408
    :cond_1e
    const-string v0, "Launcher"

    const-string v1, "Failed to retrieve window from launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method setWindowTranslucent()V
    .registers 3

    .prologue
    .line 7388
    const-string v0, "Launcher"

    const-string v1, "setWindowTranslucent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7389
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7390
    if-eqz v0, :cond_20

    .line 7391
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7392
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 7393
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 7397
    :goto_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 7398
    return-void

    .line 7395
    :cond_20
    const-string v0, "Launcher"

    const-string v1, "Failed to retrieve window from launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 5300
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5301
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 5302
    return-void
.end method

.method public showDeferredOptionsMenu()V
    .registers 3

    .prologue
    .line 7715
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v1, :cond_5

    .line 7722
    :cond_4
    :goto_4
    return-void

    .line 7718
    :cond_5
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 7719
    .local v0, optionsMenuState:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    .line 7720
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 7721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openOptionsMenu()V

    goto :goto_4
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 6482
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6483
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6484
    return-void
.end method

.method showDeleteHomeScreen()V
    .registers 2

    .prologue
    .line 6511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6512
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6513
    return-void
.end method

.method showDeleteWorkScreen()V
    .registers 2

    .prologue
    .line 6505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 6506
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6507
    return-void
.end method

.method showDiscardMenuEdit()V
    .registers 2

    .prologue
    .line 6478
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6479
    return-void
.end method

.method showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 3
    .parameter "aFolderToRemove"

    .prologue
    .line 6487
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 6488
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 6489
    return-void
.end method

.method protected showMotionDialog()Z
    .registers 2

    .prologue
    .line 7762
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7763
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionSettingOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7764
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 7768
    :goto_11
    const/4 v0, 0x1

    .line 7770
    :goto_12
    return v0

    .line 7766
    :cond_13
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_11

    .line 7770
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method showRenameFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 5305
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5306
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 5307
    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 12
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 3013
    if-nez p1, :cond_9

    .line 3015
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 3016
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    .line 3023
    :cond_9
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 3025
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v6

    .line 3026
    .local v6, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v6, :cond_21

    .line 3030
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Landroid/app/SearchManager;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 3038
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 3040
    return-void
.end method

.method showWidgetMessage(Z)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f080022

    const v2, 0x7f080011

    const/4 v1, 0x0

    .line 6972
    if-eqz p1, :cond_27

    .line 6973
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1d

    .line 6974
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 6985
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6986
    return-void

    .line 6976
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 6979
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_32

    .line 6980
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_17

    .line 6982
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_17
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 2971
    if-ltz p2, :cond_5

    .line 2972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 2973
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2975
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f080008

    const/4 v3, 0x0

    .line 4775
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-nez v0, :cond_2f

    .line 4777
    :cond_a
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return startActivitySafely intent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsActive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_2e
    :goto_2e
    return-void

    .line 4781
    :cond_2f
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4784
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 4786
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DataConnChecker;->checkDataConnectionApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4846
    :cond_66
    :try_start_66
    const-string v0, "OPP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "OPS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 4847
    :cond_82
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 4849
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4850
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_66 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_a5} :catch_b7

    goto :goto_2e

    .line 4859
    :catch_a6
    move-exception v0

    .line 4860
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 4856
    :cond_af
    :try_start_af
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4857
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_b5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_af .. :try_end_b5} :catch_a6
    .catch Ljava/lang/SecurityException; {:try_start_af .. :try_end_b5} :catch_b7

    goto/16 :goto_2e

    .line 4861
    :catch_b7
    move-exception v0

    .line 4862
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4863
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2981
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2995
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v0

    .line 2996
    .local v0, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 2997
    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3003
    :goto_1d
    return-void

    .line 2999
    :cond_1e
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Search;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3001
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Search;->setQuery(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method stopSearch()V
    .registers 4

    .prologue
    .line 3047
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 3048
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 3050
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    .line 3051
    .local v1, searchWidget:Lcom/sec/android/app/twlauncher/Search;
    if-eqz v1, :cond_17

    .line 3052
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Search;->stopSearch(Z)V

    .line 3054
    :cond_17
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 6523
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 6524
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method updateWindowTransparency()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7336
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    if-eqz v5, :cond_7

    .line 7381
    :goto_6
    return-void

    .line 7342
    :cond_7
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 7344
    .local v2, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 7346
    .local v1, wi:Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_2c

    move v0, v3

    .line 7348
    .local v0, usingLiveWallpaper:Z
    :goto_16
    if-eqz v0, :cond_2e

    .line 7349
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    .line 7351
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    .line 7353
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    .line 7354
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 7355
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .end local v0           #usingLiveWallpaper:Z
    :cond_2c
    move v0, v4

    .line 7346
    goto :goto_16

    .line 7359
    .restart local v0       #usingLiveWallpaper:Z
    :cond_2e
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    .line 7361
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    .line 7363
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    .line 7364
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 7370
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 7375
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_4e

    .line 7376
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 7379
    :cond_4e
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method

.method updateWorkspaceBadge()V
    .registers 10

    .prologue
    .line 4385
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 4386
    .local v7, wcount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v7, :cond_47

    .line 4387
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 4388
    .local v2, child:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 4389
    .local v1, cellCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_14
    if-ge v4, v1, :cond_41

    .line 4390
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4391
    .local v0, cell:Landroid/view/View;
    instance-of v8, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v8, :cond_27

    move-object v6, v0

    .line 4392
    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolder;

    .line 4393
    .local v6, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    .line 4389
    .end local v6           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 4397
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 4398
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_24

    instance-of v8, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_24

    .line 4399
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4402
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4403
    instance-of v8, v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_24

    .line 4404
    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v5           #tag:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    goto :goto_24

    .line 4409
    .end local v0           #cell:Landroid/view/View;
    :cond_41
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 4386
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4411
    .end local v1           #cellCount:I
    .end local v2           #child:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #j:I
    :cond_47
    return-void
.end method
