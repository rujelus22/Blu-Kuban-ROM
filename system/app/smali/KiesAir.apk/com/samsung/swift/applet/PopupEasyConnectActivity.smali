.class public Lcom/samsung/swift/applet/PopupEasyConnectActivity;
.super Landroid/app/Activity;
.source "PopupEasyConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
    }
.end annotation


# static fields
.field private static final BUTTON_TOGGLE_DELAY:I = 0x1f4

.field private static final INITIAL_SCAN_INTERVAL:I = 0x1f4

.field private static final ONE_NETWORK_TIMEOUT:I = 0xbb8

.field private static final SCAN_INTERVAL:I = 0x5dc

.field private static final SCAN_TIMEOUT:I = 0xea60

.field private static final TAGNAME:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/applet/PopupEasyConnectActivity;

.field private static isScanning:Z

.field private static refreshButton:Landroid/widget/Button;

.field private static refreshMenu:Landroid/widget/RelativeLayout;


# instance fields
.field protected final DIALOG_SCANNING:I

.field public alertDialog:Landroid/app/AlertDialog;

.field private layoutScanNoResult:Landroid/widget/ScrollView;

.field private layoutScanResult:Landroid/widget/LinearLayout;

.field private layoutScanning:Landroid/widget/RelativeLayout;

.field private lv:Landroid/widget/ListView;

.field private scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->TAGNAME:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->DIALOG_SCANNING:I

    .line 337
    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/applet/PopupEasyConnectActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setEnableRefresh(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->TAGNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/ScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->delayedEnableButton()V

    return-void
.end method

.method private delayedEnableButton()V
    .registers 7

    .prologue
    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/swift/applet/PopupEasyConnectActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$4;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method public static declared-synchronized instance()Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    .registers 2

    .prologue
    .line 85
    const-class v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance:Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isScanning()Z
    .registers 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    return v0
.end method

.method private setEnableRefresh(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 305
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshButton:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 306
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    :cond_9
    :goto_9
    return-void

    .line 307
    :cond_a
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshMenu:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 308
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_9
.end method

.method public static declared-synchronized setInstance(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    .registers 3
    .parameter "instance"

    .prologue
    .line 90
    const-class v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->instance:Lcom/samsung/swift/applet/PopupEasyConnectActivity;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setScanning(Z)V
    .registers 2
    .parameter "scanning"

    .prologue
    .line 70
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->isShakingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 72
    if-eqz p0, :cond_14

    .line 73
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->stopListening()V

    .line 78
    :cond_b
    :goto_b
    sput-boolean p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    .line 80
    invoke-static {}, Lcom/samsung/swift/applet/AppletActivity;->instance()Lcom/samsung/swift/applet/AppletActivity;

    invoke-static {p0}, Lcom/samsung/swift/applet/AppletActivity;->setKiesAirScanning(Z)V

    .line 81
    return-void

    .line 75
    :cond_14
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->startListening()V

    goto :goto_b
.end method


# virtual methods
.method public doScanServer()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 293
    :cond_d
    invoke-virtual {p0, v2}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->showDialog(I)V

    .line 295
    :cond_10
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_24

    .line 296
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->cancel(Z)Z

    .line 298
    :cond_24
    new-instance v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    invoke-direct {v0, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    .line 299
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 269
    invoke-static {}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 271
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->doScanServer()V

    .line 273
    :cond_15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1030073

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setInstance(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    .line 99
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 101
    invoke-virtual {p0, v3}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setTheme(I)V

    .line 113
    :goto_12
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_1f

    .line 117
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 120
    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->showDialog(I)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->doScanServer()V

    .line 122
    return-void

    .line 105
    .end local v0           #appContext:Landroid/content/Context;
    :cond_27
    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_34

    .line 106
    const v1, 0x103012e

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setTheme(I)V

    goto :goto_12

    .line 107
    :cond_34
    sget v1, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3e

    .line 108
    invoke-virtual {p0, v3}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setTheme(I)V

    goto :goto_12

    .line 110
    :cond_3e
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setTheme(I)V

    goto :goto_12
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 14
    .parameter "id"

    .prologue
    const/4 v11, 0x4

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 128
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 129
    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 130
    .local v1, view:Landroid/view/View;
    const/4 v7, 0x0

    .line 132
    .local v7, titleView:Landroid/view/View;
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 135
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    sget v4, Lcom/samsung/swift/R$string;->scan_kies_air_server:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 137
    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_10f

    .line 138
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "dialog_scan_server_holo_light"

    const-string v5, "layout"

    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 142
    :goto_46
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 145
    :cond_4d
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_a6

    .line 147
    sget v0, Lcom/samsung/swift/applet/AppletActivity;->sdkVersion:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_129

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v11, :cond_91

    .line 153
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "scanning_dialog_title"

    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 154
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 161
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    sget v2, Lcom/samsung/swift/R$string;->scan_kies_air_server:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 163
    sget v0, Lcom/samsung/swift/R$layout;->dialog_scan_server:I

    invoke-virtual {v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    move v2, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 167
    :cond_a6
    sget v0, Lcom/samsung/swift/R$id;->list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;

    .line 168
    sget v0, Lcom/samsung/swift/R$id;->scan_notification:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;

    .line 169
    sget v0, Lcom/samsung/swift/R$id;->scan_result:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;

    .line 170
    sget v0, Lcom/samsung/swift/R$id;->scan_no_result:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;

    .line 172
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    sget v3, Lcom/samsung/swift/R$string;->cancel_button:I

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$1;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 184
    if-nez v7, :cond_136

    .line 186
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    sget v2, Lcom/samsung/swift/R$string;->refresh:I

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/samsung/swift/applet/PopupEasyConnectActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$2;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    invoke-virtual {v0, v10, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 204
    :goto_f1
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 208
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshMenu:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_10c

    .line 210
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshButton:Landroid/widget/Button;

    .line 211
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_10c
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 140
    :cond_10f
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "dialog_scan_server"

    const-string v5, "layout"

    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_46

    .line 158
    :cond_129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_91

    .line 194
    :cond_136
    sget v0, Lcom/samsung/swift/R$id;->title_refresh_menu:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshMenu:Landroid/widget/RelativeLayout;

    .line 195
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->refreshMenu:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/swift/applet/PopupEasyConnectActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$3;-><init>(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_14

    .line 328
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->scanningTask:Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity$ScanKiesAirDevicesTask;->cancel(Z)Z

    .line 330
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setInstance(Lcom/samsung/swift/applet/PopupEasyConnectActivity;)Lcom/samsung/swift/applet/PopupEasyConnectActivity;

    .line 331
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "onDestroy: setScanning(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 335
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 278
    const/4 v0, 0x4

    if-ne p2, v0, :cond_16

    .line 280
    sget-object v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->TAGNAME:Ljava/lang/String;

    const-string v1, "KEYCODE_BACK: setScanning(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setScanning(Z)V

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->finish()V

    .line 284
    const/4 v0, 0x1

    .line 287
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p2, p3}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 220
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 233
    const-string v0, "isScanning"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    .line 234
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    sget-boolean v0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    if-eqz v0, :cond_1d

    .line 243
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    invoke-direct {p0, v1}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setEnableRefresh(Z)V

    .line 264
    :goto_1c
    return-void

    .line 250
    :cond_1d
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_39

    .line 252
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    :goto_34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->setEnableRefresh(Z)V

    goto :goto_1c

    .line 258
    :cond_39
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanNoResult:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->layoutScanning:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_34
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "isScanning"

    sget-boolean v1, Lcom/samsung/swift/applet/PopupEasyConnectActivity;->isScanning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
