.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/Activity;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Lcom/android/launcher2/AllAppsView$Watcher;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$AppWidgetResetObserver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$CreateShortcut;,
        Lcom/android/launcher2/Launcher$RenameFolder;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$PendingAddArguments;,
        Lcom/android/launcher2/Launcher$State;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEBUG_WIDGETS:Z = false

.field static final DEFAULT_SCREEN:I = 0x2

.field static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field private static final DISMISS_CLING_DURATION:I = 0xfa

.field private static final EXIT_SPRINGLOADED_MODE_LONG_TIMEOUT:I = 0x258

.field private static final EXIT_SPRINGLOADED_MODE_SHORT_TIMEOUT:I = 0x12c

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field private static final MENU_GROUP_WALLPAPER:I = 0x1

.field private static final MENU_HELP:I = 0x5

.field private static final MENU_MANAGE_APPS:I = 0x3

.field private static final MENU_SYSTEM_SETTINGS:I = 0x4

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static final PREFS_KEY:Ljava/lang/String; = "com.android.launcher2.prefs"

.field static final PROFILE_STARTUP:Z = false

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field private static final RUNTIME_STATE:Ljava/lang/String; = "launcher.state"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cell_x"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cell_y"

.field private static final RUNTIME_STATE_PENDING_ADD_CONTAINER:Ljava/lang/String; = "launcher.add_container"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field static final SCREEN_COUNT:I = 0x5

.field private static final SHOW_CLING_DURATION:I = 0x226

.field static final TAG:Ljava/lang/String; = "Launcher"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static final sLock:Ljava/lang/Object;

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreen:I

.field private static sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field private final ADVANCE_MSG:I

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAllAppsButton:Landroid/view/View;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

.field private mAttached:Z

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mBuildLayersRunnable:Ljava/lang/Runnable;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDividerAnimator:Landroid/animation/AnimatorSet;

.field private mDockDivider:Landroid/view/View;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mFolderInfo:Lcom/android/launcher2/FolderInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mPaused:Z

.field private mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

.field private mQsbDivider:Landroid/view/View;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRestoreScreenOrientationDelay:I

.field private mRestoring:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field private mState:Lcom/android/launcher2/Launcher$State;

.field private mStateAnimation:Landroid/animation/AnimatorSet;

.field private mTmpAddItemCellCoordinates:[I

.field private mUserPresent:Z

.field private mVisible:Z

.field private mWaitingForResult:Z

.field private mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    .line 176
    sput v1, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    .line 245
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 246
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 247
    new-array v0, v1, [Landroid/graphics/drawable/Drawable$ConstantState;

    sput-object v0, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    sget-object v0, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 178
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 193
    new-instance v0, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 204
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 208
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 210
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 229
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 232
    iput v1, p0, Lcom/android/launcher2/Launcher;->ADVANCE_MSG:I

    .line 233
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceInterval:I

    .line 234
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/launcher2/Launcher;->mAdvanceStagger:I

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 242
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/launcher2/Launcher;->mRestoreScreenOrientationDelay:I

    .line 254
    new-instance v0, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    .line 1020
    new-instance v0, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1099
    new-instance v0, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    .line 2863
    return-void
.end method

.method private acceptFilter()Z
    .registers 3

    .prologue
    .line 636
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 638
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

.method static synthetic access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Launcher;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/launcher2/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    return-object p1
.end method

.method static synthetic access$2400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/Launcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/launcher2/Launcher;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method private checkForLocaleChange()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 359
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_10

    .line 360
    new-instance v9, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v10, v2, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    :cond_f
    :goto_f
    return-void

    .line 377
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 379
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 380
    .local v6, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 383
    .local v7, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mcc:I

    .line 385
    .local v4, mcc:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v8, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 386
    .local v8, previousMnc:I
    iget v5, v0, Landroid/content/res/Configuration;->mnc:I

    .line 388
    .local v5, mnc:I
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    if-ne v4, v7, :cond_38

    if-eq v5, v8, :cond_39

    :cond_38
    const/4 v2, 0x1

    .line 390
    .local v2, localeChanged:Z
    :cond_39
    if-eqz v2, :cond_f

    .line 391
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 392
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 393
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 395
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v9}, Lcom/android/launcher2/IconCache;->flush()V

    .line 397
    sget-object v3, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 398
    .local v3, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v9, Lcom/android/launcher2/Launcher$3;

    const-string v10, "WriteLocaleConfiguration"

    invoke-direct {v9, p0, v10, v3}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher$3;->start()V

    goto :goto_f
.end method

.method private clearTypedText()V
    .registers 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 674
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 675
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 676
    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z
    .registers 11
    .parameter "args"

    .prologue
    .line 480
    const/4 v8, 0x0

    .line 481
    .local v8, result:Z
    iget v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_48

    .line 508
    :goto_6
    :pswitch_6
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 509
    return v8

    .line 483
    :pswitch_a
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddApplication(Landroid/content/Intent;JIII)V

    goto :goto_6

    .line 487
    :pswitch_19
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    goto :goto_6

    .line 490
    :pswitch_1f
    iget-object v1, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 492
    const/4 v8, 0x1

    .line 493
    goto :goto_6

    .line 495
    :pswitch_2f
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_6

    .line 498
    :pswitch_35
    iget-object v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 499
    .local v7, appWidgetId:I
    iget-wide v0, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    iget v2, p1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJI)V

    .line 500
    const/4 v8, 0x1

    .line 501
    goto :goto_6

    .line 481
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_35
        :pswitch_a
        :pswitch_19
        :pswitch_6
        :pswitch_2f
    .end packed-switch
.end method

.method private completeAddAppWidget(IJI)V
    .registers 32
    .parameter "appWidgetId"
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 961
    .local v22, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 963
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v25

    .line 968
    .local v25, spanXY:[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 969
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v5, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v26, v0

    .line 970
    .local v26, touchXY:[I
    const/16 v23, 0x0

    .line 971
    .local v23, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    if-ltz v5, :cond_68

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v5, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    if-ltz v5, :cond_68

    .line 972
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    aput v6, v9, v5

    .line 973
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v6, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    aput v6, v9, v5

    .line 974
    const/16 v23, 0x1

    .line 984
    :goto_4f
    if-nez v23, :cond_8d

    .line 985
    const/4 v5, -0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_64

    .line 988
    new-instance v5, Lcom/android/launcher2/Launcher$6;

    const-string v6, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v6, v1}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher$6;->start()V

    .line 994
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 1018
    :cond_67
    :goto_67
    return-void

    .line 975
    :cond_68
    if-eqz v26, :cond_82

    .line 977
    const/4 v5, 0x0

    aget v5, v26, v5

    const/4 v6, 0x1

    aget v6, v26, v6

    const/4 v7, 0x0

    aget v7, v25, v7

    const/4 v8, 0x1

    aget v8, v25, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v24

    .line 979
    .local v24, result:[I
    if-eqz v24, :cond_7f

    const/16 v23, 0x1

    .line 980
    :goto_7e
    goto :goto_4f

    .line 979
    :cond_7f
    const/16 v23, 0x0

    goto :goto_7e

    .line 981
    .end local v24           #result:[I
    :cond_82
    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    aget v6, v25, v6

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v23

    goto :goto_4f

    .line 999
    :cond_8d
    new-instance v11, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 1000
    .local v11, launcherInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v25, v5

    iput v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1001
    const/4 v5, 0x1

    aget v5, v25, v5

    iput v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1003
    const/4 v5, 0x0

    aget v15, v9, v5

    const/4 v5, 0x1

    aget v16, v9, v5

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, p4

    invoke-static/range {v10 .. v17}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1006
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v5, :cond_67

    .line 1008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1010
    iget-object v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1011
    iget-object v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v11}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v13, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v17, v9, v5

    const/4 v5, 0x1

    aget v18, v9, v5

    iget v0, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move/from16 v19, v0

    iget v0, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v21

    move-wide/from16 v14, p2

    move/from16 v16, p4

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1016
    iget-object v5, v11, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_67
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .registers 32
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 878
    .local v9, cellXY:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v0, v4, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    move-object/from16 v24, v0

    .line 879
    .local v24, touchXY:[I
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 881
    .local v8, layout:Lcom/android/launcher2/CellLayout;
    const/16 v21, 0x0

    .line 883
    .local v21, foundCellSpan:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v22

    .line 884
    .local v22, info:Lcom/android/launcher2/ShortcutInfo;
    if-nez v22, :cond_28

    .line 924
    :cond_27
    :goto_27
    return-void

    .line 887
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 890
    .local v5, view:Landroid/view/View;
    if-ltz p5, :cond_66

    if-ltz p6, :cond_66

    .line 891
    const/4 v4, 0x0

    aput p5, v9, v4

    .line 892
    const/4 v4, 0x1

    aput p6, v9, v4

    .line 893
    const/16 v21, 0x1

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 900
    new-instance v10, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v10}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    .line 901
    .local v10, dragObject:Lcom/android/launcher2/DropTarget$DragObject;
    move-object/from16 v0, v22

    iput-object v0, v10, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 902
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v11, 0x1

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[ILcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v4

    if-nez v4, :cond_27

    .line 913
    .end local v10           #dragObject:Lcom/android/launcher2/DropTarget$DragObject;
    :goto_60
    if-nez v21, :cond_86

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_27

    .line 905
    :cond_66
    if-eqz v24, :cond_7f

    .line 907
    const/4 v4, 0x0

    aget v12, v24, v4

    const/4 v4, 0x1

    aget v13, v24, v4

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v23

    .line 908
    .local v23, result:[I
    if-eqz v23, :cond_7c

    const/16 v21, 0x1

    .line 909
    :goto_7b
    goto :goto_60

    .line 908
    :cond_7c
    const/16 v21, 0x0

    goto :goto_7b

    .line 910
    .end local v23           #result:[I
    :cond_7f
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v9, v4, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v21

    goto :goto_60

    .line 918
    :cond_86
    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v22

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-static/range {v11 .. v18}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 920
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v4, :cond_27

    .line 921
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    aget v16, v9, v4

    const/4 v4, 0x1

    aget v17, v9, v4

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v20

    move-object v12, v5

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v20}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto/16 :goto_27
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V
    .registers 9
    .parameter "cling"
    .parameter "flag"
    .parameter "duration"

    .prologue
    .line 3222
    if-eqz p1, :cond_1e

    .line 3223
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3224
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3225
    new-instance v1, Lcom/android/launcher2/Launcher$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/Launcher$19;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3236
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3238
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_1e
    return-void
.end method

.method private getCurrentOrientationIndexForGlobalIcons()I
    .registers 2

    .prologue
    .line 2578
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_12

    .line 2582
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 2580
    :pswitch_f
    const/4 v0, 0x1

    goto :goto_e

    .line 2578
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
    .end packed-switch
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .parameter "activityName"

    .prologue
    .line 2588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2590
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2592
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_42

    .line 2593
    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2594
    .local v1, iconResId:I
    if-eqz v1, :cond_42

    .line 2595
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2596
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_1d} :catch_44

    move-result-object v6

    .line 2608
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_1e
    return-object v6

    .line 2599
    :catch_1f
    move-exception v0

    .line 2601
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2608
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_42
    :goto_42
    const/4 v6, 0x0

    goto :goto_1e

    .line 2603
    :catch_44
    move-exception v3

    .line 2605
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method static getScreen()I
    .registers 2

    .prologue
    .line 464
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_3
    sget v0, Lcom/android/launcher2/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    .line 466
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
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .registers 15
    .parameter "fi"

    .prologue
    const/high16 v10, 0x3fc0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1841
    if-nez p1, :cond_7

    .line 1856
    :goto_6
    return-void

    .line 1842
    :cond_7
    const-string v7, "alpha"

    new-array v8, v12, [F

    const/4 v9, 0x0

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1843
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1844
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v12, [F

    aput v10, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1846
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    .line 1847
    .local v2, info:Lcom/android/launcher2/FolderInfo;
    iget-wide v7, v2, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_4b

    .line 1848
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1849
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1850
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v7, v8}, Lcom/android/launcher2/CellLayout;->setFolderLeaveBehindCell(II)V

    .line 1853
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4b
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v7, v11

    aput-object v5, v7, v12

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1854
    .local v4, oa:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1855
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderIcon;)V
    .registers 8
    .parameter "folderIcon"

    .prologue
    .line 1807
    iget-object v1, p1, Lcom/android/launcher2/FolderIcon;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 1808
    .local v1, info:Lcom/android/launcher2/FolderInfo;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 1812
    .local v2, openFolder:Lcom/android/launcher2/Folder;
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v3, :cond_49

    if-nez v2, :cond_49

    .line 1813
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder info marked as open, but associated folder is not open. Screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->screen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/launcher2/FolderInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 1818
    :cond_49
    iget-boolean v3, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v3, :cond_54

    .line 1820
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    .line 1838
    :cond_53
    :goto_53
    return-void

    .line 1826
    :cond_54
    if-eqz v2, :cond_53

    .line 1827
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getPageForView(Landroid/view/View;)I

    move-result v0

    .line 1829
    .local v0, folderScreen:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 1830
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    if-eq v0, v3, :cond_53

    .line 1832
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->openFolder(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_53
.end method

.method private hideAppsCustomizeHelper(ZZ)V
    .registers 16
    .parameter "animated"
    .parameter "springLoaded"

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 2331
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2334
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2335
    .local v9, res:Landroid/content/res/Resources;
    move-object v8, p0

    .line 2337
    .local v8, instance:Lcom/android/launcher2/Launcher;
    const v0, 0x7f09000c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2338
    .local v7, duration:I
    const v0, 0x7f09000d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v4, v0

    .line 2340
    .local v4, scaleFactor:F
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2342
    .local v2, fromView:Landroid/view/View;
    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 2344
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showHotseat(Z)V

    .line 2345
    if-eqz p1, :cond_a9

    .line 2346
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 2347
    .local v3, oldScaleX:F
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 2349
    .local v5, oldScaleY:F
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_c8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v11, v7

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 2350
    .local v10, scaleAnim:Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v0}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2351
    new-instance v0, Lcom/android/launcher2/Launcher$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;FFF)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2357
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_d0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 2358
    .local v6, alphaAnim:Landroid/animation/ValueAnimator;
    const v0, 0x7f09000f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2359
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2360
    new-instance v0, Lcom/android/launcher2/Launcher$14;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$14;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2365
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_86

    move-object v0, v2

    .line 2366
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    const/4 v1, 0x1

    invoke-interface {v0, v8, v6, v1}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2369
    :cond_86
    new-instance v0, Lcom/android/launcher2/Launcher$15;

    invoke-direct {v0, p0, v2, v8, v6}, Lcom/android/launcher2/Launcher$15;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2382
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2383
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const/4 v11, 0x1

    aput-object v6, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2384
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2393
    .end local v2           #fromView:Landroid/view/View;
    .end local v3           #oldScaleX:F
    .end local v5           #oldScaleY:F
    .end local v6           #alphaAnim:Landroid/animation/ValueAnimator;
    .end local v10           #scaleAnim:Landroid/animation/ValueAnimator;
    :goto_a8
    return-void

    .line 2386
    .restart local v2       #fromView:Landroid/view/View;
    :cond_a9
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2387
    instance-of v0, v2, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v0, :cond_c1

    move-object v0, v2

    .line 2388
    check-cast v0, Lcom/android/launcher2/LauncherTransitionable;

    const/4 v1, 0x0

    const/4 v11, 0x1

    invoke-interface {v0, v8, v1, v11}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2389
    check-cast v2, Lcom/android/launcher2/LauncherTransitionable;

    .end local v2           #fromView:Landroid/view/View;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {v2, v8, v0, v1}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2391
    :cond_c1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_a8

    .line 2349
    :array_c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2357
    :array_d0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initCling(I[IZI)Lcom/android/launcher2/Cling;
    .registers 9
    .parameter "clingId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"

    .prologue
    const/high16 v3, 0x3f80

    .line 3201
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3202
    .local v0, cling:Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_3e

    .line 3203
    invoke-virtual {v0, p0, p2}, Lcom/android/launcher2/Cling;->init(Lcom/android/launcher2/Launcher;[I)V

    .line 3204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 3205
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3206
    if-eqz p3, :cond_3f

    .line 3207
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 3208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 3209
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x226

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3219
    :cond_3e
    :goto_3e
    return-object v0

    .line 3216
    :cond_3f
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    goto :goto_3e
.end method

.method private static intToState(I)Lcom/android/launcher2/Launcher$State;
    .registers 5
    .parameter "stateOrdinal"

    .prologue
    .line 683
    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    .line 684
    .local v1, state:Lcom/android/launcher2/Launcher$State;
    invoke-static {}, Lcom/android/launcher2/Launcher$State;->values()[Lcom/android/launcher2/Launcher$State;

    move-result-object v2

    .line 685
    .local v2, stateValues:[Lcom/android/launcher2/Launcher$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 686
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    if-ne v3, p0, :cond_15

    .line 687
    aget-object v1, v2, v0

    .line 691
    :cond_14
    return-object v1

    .line 685
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .parameter "container"
    .parameter "button"

    .prologue
    .line 2668
    instance-of v2, p1, Lcom/android/launcher2/HolographicLinearLayout;

    if-eqz v2, :cond_b

    move-object v0, p1

    .line 2669
    check-cast v0, Lcom/android/launcher2/HolographicLinearLayout;

    .line 2670
    .local v0, layout:Lcom/android/launcher2/HolographicLinearLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/HolographicLinearLayout;->invalidatePressedFocusedStates()V

    .line 2675
    .end local v0           #layout:Lcom/android/launcher2/HolographicLinearLayout;
    :cond_a
    :goto_a
    return-void

    .line 2671
    :cond_b
    instance-of v2, p2, Lcom/android/launcher2/HolographicImageView;

    if-eqz v2, :cond_a

    move-object v1, p2

    .line 2672
    check-cast v1, Lcom/android/launcher2/HolographicImageView;

    .line 2673
    .local v1, view:Lcom/android/launcher2/HolographicImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/HolographicImageView;->invalidatePressedFocusedStates()V

    goto :goto_a
.end method

.method private isClingsEnabled()Z
    .registers 2

    .prologue
    .line 3196
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 3198
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private mapConfigurationOriActivityInfoOri(I)I
    .registers 8
    .parameter "configOri"

    .prologue
    const/4 v4, 0x2

    .line 3145
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3146
    .local v0, d:Landroid/view/Display;
    const/4 v2, 0x2

    .line 3147
    .local v2, naturalOri:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    packed-switch v5, :pswitch_data_2e

    .line 3161
    :goto_11
    const/4 v5, 0x4

    new-array v3, v5, [I

    fill-array-data v3, :array_3a

    .line 3169
    .local v3, oriMap:[I
    const/4 v1, 0x0

    .line 3170
    .local v1, indexOffset:I
    if-ne v2, v4, :cond_1b

    .line 3171
    const/4 v1, 0x1

    .line 3173
    :cond_1b
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x4

    aget v4, v3, v4

    return v4

    .line 3151
    .end local v1           #indexOffset:I
    .end local v3           #oriMap:[I
    :pswitch_25
    move v2, p1

    .line 3152
    goto :goto_11

    .line 3156
    :pswitch_27
    if-ne p1, v4, :cond_2b

    const/4 v2, 0x1

    :goto_2a
    goto :goto_11

    :cond_2b
    move v2, v4

    goto :goto_2a

    .line 3147
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_27
        :pswitch_25
        :pswitch_27
    .end packed-switch

    .line 3161
    :array_3a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onAppWidgetReset()V
    .registers 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_9

    .line 1640
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 1642
    :cond_9
    return-void
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .registers 6
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
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

    .line 417
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 418
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 419
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_43
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1e} :catch_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1e} :catch_46

    .line 425
    if-eqz v1, :cond_4c

    .line 427
    :try_start_20
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    move-object v0, v1

    .line 433
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_24
    :goto_24
    return-void

    .line 428
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_25
    move-exception v2

    move-object v0, v1

    .line 430
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_24

    .line 420
    :catch_28
    move-exception v2

    .line 425
    :goto_29
    if-eqz v0, :cond_24

    .line 427
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 428
    :catch_2f
    move-exception v2

    goto :goto_24

    .line 422
    :catch_31
    move-exception v2

    .line 425
    :goto_32
    if-eqz v0, :cond_24

    .line 427
    :try_start_34
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_24

    .line 428
    :catch_38
    move-exception v2

    goto :goto_24

    .line 425
    :catchall_3a
    move-exception v2

    :goto_3b
    if-eqz v0, :cond_40

    .line 427
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 430
    :cond_40
    :goto_40
    throw v2

    .line 428
    :catch_41
    move-exception v3

    goto :goto_40

    .line 425
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_43
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3b

    .line 422
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_46
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_32

    .line 420
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
    .line 1588
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1589
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1591
    return-void
.end method

.method private removeCling(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 3240
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3241
    .local v0, cling:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 3242
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3243
    .local v1, parent:Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/launcher2/Launcher$20;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$20;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3250
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_14
    return-void
.end method

.method private resetAddInfo()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1408
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1409
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1410
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1411
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v3, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1412
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1413
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedState"

    .prologue
    .line 700
    if-nez p1, :cond_3

    .line 748
    :cond_2
    :goto_2
    return-void

    .line 704
    :cond_3
    const-string v10, "launcher.state"

    sget-object v11, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/launcher2/Launcher;->intToState(I)Lcom/android/launcher2/Launcher$State;

    move-result-object v9

    .line 705
    .local v9, state:Lcom/android/launcher2/Launcher$State;
    sget-object v10, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v9, v10, :cond_1b

    .line 706
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 709
    :cond_1b
    const-string v10, "launcher.current_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 710
    .local v2, currentScreen:I
    const/4 v10, -0x1

    if-le v2, v10, :cond_2a

    .line 711
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 714
    :cond_2a
    const-string v10, "launcher.add_container"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 715
    .local v5, pendingAddContainer:J
    const-string v10, "launcher.add_screen"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 717
    .local v7, pendingAddScreen:I
    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-eqz v10, :cond_61

    const/4 v10, -0x1

    if-le v7, v10, :cond_61

    .line 718
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide v5, v10, Lcom/android/launcher2/ItemInfo;->container:J

    .line 719
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput v7, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 720
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_x"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 721
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-string v11, "launcher.add_cell_y"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 722
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 725
    :cond_61
    const-string v10, "launcher.rename_folder"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 726
    .local v8, renameFolder:Z
    if-eqz v8, :cond_7d

    .line 727
    const-string v10, "launcher.rename_folder_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 728
    .local v3, id:J
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v11, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10, p0, v11, v3, v4}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 729
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 734
    .end local v3           #id:J
    :cond_7d
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v10, :cond_2

    .line 735
    const-string v10, "apps_customize_currentTab"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, curTab:Ljava/lang/String;
    if-eqz v0, :cond_a4

    .line 738
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v11, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 740
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v10, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 741
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 745
    :cond_a4
    const-string v10, "apps_customize_currentIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 746
    .local v1, currentIndex:I
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->restorePageForIndex(I)V

    goto/16 :goto_2
.end method

.method private sendAdvanceMessage(J)V
    .registers 6
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1075
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1076
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1077
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    .line 1079
    return-void
.end method

.method private setPivotsForZoom(Landroid/view/View;F)V
    .registers 5
    .parameter "view"
    .parameter "scaleFactor"

    .prologue
    const/high16 v1, 0x4000

    .line 2147
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 2148
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 2149
    return-void
.end method

.method static setScreen(I)V
    .registers 3
    .parameter "screen"

    .prologue
    .line 470
    sget-object v1, Lcom/android/launcher2/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_3
    sput p0, Lcom/android/launcher2/Launcher;->sScreen:I

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private setupViews()V
    .registers 4

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 756
    .local v0, dragController:Lcom/android/launcher2/DragController;
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 757
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 758
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    .line 759
    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    .line 762
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/DragLayer;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 765
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Hotseat;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 766
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_49

    .line 767
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/Launcher;)V

    .line 771
    :cond_49
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 772
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 773
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/DragController;)V

    .line 774
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 777
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SearchDropTargetBar;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    .line 780
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeTabHost;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 782
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 784
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 787
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    .line 788
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v1, :cond_9f

    .line 789
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    new-instance v2, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 800
    :cond_9f
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 801
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setScrollView(Landroid/view/View;)V

    .line 802
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 803
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 804
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    if-eqz v1, :cond_bc

    .line 805
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V

    .line 807
    :cond_bc
    return-void
.end method

.method private showAddDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2039
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 2040
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const-wide/16 v1, -0x64

    iput-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 2041
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 2042
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 2043
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 2044
    return-void
.end method

.method private showAppsCustomizeHelper(ZZ)V
    .registers 21
    .parameter "animated"
    .parameter "springLoaded"

    .prologue
    .line 2206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_12

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2210
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2211
    .local v13, res:Landroid/content/res/Resources;
    move-object/from16 v5, p0

    .line 2213
    .local v5, instance:Lcom/android/launcher2/Launcher;
    const v2, 0x7f09000b

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2214
    .local v10, duration:I
    const v2, 0x7f09000e

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 2215
    .local v11, fadeDuration:I
    const v2, 0x7f09000d

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v14, v2

    .line 2216
    .local v14, scale:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    .line 2217
    .local v4, toView:Landroid/view/View;
    const v2, 0x7f090012

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 2220
    .local v15, startDelay:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/launcher2/Launcher;->setPivotsForZoom(Landroid/view/View;F)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;Z)V

    .line 2225
    if-eqz p1, :cond_e6

    .line 2226
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_12c

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 2227
    .local v6, scaleAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2228
    new-instance v2, Lcom/android/launcher2/Launcher$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v14}, Lcom/android/launcher2/Launcher$10;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2235
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2236
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2237
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_134

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 2238
    .local v8, alphaAnim:Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2239
    new-instance v2, Lcom/android/launcher2/Launcher$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2245
    int-to-long v2, v15

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2246
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 2248
    new-instance v2, Lcom/android/launcher2/Launcher$12;

    move-object/from16 v3, p0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/Launcher;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2289
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    .line 2290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 2292
    const/4 v9, 0x0

    .line 2293
    .local v9, delayAnim:Z
    instance-of v2, v4, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v2, :cond_dc

    move-object v12, v4

    .line 2294
    check-cast v12, Lcom/android/launcher2/LauncherTransitionable;

    .line 2295
    .local v12, lt:Lcom/android/launcher2/LauncherTransitionable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    invoke-interface {v12, v5, v2, v3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    move-result v9

    .line 2298
    .end local v12           #lt:Lcom/android/launcher2/LauncherTransitionable;
    :cond_dc
    if-nez v9, :cond_e5

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mStateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2322
    .end local v4           #toView:Landroid/view/View;
    .end local v6           #scaleAnim:Landroid/animation/ValueAnimator;
    .end local v8           #alphaAnim:Landroid/animation/ValueAnimator;
    .end local v9           #delayAnim:Z
    :cond_e5
    :goto_e5
    return-void

    .line 2304
    .restart local v4       #toView:Landroid/view/View;
    :cond_e6
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 2305
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2306
    const/high16 v2, 0x3f80

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2307
    const/high16 v2, 0x3f80

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    .line 2308
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2309
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 2310
    instance-of v2, v4, Lcom/android/launcher2/LauncherTransitionable;

    if-eqz v2, :cond_125

    move-object v2, v4

    .line 2311
    check-cast v2, Lcom/android/launcher2/LauncherTransitionable;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v5, v3, v7}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z

    .line 2312
    check-cast v4, Lcom/android/launcher2/LauncherTransitionable;

    .end local v4           #toView:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v4, v5, v2, v3}, Lcom/android/launcher2/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V

    .line 2314
    if-nez p2, :cond_125

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_125

    .line 2316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 2317
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2320
    :cond_125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    goto :goto_e5

    .line 2226
    :array_12c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2237
    :array_134
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V
    .registers 15
    .parameter "fi"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1859
    if-nez p1, :cond_7

    .line 1882
    :goto_6
    return-void

    .line 1860
    :cond_7
    const-string v7, "alpha"

    new-array v8, v12, [F

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1861
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    new-array v8, v12, [F

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1862
    .local v5, scaleX:Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v8, v12, [F

    aput v9, v8, v11

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 1864
    .local v6, scaleY:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    .line 1865
    .local v2, info:Lcom/android/launcher2/FolderInfo;
    const/4 v1, 0x0

    .line 1866
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    iget-wide v7, v2, Lcom/android/launcher2/FolderInfo;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_3e

    .line 1867
    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1870
    .restart local v1       #cl:Lcom/android/launcher2/CellLayout;
    :cond_3e
    move-object v3, v1

    .line 1871
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v7, v11

    aput-object v5, v7, v12

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-static {p1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1872
    .local v4, oa:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1873
    new-instance v7, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v7, p0, v3}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1881
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6
.end method

.method private startWallpaper()V
    .registers 4

    .prologue
    .line 1565
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1566
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v1, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1580
    .local v0, chooser:Landroid/content/Intent;
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1581
    return-void
.end method

.method private unbindWorkspaceAndHotseatItems()V
    .registers 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_9

    .line 1650
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItems()V

    .line 1652
    :cond_9
    return-void
.end method

.method private updateAppMarketIcon()V
    .registers 9

    .prologue
    const v7, 0x7f060008

    const/4 v6, 0x0

    .line 2750
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2751
    .local v3, marketButton:Landroid/view/View;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_MARKET"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2754
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2755
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz v0, :cond_34

    .line 2756
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 2757
    .local v1, coi:I
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 2758
    sget-object v4, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v5, 0x7f020029

    invoke-direct {p0, v7, v0, v5}, Lcom/android/launcher2/Launcher;->updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2760
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    .end local v1           #coi:I
    :goto_33
    return-void

    .line 2764
    :cond_34
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2765
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_33
.end method

.method private updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 2770
    const v0, 0x7f060008

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/Launcher;->updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2771
    return-void
.end method

.method private updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 5
    .parameter "buttonId"
    .parameter "d"

    .prologue
    .line 2663
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2664
    .local v0, button:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2665
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 7
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    .line 2640
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2641
    .local v0, button:Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2643
    .local v1, toolbarIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 2646
    if-nez v1, :cond_18

    .line 2647
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2653
    :cond_11
    :goto_11
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_17
    return-object v2

    .line 2649
    :cond_18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 2653
    :cond_1c
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 6
    .parameter "d"

    .prologue
    const v3, 0x7f06002c

    .line 2708
    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2709
    .local v1, searchButtonContainer:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2710
    .local v0, searchButton:Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2711
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2712
    return-void
.end method

.method private updateGlobalSearchIcon()Z
    .registers 13

    .prologue
    const v11, 0x7f06002c

    const/4 v8, 0x0

    const/16 v10, 0x8

    .line 2678
    const v9, 0x7f06002f

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2679
    .local v3, searchButtonContainer:Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2680
    .local v2, searchButton:Landroid/widget/ImageView;
    const v9, 0x7f06002d

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2681
    .local v4, searchDivider:Landroid/view/View;
    const v9, 0x7f060030

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2682
    .local v7, voiceButtonContainer:Landroid/view/View;
    const v9, 0x7f06002e

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2684
    .local v6, voiceButton:Landroid/view/View;
    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    .line 2686
    .local v5, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v5}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2687
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz v0, :cond_57

    .line 2688
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 2689
    .local v1, coi:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v10, 0x7f020021

    invoke-direct {p0, v11, v0, v10}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    aput-object v10, v9, v1

    .line 2691
    if-eqz v4, :cond_4a

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2692
    :cond_4a
    if-eqz v3, :cond_4f

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2693
    :cond_4f
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2694
    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2695
    const/4 v8, 0x1

    .line 2703
    .end local v1           #coi:I
    :goto_56
    return v8

    .line 2698
    :cond_57
    if-eqz v4, :cond_5c

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2699
    :cond_5c
    if-eqz v3, :cond_61

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    :cond_61
    if-eqz v7, :cond_66

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2701
    :cond_66
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2702
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56
.end method

.method private updateRunning()V
    .registers 12

    .prologue
    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1082
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    if-eqz v5, :cond_29

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_29

    move v0, v3

    .line 1083
    .local v0, autoAdvanceRunning:Z
    :goto_15
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_28

    .line 1084
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceRunning:Z

    .line 1085
    if-eqz v0, :cond_2e

    .line 1086
    iget-wide v3, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    .line 1087
    .local v1, delay:J
    :goto_25
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V

    .line 1097
    .end local v1           #delay:J
    :cond_28
    :goto_28
    return-void

    .end local v0           #autoAdvanceRunning:Z
    :cond_29
    move v0, v4

    .line 1082
    goto :goto_15

    .line 1086
    .restart local v0       #autoAdvanceRunning:Z
    :cond_2b
    iget-wide v1, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    goto :goto_25

    .line 1089
    :cond_2e
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_47

    .line 1090
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceSentTime:J

    sub-long/2addr v7, v9

    sub-long v7, v1, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/launcher2/Launcher;->mAutoAdvanceTimeLeft:J

    .line 1093
    :cond_47
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1094
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_28
.end method

.method private updateTextButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 6
    .parameter "buttonId"
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 2658
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2659
    .local v0, button:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2660
    return-void
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 12
    .parameter "buttonId"
    .parameter "activityName"
    .parameter "fallbackDrawableId"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2614
    invoke-direct {p0, p2}, Lcom/android/launcher2/Launcher;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2615
    .local v3, toolbarIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2616
    .local v2, r:Landroid/content/res/Resources;
    const v6, 0x7f0a001c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2617
    .local v4, w:I
    const v6, 0x7f0a001d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2619
    .local v1, h:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2621
    .local v0, button:Landroid/widget/TextView;
    if-nez v3, :cond_2d

    .line 2622
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2623
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2624
    if-eqz v0, :cond_2c

    .line 2625
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2633
    :cond_2c
    :goto_2c
    return-object v5

    .line 2629
    :cond_2d
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2630
    if-eqz v0, :cond_35

    .line 2631
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2633
    :cond_35
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_2c
.end method

.method private updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 6
    .parameter "d"

    .prologue
    const v3, 0x7f06002e

    .line 2740
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2741
    .local v1, voiceButtonContainer:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2742
    .local v0, voiceButton:Landroid/view/View;
    invoke-direct {p0, v3, p1}, Lcom/android/launcher2/Launcher;->updateButtonWithDrawable(ILandroid/graphics/drawable/Drawable$ConstantState;)V

    .line 2743
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2744
    return-void
.end method

.method private updateVoiceSearchIcon(Z)Z
    .registers 12
    .parameter "searchVisible"

    .prologue
    const v9, 0x7f06002e

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 2715
    const v7, 0x7f06002d

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2716
    .local v3, searchDivider:Landroid/view/View;
    const v7, 0x7f060030

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2717
    .local v5, voiceButtonContainer:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2720
    .local v4, voiceButton:Landroid/view/View;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2721
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2722
    .local v0, activityName:Landroid/content/ComponentName;
    if-eqz p1, :cond_4c

    if-eqz v0, :cond_4c

    .line 2723
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v1

    .line 2724
    .local v1, coi:I
    sget-object v7, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    const v8, 0x7f020022

    invoke-direct {p0, v9, v0, v8}, Lcom/android/launcher2/Launcher;->updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    aput-object v8, v7, v1

    .line 2726
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2727
    :cond_3f
    if-eqz v5, :cond_44

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2728
    :cond_44
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2729
    invoke-direct {p0, v5, v4}, Lcom/android/launcher2/Launcher;->invalidatePressedFocusedStates(Landroid/view/View;Landroid/view/View;)V

    .line 2730
    const/4 v6, 0x1

    .line 2735
    .end local v1           #coi:I
    :goto_4b
    return v6

    .line 2732
    :cond_4c
    if-eqz v3, :cond_51

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2733
    :cond_51
    if-eqz v5, :cond_56

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2734
    :cond_56
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4b
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .registers 7
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
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

    .line 439
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_d
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 440
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 441
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 442
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1f} :catch_53
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1f} :catch_50

    .line 449
    if-eqz v2, :cond_56

    .line 451
    :try_start_21
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26

    move-object v1, v2

    .line 457
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_25
    :goto_25
    return-void

    .line 452
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_26
    move-exception v3

    move-object v1, v2

    .line 454
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_25

    .line 443
    :catch_29
    move-exception v3

    .line 449
    :goto_2a
    if-eqz v1, :cond_25

    .line 451
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_25

    .line 452
    :catch_30
    move-exception v3

    goto :goto_25

    .line 445
    :catch_32
    move-exception v0

    .line 447
    .local v0, e:Ljava/io/IOException;
    :goto_33
    :try_start_33
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_44

    .line 449
    if-eqz v1, :cond_25

    .line 451
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_25

    .line 452
    :catch_42
    move-exception v3

    goto :goto_25

    .line 449
    .end local v0           #e:Ljava/io/IOException;
    :catchall_44
    move-exception v3

    :goto_45
    if-eqz v1, :cond_4a

    .line 451
    :try_start_47
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 454
    :cond_4a
    :goto_4a
    throw v3

    .line 452
    :catch_4b
    move-exception v4

    goto :goto_4a

    .line 449
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_4d
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_45

    .line 445
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_50
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_33

    .line 443
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
.method addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I)V
    .registers 10
    .parameter "info"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1507
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->container:J

    iput-wide p2, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1508
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->screen:I

    iput p4, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1509
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1510
    if-eqz p5, :cond_23

    .line 1511
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1512
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1515
    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1516
    .local v0, appWidgetId:I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    .line 1517
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1518
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .registers 5
    .parameter "data"

    .prologue
    .line 1417
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1420
    .local v0, appWidgetId:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1421
    return-void
.end method

.method addAppWidgetImpl(ILcom/android/launcher2/PendingAddWidgetInfo;)V
    .registers 18
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 1424
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1426
    .local v1, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v12, :cond_8a

    .line 1428
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v5, intent:Landroid/content/Intent;
    iget-object v12, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1430
    const-string v12, "appWidgetId"

    move/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1431
    if-eqz p2, :cond_72

    .line 1432
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    if-eqz v12, :cond_72

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_72

    .line 1433
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->mimeType:Ljava/lang/String;

    .line 1438
    .local v9, mimeType:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->configurationData:Landroid/os/Parcelable;

    check-cast v2, Landroid/content/ClipData;

    .line 1439
    .local v2, clipData:Landroid/content/ClipData;
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 1440
    .local v3, clipDesc:Landroid/content/ClipDescription;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_49
    invoke-virtual {v3}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v12

    if-ge v4, v12, :cond_72

    .line 1441
    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_87

    .line 1442
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    .line 1443
    .local v7, item:Landroid/content/ClipData$Item;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 1444
    .local v10, stringData:Ljava/lang/CharSequence;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1445
    .local v11, uriData:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1446
    .local v6, intentData:Landroid/content/Intent;
    const-string v8, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 1448
    .local v8, key:Ljava/lang/String;
    if-eqz v11, :cond_77

    .line 1449
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1461
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_72
    :goto_72
    const/4 v12, 0x5

    invoke-virtual {p0, v5, v12}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1469
    .end local v5           #intent:Landroid/content/Intent;
    :goto_76
    return-void

    .line 1450
    .restart local v2       #clipData:Landroid/content/ClipData;
    .restart local v3       #clipDesc:Landroid/content/ClipDescription;
    .restart local v4       #i:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #intentData:Landroid/content/Intent;
    .restart local v7       #item:Landroid/content/ClipData$Item;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #stringData:Ljava/lang/CharSequence;
    .restart local v11       #uriData:Landroid/net/Uri;
    :cond_77
    if-eqz v6, :cond_7f

    .line 1451
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_72

    .line 1452
    :cond_7f
    if-eqz v10, :cond_72

    .line 1453
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_72

    .line 1440
    .end local v6           #intentData:Landroid/content/Intent;
    .end local v7           #item:Landroid/content/ClipData$Item;
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #stringData:Ljava/lang/CharSequence;
    .end local v11           #uriData:Landroid/net/Uri;
    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 1464
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #clipDesc:Landroid/content/ClipDescription;
    .end local v4           #i:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #mimeType:Ljava/lang/String;
    :cond_8a
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->container:J

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->screen:I

    move/from16 v0, p1

    invoke-direct {p0, v0, v12, v13, v14}, Lcom/android/launcher2/Launcher;->completeAddAppWidget(IJI)V

    .line 1467
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    goto :goto_76
.end method

.method addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V
    .registers 4
    .parameter "itemInfo"
    .parameter "layout"

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2571
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 2573
    :cond_b
    return-void
.end method

.method addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;
    .registers 19
    .parameter "layout"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1544
    new-instance v1, Lcom/android/launcher2/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher2/FolderInfo;-><init>()V

    .line 1545
    .local v1, folderInfo:Lcom/android/launcher2/FolderInfo;
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1548
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1550
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    const v0, 0x7f03000a

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v3

    .line 1555
    .local v3, newFolder:Lcom/android/launcher2/FolderIcon;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1557
    return-object v3
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 6
    .parameter "hostView"
    .parameter "appWidgetInfo"

    .prologue
    .line 1122
    if-eqz p2, :cond_7

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 1129
    :cond_7
    :goto_7
    return-void

    .line 1123
    :cond_8
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1124
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_7

    .line 1125
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1127
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    goto :goto_7
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3068
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3070
    .local v0, progressBar:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 3071
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3076
    :cond_14
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    new-instance v2, Lcom/android/launcher2/Launcher$17;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Launcher$17;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 3083
    return-void
.end method

.method public bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .registers 16
    .parameter "item"

    .prologue
    .line 2985
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2987
    const-wide/16 v12, 0x0

    .line 2991
    .local v12, start:J
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2993
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    iget v10, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2994
    .local v10, appWidgetId:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 2999
    .local v11, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v10, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3001
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v10, v11}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3002
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3004
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v2, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    iget v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    iget v5, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3007
    iget-object v1, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v1, v11}, Lcom/android/launcher2/Launcher;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 3009
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 3015
    return-void
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3091
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3094
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_10

    .line 3095
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApps(Ljava/util/ArrayList;)V

    .line 3097
    :cond_10
    return-void
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;Z)V
    .registers 4
    .parameter
    .parameter "permanent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3122
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3123
    if-eqz p2, :cond_b

    .line 3124
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 3127
    :cond_b
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_14

    .line 3128
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeApps(Ljava/util/ArrayList;)V

    .line 3132
    :cond_14
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/DragController;->onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 3133
    return-void
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3105
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeDialog(I)V

    .line 3107
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_10

    .line 3108
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 3111
    :cond_10
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_19

    .line 3112
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateApps(Ljava/util/ArrayList;)V

    .line 3114
    :cond_19
    return-void
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2974
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2975
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2976
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2977
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .registers 19
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2939
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2941
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2942
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    move/from16 v13, p2

    .local v13, i:I
    :goto_7
    move/from16 v0, p3

    if-ge v13, v0, :cond_64

    .line 2943
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/ItemInfo;

    .line 2946
    .local v14, item:Lcom/android/launcher2/ItemInfo;
    iget-wide v5, v14, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v3, v5, v7

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v3, :cond_22

    .line 2942
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2951
    :cond_22
    iget v3, v14, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_68

    goto :goto_1f

    :pswitch_28
    move-object v3, v14

    .line 2954
    check-cast v3, Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 2955
    .local v2, shortcut:Landroid/view/View;
    iget-wide v3, v14, Lcom/android/launcher2/ItemInfo;->container:J

    iget v5, v14, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v6, v14, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v7, v14, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1f

    .line 2959
    .end local v2           #shortcut:Landroid/view/View;
    :pswitch_3e
    const v6, 0x7f03000a

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object v5, v14

    check-cast v5, Lcom/android/launcher2/FolderInfo;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v6, p0, v3, v5, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v4

    .line 2962
    .local v4, newFolder:Lcom/android/launcher2/FolderIcon;
    iget-wide v5, v14, Lcom/android/launcher2/ItemInfo;->container:J

    iget v7, v14, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v8, v14, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v9, v14, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    goto :goto_1f

    .line 2967
    .end local v4           #newFolder:Lcom/android/launcher2/FolderIcon;
    .end local v14           #item:Lcom/android/launcher2/ItemInfo;
    :cond_64
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 2968
    return-void

    .line 2951
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
        :pswitch_3e
    .end packed-switch
.end method

.method public bindPackagesUpdated()V
    .registers 2

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_9

    .line 3140
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 3142
    :cond_9
    return-void
.end method

.method public bindSearchablesChanged()V
    .registers 4

    .prologue
    .line 3055
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v0

    .line 3056
    .local v0, searchVisible:Z
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v1

    .line 3057
    .local v1, voiceVisible:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 3058
    return-void
.end method

.method public closeFolder()V
    .registers 3

    .prologue
    .line 1911
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1912
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_18

    .line 1913
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1914
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    .line 1916
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;)V

    .line 1919
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 1921
    :cond_18
    return-void
.end method

.method closeFolder(Lcom/android/launcher2/Folder;)V
    .registers 6
    .parameter "folder"

    .prologue
    .line 1924
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 1926
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1927
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_20

    .line 1928
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p1, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 1929
    .local v0, fi:Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->shrinkAndFadeInFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 1931
    .end local v0           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_20
    invoke-virtual {p1}, Lcom/android/launcher2/Folder;->animateClosed()V

    .line 1932
    return-void
.end method

.method closeSystemDialogs()V
    .registers 2

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1177
    return-void
.end method

.method completeAddApplication(Landroid/content/Intent;JIII)V
    .registers 22
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 844
    iget-object v14, p0, Lcom/android/launcher2/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 845
    .local v14, cellXY:[I
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 848
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    if-ltz p5, :cond_47

    if-ltz p6, :cond_47

    .line 849
    const/4 v3, 0x0

    aput p5, v14, v3

    .line 850
    const/4 v3, 0x1

    aput p6, v14, v3

    .line 856
    :cond_14
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v3, v6, v0, p0}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v4

    .line 858
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    if-eqz v4, :cond_53

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v6, 0x1020

    invoke-virtual {v4, v3, v6}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 861
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 862
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    aget v9, v14, v6

    const/4 v6, 0x1

    aget v10, v14, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v11

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Lcom/android/launcher2/Workspace;->addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V

    .line 867
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_46
    return-void

    .line 851
    :cond_47
    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v5, v14, v3, v6}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_14

    .line 852
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    goto :goto_46

    .line 865
    .restart local v4       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_53
    const-string v3, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .registers 7
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 832
    .local v0, favorite:Lcom/android/launcher2/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 833
    invoke-virtual {v0, p0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;
    .registers 5
    .parameter "info"

    .prologue
    .line 817
    const v1, 0x7f030002

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3295
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3296
    .local v0, cling:Lcom/android/launcher2/Cling;
    const-string v1, "cling.allapps.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3297
    return-void
.end method

.method public dismissFolderCling(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3299
    const v1, 0x7f060025

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3300
    .local v0, cling:Lcom/android/launcher2/Cling;
    const-string v1, "cling.folder.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3301
    return-void
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 3291
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3292
    .local v0, cling:Lcom/android/launcher2/Cling;
    const-string v1, "cling.workspace.dismissed"

    const/16 v2, 0xfa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;I)V

    .line 3293
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1595
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_20

    .line 1596
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    .line 1613
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_12
    :pswitch_12
    :sswitch_12
    return v0

    .line 1600
    :sswitch_13
    const-string v1, "debug.launcher2.dumpstate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    .line 1601
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->dumpState()V

    goto :goto_12

    .line 1606
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 1607
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    goto :goto_e

    .line 1596
    :sswitch_data_2e
    .sparse-switch
        0x3 -> :sswitch_12
        0x19 -> :sswitch_13
    .end sparse-switch

    .line 1607
    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_12
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 3324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3325
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 3328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3330
    :cond_37
    return-void
.end method

.method public dumpState()V
    .registers 4

    .prologue
    .line 3307
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 3316
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_c6

    .line 3317
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpState()V

    .line 3319
    :cond_c6
    const-string v0, "Launcher"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    return-void
.end method

.method enterSpringLoadedDragMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2458
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_18

    .line 2459
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 2460
    invoke-direct {p0, v2, v2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2461
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 2462
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2464
    :cond_18
    return-void
.end method

.method exitSpringLoadedDragMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2489
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v3, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v2, v3, :cond_10

    .line 2490
    const/4 v0, 0x1

    .line 2491
    .local v0, animated:Z
    const/4 v1, 0x1

    .line 2492
    .local v1, springLoaded:Z
    invoke-direct {p0, v4, v4}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2493
    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2496
    .end local v0           #animated:Z
    .end local v1           #springLoaded:Z
    :cond_10
    return-void
.end method

.method exitSpringLoadedDragModeDelayed(ZZ)V
    .registers 8
    .parameter "successfulDrop"
    .parameter "extendedDelay"

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_7

    .line 2486
    :goto_6
    return-void

    .line 2469
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/Launcher$16;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Launcher$16;-><init>(Lcom/android/launcher2/Launcher;Z)V

    if-eqz p2, :cond_17

    const/16 v0, 0x258

    :goto_12
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_17
    const/16 v0, 0x12c

    goto :goto_12
.end method

.method public finishBindingItems()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3023
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3025
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_21

    .line 3026
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3027
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3029
    :cond_1f
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 3032
    :cond_21
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_2c

    .line 3033
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3034
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 3037
    :cond_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 3041
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 3042
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    .line 3041
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 3044
    :cond_46
    sget-object v1, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3048
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 3050
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3051
    return-void
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .registers 6
    .parameter "container"
    .parameter "screen"

    .prologue
    .line 1989
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    .line 1990
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_11

    .line 1991
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1996
    :goto_10
    return-object v0

    .line 1993
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 1996
    :cond_13
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_10
.end method

.method public getCurrentWorkspaceScreen()I
    .registers 2

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_b

    .line 2903
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 2905
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_a
.end method

.method public getDragController()Lcom/android/launcher2/DragController;
    .registers 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method public getDragLayer()Lcom/android/launcher2/DragLayer;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .registers 2

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .registers 6
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 944
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getSearchBar()Lcom/android/launcher2/SearchDropTargetBar;
    .registers 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-object v0
.end method

.method getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .registers 6
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 940
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getSpanForWidget(Landroid/content/ComponentName;II[I)[I
    .registers 11
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "spanXY"

    .prologue
    const/4 v5, 0x0

    .line 927
    if-nez p4, :cond_6

    .line 928
    const/4 v3, 0x2

    new-array p4, v3, [I

    .line 931
    :cond_6
    invoke-static {p0, p1, v5}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 934
    .local v0, padding:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int v2, v3, v4

    .line 935
    .local v2, requiredWidth:I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    .line 936
    .local v1, requiredHeight:I
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v1, v5}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v3

    return-object v3
.end method

.method getSpanForWidget(Lcom/android/launcher2/PendingAddWidgetInfo;[I)[I
    .registers 6
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 948
    iget-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget v2, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/ComponentName;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .registers 2

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method hideDockDivider()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 2499
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 2500
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2501
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2503
    :cond_13
    return-void
.end method

.method hideHotseat(Z)V
    .registers 6
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 2555
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2556
    if-eqz p1, :cond_1e

    .line 2557
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionOutDuration()I

    move-result v0

    .line 2558
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2563
    .end local v0           #duration:I
    :cond_1d
    :goto_1d
    return-void

    .line 2560
    :cond_1e
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_1d
.end method

.method public isAllAppsCustomizeOpen()Z
    .registers 3

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isAllAppsVisible()Z
    .registers 3

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFolderClingVisible()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3284
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Cling;

    .line 3285
    .local v0, cling:Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_13

    .line 3286
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x1

    .line 3288
    :cond_13
    return v1
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .registers 3
    .parameter "layout"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    instance-of v0, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isWorkspaceLocked()Z
    .registers 2

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method lockAllApps()V
    .registers 1

    .prologue
    .line 2527
    return-void
.end method

.method public lockScreenOrientationOnLargeUI()V
    .registers 2

    .prologue
    .line 3177
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3178
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->mapConfigurationOriActivityInfoOri(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3181
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, delayExitSpringLoadedMode:Z
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 522
    if-ne p2, v8, :cond_4a

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4a

    .line 523
    new-instance v1, Lcom/android/launcher2/Launcher$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/launcher2/Launcher$PendingAddArguments;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 524
    .local v1, args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    iput p1, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->requestCode:I

    .line 525
    iput-object p3, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 526
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->container:J

    .line 527
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->screen:I

    .line 528
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellX:I

    .line 529
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v4, v1, Lcom/android/launcher2/Launcher$PendingAddArguments;->cellY:I

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 533
    sget-object v4, Lcom/android/launcher2/Launcher;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_3e
    :goto_3e
    if-eqz p2, :cond_41

    const/4 v3, 0x1

    :cond_41
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZ)V

    .line 550
    return-void

    .line 535
    .restart local v1       #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_45
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->completeAdd(Lcom/android/launcher2/Launcher$PendingAddArguments;)Z

    move-result v2

    goto :goto_3e

    .line 537
    .end local v1           #args:Lcom/android/launcher2/Launcher$PendingAddArguments;
    :cond_4a
    const/16 v4, 0x9

    if-eq p1, v4, :cond_51

    const/4 v4, 0x5

    if-ne p1, v4, :cond_3e

    :cond_51
    if-nez p2, :cond_3e

    .line 539
    if-eqz p3, :cond_3e

    .line 541
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 542
    .local v0, appWidgetId:I
    if-eq v0, v8, :cond_3e

    .line 543
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_3e
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1044
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 1047
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1048
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1052
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1053
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1054
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v2, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v2, :cond_b

    .line 1619
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1633
    :goto_a
    return-void

    .line 1620
    :cond_b
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1621
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1622
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1623
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->dismissEditingName()V

    goto :goto_a

    .line 1625
    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    goto :goto_a

    .line 1628
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_27
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1631
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->showOutlinesTemporarily()V

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1662
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1696
    .end local p1
    :cond_8
    :goto_8
    return-void

    .line 1666
    .restart local p1
    :cond_9
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1670
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1671
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v5, :cond_52

    move-object v5, v4

    .line 1673
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    iget-object v1, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1674
    .local v1, intent:Landroid/content/Intent;
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1675
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1676
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v8

    aget v7, v2, v11

    aget v8, v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1678
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v3

    .line 1680
    .local v3, success:Z
    if-eqz v3, :cond_8

    instance-of v5, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v5, :cond_8

    .line 1681
    check-cast p1, Lcom/android/launcher2/BubbleTextView;

    .end local p1
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    .line 1682
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    goto :goto_8

    .line 1684
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #success:Z
    .restart local p1
    :cond_52
    instance-of v5, v4, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_61

    .line 1685
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_8

    move-object v0, p1

    .line 1686
    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 1687
    .local v0, fi:Lcom/android/launcher2/FolderIcon;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->handleFolderClick(Lcom/android/launcher2/FolderIcon;)V

    goto :goto_8

    .line 1689
    .end local v0           #fi:Lcom/android/launcher2/FolderIcon;
    :cond_61
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-ne p1, v5, :cond_8

    .line 1690
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    if-ne v5, v6, :cond_6f

    .line 1691
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto :goto_8

    .line 1693
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_8
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1736
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    .line 1737
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 1746
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1748
    :cond_b
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1711
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1713
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 1714
    return-void
.end method

.method public onClickVoiceButton(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1722
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1726
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1727
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 278
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 279
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 280
    new-instance v6, Lcom/android/launcher2/DragController;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 284
    new-instance v6, Lcom/android/launcher2/LauncherAppWidgetHost;

    const/16 v7, 0x400

    invoke-direct {v6, p0, v7}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 285
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 292
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 293
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 294
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setupViews()V

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showFirstRunWorkspaceCling()V

    .line 297
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->registerContentObservers()V

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 301
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 302
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 305
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v6, :cond_5b

    .line 306
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/AppsCustomizePagedView;->onPackagesUpdated()V

    .line 313
    :cond_5b
    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v6, :cond_65

    .line 314
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v7, 0x1

    invoke-virtual {v6, p0, v7}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 317
    :cond_65
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherModel;->isAllAppsLoaded()Z

    move-result v6

    if-nez v6, :cond_7d

    .line 318
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 319
    .local v1, appsCustomizeContentParent:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030005

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 323
    .end local v1           #appsCustomizeContentParent:Landroid/view/ViewGroup;
    :cond_7d
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 324
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 326
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, searchVisible:Z
    const/4 v5, 0x0

    .line 332
    .local v5, voiceVisible:Z
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getCurrentOrientationIndexForGlobalIcons()I

    move-result v2

    .line 333
    .local v2, coi:I
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_ae

    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_ae

    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-nez v6, :cond_b9

    .line 335
    :cond_ae
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 336
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon()Z

    move-result v4

    .line 337
    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Z)Z

    move-result v5

    .line 339
    :cond_b9
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_c7

    .line 340
    sget-object v6, Lcom/android/launcher2/Launcher;->sGlobalSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateGlobalSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 341
    const/4 v4, 0x1

    .line 343
    :cond_c7
    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_d5

    .line 344
    sget-object v6, Lcom/android/launcher2/Launcher;->sVoiceSearchIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateVoiceSearchIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 345
    const/4 v5, 0x1

    .line 347
    :cond_d5
    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    if-eqz v6, :cond_e2

    .line 348
    sget-object v6, Lcom/android/launcher2/Launcher;->sAppMarketIcon:[Landroid/graphics/drawable/Drawable$ConstantState;

    aget-object v6, v6, v2

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 350
    :cond_e2
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher2/SearchDropTargetBar;->onSearchPackagesChanged(ZZ)V

    .line 353
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v6

    if-nez v6, :cond_f7

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 354
    :cond_f7
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 356
    :cond_fb
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 2006
    packed-switch p1, :pswitch_data_1e

    .line 2013
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 2008
    :pswitch_9
    new-instance v0, Lcom/android/launcher2/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 2010
    :pswitch_13
    new-instance v0, Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$RenameFolder;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_8

    .line 2006
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/high16 v8, 0x1080

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1334
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1368
    :goto_a
    return v4

    .line 1338
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1340
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    .local v2, manageApps:Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1343
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.settings.SETTINGS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v3, settings:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1346
    const v6, 0x7f0c0031

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, helpUrl:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1348
    .local v0, help:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1351
    const/4 v6, 0x2

    const v7, 0x7f0c002c

    invoke-interface {p1, v5, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x108003f

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x57

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1354
    const/4 v6, 0x3

    const v7, 0x7f0c002b

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x1080042

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x4d

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1358
    const/4 v6, 0x4

    const v7, 0x7f0c002f

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x1080049

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x50

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1362
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 1363
    const/4 v6, 0x5

    const v7, 0x7f0c0030

    invoke-interface {p1, v4, v6, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x1080040

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v6, 0x48

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_9b
    move v4, v5

    .line 1368
    goto/16 :goto_a
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1262
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1263
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1264
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 1268
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1269
    invoke-virtual {v0, v4}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    .line 1272
    :try_start_25
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->stopListening()V
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_2a} :catch_61

    .line 1276
    :goto_2a
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 1278
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1280
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/method/TextKeyListener;->release()V

    .line 1283
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->unbindWorkspaceAndHotseatItems()V

    .line 1285
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1286
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1288
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1289
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 1290
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 1291
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    .line 1293
    invoke-static {}, Landroid/animation/ValueAnimator;->clearAllAnimations()V

    .line 1294
    return-void

    .line 1273
    :catch_61
    move-exception v1

    .line 1274
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1058
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 1059
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1060
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1062
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_16

    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1064
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1066
    :cond_16
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1067
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 643
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 644
    .local v3, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 645
    .local v1, handled:Z
    if-lez v3, :cond_3b

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_3b

    move v2, v4

    .line 646
    .local v2, isKeyNotWhitespace:Z
    :goto_12
    if-nez v1, :cond_3d

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v2, :cond_3d

    .line 647
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v6, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 649
    .local v0, gotKey:Z
    if-eqz v0, :cond_3d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3d

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v1

    .line 665
    .end local v0           #gotKey:Z
    .end local v1           #handled:Z
    :cond_3a
    :goto_3a
    return v1

    .line 645
    .end local v2           #isKeyNotWhitespace:Z
    .restart local v1       #handled:Z
    :cond_3b
    const/4 v2, 0x0

    goto :goto_12

    .line 661
    .restart local v2       #isKeyNotWhitespace:Z
    :cond_3d
    const/16 v5, 0x52

    if-ne p1, v5, :cond_3a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_3a

    move v1, v4

    .line 662
    goto :goto_3a
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1935
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v6, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v5, v6, :cond_9

    .line 1971
    :cond_8
    :goto_8
    return v3

    .line 1939
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1943
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_1d

    .line 1944
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 1947
    .restart local p1
    :cond_1d
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1948
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1950
    .local v2, longClickCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v2, :cond_2a

    move v3, v4

    .line 1951
    goto :goto_8

    .line 1956
    :cond_2a
    iget-object v1, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1957
    .local v1, itemUnderLongClick:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3a

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v5

    if-eqz v5, :cond_51

    :cond_3a
    move v0, v4

    .line 1958
    .local v0, allowLongPress:Z
    :goto_3b
    if-eqz v0, :cond_4f

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v5}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 1959
    if-nez v1, :cond_53

    .line 1961
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 1963
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    :cond_4f
    :goto_4f
    move v3, v4

    .line 1971
    goto :goto_8

    .end local v0           #allowLongPress:Z
    :cond_51
    move v0, v3

    .line 1957
    goto :goto_3b

    .line 1965
    .restart local v0       #allowLongPress:Z
    :cond_53
    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_4f

    .line 1967
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V

    goto :goto_4f
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/high16 v8, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1181
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1184
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1186
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeSystemDialogs()V

    .line 1188
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v8

    if-eq v6, v8, :cond_74

    move v0, v4

    .line 1191
    .local v0, alreadyOnHome:Z
    :goto_1e
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 1193
    .local v2, openFolder:Lcom/android/launcher2/Folder;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1194
    if-eqz v0, :cond_40

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v7, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v6, v7, :cond_40

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v6

    if-nez v6, :cond_40

    if-nez v2, :cond_40

    .line 1196
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 1199
    :cond_40
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1200
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 1201
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 1204
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 1205
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1207
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1211
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_68
    if-nez v0, :cond_73

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v4, :cond_73

    .line 1212
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizeTabHost;->reset()V

    .line 1215
    .end local v0           #alreadyOnHome:Z
    .end local v2           #openFolder:Lcom/android/launcher2/Folder;
    .end local v3           #v:Landroid/view/View;
    :cond_73
    return-void

    :cond_74
    move v0, v5

    .line 1188
    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 1392
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 1388
    :pswitch_c
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->startWallpaper()V

    .line 1389
    const/4 v0, 0x1

    goto :goto_b

    .line 1386
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    .line 602
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2018
    packed-switch p1, :pswitch_data_22

    .line 2030
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 2022
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_3

    .line 2023
    const v2, 0x7f06002b

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2024
    .local v0, input:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-object v1, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2025
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2026
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_3

    .line 2018
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1373
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1375
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1381
    :goto_d
    return v1

    .line 1378
    :cond_e
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1f

    move v0, v2

    .line 1379
    .local v0, allAppsVisible:Z
    :goto_17
    if-nez v0, :cond_1a

    move v1, v2

    :cond_1a
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v1, v2

    .line 1381
    goto :goto_d

    .end local v0           #allAppsVisible:Z
    :cond_1f
    move v0, v1

    .line 1378
    goto :goto_17
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1221
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 554
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 555
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 556
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v2, :cond_1a

    .line 557
    :cond_f
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    .line 558
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, p0, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 559
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 560
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 562
    :cond_1a
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    if-eqz v2, :cond_23

    .line 563
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResume:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/BubbleTextView;->setStayPressed(Z)V

    .line 567
    :cond_23
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateAppMarketIcon()V

    .line 568
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->onResume()V

    .line 569
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWorkspaceLoading:Z

    if-nez v2, :cond_3f

    .line 570
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 571
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 576
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    new-instance v2, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 594
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    .end local v1           #workspace:Lcom/android/launcher2/Workspace;
    :cond_3f
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 595
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 608
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_e

    .line 609
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->surrender()V

    .line 611
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "outState"

    .prologue
    .line 1225
    const-string v2, "launcher.current_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1228
    const-string v2, "launcher.state"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 1233
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_55

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_55

    .line 1235
    const-string v2, "launcher.add_container"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget-wide v3, v3, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1236
    const-string v2, "launcher.add_screen"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1237
    const-string v2, "launcher.add_cell_x"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    const-string v2, "launcher.add_cell_y"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iget v3, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    :cond_55
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_6c

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    if-eqz v2, :cond_6c

    .line 1242
    const-string v2, "launcher.rename_folder"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1243
    const-string v2, "launcher.rename_folder_id"

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1247
    :cond_6c
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    if-eqz v2, :cond_88

    .line 1248
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, currentTabTag:Ljava/lang/String;
    if-eqz v1, :cond_7d

    .line 1250
    const-string v2, "apps_customize_currentTab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_7d
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getSaveInstanceStateIndex()I

    move-result v0

    .line 1253
    .local v0, currentIndex:I
    const-string v2, "apps_customize_currentIndex"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    .end local v0           #currentIndex:I
    .end local v1           #currentTabTag:Ljava/lang/String;
    :cond_88
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1399
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 1400
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1702
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDownAllAppsButton(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1741
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1742
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 2397
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 2398
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 2399
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTrimMemory()V

    .line 2401
    :cond_c
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 1070
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mVisible:Z

    .line 1071
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1072
    return-void

    .line 1070
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public openFolder(Lcom/android/launcher2/FolderIcon;)V
    .registers 7
    .parameter "folderIcon"

    .prologue
    .line 1892
    iget-object v0, p1, Lcom/android/launcher2/FolderIcon;->mFolder:Lcom/android/launcher2/Folder;

    .line 1893
    .local v0, folder:Lcom/android/launcher2/Folder;
    iget-object v1, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderInfo;

    .line 1895
    .local v1, info:Lcom/android/launcher2/FolderInfo;
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->growAndFadeOutFolderIcon(Lcom/android/launcher2/FolderIcon;)V

    .line 1896
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/FolderInfo;->opened:Z

    .line 1900
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1e

    .line 1901
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 1902
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 1907
    :goto_1a
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 1908
    return-void

    .line 1904
    :cond_1e
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening folder ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") which already has a parent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method processShortcut(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1525
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1526
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1527
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1531
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f0c001d

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1532
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 1536
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_42
    return-void

    .line 1534
    :cond_43
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/launcher2/Launcher;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_42
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .registers 10
    .parameter "componentName"
    .parameter "container"
    .parameter "screen"
    .parameter "cell"
    .parameter "loc"

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->resetAddInfo()V

    .line 1482
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, v1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1483
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput p4, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1484
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    iput-object p6, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 1486
    if-eqz p5, :cond_1f

    .line 1487
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1488
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;

    const/4 v2, 0x1

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1491
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v0, createShortcutIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 1494
    return-void
.end method

.method processWallpaper(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1539
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1540
    return-void
.end method

.method public removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
    .registers 3
    .parameter "launcherInfo"

    .prologue
    .line 1139
    iget-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1141
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/FolderInfo;)V
    .registers 5
    .parameter "folder"

    .prologue
    .line 1561
    sget-object v0, Lcom/android/launcher2/Launcher;->sFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .registers 3
    .parameter "hostView"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1133
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 1136
    :cond_10
    return-void
.end method

.method public setLoadOnResume()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2889
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_f

    .line 2890
    const-string v1, "Launcher"

    const-string v2, "setLoadOnResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 2894
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method showAllApps(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 2437
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v0, v1, :cond_8

    .line 2455
    :goto_7
    return-void

    .line 2439
    :cond_8
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V

    .line 2440
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->requestFocus()Z

    .line 2443
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 2446
    sget-object v0, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2449
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2450
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2451
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2454
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_7
.end method

.method showDockDivider(Z)V
    .registers 10
    .parameter "animated"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 2506
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    if-eqz v0, :cond_6a

    .line 2507
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2508
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2509
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2c

    .line 2510
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2511
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2512
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2515
    :cond_2c
    if-eqz p1, :cond_6a

    .line 2516
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    .line 2517
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mQsbDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mDockDivider:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2519
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2520
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDividerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2523
    :cond_6a
    return-void
.end method

.method public showFirstRunAllAppsCling([I)V
    .registers 6
    .parameter "position"

    .prologue
    const v3, 0x7f06000c

    const/4 v2, 0x0

    .line 3263
    const-string v1, "com.android.launcher2.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3265
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "cling.allapps.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3266
    const/4 v1, 0x1

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3270
    :goto_1c
    return-void

    .line 3268
    :cond_1d
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_1c
.end method

.method public showFirstRunFoldersCling()Lcom/android/launcher2/Cling;
    .registers 7

    .prologue
    const v5, 0x7f060025

    const/4 v4, 0x0

    .line 3273
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3275
    .local v1, prefs:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 3276
    .local v0, cling:Lcom/android/launcher2/Cling;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "cling.folder.dismissed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3277
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v5, v2, v3, v4}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 3281
    :goto_1f
    return-object v0

    .line 3279
    :cond_20
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_1f
.end method

.method public showFirstRunWorkspaceCling()V
    .registers 5

    .prologue
    const v3, 0x7f060024

    const/4 v2, 0x0

    .line 3253
    const-string v1, "com.android.launcher2.prefs"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3255
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isClingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "cling.workspace.dismissed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3256
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v2, v2}, Lcom/android/launcher2/Launcher;->initCling(I[IZI)Lcom/android/launcher2/Cling;

    .line 3260
    :goto_1c
    return-void

    .line 3258
    :cond_1d
    invoke-direct {p0, v3}, Lcom/android/launcher2/Launcher;->removeCling(I)V

    goto :goto_1c
.end method

.method showHotseat(Z)V
    .registers 6
    .parameter "animated"

    .prologue
    const/high16 v2, 0x3f80

    .line 2541
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2542
    if-eqz p1, :cond_1f

    .line 2543
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getTransitionInDuration()I

    move-result v0

    .line 2544
    .local v0, duration:I
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2549
    .end local v0           #duration:I
    :cond_1e
    :goto_1e
    return-void

    .line 2546
    :cond_1f
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_1e
.end method

.method showOutOfSpaceMessage()V
    .registers 3

    .prologue
    .line 1144
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1145
    return-void
.end method

.method showRenameDialog(Lcom/android/launcher2/FolderInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mFolderInfo:Lcom/android/launcher2/FolderInfo;

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 2035
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->showDialog(I)V

    .line 2036
    return-void
.end method

.method showWorkspace(Z)V
    .registers 8
    .parameter "animated"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2405
    .local v0, res:Landroid/content/res/Resources;
    const v4, 0x7f090011

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2407
    .local v1, stagger:I
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v4, v5, p1, v1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V

    .line 2408
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v5, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-eq v4, v5, :cond_3c

    .line 2409
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2410
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(ZZ)V

    .line 2413
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/SearchDropTargetBar;->showSearchBar(Z)V

    .line 2415
    if-eqz p1, :cond_30

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v5, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/android/launcher2/Launcher$State;

    if-ne v4, v5, :cond_30

    move v2, v3

    :cond_30
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showDockDivider(Z)V

    .line 2418
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v2, :cond_3c

    .line 2419
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2423
    :cond_3c
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->flashScrollingIndicator(Z)V

    .line 2426
    sget-object v2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    .line 2429
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mUserPresent:Z

    .line 2430
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->updateRunning()V

    .line 2433
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2434
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1302
    if-ltz p2, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWaitingForResult:Z

    .line 1303
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1304
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const v2, 0x7f0c0006

    const/4 v1, 0x0

    .line 1795
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_11

    .line 1804
    :goto_7
    return-void

    .line 1796
    :catch_8
    move-exception v0

    .line 1797
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1798
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_11
    move-exception v0

    .line 1799
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1800
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

    goto :goto_7
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .registers 8
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0c0006

    const/4 v1, 0x0

    .line 1776
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1778
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_c} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_39

    .line 1779
    const/4 v1, 0x1

    .line 1790
    :goto_d
    return v1

    .line 1780
    :catch_e
    move-exception v0

    .line 1781
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1782
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1783
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_39
    move-exception v0

    .line 1784
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1785
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .registers 7
    .parameter "componentName"

    .prologue
    .line 1751
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1752
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1754
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1755
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1756
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V
    .registers 8
    .parameter "appInfo"

    .prologue
    .line 1759
    iget v4, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_12

    .line 1762
    const v2, 0x7f0c0041

    .line 1763
    .local v2, messageId:I
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1773
    .end local v2           #messageId:I
    :goto_11
    return-void

    .line 1765
    :cond_12
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1766
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1767
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1769
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public startBinding()V
    .registers 8

    .prologue
    .line 2916
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 2918
    .local v3, workspace:Lcom/android/launcher2/Workspace;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->clearDropTargets()V

    .line 2919
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 2920
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2921
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_38

    .line 2922
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing views from screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2925
    .local v2, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 2921
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2927
    .end local v2           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_38
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2928
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_46

    .line 2929
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 2931
    :cond_46
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 12
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1314
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1316
    if-nez p1, :cond_a

    .line 1318
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1320
    :cond_a
    if-nez p3, :cond_18

    .line 1321
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1322
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_18
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/android/launcher2/SearchDropTargetBar;->getSearchBarBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 1326
    .local v6, sourceBounds:Landroid/graphics/Rect;
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1328
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 1330
    return-void
.end method

.method unlockAllApps()V
    .registers 1

    .prologue
    .line 2531
    return-void
.end method

.method public unlockScreenOrientationOnLargeUI()V
    .registers 5

    .prologue
    .line 3183
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3184
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/Launcher$18;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$18;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3190
    :cond_12
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 2152
    if-eqz p1, :cond_1b

    move v1, v2

    .line 2153
    .local v1, wpflags:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 2155
    .local v0, curflags:I
    if-eq v1, v0, :cond_1a

    .line 2156
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2158
    :cond_1a
    return-void

    .line 2152
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public zoomed(F)V
    .registers 4
    .parameter "zoom"

    .prologue
    .line 2135
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    .line 2136
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 2138
    :cond_d
    return-void
.end method
