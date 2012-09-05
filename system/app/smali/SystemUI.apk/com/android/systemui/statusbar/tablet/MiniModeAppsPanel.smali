.class public Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = true

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String; = null

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x1f4

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static final SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniAppsTray:Landroid/widget/FrameLayout;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 646
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 138
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v3, p0, v5, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    .line 139
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 142
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 143
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 144
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 145
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 146
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 147
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 149
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 150
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 151
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 152
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 153
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 154
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 156
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 159
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    .line 162
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 165
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 168
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 171
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 174
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    .line 177
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    .line 180
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    .line 183
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 187
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 190
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 193
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 196
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 503
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 523
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 578
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 649
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9e

    const/4 v2, 0x1

    .line 653
    .local v2, xlarge:Z
    :cond_9e
    if-eqz v2, :cond_c0

    const/16 v3, 0xa0

    :goto_a2
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    .line 656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 666
    return-void

    .line 653
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_c0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_a2
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$3300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private adjustTrayPadding()V
    .registers 8

    .prologue
    const v6, 0x7f0a0034

    const/4 v5, 0x0

    .line 1931
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 1932
    .local v0, containerWidth:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1934
    .local v1, scrollerWidth:I
    if-ge v0, v1, :cond_3f

    .line 1935
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1939
    :goto_3e
    return-void

    .line 1937
    :cond_3f
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3e
.end method

.method private clearItemsAnimation()V
    .registers 5

    .prologue
    .line 1319
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1320
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 1321
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1322
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1320
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1324
    .end local v0           #child:Landroid/view/View;
    :cond_15
    const v3, 0x7f0f0057

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1325
    return-void
.end method

.method private closeEditPanel()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1948
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_42

    .line 1950
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1951
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1952
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1955
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1957
    :cond_42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 1958
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 903
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 907
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6

    const v3, 0x3f99999a

    const v6, 0x3ee147ae

    const v8, 0x3f0a3d71

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 908
    .local v0, scaleZoom:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 909
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 910
    .local v10, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 911
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 912
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 913
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 914
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 5
    .parameter "name"

    .prologue
    .line 1863
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1864
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1869
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .registers 7
    .parameter "name"

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 606
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    const-string v2, "MiniModeAppsPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cd.getName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 612
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_42
    return-object v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .registers 4
    .parameter "name"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initChosenApps()V
    .registers 2

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 1880
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .registers 8

    .prologue
    .line 593
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, mComponentNames:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_18
    if-ge v1, v2, :cond_24

    aget-object v4, v0, v1

    .line 599
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 601
    .end local v4           #str:Ljava/lang/String;
    :cond_24
    return-void
.end method

.method private initComponentDescriptions()V
    .registers 10

    .prologue
    .line 844
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 900
    :cond_4
    return-void

    .line 849
    :cond_5
    const-string v6, "MiniModeAppsPanel"

    const-string v7, "initComponentDescriptions"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v3, launcherIntent:Landroid/content/Intent;
    const-string v6, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 855
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 857
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 858
    .local v5, r:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 859
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v5, :cond_2b

    .line 861
    :try_start_3a
    new-instance v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_69

    .line 868
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_41
    if-eqz v0, :cond_2b

    .line 870
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initComponentDescriptions() : loading mini app (serviceInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 862
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :catch_69
    move-exception v1

    .line 863
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 864
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method private initGestureDetector()V
    .registers 6

    .prologue
    .line 832
    new-instance v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 839
    .local v1, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 840
    .local v0, ignoreMultitouch:Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 841
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1982
    :try_start_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    .line 1994
    :cond_9
    :goto_9
    return v2

    .line 1984
    :cond_a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1986
    .local v1, label:Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1e

    move-result v4

    if-nez v4, :cond_9

    move v2, v3

    .line 1994
    goto :goto_9

    .line 1989
    .end local v1           #label:Ljava/lang/String;
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 1991
    goto :goto_9
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 1883
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_6

    .line 1891
    :cond_5
    :goto_5
    return v4

    .line 1886
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 1887
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1891
    .end local v3           #str:Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private isMiinAppsEditPanelShowing()Z
    .registers 2

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    .line 1975
    const/4 v0, 0x0

    .line 1977
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_5
.end method

.method private openEditPanel()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1961
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_34

    .line 1963
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1964
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1965
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1966
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1968
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    .line 1969
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1971
    :cond_3f
    return-void
.end method

.method private refreshApplicationList()V
    .registers 14

    .prologue
    const v12, 0x7f03000c

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 918
    const-string v8, "MiniModeAppsPanel"

    const-string v10, "refreshApplicationList"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 922
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 924
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initChosenApps()V

    .line 928
    const/4 v2, 0x0

    .line 929
    .local v2, componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 930
    .restart local v2       #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v8, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 933
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 934
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 935
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 936
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 944
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f03000f

    invoke-static {v8, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 948
    .local v5, preview:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 949
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 951
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 954
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 955
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 956
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 957
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    if-nez v8, :cond_8f

    .line 958
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 960
    :cond_8f
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_a3

    move v8, v9

    :goto_9f
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_31

    :cond_a3
    const/4 v8, 0x0

    goto :goto_9f

    .line 964
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v5           #preview:Landroid/view/View;
    .end local v7           #view:Landroid/view/View;
    :cond_a5
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v8, :cond_db

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_ad
    if-ge v3, v4, :cond_10f

    aget-object v6, v0, v3

    .line 966
    .local v6, str:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v1

    .line 967
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_d8

    .line 968
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 969
    const-string v8, "MiniModeAppsPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   add : cd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 973
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v4           #len$:I
    .end local v6           #str:Ljava/lang/String;
    .local v3, i$:Ljava/util/Iterator;
    :cond_db
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_df
    :goto_df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 974
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_df

    .line 975
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    const-string v8, "MiniModeAppsPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   add : cd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df

    .line 981
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_10f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 982
    return-void
.end method

.method private save()Z
    .registers 6

    .prologue
    .line 1895
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 1897
    .local v2, str:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 1898
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1899
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1897
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1902
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const-string v4, "EOF"

    aput-object v4, v2, v3

    .line 1904
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1906
    const-string v3, "MiniModeAppsPanel"

    const-string v4, "minimode data store successful"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/4 v3, 0x1

    .line 1911
    :goto_4c
    return v3

    :cond_4d
    const/4 v3, 0x0

    goto :goto_4c
.end method

.method private setCloseIconEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1316
    :cond_9
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1915
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1916
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 1917
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "show emptyAppsButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1920
    :cond_19
    const/4 v0, 0x1

    .line 1926
    :cond_1a
    :goto_1a
    return v0

    .line 1922
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1a

    .line 1923
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "hide emptyAppsButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .registers 8

    .prologue
    .line 811
    const v5, 0x7f0f005e

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 812
    .local v2, editBtn:Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v5, :cond_13

    .line 813
    const v5, 0x7f0800bb

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 816
    :cond_13
    const v5, 0x7f0f005b

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 817
    .local v4, emptyBtn:Landroid/widget/TextView;
    if-eqz v4, :cond_24

    .line 818
    const v5, 0x7f0800b9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 821
    :cond_24
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0060

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 822
    .local v3, editPanelTitle:Landroid/widget/TextView;
    const v5, 0x7f0800b8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 824
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0061

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 825
    .local v1, doneBtn:Landroid/widget/Button;
    const v5, 0x7f0800ba

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 827
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0062

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 828
    .local v0, cancelBtn:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 829
    return-void
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1305
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "closeMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1308
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    .line 1310
    return-void
.end method

.method public isInContentArea(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 620
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 621
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 622
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 623
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 624
    .local v0, b:I
    if-lt p1, v1, :cond_32

    if-ge p1, v2, :cond_32

    if-lt p2, v3, :cond_32

    if-ge p2, v0, :cond_32

    const/4 v4, 0x1

    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    goto :goto_31
.end method

.method public onClick(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_63

    .line 987
    const-string v11, "MiniModeAppsPanel"

    const-string v12, "onClick: edit mode, skip launching"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 990
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f0066

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 991
    .local v7, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 992
    .local v0, anim:Landroid/view/animation/AnimationSet;
    if-nez v0, :cond_2e

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 996
    :cond_2e
    if-eqz v0, :cond_33

    .line 997
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    :cond_33
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1001
    .local v4, i:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1002
    .local v8, previewWidth:I
    mul-int v10, v4, v8

    .line 1003
    .local v10, xOffsetAtLeft:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v11}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    div-int/lit8 v2, v11, 0x2

    .line 1005
    .local v2, centerX:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    sub-int v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1006
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1007
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1042
    .end local v0           #anim:Landroid/view/animation/AnimationSet;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #centerX:I
    .end local v4           #i:I
    .end local v7           #previewIcon:Landroid/widget/ImageView;
    .end local v8           #previewWidth:I
    .end local v10           #xOffsetAtLeft:I
    :cond_62
    :goto_62
    return-void

    .line 1012
    :cond_63
    if-eqz p1, :cond_62

    .line 1014
    move-object v9, p1

    .line 1015
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1016
    .local v3, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1018
    .local v6, name:Landroid/content/ComponentName;
    const-string v11, "MiniModeAppsPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onClick Starting service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v5, 0x0

    .line 1022
    .local v5, intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_d9

    .line 1023
    const-string v11, "MiniModeAppsPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start() : service name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1025
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1033
    :cond_bb
    :goto_bb
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v11, :cond_c5

    .line 1034
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setClickable(Z)V

    .line 1036
    :cond_c5
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1039
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_62

    .line 1026
    :cond_d9
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_bb

    .line 1027
    const-string v11, "MiniModeAppsPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start() : activity name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1029
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_bb
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 670
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 672
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "onFinishInflate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const v1, 0x7f0f0058

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 675
    const v1, 0x7f0f0059

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 676
    const v1, 0x7f0f0056

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 681
    .local v8, miniAppItemView:Landroid/view/View;
    const v1, 0x7f0f005c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsTray:Landroid/widget/FrameLayout;

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 688
    const-string v1, "MiniModeAppsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate : mMiniAppBgHeight="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e1

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 700
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 701
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    const v1, 0x7f0c0011

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 703
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 705
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0063

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 708
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0064

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 710
    const v1, 0x7f0f0057

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 712
    const v1, 0x7f0f005e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 713
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_e4

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_198

    const/4 v1, 0x1

    :goto_e2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 716
    :cond_e4
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    const v1, 0x7f0f005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 724
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_107

    .line 725
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    :cond_107
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0061

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 733
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0062

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 761
    const v1, 0x7f0f005d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 762
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 773
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 788
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 789
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 790
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 805
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 806
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 807
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 808
    return-void

    :cond_198
    move v1, v3

    .line 714
    goto/16 :goto_e2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 10
    .parameter "view"

    .prologue
    const/16 v7, 0x425

    const/4 v3, 0x1

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_54

    .line 1046
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1047
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1048
    .local v0, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1050
    .local v1, name:Landroid/content/ComponentName;
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick Starting service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1053
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 1055
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1058
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1063
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :goto_53
    return v3

    :cond_54
    const/4 v3, 0x0

    goto :goto_53
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1943
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1944
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 1945
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 1090
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 1092
    const-string v4, "MiniModeAppsPanel"

    const-string v5, "onTouch: edit mode, skip launching"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_136

    .line 1159
    :cond_17
    :goto_17
    return v8

    .line 1096
    :pswitch_18
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch: view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view.getTag()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1099
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1100
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17

    .line 1106
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_51
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_17

    .line 1113
    :cond_57
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch() : view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-eqz p1, :cond_17

    .line 1118
    move-object v3, p1

    .line 1119
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1121
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_142

    goto :goto_17

    .line 1124
    :pswitch_83
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch ACTION_DOWN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1127
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1129
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto/16 :goto_17

    .line 1135
    :pswitch_c1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_17

    .line 1137
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1139
    .local v1, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1141
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch ACTION_MOVE x y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto/16 :goto_17

    .line 1149
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :pswitch_111
    const-string v4, "MiniModeAppsPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1152
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto/16 :goto_17

    .line 1094
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_18
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch

    .line 1121
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_83
        :pswitch_111
        :pswitch_c1
        :pswitch_111
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1298
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "openMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1300
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1302
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 2
    .parameter "bar"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 639
    return-void
.end method

.method public setItemsAnimation(Z)V
    .registers 17
    .parameter "isShowAnim"

    .prologue
    .line 1167
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1168
    .local v5, count:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0033

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1169
    .local v8, miniAppItemHeight:I
    add-int/lit8 v11, v5, -0x1

    mul-int/lit8 v9, v11, 0x28

    .line 1170
    .local v9, miniAppItemHideAnimDelay:I
    if-eqz p1, :cond_a1

    .line 1171
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1c
    if-ge v7, v5, :cond_48

    .line 1172
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1173
    .local v4, child:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v8

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1175
    .local v10, rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1176
    mul-int/lit8 v11, v7, 0x28

    add-int/lit8 v11, v11, 0x3c

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1177
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1178
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1171
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 1180
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_48
    const v11, 0x7f0f0057

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1181
    .local v3, bg:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1183
    .local v2, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1184
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1185
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v11, v9, 0x14a

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1186
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1187
    .local v1, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1188
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1189
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1190
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1193
    const v11, 0x7f0f005a

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1194
    .local v6, emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_98

    .line 1195
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1197
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1200
    :cond_98
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1295
    :cond_a0
    :goto_a0
    return-void

    .line 1229
    .end local v0           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v1           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v2           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #bg:Landroid/view/View;
    .end local v6           #emptyBtnContainer:Landroid/view/View;
    .end local v7           #i:I
    :cond_a1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_a2
    if-ge v7, v5, :cond_d0

    .line 1230
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1231
    .restart local v4       #child:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1233
    .restart local v10       #rotateItem:Landroid/view/animation/TranslateAnimation;
    sub-int v11, v5, v7

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x28

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1234
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1235
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1236
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1229
    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    .line 1257
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_d0
    const v11, 0x7f0f0057

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1258
    .restart local v3       #bg:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1260
    .restart local v2       #animation:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1261
    .restart local v0       #alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1262
    .restart local v1       #aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1263
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1265
    const-wide/16 v11, 0x10e

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1266
    int-to-long v11, v9

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1268
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1284
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1285
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1288
    const v11, 0x7f0f005a

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1289
    .restart local v6       #emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_a0

    .line 1290
    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1292
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_a0
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 1164
    return-void
.end method
