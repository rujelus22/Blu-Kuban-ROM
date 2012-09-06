.class public Ljackpal/androidterm/Term;
.super Landroid/app/Activity;
.source "Term.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/Term$EmulatorViewGestureListener;,
        Ljackpal/androidterm/Term$WindowListActionBarAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_PATH_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.broadcast.APPEND_TO_PATH"

.field private static final ACTION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

.field private static final COPY_ALL_ID:I = 0x1

.field public static final EXTRA_WINDOW_ID:Ljava/lang/String; = "jackpal.androidterm.window_id"

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final PASTE_ID:I = 0x2

.field private static final PERMISSION_PATH_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.permission.APPEND_TO_PATH"

.field private static final PERMISSION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.permission.PREPEND_TO_PATH"

.field public static final REQUEST_CHOOSE_WINDOW:I = 0x1

.field private static final SELECT_TEXT_ID:I = 0x0

.field private static final SEND_CONTROL_KEY_ID:I = 0x3

.field private static final SEND_FN_KEY_ID:I = 0x4

.field private static final VIEW_FLIPPER:I = 0x7f0b0000

.field private static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3


# instance fields
.field private TSIntent:Landroid/content/Intent;

.field private mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

.field private mActionBarMode:I

.field private mAlreadyStarted:Z

.field private mBackKeyListener:Landroid/view/View$OnKeyListener;

.field private mBackKeyPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHaveFullHwKeyboard:Z

.field private mLastNewIntent:Landroid/content/Intent;

.field private mPathReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingPathBroadcasts:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettings:Ljackpal/androidterm/util/TermSettings;

.field private mStopServiceOnFinish:Z

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Ljackpal/androidterm/TermService;

.field private mTermSessions:Ljackpal/androidterm/util/SessionList;

.field private mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

.field private mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

.field private onResumeSelectWindow:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    .line 100
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    .line 120
    iput v1, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 121
    new-instance v0, Ljackpal/androidterm/Term$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$1;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Ljackpal/androidterm/Term$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$2;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 158
    iput v1, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    .line 192
    new-instance v0, Ljackpal/androidterm/Term$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$3;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    .line 205
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 238
    new-instance v0, Ljackpal/androidterm/Term$4;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$4;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mBackKeyListener:Landroid/view/View$OnKeyListener;

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/Term;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/Term;)Ljackpal/androidterm/util/TermSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    return-object v0
.end method

.method static synthetic access$1000(Ljackpal/androidterm/Term;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCloseWindow()V

    return-void
.end method

.method static synthetic access$1100(Ljackpal/androidterm/Term;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/Term;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/Term;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    return v0
.end method

.method static synthetic access$210(Ljackpal/androidterm/Term;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    return v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    return-object v0
.end method

.method static synthetic access$302(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method static synthetic access$400(Ljackpal/androidterm/Term;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Ljackpal/androidterm/Term;->populateViewFlipper()V

    return-void
.end method

.method static synthetic access$500(Ljackpal/androidterm/Term;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Ljackpal/androidterm/Term;->populateWindowList()V

    return-void
.end method

.method static synthetic access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    return-object v0
.end method

.method static synthetic access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    return-object v0
.end method

.method static synthetic access$800(Ljackpal/androidterm/Term;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    return v0
.end method

.method static synthetic access$900(Ljackpal/androidterm/Term;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Ljackpal/androidterm/Term;->doUIToggle(IIII)V

    return-void
.end method

.method private canPaste()Z
    .registers 3

    .prologue
    .line 869
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 870
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 871
    const/4 v1, 0x1

    .line 873
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 561
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private confirmCloseWindow()V
    .registers 5

    .prologue
    .line 641
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 643
    const v2, 0x7f06005f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 644
    new-instance v1, Ljackpal/androidterm/Term$6;

    invoke-direct {v1, p0}, Ljackpal/androidterm/Term$6;-><init>(Ljackpal/androidterm/Term;)V

    .line 649
    .local v1, closeWindow:Ljava/lang/Runnable;
    const v2, 0x1040013

    new-instance v3, Ljackpal/androidterm/Term$7;

    invoke-direct {v3, p0, v1}, Ljackpal/androidterm/Term$7;-><init>(Ljackpal/androidterm/Term;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 657
    return-void
.end method

.method private createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;
    .registers 5
    .parameter "session"

    .prologue
    .line 437
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 438
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 439
    new-instance v0, Ljackpal/androidterm/TermView;

    invoke-direct {v0, p0, p1, v1}, Ljackpal/androidterm/TermView;-><init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 441
    .local v0, emulatorView:Ljackpal/androidterm/TermView;
    new-instance v2, Ljackpal/androidterm/Term$EmulatorViewGestureListener;

    invoke-direct {v2, p0, v0}, Ljackpal/androidterm/Term$EmulatorViewGestureListener;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/emulatorview/EmulatorView;)V

    invoke-virtual {v0, v2}, Ljackpal/androidterm/TermView;->setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 442
    iget-object v2, p0, Ljackpal/androidterm/Term;->mBackKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Ljackpal/androidterm/TermView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 443
    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->registerForContextMenu(Landroid/view/View;)V

    .line 445
    return-object v0
.end method

.method private createTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 4

    .prologue
    .line 430
    iget-object v1, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 431
    .local v1, settings:Ljackpal/androidterm/util/TermSettings;
    invoke-virtual {v1}, Ljackpal/androidterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljackpal/androidterm/Term;->createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 432
    .local v0, session:Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    invoke-virtual {v0, v2}, Ljackpal/androidterm/emulatorview/TermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 433
    return-object v0
.end method

.method protected static createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 5
    .parameter "context"
    .parameter "settings"
    .parameter "initialCommand"

    .prologue
    .line 422
    new-instance v0, Ljackpal/androidterm/ShellTermSession;

    invoke-direct {v0, p1, p2}, Ljackpal/androidterm/ShellTermSession;-><init>(Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V

    .line 424
    .local v0, session:Ljackpal/androidterm/ShellTermSession;
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/ShellTermSession;->setProcessExitMessage(Ljava/lang/String;)V

    .line 426
    return-object v0
.end method

.method private doCloseWindow()V
    .registers 5

    .prologue
    .line 660
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-nez v2, :cond_5

    .line 678
    :cond_4
    :goto_4
    return-void

    .line 664
    :cond_5
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v1

    .line 665
    .local v1, view:Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v1, :cond_4

    .line 668
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Ljackpal/androidterm/util/SessionList;->remove(I)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 669
    .local v0, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    .line 670
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 671
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 672
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v2

    if-nez v2, :cond_31

    .line 673
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 674
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    goto :goto_4

    .line 676
    :cond_31
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    goto :goto_4
.end method

.method private doCopyAll()V
    .registers 3

    .prologue
    .line 901
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 903
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 904
    return-void
.end method

.method private doCreateNewWindow()V
    .registers 5

    .prologue
    .line 625
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-nez v2, :cond_c

    .line 626
    const-string v2, "Term"

    const-string v3, "Couldn\'t create new window because mTermSessions == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_b
    return-void

    .line 630
    :cond_c
    invoke-direct {p0}, Ljackpal/androidterm/Term;->createTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 631
    .local v0, session:Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 633
    invoke-direct {p0, v0}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v1

    .line 634
    .local v1, view:Ljackpal/androidterm/TermView;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 636
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    .line 637
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    goto :goto_b
.end method

.method private doDocumentKeys()V
    .registers 11

    .prologue
    const/4 v2, 0x7

    .line 929
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 930
    .local v8, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 931
    .local v3, r:Landroid/content/res/Resources;
    const v0, 0x7f06005a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 932
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0}, Ljackpal/androidterm/util/TermSettings;->getControlKeyId()I

    move-result v1

    const v4, 0x7f050014

    const v5, 0x7f06005b

    const v6, 0x7f06005c

    const-string v7, "CTRLKEY"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljackpal/androidterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0}, Ljackpal/androidterm/util/TermSettings;->getFnKeyId()I

    move-result v1

    const v4, 0x7f050015

    const v5, 0x7f06005d

    const v6, 0x7f06005e

    const-string v7, "FNKEY"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljackpal/androidterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 942
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 943
    return-void
.end method

.method private doEmailTranscript()V
    .registers 6

    .prologue
    .line 891
    const-string v0, "user@example.com"

    .line 892
    .local v0, addr:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 896
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "body"

    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 898
    return-void
.end method

.method private doPaste()V
    .registers 7

    .prologue
    .line 907
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 909
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 912
    .local v2, paste:Ljava/lang/CharSequence;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_15} :catch_22

    move-result-object v3

    .line 917
    .local v3, utf8:[B
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljackpal/androidterm/emulatorview/TermSession;->write(Ljava/lang/String;)V

    .line 918
    .end local v3           #utf8:[B
    :goto_21
    return-void

    .line 913
    :catch_22
    move-exception v1

    .line 914
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "Term"

    const-string v5, "UTF-8 encoding not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private doPreferences()V
    .registers 3

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/TermPreferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 878
    return-void
.end method

.method private doResetTerminal()V
    .registers 2

    .prologue
    .line 881
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 882
    .local v0, session:Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_9

    .line 883
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->reset()V

    .line 885
    :cond_9
    return-void
.end method

.method private doSendControlKey()V
    .registers 2

    .prologue
    .line 921
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendControlKey()V

    .line 922
    return-void
.end method

.method private doSendFnKey()V
    .registers 2

    .prologue
    .line 925
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendFnKey()V

    .line 926
    return-void
.end method

.method private doToggleActionBar()V
    .registers 3

    .prologue
    .line 985
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    .line 986
    .local v0, bar:Ljackpal/androidterm/compat/ActionBarCompat;
    if-nez v0, :cond_5

    .line 994
    :goto_4
    return-void

    .line 989
    :cond_5
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 990
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    goto :goto_4

    .line 992
    :cond_f
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->show()V

    goto :goto_4
.end method

.method private doToggleSoftKeyboard()V
    .registers 4

    .prologue
    .line 960
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 962
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 964
    return-void
.end method

.method private doToggleWakeLock()V
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 968
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 972
    :goto_d
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 973
    return-void

    .line 970
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d
.end method

.method private doToggleWifiLock()V
    .registers 2

    .prologue
    .line 976
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 977
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 981
    :goto_d
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 982
    return-void

    .line 979
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_d
.end method

.method private doUIToggle(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 997
    iget v0, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    packed-switch v0, :pswitch_data_3c

    .line 1020
    :cond_5
    :goto_5
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 1021
    :goto_c
    return-void

    .line 999
    :pswitch_d
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f

    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_1b

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_1f

    .line 1000
    :cond_1b
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->openOptionsMenu()V

    goto :goto_c

    .line 1003
    :cond_1f
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1007
    :pswitch_23
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_5

    .line 1008
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1012
    :pswitch_2b
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_33

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_37

    .line 1013
    :cond_33
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleActionBar()V

    goto :goto_c

    .line 1016
    :cond_37
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 997
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method private formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "keyId"
    .parameter "disabledKeyId"
    .parameter "r"
    .parameter "arrayId"
    .parameter "enabledId"
    .parameter "disabledId"
    .parameter "regex"

    .prologue
    .line 949
    if-ne p1, p2, :cond_7

    .line 950
    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 956
    :goto_6
    return-object v2

    .line 952
    :cond_7
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, keyNames:[Ljava/lang/String;
    aget-object v0, v1, p1

    .line 954
    .local v0, keyName:Ljava/lang/String;
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, template:Ljava/lang/String;
    invoke-virtual {v3, p7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, result:Ljava/lang/String;
    goto :goto_6
.end method

.method private getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    return-object v0
.end method

.method private getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    return-object v0
.end method

.method private makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 12
    .parameter "extras"

    .prologue
    .line 321
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 322
    :cond_8
    const-string v8, ""

    .line 339
    :goto_a
    return-object v8

    .line 325
    :cond_b
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 326
    .local v5, keys:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5           #keys:[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 327
    .restart local v5       #keys:[Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 328
    .local v1, collator:Ljava/text/Collator;
    invoke-static {v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v7, path:Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2c
    if-ge v3, v6, :cond_49

    aget-object v4, v0, v3

    .line 332
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, dir:Ljava/lang/String;
    if-eqz v2, :cond_46

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 334
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 339
    .end local v2           #dir:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    :cond_49
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_a
.end method

.method private populateViewFlipper()V
    .registers 10

    .prologue
    .line 343
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    if-eqz v7, :cond_6e

    .line 344
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    invoke-virtual {v7}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v7

    iput-object v7, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 345
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v7, p0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 347
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v7}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v7

    if-nez v7, :cond_22

    .line 348
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-direct {p0}, Ljackpal/androidterm/Term;->createTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 351
    :cond_22
    iget-object v7, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v7}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljackpal/androidterm/emulatorview/TermSession;

    .line 352
    .local v4, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0, v4}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v6

    .line 353
    .local v6, view:Ljackpal/androidterm/emulatorview/EmulatorView;
    iget-object v7, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v7, v6}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_28

    .line 356
    .end local v4           #session:Ljackpal/androidterm/emulatorview/TermSession;
    .end local v6           #view:Ljackpal/androidterm/emulatorview/EmulatorView;
    :cond_3e
    invoke-direct {p0}, Ljackpal/androidterm/Term;->updatePrefs()V

    .line 358
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 359
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 360
    .local v1, flags:I
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, action:Ljava/lang/String;
    const/high16 v7, 0x10

    and-int/2addr v7, v1

    if-nez v7, :cond_69

    if-eqz v0, :cond_69

    .line 363
    const-string v7, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 364
    iget-object v7, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v8, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v8}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 373
    :cond_69
    :goto_69
    iget-object v7, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v7}, Ljackpal/androidterm/TermViewFlipper;->resumeCurrentView()V

    .line 375
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #flags:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6e
    return-void

    .line 365
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #flags:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_6f
    const-string v7, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 366
    const-string v7, "jackpal.androidterm.private.target_window"

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 367
    .local v5, target:I
    if-ltz v5, :cond_69

    .line 368
    iget-object v7, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v7, v5}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    goto :goto_69
.end method

.method private populateWindowList()V
    .registers 6

    .prologue
    .line 378
    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-nez v2, :cond_5

    .line 396
    :cond_4
    :goto_4
    return-void

    .line 383
    :cond_5
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 385
    .local v1, position:I
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-nez v2, :cond_35

    .line 386
    new-instance v0, Ljackpal/androidterm/Term$WindowListActionBarAdapter;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-direct {v0, p0, v2}, Ljackpal/androidterm/Term$WindowListActionBarAdapter;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/util/SessionList;)V

    .line 387
    .local v0, adapter:Ljackpal/androidterm/WindowListAdapter;
    iput-object v0, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    .line 388
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 389
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/TermViewFlipper;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 390
    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    iget-object v4, p0, Ljackpal/androidterm/Term;->mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    invoke-virtual {v2, v3, v4}, Ljackpal/androidterm/compat/ActionBarCompat;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)V

    .line 394
    .end local v0           #adapter:Ljackpal/androidterm/WindowListAdapter;
    :goto_2f
    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    goto :goto_4

    .line 392
    :cond_35
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    goto :goto_2f
.end method

.method private restart()V
    .registers 2

    .prologue
    .line 417
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    .line 419
    return-void
.end method

.method private updatePrefs()V
    .registers 13

    .prologue
    const/16 v10, 0x400

    .line 457
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 458
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 459
    new-instance v1, Ljackpal/androidterm/emulatorview/ColorScheme;

    iget-object v9, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v9}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v9

    invoke-direct {v1, v9}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>([I)V

    .line 461
    .local v1, colorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;
    iget-object v9, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v11, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v9, v11}, Ljackpal/androidterm/TermViewFlipper;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 463
    iget-object v9, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v9}, Ljackpal/androidterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .local v7, v:Landroid/view/View;
    move-object v9, v7

    .line 464
    check-cast v9, Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v9, v4}, Ljackpal/androidterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 465
    check-cast v7, Ljackpal/androidterm/TermView;

    .end local v7           #v:Landroid/view/View;
    iget-object v9, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v7, v9}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    goto :goto_2a

    .line 468
    :cond_44
    iget-object v9, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v9, :cond_62

    .line 469
    iget-object v9, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v9}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljackpal/androidterm/emulatorview/TermSession;

    .line 470
    .local v6, session:Ljackpal/androidterm/emulatorview/TermSession;
    check-cast v6, Ljackpal/androidterm/ShellTermSession;

    .end local v6           #session:Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v9, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v6, v9}, Ljackpal/androidterm/ShellTermSession;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    goto :goto_4e

    .line 475
    :cond_62
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 476
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 477
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 478
    .local v0, FULLSCREEN:I
    iget-object v9, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v9}, Ljackpal/androidterm/util/TermSettings;->showStatusBar()Z

    move-result v9

    if-eqz v9, :cond_93

    const/4 v2, 0x0

    .line 479
    .local v2, desiredFlag:I
    :goto_75
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-ne v2, v9, :cond_8b

    sget v9, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v11, 0xb

    if-lt v9, v11, :cond_92

    iget v9, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    iget-object v11, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v11}, Ljackpal/androidterm/util/TermSettings;->actionBarMode()I

    move-result v11

    if-eq v9, v11, :cond_92

    .line 480
    :cond_8b
    iget-boolean v9, p0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    if-eqz v9, :cond_95

    .line 483
    invoke-direct {p0}, Ljackpal/androidterm/Term;->restart()V

    .line 492
    :cond_92
    :goto_92
    return-void

    .end local v2           #desiredFlag:I
    :cond_93
    move v2, v10

    .line 478
    goto :goto_75

    .line 485
    .restart local v2       #desiredFlag:I
    :cond_95
    invoke-virtual {v8, v2, v10}, Landroid/view/Window;->setFlags(II)V

    .line 486
    iget v9, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_92

    .line 487
    iget-object v9, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v9}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    goto :goto_92
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 682
    packed-switch p1, :pswitch_data_34

    .line 702
    :cond_4
    :goto_4
    return-void

    .line 684
    :pswitch_5
    if-ne p2, v3, :cond_25

    if-eqz p3, :cond_25

    .line 685
    const-string v1, "jackpal.androidterm.window_id"

    const/4 v2, -0x2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 686
    .local v0, position:I
    if-ltz v0, :cond_15

    .line 688
    iput v0, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 689
    :cond_15
    if-ne v0, v3, :cond_4

    .line 690
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCreateNewWindow()V

    .line 691
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 695
    .end local v0           #position:I
    :cond_25
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 696
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 697
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    goto :goto_4

    .line 682
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 569
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 571
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 572
    .local v0, v:Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v0, :cond_17

    .line 573
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 576
    :cond_17
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-eqz v1, :cond_20

    .line 578
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1}, Ljackpal/androidterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 580
    :cond_20
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 768
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 785
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 770
    :pswitch_d
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    goto :goto_c

    .line 773
    :pswitch_15
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCopyAll()V

    goto :goto_c

    .line 776
    :pswitch_19
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doPaste()V

    goto :goto_c

    .line 779
    :pswitch_1d
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doSendControlKey()V

    goto :goto_c

    .line 782
    :pswitch_21
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doSendFnKey()V

    goto :goto_c

    .line 768
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "icicle"

    .prologue
    .line 255
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const-string v0, "Term"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    .line 258
    new-instance v0, Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Ljackpal/androidterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v2, v4}, Ljackpal/androidterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 260
    new-instance v1, Landroid/content/Intent;

    const-string v0, "jackpal.androidterm.broadcast.APPEND_TO_PATH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, broadcast:Landroid/content/Intent;
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_2f

    .line 262
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :cond_2f
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 265
    const-string v2, "jackpal.androidterm.permission.APPEND_TO_PATH"

    iget-object v3, p0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 267
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 268
    .end local v1           #broadcast:Landroid/content/Intent;
    .local v3, broadcast:Landroid/content/Intent;
    const-string v0, "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 270
    const-string v4, "jackpal.androidterm.permission.PREPEND_TO_PATH"

    iget-object v5, p0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    iget-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4}, Ljackpal/androidterm/Term;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 276
    const-string v0, "Term"

    const-string v2, "bind to service failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_7d
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_8e

    .line 280
    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0}, Ljackpal/androidterm/util/TermSettings;->actionBarMode()I

    move-result v11

    .line 281
    .local v11, actionBarMode:I
    iput v11, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    .line 282
    packed-switch v11, :pswitch_data_104

    .line 292
    .end local v11           #actionBarMode:I
    :cond_8e
    :goto_8e
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->setContentView(I)V

    .line 293
    const/high16 v0, 0x7f0b

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/TermViewFlipper;

    iput-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    .line 295
    const-string v0, "power"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 296
    .local v12, pm:Landroid/os/PowerManager;
    const/4 v0, 0x1

    const-string v2, "Term"

    invoke-virtual {v12, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 297
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 298
    .local v14, wm:Landroid/net/wifi/WifiManager;
    const/4 v13, 0x1

    .line 299
    .local v13, wifiLockMode:I
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_be

    .line 300
    const/4 v13, 0x3

    .line 302
    :cond_be
    const-string v0, "Term"

    invoke-virtual {v14, v13, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 304
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v10

    .line 305
    .local v10, actionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    if-eqz v10, :cond_e0

    .line 306
    iput-object v10, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    .line 307
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljackpal/androidterm/compat/ActionBarCompat;->setNavigationMode(I)V

    .line 308
    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {v10, v0, v2}, Ljackpal/androidterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 309
    iget v0, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e0

    .line 310
    invoke-virtual {v10}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    .line 314
    :cond_e0
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 316
    invoke-direct {p0}, Ljackpal/androidterm/Term;->updatePrefs()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    .line 318
    return-void

    .line 284
    .end local v10           #actionBar:Ljackpal/androidterm/compat/ActionBarCompat;
    .end local v12           #pm:Landroid/os/PowerManager;
    .end local v13           #wifiLockMode:I
    .end local v14           #wm:Landroid/net/wifi/WifiManager;
    .restart local v11       #actionBarMode:I
    :pswitch_f5
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->setTheme(I)V

    goto :goto_8e

    .line 287
    :pswitch_fc
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->setTheme(I)V

    goto :goto_8e

    .line 282
    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_fc
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 754
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 755
    const v0, 0x7f06001c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 756
    const v0, 0x7f06001d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 757
    const/4 v0, 0x1

    const v1, 0x7f06001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 758
    const v0, 0x7f06001f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 759
    const/4 v0, 0x3

    const v1, 0x7f060020

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 760
    const/4 v0, 0x4

    const v1, 0x7f060021

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 761
    invoke-direct {p0}, Ljackpal/androidterm/Term;->canPaste()Z

    move-result v0

    if-nez v0, :cond_39

    .line 762
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 764
    :cond_39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 584
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 585
    const v0, 0x7f0b0004

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljackpal/androidterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 586
    const v0, 0x7f0b0005

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Ljackpal/androidterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 587
    return v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 401
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->removeAllViews()V

    .line 402
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    if-eqz v0, :cond_17

    .line 404
    iget-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->stopService(Landroid/content/Intent;)Z

    .line 406
    :cond_17
    iput-object v1, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    .line 407
    iput-object v1, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 408
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 409
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 411
    :cond_28
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 412
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 414
    :cond_35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 794
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_c

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    .line 799
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 802
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 808
    sparse-switch p1, :sswitch_data_58

    .line 842
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    .line 810
    :sswitch_a
    sget v2, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_15

    .line 811
    iget-boolean v2, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    if-eqz v2, :cond_9

    .line 816
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 818
    :cond_15
    iget v2, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v2}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 819
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    move v0, v1

    .line 820
    goto :goto_9

    .line 822
    :cond_29
    iget-object v2, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v2}, Ljackpal/androidterm/util/TermSettings;->getBackKeyAction()I

    move-result v2

    packed-switch v2, :pswitch_data_62

    goto :goto_9

    .line 824
    :pswitch_33
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 826
    :pswitch_35
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    move v0, v1

    .line 827
    goto :goto_9

    .line 829
    :pswitch_3a
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCloseWindow()V

    move v0, v1

    .line 830
    goto :goto_9

    .line 835
    :sswitch_3f
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-eqz v0, :cond_52

    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-nez v0, :cond_52

    .line 836
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->show()V

    move v0, v1

    .line 837
    goto :goto_9

    .line 839
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 808
    nop

    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_a
        0x52 -> :sswitch_3f
    .end sparse-switch

    .line 822
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3a
        :pswitch_35
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    .line 732
    :cond_9
    :goto_9
    return-void

    .line 711
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 716
    const-string v6, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 718
    iget-object v3, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 719
    .local v3, sessions:Ljackpal/androidterm/util/SessionList;
    invoke-virtual {v3}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 721
    .local v1, position:I
    invoke-virtual {v3, v1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/TermSession;

    .line 722
    .local v2, session:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0, v2}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v5

    .line 724
    .local v5, view:Ljackpal/androidterm/emulatorview/EmulatorView;
    iget-object v6, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v6, v5}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    .line 725
    iput v1, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_9

    .line 726
    .end local v1           #position:I
    .end local v2           #session:Ljackpal/androidterm/emulatorview/TermSession;
    .end local v3           #sessions:Ljackpal/androidterm/util/SessionList;
    .end local v5           #view:Ljackpal/androidterm/emulatorview/EmulatorView;
    :cond_32
    const-string v6, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 727
    const-string v6, "jackpal.androidterm.private.target_window"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 728
    .local v4, target:I
    if-ltz v4, :cond_9

    .line 729
    iput v4, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 593
    .local v0, id:I
    const v2, 0x7f0b0009

    if-ne v0, v2, :cond_1d

    .line 594
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doPreferences()V

    .line 618
    :cond_e
    :goto_e
    iget v2, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 619
    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v2}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    .line 621
    :cond_18
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 595
    :cond_1d
    const v2, 0x7f0b0004

    if-ne v0, v2, :cond_26

    .line 596
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCreateNewWindow()V

    goto :goto_e

    .line 597
    :cond_26
    const v2, 0x7f0b0005

    if-ne v0, v2, :cond_2f

    .line 598
    invoke-direct {p0}, Ljackpal/androidterm/Term;->confirmCloseWindow()V

    goto :goto_e

    .line 599
    :cond_2f
    const v2, 0x7f0b0006

    if-ne v0, v2, :cond_3f

    .line 600
    new-instance v2, Landroid/content/Intent;

    const-class v3, Ljackpal/androidterm/WindowList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Ljackpal/androidterm/Term;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 601
    :cond_3f
    const v2, 0x7f0b000a

    if-ne v0, v2, :cond_57

    .line 602
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doResetTerminal()V

    .line 603
    const v2, 0x7f060017

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 604
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 605
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 606
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_57
    const v2, 0x7f0b000b

    if-ne v0, v2, :cond_60

    .line 607
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doEmailTranscript()V

    goto :goto_e

    .line 608
    :cond_60
    const v2, 0x7f0b0008

    if-ne v0, v2, :cond_69

    .line 609
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doDocumentKeys()V

    goto :goto_e

    .line 610
    :cond_69
    const v2, 0x7f0b0007

    if-ne v0, v2, :cond_72

    .line 611
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_e

    .line 612
    :cond_72
    const v2, 0x7f0b000c

    if-ne v0, v2, :cond_7b

    .line 613
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleWakeLock()V

    goto :goto_e

    .line 614
    :cond_7b
    const v2, 0x7f0b000d

    if-ne v0, v2, :cond_e

    .line 615
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleWifiLock()V

    goto :goto_e
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 531
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->onPause()V

    .line 532
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v1, :cond_23

    .line 533
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, p0}, Ljackpal/androidterm/util/SessionList;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 534
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-eqz v1, :cond_23

    .line 535
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/util/SessionList;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 536
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/TermViewFlipper;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 540
    :cond_23
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2b

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 550
    :cond_2b
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 551
    .local v0, token:Landroid/os/IBinder;
    new-instance v1, Ljackpal/androidterm/Term$5;

    invoke-direct {v1, p0, v0}, Ljackpal/androidterm/Term$5;-><init>(Ljackpal/androidterm/Term;Landroid/os/IBinder;)V

    invoke-virtual {v1}, Ljackpal/androidterm/Term$5;->start()V

    .line 558
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 736
    const v2, 0x7f0b000c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 737
    .local v0, wakeLockItem:Landroid/view/MenuItem;
    const v2, 0x7f0b000d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 738
    .local v1, wifiLockItem:Landroid/view/MenuItem;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 739
    const v2, 0x7f060019

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 743
    :goto_1c
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 744
    const v2, 0x7f06001b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 748
    :goto_2a
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 741
    :cond_2f
    const v2, 0x7f060018

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1c

    .line 746
    :cond_36
    const v2, 0x7f06001a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2a
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 498
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v2, :cond_1e

    .line 499
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2, p0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 500
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-eqz v2, :cond_1e

    .line 501
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 502
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/TermViewFlipper;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 505
    :cond_1e
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v2

    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5a

    .line 507
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 508
    .local v1, v:Ljackpal/androidterm/emulatorview/EmulatorView;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->getTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljackpal/androidterm/util/SessionList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 509
    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    .line 510
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 511
    add-int/lit8 v0, v0, -0x1

    .line 506
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 516
    .end local v0           #i:I
    .end local v1           #v:Ljackpal/androidterm/emulatorview/EmulatorView;
    :cond_5a
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Ljackpal/androidterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    .line 517
    iget-object v2, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 518
    invoke-direct {p0}, Ljackpal/androidterm/Term;->updatePrefs()V

    .line 520
    iget v2, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    if-ltz v2, :cond_78

    .line 521
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget v3, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    invoke-virtual {v2, v3}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 522
    const/4 v2, -0x1

    iput v2, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    .line 524
    :cond_78
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->onResume()V

    .line 525
    return-void
.end method

.method public onUpdate()V
    .registers 6

    .prologue
    .line 848
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 849
    .local v1, sessions:Ljackpal/androidterm/util/SessionList;
    if-nez v1, :cond_5

    .line 866
    :cond_4
    :goto_4
    return-void

    .line 853
    :cond_5
    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 854
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 855
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    goto :goto_4

    .line 856
    :cond_12
    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v3

    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 857
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 858
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v0}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 859
    .local v2, v:Ljackpal/androidterm/emulatorview/EmulatorView;
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->getTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljackpal/androidterm/util/SessionList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 860
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    .line 861
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v2}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 862
    add-int/lit8 v0, v0, -0x1

    .line 857
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method
