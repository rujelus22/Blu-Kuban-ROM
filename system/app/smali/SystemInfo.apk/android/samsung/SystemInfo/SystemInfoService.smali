.class public Landroid/samsung/SystemInfo/SystemInfoService;
.super Landroid/app/Service;
.source "SystemInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;
    }
.end annotation


# instance fields
.field private WindowState:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPackageCheckCount:B

.field private mReportAppWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemInfoView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/samsung/SystemInfo/SystemInfoService$ReportAppWindowReceiver;-><init>(Landroid/samsung/SystemInfo/SystemInfoService;Landroid/samsung/SystemInfo/SystemInfoService$1;)V

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mReportAppWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B

    .line 28
    const-string v0, "woogee"

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->WindowState:Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/samsung/SystemInfo/SystemInfoService$1;

    invoke-direct {v0, p0}, Landroid/samsung/SystemInfo/SystemInfoService$1;-><init>(Landroid/samsung/SystemInfo/SystemInfoService;)V

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplaySystemInfo()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, PackageName:Ljava/lang/String;
    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->WindowState:Ljava/lang/String;

    const-string v2, "com.sec.android.app.twlauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "com.sec.android.app.twlauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 66
    :cond_26
    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_2b
    iget-byte v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3f

    .line 71
    iget-byte v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B

    .line 72
    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    :cond_3f
    return-void

    .line 68
    :cond_40
    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b
.end method

.method static synthetic access$102(Landroid/samsung/SystemInfo/SystemInfoService;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-byte p1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mPackageCheckCount:B

    return p1
.end method

.method static synthetic access$202(Landroid/samsung/SystemInfo/SystemInfoService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->WindowState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/samsung/SystemInfo/SystemInfoService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/samsung/SystemInfo/SystemInfoService;->DisplaySystemInfo()V

    return-void
.end method

.method static synthetic access$400(Landroid/samsung/SystemInfo/SystemInfoService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/4 v1, -0x2

    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    new-instance v0, Landroid/samsung/SystemInfo/SystemInfo;

    invoke-direct {v0, p0}, Landroid/samsung/SystemInfo/SystemInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    .line 34
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.android.activity.displayed"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .local v6, filter:Landroid/content/IntentFilter;
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mReportAppWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Landroid/samsung/SystemInfo/SystemInfoService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/samsung/SystemInfo/SystemInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mActivityManager:Landroid/app/ActivityManager;

    .line 38
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/samsung/SystemInfo/SystemInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    iget-object v2, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Landroid/samsung/SystemInfo/SystemInfoService;->DisplaySystemInfo()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Landroid/samsung/SystemInfo/SystemInfoService;->mReportAppWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/samsung/SystemInfo/SystemInfoService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    return-void
.end method
