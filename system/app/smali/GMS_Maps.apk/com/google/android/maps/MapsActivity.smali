.class public Lcom/google/android/maps/MapsActivity;
.super Lcom/google/googlenav/android/BaseMapsActivity;
.source "SourceFile"

# interfaces
.implements Laz/m;
.implements Lcom/google/googlenav/android/P;
.implements Lcom/google/googlenav/android/W;
.implements Lcom/google/googlenav/android/ae;


# static fields
.field private static final ACTION_ENTER_CAR_MODE:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE"

.field private static final ENTER_CAR_MODE_FILTER:Landroid/content/IntentFilter; = null

.field private static final ENTRY_POINT_RESET_TIMEOUT_MS:J = 0xdbba0L

.field public static final INPUT_FOCUS_STATE_DIALOG:I = 0x2

.field public static final INPUT_FOCUS_STATE_INITIAL:I = -0x1

.field public static final INPUT_FOCUS_STATE_MAP:I = 0x1

.field public static final INPUT_FOCUS_STATE_WAIT:I = 0x0

.field private static final MAX_MS_BEFORE_ON_CREATE:I = 0x1388

.field private static final MINIMUM_HEAP_SIZE:J = 0x600000L

.field private static final NO_TIME:I = -0x1

.field private static coldStartProfile:Lcom/google/googlenav/common/util/o;

.field public static volatile featureTestUiHandler:Landroid/os/Handler;

.field private static inputFocusStateForTesting:I

.field private static final startupClock:Lcom/google/googlenav/common/a;

.field private static stopwatchStatsLifecycleOnPause:LaT/h;

.field private static stopwatchStatsLifecycleOnPauseVm:LaT/h;

.field private static stopwatchStatsMenuOpen:LaT/h;

.field private static final stopwatchStatsStartupAfterBack:LaT/h;

.field private static final stopwatchStatsStartupAfterBackVm:LaT/h;

.field private static final stopwatchStatsStartupAfterBriefPause:LaT/h;

.field private static final stopwatchStatsStartupAfterBriefPauseVm:LaT/h;

.field private static final stopwatchStatsStartupCold:LaT/h;

.field private static final stopwatchStatsStartupColdVm:LaT/h;

.field private static final stopwatchStatsStartupHot:LaT/h;

.field private static final stopwatchStatsStartupHotVm:LaT/h;

.field private static final stopwatchStatsStartupRemoteStrings:LaT/h;

.field private static final stopwatchStatsStartupRemoteStringsVm:LaT/h;

.field private static final stopwatchStatsStartupScreenOn:LaT/h;

.field private static final stopwatchStatsStartupScreenOnVm:LaT/h;


# instance fields
.field private arePowerConsumersRunning:Z

.field private buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

.field private connReceiver:Landroid/content/BroadcastReceiver;

.field private final dockReceiver:Landroid/content/BroadcastReceiver;

.field private entryPointType:Lcom/google/android/maps/A;

.field private gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

.field private hasDataConnection:Z

.field private intentProcessor:Lcom/google/googlenav/android/M;

.field private final latitudeBroadcastReceiver:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

.field private mapViewMenuController:Lcom/google/googlenav/ui/av;

.field private orientationProvider:LaB/h;

.field private final screenReceiver:Landroid/content/BroadcastReceiver;

.field private shouldSetupEntryPointOnResume:Z

.field private startupStartTime:J

.field private startupType:Lcom/google/android/maps/B;

.field private stopPowerConsumersTask:LY/d;

.field private tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

.field private voiceRecognizer:Lcom/google/googlenav/android/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x16

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->ENTER_CAR_MODE_FILTER:Landroid/content/IntentFilter;

    .line 316
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    .line 328
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup remote strings"

    const-string v3, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupRemoteStrings:LaT/h;

    .line 333
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup remote strings vm"

    const-string v3, "guid_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupRemoteStringsVm:LaT/h;

    .line 343
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup cold"

    const-string v3, "guif"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupCold:LaT/h;

    .line 347
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup cold vm"

    const-string v3, "guif_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupColdVm:LaT/h;

    .line 353
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup after back"

    const-string v3, "guir"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBack:LaT/h;

    .line 357
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup after back vm"

    const-string v3, "guir_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBackVm:LaT/h;

    .line 363
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup hot"

    const-string v3, "guis"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupHot:LaT/h;

    .line 368
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup hot vm"

    const-string v3, "guis_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupHotVm:LaT/h;

    .line 375
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup screen on"

    const-string v3, "guip"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupScreenOn:LaT/h;

    .line 380
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup screen on vm"

    const-string v3, "guip_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupScreenOnVm:LaT/h;

    .line 390
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup after brief pause"

    const-string v3, "guib"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBriefPause:LaT/h;

    .line 395
    new-instance v0, LaT/h;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    const-string v2, "startup after brief pause vm"

    const-string v3, "guib_vm"

    invoke-direct {v0, v1, v2, v3, v4}, LaT/h;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBriefPauseVm:LaT/h;

    .line 442
    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/MapsActivity;->inputFocusStateForTesting:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/googlenav/android/BaseMapsActivity;-><init>()V

    .line 242
    new-instance v0, Lcom/google/android/maps/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/a;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->dockReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Lcom/google/android/maps/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/p;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->screenReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z

    .line 282
    new-instance v0, Lcom/google/android/maps/t;

    invoke-direct {v0, p0}, Lcom/google/android/maps/t;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->connReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->latitudeBroadcastReceiver:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    .line 325
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 409
    sget-object v0, Lcom/google/android/maps/B;->a:Lcom/google/android/maps/B;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/B;)Lcom/google/android/maps/B;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/maps/MapsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->stopPowerConsumers()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/maps/MapsActivity;)LaB/h;
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/android/M;
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->intentProcessor:Lcom/google/googlenav/android/M;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/maps/MapsActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/maps/MapsActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/maps/MapsActivity;)LY/d;
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/maps/MapsActivity;LY/d;)LY/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/maps/MapsActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/av;
    .registers 2
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->onCreateInternal(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/maps/MapsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->onResumeInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/maps/MapsActivity;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/maps/MapsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->onNewFeaturesContentHintClick()V

    return-void
.end method

.method private createTabletDialog()V
    .registers 4

    .prologue
    .line 979
    new-instance v0, Lcom/google/googlenav/ui/view/android/bZ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bZ;-><init>(Lcom/google/googlenav/android/BaseMapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    .line 980
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->show()V

    .line 983
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V

    .line 984
    return-void
.end method

.method private determineEntryPointType()Lcom/google/android/maps/A;
    .registers 5

    .prologue
    .line 670
    sget-object v0, Lcom/google/android/maps/A;->a:Lcom/google/android/maps/A;

    .line 672
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 673
    if-eqz v1, :cond_17

    sget-object v2, Lcom/google/googlenav/android/M;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 674
    sget-object v0, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    .line 679
    :cond_16
    :goto_16
    return-object v0

    .line 675
    :cond_17
    if-eqz v1, :cond_16

    sget-object v2, Lcom/google/googlenav/android/M;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 676
    sget-object v0, Lcom/google/android/maps/A;->c:Lcom/google/android/maps/A;

    goto :goto_16
.end method

.method private getController()Lcom/google/googlenav/ui/v;
    .registers 2

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    return-object v0
.end method

.method private getGmmApplication()Lcom/google/googlenav/android/AndroidGmmApplication;
    .registers 2

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    return-object v0
.end method

.method public static getInputFocusForTesting()I
    .registers 1

    .prologue
    .line 2272
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 2273
    sget v0, Lcom/google/android/maps/MapsActivity;->inputFocusStateForTesting:I

    return v0
.end method

.method private getMapController()Lat/u;
    .registers 2

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->h()Lat/u;

    move-result-object v0

    return-object v0
.end method

.method public static getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;
    .registers 2
    .parameter

    .prologue
    .line 1665
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 1666
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    .line 1668
    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method private initTransitNavigation()V
    .registers 5

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    .line 962
    new-instance v1, Lcom/google/android/maps/rideabout/view/a;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/rideabout/view/a;-><init>(Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    invoke-static {v1}, Lcom/google/googlenav/ui/view/H;->a(Lcom/google/googlenav/ui/view/H;)V

    .line 964
    new-instance v1, Lcom/google/android/maps/rideabout/app/q;

    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/rideabout/app/q;-><init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/ui/wizard/ju;)V

    invoke-static {v1}, Lay/a;->a(Lay/a;)V

    .line 965
    return-void
.end method

.method private isIntentAvailable(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 2245
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2246
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2247
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private onCreateInternal(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 792
    const-string v0, "MapsActivity.onCreateInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 793
    invoke-static {p0}, Lcom/google/googlenav/android/J;->a(Landroid/app/Activity;)V

    .line 799
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->c()V

    .line 802
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setDefaultKeyMode(I)V

    .line 804
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->initMapUi()V

    .line 808
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->determineEntryPointType()Lcom/google/android/maps/A;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/v;->a(Lcom/google/android/maps/A;)V

    .line 810
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    new-instance v3, Lcom/google/googlenav/android/D;

    invoke-direct {v3}, Lcom/google/googlenav/android/D;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/android/A;->a(Lcom/google/googlenav/android/C;)V

    .line 811
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->c()V

    .line 815
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/android/A;->a(Lcom/google/googlenav/android/B;)V

    .line 817
    new-instance v0, Lcom/google/googlenav/android/ab;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/ab;-><init>(Lcom/google/googlenav/android/ae;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->voiceRecognizer:Lcom/google/googlenav/android/ab;

    .line 818
    new-instance v0, Lcom/google/googlenav/android/M;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getMapController()Lat/u;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/google/googlenav/android/M;-><init>(Lcom/google/googlenav/android/P;Lcom/google/googlenav/ui/v;Lat/u;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->intentProcessor:Lcom/google/googlenav/android/M;

    .line 822
    if-nez p1, :cond_65

    .line 825
    new-instance v0, Lcom/google/android/maps/w;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/w;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    .line 840
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->z()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 841
    sget-object v3, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v3, v0, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    .line 847
    :cond_65
    :goto_65
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v3, Lcom/google/android/maps/x;

    invoke-direct {v3, p0}, Lcom/google/android/maps/x;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-static {v0, v3}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 859
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 861
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 863
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_84
    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z

    .line 866
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z

    if-nez v0, :cond_97

    .line 867
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x334

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 874
    :cond_97
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/y;

    invoke-direct {v1, p0}, Lcom/google/android/maps/y;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 881
    const-string v0, "MapsActivity.onCreateInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 882
    return-void

    .line 844
    :cond_a7
    sget-object v3, Lcom/google/googlenav/z;->d:Lcom/google/googlenav/z;

    invoke-static {v3, v0}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    goto :goto_65

    :cond_ad
    move v0, v2

    .line 863
    goto :goto_84
.end method

.method private onNewFeaturesContentHintClick()V
    .registers 6

    .prologue
    .line 1264
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1265
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->m()V

    .line 1273
    :cond_11
    :goto_11
    const/4 v0, 0x6

    const-string v1, "ch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1277
    return-void

    .line 1266
    :cond_24
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1267
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->openOptionsMenu()V

    goto :goto_11

    .line 1268
    :cond_36
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1269
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->b()Landroid/view/View;

    move-result-object v0

    .line 1270
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lag/h;->a(Landroid/content/Context;Landroid/view/View;Lag/g;)V

    goto :goto_11
.end method

.method private onResumeInternal()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1116
    const-string v0, "MapsActivity.onResumeInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aD()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1119
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aE()Z

    .line 1120
    invoke-static {}, Las/j;->a()Las/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/j;->a(Landroid/content/Context;)V

    .line 1124
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->j()Lcom/google/googlenav/ui/android/L;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/L;->a(Landroid/view/View;)V

    .line 1130
    :cond_38
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 1131
    iget-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->h(Z)V

    .line 1133
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v1, :cond_4f

    .line 1134
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->requestFocus()Z

    .line 1135
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->d()V

    .line 1138
    :cond_4f
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->resumeTransitNavigationView()V

    .line 1141
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->setUpForEntryPoint()V

    .line 1145
    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->u()V

    .line 1148
    const-string v1, "settings_preference"

    invoke-virtual {p0, v1, v5}, Lcom/google/android/maps/MapsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1152
    :try_start_5e
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1155
    const-string v3, "lastRunVersionCode"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v3, v4, :cond_8e

    .line 1157
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v3

    const/16 v4, 0x61b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 1161
    sget-object v3, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v4, Lcom/google/android/maps/b;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/maps/b;-><init>(Lcom/google/android/maps/MapsActivity;Landroid/content/pm/PackageInfo;Lcom/google/googlenav/ui/v;Landroid/content/SharedPreferences;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_8e} :catch_d6

    .line 1220
    :cond_8e
    :goto_8e
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1222
    :cond_ae
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->queueStarSync()V

    .line 1231
    :cond_b1
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    if-nez v0, :cond_c9

    .line 1232
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/e;

    sget-object v2, Lcom/google/googlenav/y;->a:Lcom/google/googlenav/y;

    invoke-direct {v1, p0, v5, v6, v2}, Lcom/google/android/maps/e;-><init>(Lcom/google/android/maps/MapsActivity;ZZLcom/google/googlenav/y;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 1251
    iput-boolean v6, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    .line 1256
    :cond_c3
    :goto_c3
    const-string v0, "MapsActivity.onResumeInternal"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1257
    return-void

    .line 1252
    :cond_c9
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    if-eqz v0, :cond_c3

    .line 1253
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    goto :goto_c3

    .line 1216
    :catch_d6
    move-exception v0

    goto :goto_8e
.end method

.method private pauseTransitNavigationView()V
    .registers 2

    .prologue
    .line 968
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->d()V

    .line 969
    return-void
.end method

.method private queueStarSync()V
    .registers 5

    .prologue
    .line 2440
    .line 2442
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/q;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/maps/q;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    .line 2449
    return-void
.end method

.method private resumeTransitNavigationView()V
    .registers 2

    .prologue
    .line 972
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->c()V

    .line 973
    return-void
.end method

.method public static setInputFocusForTesting(I)V
    .registers 1
    .parameter

    .prologue
    .line 2269
    return-void
.end method

.method private setLastMenuForTest(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 1643
    return-void
.end method

.method private setMinimumHeapSize(J)V
    .registers 9
    .parameter

    .prologue
    .line 2408
    :try_start_0
    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2409
    const-string v1, "getRuntime"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2410
    const-string v2, "setMinimumHeapSize"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2411
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2412
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    .line 2416
    :goto_32
    return-void

    .line 2413
    :catch_33
    move-exception v0

    .line 2414
    const-string v1, "setMinimumHeapSize reflection failed"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method private setUpForEntryPoint()V
    .registers 13

    .prologue
    const/16 v11, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1284
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v3

    .line 1285
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->determineEntryPointType()Lcom/google/android/maps/A;

    move-result-object v4

    .line 1287
    sget-object v0, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    if-ne v4, v0, :cond_69

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    .line 1290
    :goto_1f
    iget-boolean v5, p0, Lcom/google/android/maps/MapsActivity;->shouldSetupEntryPointOnResume:Z

    if-eqz v5, :cond_41

    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/v;->L()J

    move-result-wide v7

    const-wide/32 v9, 0xdbba0

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_6b

    .line 1293
    :cond_41
    if-eqz v0, :cond_68

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_68

    .line 1294
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 1295
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v1, v11}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1351
    :cond_68
    :goto_68
    return-void

    :cond_69
    move v0, v2

    .line 1287
    goto :goto_1f

    .line 1301
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1302
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 1303
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1306
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    const/high16 v5, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_68

    .line 1310
    :cond_84
    iput-object v4, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    .line 1312
    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    sget-object v5, Lcom/google/android/maps/A;->a:Lcom/google/android/maps/A;

    if-ne v4, v5, :cond_9a

    .line 1315
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1316
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->l()I

    goto :goto_68

    .line 1322
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->resetForInvocation()V

    .line 1324
    sget-object v3, Lcom/google/android/maps/s;->a:[I

    iget-object v4, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    invoke-virtual {v4}, Lcom/google/android/maps/A;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_112

    goto :goto_68

    .line 1326
    :pswitch_ab
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1327
    const-string v0, ""

    .line 1328
    if-eqz v3, :cond_c8

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    :cond_c8
    const/16 v3, 0x57

    const-string v4, "o"

    invoke-static {v3, v4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/ap;->a(Z)V

    .line 1334
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_f4

    .line 1337
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v2, v11}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1340
    :cond_f4
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(I)V

    goto/16 :goto_68

    .line 1344
    :pswitch_fd
    const/16 v0, 0x3d

    const-string v1, "li"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 1346
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->startFriendsListView(LaM/am;)V

    goto/16 :goto_68

    .line 1324
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_fd
    .end packed-switch
.end method

.method private setupMapViewMenuController()V
    .registers 3

    .prologue
    .line 658
    new-instance v0, Lcom/google/googlenav/ui/av;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/av;-><init>(Lcom/google/android/maps/MapsActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    .line 659
    new-instance v0, LaM/av;

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LaM/av;-><init>(Lcom/google/googlenav/ui/v;Lcom/google/android/maps/MapsActivity;)V

    .line 663
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/av;->a(Lcom/google/googlenav/ui/ax;)V

    .line 664
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/av;)V

    .line 665
    return-void
.end method

.method private stopPowerConsumers()V
    .registers 2

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 773
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->Y()V

    .line 777
    :cond_d
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;

    if-eqz v0, :cond_16

    .line 778
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;

    invoke-virtual {v0}, LaB/h;->g()V

    .line 782
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_1f

    .line 783
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->f()V

    .line 785
    :cond_1f
    return-void
.end method


# virtual methods
.method public activateAreaSelector(Lcom/google/googlenav/ui/android/B;Lcom/google/googlenav/ui/android/A;Lcom/google/googlenav/ui/android/x;)Lcom/google/googlenav/ui/android/r;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1707
    new-instance v0, Lcom/google/googlenav/ui/android/r;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/r;-><init>(Lcom/google/android/maps/MapsActivity;)V

    .line 1708
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/B;Lcom/google/googlenav/ui/android/A;Lcom/google/googlenav/ui/android/x;)V

    .line 1709
    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2524
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/googlenav/android/BaseMapsActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2528
    return-void
.end method

.method public getActivity()Lcom/google/android/maps/MapsActivity;
    .registers 1

    .prologue
    .line 1803
    return-object p0
.end method

.method public getBaseAndroidView()Lcom/google/googlenav/ui/android/BaseAndroidView;
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public getBottomBar()Landroid/view/View;
    .registers 3

    .prologue
    .line 1685
    const v0, 0x7f1002e6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1687
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/ViewStub;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_16

    .line 1688
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1692
    :goto_15
    return-object v0

    .line 1690
    :cond_16
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_15
.end method

.method public getButtonContainer()Lcom/google/googlenav/ui/android/ButtonContainer;
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    return-object v0
.end method

.method public getCurrentViewportDetails()Landroid/os/Bundle;
    .registers 6

    .prologue
    .line 2184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2185
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getMapController()Lat/u;

    move-result-object v1

    .line 2186
    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v2

    .line 2187
    const-string v3, "centerLatitude"

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2188
    const-string v3, "centerLongitude"

    invoke-virtual {v2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2189
    const-string v2, "latitudeSpan"

    invoke-virtual {v1}, Lat/u;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2190
    const-string v2, "longitudeSpan"

    invoke-virtual {v1}, Lat/u;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2192
    const-string v2, "zoomLevel"

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2194
    return-object v0
.end method

.method public getMapViewMenuController()Lcom/google/googlenav/ui/av;
    .registers 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    return-object v0
.end method

.method public getNfcUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2453
    const/4 v0, 0x0

    .line 2454
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    .line 2455
    if-eqz v1, :cond_14

    .line 2456
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/C;->x()Ljava/lang/String;

    move-result-object v0

    .line 2464
    :cond_13
    :goto_13
    return-object v0

    .line 2458
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    invoke-virtual {v1}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 2460
    if-eqz v1, :cond_13

    .line 2461
    invoke-virtual {v1}, LaM/i;->bc()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public getPostalAddress(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2425
    const/4 v0, 0x0

    .line 2426
    invoke-static {}, Lcom/google/googlenav/friend/android/e;->a()Lcom/google/googlenav/friend/android/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/googlenav/friend/android/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 2428
    if-eqz v1, :cond_22

    .line 2429
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2430
    const-string v0, "contacts_accessor_formatted_address"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2433
    :cond_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2436
    :cond_22
    return-object v0
.end method

.method public getState()Lcom/google/googlenav/android/i;
    .registers 2

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getGmmApplication()Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    return-object v0
.end method

.method public getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;
    .registers 2

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    return-object v0
.end method

.method public getUiThreadHandler()Lcom/google/googlenav/android/Y;
    .registers 2

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->k()Lcom/google/googlenav/android/Y;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-object v0
.end method

.method public hasDataConnection()Z
    .registers 2

    .prologue
    .line 2515
    iget-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->hasDataConnection:Z

    return v0
.end method

.method public initClickableView(Lcom/google/googlenav/ui/v;)V
    .registers 6
    .parameter

    .prologue
    .line 987
    const-string v0, "MapsActivity.initClickableView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 992
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 998
    :goto_1d
    if-nez v0, :cond_3e

    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bubble not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_27
    const v0, 0x7f1002e4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 995
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 996
    const v1, 0x7f100051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1d

    .line 1001
    :cond_3e
    new-instance v1, Lcom/google/googlenav/ui/view/e;

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    iget-object v3, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlenav/ui/view/e;-><init>(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    invoke-static {v1}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/view/e;)V

    .line 1002
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-static {v0, v1}, LaM/h;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/android/BaseAndroidView;)V

    .line 1003
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/v;)V

    .line 1004
    const-string v0, "MapsActivity.initClickableView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method public initMapUi()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 888
    const-string v0, "MapsActivity.initMapUi"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 892
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 896
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/aj;->a(Lcom/google/googlenav/android/BaseMapsActivity;)V

    .line 897
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/V;->a(Lcom/google/googlenav/android/BaseMapsActivity;)V

    .line 898
    invoke-static {p0}, Lcom/google/googlenav/mylocationnotifier/a;->a(Lcom/google/android/maps/MapsActivity;)V

    .line 900
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 901
    const-string v0, "Activity.setContentView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 902
    const v0, 0x7f040100

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    .line 903
    const-string v0, "Activity.setContentView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 904
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 908
    const v0, 0x7f1002e0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 909
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 910
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 923
    :cond_56
    :goto_56
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ButtonContainer;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    .line 924
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(Landroid/app/Application;)V

    .line 927
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 928
    const v0, 0x7f1002e2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 932
    :goto_7d
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/BaseAndroidView;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    .line 933
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/BaseAndroidView;->a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/ButtonContainer;)V

    .line 935
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->orientationProvider:LaB/h;

    .line 937
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->a(Lcom/google/googlenav/ui/android/D;)V

    .line 944
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->initClickableView(Lcom/google/googlenav/ui/v;)V

    .line 945
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->initTransitNavigation()V

    .line 948
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 949
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->createTabletDialog()V

    .line 952
    :cond_b2
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    .line 953
    const-string v0, "MapsActivity.initMapUi"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 954
    return-void

    .line 911
    :cond_bd
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 914
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/v;)V

    goto :goto_56

    .line 918
    :cond_d3
    const-string v0, "Activity.setContentView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 919
    const v0, 0x7f040101

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setContentView(I)V

    .line 920
    const-string v0, "Activity.setContentView"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    goto/16 :goto_56

    .line 930
    :cond_e5
    const v0, 0x7f1002e1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_7d
.end method

.method public lockScreenOrientation()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 2473
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2474
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 2475
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x6

    :goto_15
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    .line 2485
    :cond_18
    :goto_18
    return-void

    .line 2475
    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    .line 2479
    :cond_1b
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_18

    .line 2480
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x7

    :cond_26
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    goto :goto_18
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2140
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/android/Q;->a(IILandroid/content/Intent;)V

    .line 2141
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/android/BaseMapsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2142
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 1556
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1561
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/am;->a(Landroid/content/res/Configuration;)V

    .line 1567
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->onConfigurationChangedInternal()V

    .line 1568
    return-void
.end method

.method public onConfigurationChangedInternal()V
    .registers 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_33

    .line 1524
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->e()V

    .line 1526
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1527
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ab()Lcom/google/googlenav/mylocationnotifier/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/k;->f()V

    .line 1533
    :cond_22
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1534
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getTabletDialog()Lcom/google/googlenav/ui/view/android/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->invalidateOptionsMenu()V

    .line 1540
    :cond_33
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 1541
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    invoke-virtual {v0}, Lag/h;->e()V

    .line 1544
    :cond_40
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->l()V

    .line 1546
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    if-eqz v0, :cond_50

    .line 1550
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->buttonContainer:Lcom/google/googlenav/ui/android/ButtonContainer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    .line 1552
    :cond_50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x16

    const/4 v3, 0x1

    .line 502
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 510
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 514
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 521
    :cond_37
    sget-object v0, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 542
    const-wide/32 v0, 0x600000

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->setMinimumHeapSize(J)V

    .line 546
    invoke-static {}, Lcom/google/googlenav/android/c;->b()Z

    move-result v0

    if-eqz v0, :cond_115

    sget-object v0, Lcom/google/android/maps/B;->d:Lcom/google/android/maps/B;

    :goto_4d
    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    .line 550
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->determineEntryPointType()Lcom/google/android/maps/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    .line 552
    iput-boolean v3, p0, Lcom/google/android/maps/MapsActivity;->shouldSetupEntryPointOnResume:Z

    .line 557
    new-instance v0, LaA/d;

    invoke-direct {v0}, LaA/d;-><init>()V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/B;->a(Lcom/google/android/maps/driveabout/vector/C;)V

    .line 562
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/app/Application;)Lcom/google/googlenav/android/c;

    .line 565
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_77

    .line 566
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 569
    :cond_77
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 571
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 572
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 573
    if-nez v0, :cond_119

    const/4 v0, 0x0

    .line 577
    :goto_8b
    const-string v1, "UA-25817243-1"

    invoke-static {v1, p0, v0}, LP/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    invoke-static {v3}, LP/a;->a(Z)V

    .line 587
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/i;->a(Lcom/google/android/maps/MapsActivity;Z)V

    .line 589
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->setupMapViewMenuController()V

    .line 596
    new-instance v0, Lcom/google/android/maps/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/u;-><init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    .line 605
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/google/googlenav/android/i;->a(Ljava/util/Locale;Lcom/google/googlenav/android/x;ZZ)V

    .line 611
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->al()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 612
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->l()V

    .line 621
    :cond_c4
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Context;)V

    .line 624
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->latitudeBroadcastReceiver:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->a(Lcom/google/android/maps/MapsActivity;)V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LaS/j;->a(Landroid/content/Context;)V

    .line 634
    new-instance v0, LaT/h;

    const-string v1, "menu open"

    const-string v2, "mo"

    invoke-direct {v0, v1, v2, v4}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsMenuOpen:LaT/h;

    .line 636
    new-instance v0, LaT/h;

    const-string v1, "maps onPause"

    const-string v2, "ap"

    invoke-direct {v0, v1, v2, v4}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPause:LaT/h;

    .line 639
    new-instance v0, LaT/h;

    const-string v1, "maps onPause vm"

    const-string v2, "ap_vm"

    invoke-direct {v0, v1, v2, v4}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPauseVm:LaT/h;

    .line 646
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->m()Z

    move-result v0

    if-nez v0, :cond_10f

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->n()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 651
    invoke-direct {p0, p1}, Lcom/google/android/maps/MapsActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 654
    :cond_10f
    const-string v0, "MapsActivity.onCreate"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 655
    return-void

    .line 546
    :cond_115
    sget-object v0, Lcom/google/android/maps/B;->c:Lcom/google/android/maps/B;

    goto/16 :goto_4d

    .line 573
    :cond_119
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 1577
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1578
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    .line 1580
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    .line 1581
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1582
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gj;->w()Lcom/google/googlenav/actionbar/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/actionbar/a;->a(Lcom/google/googlenav/actionbar/b;)V

    .line 1587
    :cond_39
    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 1468
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onDestroy()V

    .line 1470
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1474
    invoke-static {}, LP/a;->a()V

    .line 1478
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1479
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->N()V

    .line 1482
    :cond_25
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    .line 1483
    if-eqz v0, :cond_2e

    .line 1484
    invoke-virtual {v0}, Lay/a;->y()V

    .line 1489
    :cond_2e
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    if-eqz v0, :cond_3a

    .line 1493
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bZ;->d()V

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->tabletDialog:Lcom/google/googlenav/ui/view/android/bZ;

    .line 1499
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_48

    .line 1500
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->b()V

    .line 1501
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->g()V

    .line 1504
    :cond_48
    invoke-static {p0}, Lcom/google/googlenav/android/J;->b(Landroid/app/Activity;)V

    .line 1507
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->latitudeBroadcastReceiver:Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/android/LatitudeBroadcastReceiver;->b(Lcom/google/android/maps/MapsActivity;)V

    .line 1508
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2150
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v0, :cond_9

    .line 2344
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->h()V

    .line 2346
    :cond_9
    invoke-static {}, Lcom/google/googlenav/common/j;->a()V

    .line 2347
    return-void
.end method

.method public onMainMenuItemsChanged(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 1620
    if-eqz p1, :cond_8

    invoke-virtual {p1}, LaM/i;->aE()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1621
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    .line 1623
    :cond_b
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1627
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 1628
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsMenuOpen:LaT/h;

    invoke-virtual {v1}, LaT/h;->b()V

    .line 1629
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapsActivity;->setLastMenuForTest(Landroid/view/Menu;)V

    .line 1630
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1723
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->intentProcessor:Lcom/google/googlenav/android/M;

    if-nez v0, :cond_7

    .line 1767
    :cond_6
    :goto_6
    return-void

    .line 1731
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/android/i;->a(Lcom/google/android/maps/MapsActivity;Z)V

    .line 1734
    invoke-virtual {p0, p1}, Lcom/google/android/maps/MapsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1738
    iput-boolean v4, p0, Lcom/google/android/maps/MapsActivity;->shouldSetupEntryPointOnResume:Z

    .line 1740
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1741
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 1742
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/high16 v0, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 1752
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1760
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/android/maps/h;

    invoke-direct {v1, p0, v4, v3}, Lcom/google/android/maps/h;-><init>(Lcom/google/android/maps/MapsActivity;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    goto :goto_6
.end method

.method public onOfflineDataUpdate(Laz/l;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2497
    invoke-virtual {p1}, Laz/l;->j()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Laz/l;->b()I

    move-result v0

    if-ne v0, v2, :cond_27

    invoke-virtual {p1}, Laz/l;->k()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Laz/l;->c()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_27

    .line 2500
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/r;

    invoke-direct {v1, p0}, Lcom/google/android/maps/r;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 2508
    :cond_27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 1635
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1636
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapsActivity;->setLastMenuForTest(Landroid/view/Menu;)V

    .line 1637
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1647
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/android/BaseMapsActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1648
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->o(Z)V

    .line 1649
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 1355
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1357
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->b(Laz/m;)V

    .line 1360
    :cond_d
    invoke-static {}, Lcom/google/googlenav/u;->c()V

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/Y;->b()V

    .line 1363
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    .line 1364
    if-eqz v0, :cond_59

    .line 1365
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPauseVm:LaT/h;

    invoke-virtual {v1}, LaT/h;->a()V

    .line 1371
    :goto_26
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 1375
    sget-object v1, Lcom/google/android/maps/B;->g:Lcom/google/android/maps/B;

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    .line 1379
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/MapsActivity;->shouldSetupEntryPointOnResume:Z

    .line 1381
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onPause()V

    .line 1384
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1385
    invoke-static {p0}, Lcom/google/googlenav/android/V;->a(Landroid/app/Activity;)V

    .line 1388
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->m()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/android/i;->n()Z

    move-result v1

    if-nez v1, :cond_65

    .line 1389
    :cond_51
    if-eqz v0, :cond_5f

    .line 1390
    sget-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPauseVm:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    .line 1454
    :goto_58
    return-void

    .line 1367
    :cond_59
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPause:LaT/h;

    invoke-virtual {v1}, LaT/h;->a()V

    goto :goto_26

    .line 1392
    :cond_5f
    sget-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPause:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    goto :goto_58

    .line 1397
    :cond_65
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 1398
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/v;->k(Z)V

    .line 1402
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/android/background/MapWorkerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1403
    const-string v2, "com.google.googlenav.android.background.ON_PAUSE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v2, "is_finishing"

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1405
    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1406
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->S()V

    .line 1411
    :cond_95
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    if-eqz v1, :cond_9e

    .line 1412
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->gmmView:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()V

    .line 1415
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->pauseTransitNavigationView()V

    .line 1419
    new-instance v1, Lcom/google/android/maps/f;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/f;-><init>(Lcom/google/android/maps/MapsActivity;LY/c;)V

    iput-object v1, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    .line 1436
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, LY/d;->a(J)V

    .line 1437
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    invoke-virtual {v1}, LY/d;->g()V

    .line 1439
    if-eqz v0, :cond_c1

    .line 1440
    sget-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPauseVm:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    goto :goto_58

    .line 1442
    :cond_c1
    sget-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsLifecycleOnPause:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    goto :goto_58
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 1593
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1594
    sget-object v0, Lcom/google/android/maps/MapsActivity;->stopwatchStatsMenuOpen:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 1595
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->mapViewMenuController:Lcom/google/googlenav/ui/av;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/av;->a(Landroid/view/Menu;)Z

    move-result v0

    .line 1597
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 1048
    sget-object v0, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 1050
    sget-object v0, Lcom/google/android/maps/B;->e:Lcom/google/android/maps/B;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    .line 1052
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onRestart()V

    .line 1053
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1057
    const-string v0, "MapsActivity.onResume"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 1059
    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 1060
    sget-object v0, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 1063
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    if-nez v0, :cond_1e

    .line 1064
    sget-object v0, Lcom/google/android/maps/A;->a:Lcom/google/android/maps/A;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->entryPointType:Lcom/google/android/maps/A;

    .line 1067
    :cond_1e
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onResume()V

    .line 1069
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1071
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Laz/a;->a(Laz/m;)V

    .line 1074
    :cond_2e
    invoke-static {}, Lcom/google/googlenav/u;->b()V

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/Y;->a()V

    .line 1076
    invoke-static {}, Lag/h;->a()Lag/h;

    move-result-object v0

    invoke-virtual {v0}, Lag/h;->e()V

    .line 1079
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1080
    invoke-static {p0, p0}, Lcom/google/googlenav/android/V;->a(Landroid/app/Activity;Lcom/google/googlenav/android/W;)V

    .line 1085
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->o()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1088
    new-instance v0, Lcom/google/android/maps/z;

    invoke-direct {v0, p0}, Lcom/google/android/maps/z;-><init>(Lcom/google/android/maps/MapsActivity;)V

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0, v4, v4}, Lcom/google/googlenav/android/i;->a(Ljava/util/Locale;Lcom/google/googlenav/android/x;ZZ)V

    .line 1101
    :cond_68
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->d()V

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->m()Z

    move-result v0

    if-nez v0, :cond_86

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getState()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->n()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1105
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->onResumeInternal()V

    .line 1108
    :cond_86
    const-string v0, "MapsActivity.onResume"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 1607
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1608
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->d()Z

    .line 1609
    const/4 v0, 0x1

    .line 1611
    :goto_12
    return v0

    :cond_13
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_12
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 684
    const-string v0, "MapsActivity.onStart"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 685
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStart()V

    .line 688
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 689
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 693
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->dockReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/google/android/maps/MapsActivity;->ENTER_CAR_MODE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 697
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->connReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 701
    :cond_32
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->b()Lcom/google/googlenav/prefetch/android/A;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_47

    .line 704
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lan/h;->a(Lan/y;)V

    .line 707
    :cond_47
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 708
    new-instance v1, Lcom/google/android/maps/v;

    invoke-direct {v1, p0}, Lcom/google/android/maps/v;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 722
    const-string v0, "MapsActivity.onStart"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 727
    invoke-super {p0}, Lcom/google/googlenav/android/BaseMapsActivity;->onStop()V

    .line 728
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 732
    invoke-static {}, LP/a;->b()V

    .line 739
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 742
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->dockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 744
    invoke-static {}, Lcom/google/googlenav/K;->L()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 746
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->connReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 750
    :cond_21
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->b()Lcom/google/googlenav/prefetch/android/A;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_36

    .line 753
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lan/h;->b(Lan/y;)V

    .line 756
    :cond_36
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->stopPowerConsumers()V

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/MapsActivity;->arePowerConsumersRunning:Z

    .line 758
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    if-eqz v0, :cond_48

    .line 759
    iget-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->stopPowerConsumersTask:LY/d;

    .line 762
    :cond_48
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2254
    invoke-super {p0, p1}, Lcom/google/googlenav/android/BaseMapsActivity;->onWindowFocusChanged(Z)V

    .line 2255
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v2

    if-nez p1, :cond_14

    move v0, v1

    :goto_b
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/v;->o(Z)V

    .line 2256
    if-eqz p1, :cond_13

    .line 2257
    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->setInputFocusForTesting(I)V

    .line 2259
    :cond_13
    return-void

    .line 2255
    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public processIntentAndStartSession()I
    .registers 4

    .prologue
    .line 1018
    const/4 v0, 0x0

    .line 1020
    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->intentProcessor:Lcom/google/googlenav/android/M;

    invoke-virtual {v1}, Lcom/google/googlenav/android/M;->a()I

    move-result v1

    .line 1031
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    const/4 v2, -0x2

    if-eq v1, v2, :cond_e

    move v0, v1

    .line 1040
    :cond_e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/K;->a(I)V

    .line 1042
    return v1
.end method

.method public refreshFriends()V
    .registers 5

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 1938
    if-eqz v0, :cond_15

    .line 1939
    const/16 v1, 0x158

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/X;->a(IILjava/lang/Object;)Z

    .line 1943
    :cond_15
    return-void
.end method

.method public refreshFriendsSettings()V
    .registers 4

    .prologue
    .line 1948
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/k;

    invoke-direct {v2, p0}, Lcom/google/android/maps/k;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 1986
    return-void
.end method

.method public resetForInvocation()V
    .registers 2

    .prologue
    .line 1771
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->as()V

    .line 1772
    return-void
.end method

.method public resolveType(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveQueryToHistory(Ljava/lang/String;Ljava/lang/String;Lat/B;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1785
    invoke-static {p0, p1, p2, p3}, Lcom/google/googlenav/provider/SearchHistoryProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lat/B;)V

    .line 1786
    return-void
.end method

.method public screenDrawn()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 2282
    iget-wide v0, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_29

    .line 2283
    sget-object v0, Lcom/google/android/maps/MapsActivity;->startupClock:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 2284
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->w()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2285
    sget-object v1, Lcom/google/android/maps/s;->b:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    invoke-virtual {v2}, Lcom/google/android/maps/B;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    .line 2337
    :cond_29
    :goto_29
    sget-object v0, Lcom/google/android/maps/B;->a:Lcom/google/android/maps/B;

    iput-object v0, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    .line 2338
    iput-wide v4, p0, Lcom/google/android/maps/MapsActivity;->startupStartTime:J

    .line 2339
    return-void

    .line 2287
    :pswitch_30
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupRemoteStringsVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2290
    :pswitch_36
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupColdVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2293
    :pswitch_3c
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBackVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2296
    :pswitch_42
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupHotVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2299
    :pswitch_48
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupScreenOnVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2302
    :pswitch_4e
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBriefPauseVm:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2306
    :cond_54
    sget-object v1, Lcom/google/android/maps/s;->b:[I

    iget-object v2, p0, Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;

    invoke-virtual {v2}, Lcom/google/android/maps/B;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    goto :goto_29

    .line 2308
    :pswitch_62
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupRemoteStrings:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2311
    :pswitch_68
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupCold:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2314
    :pswitch_6e
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBack:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2317
    :pswitch_74
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupHot:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2320
    :pswitch_7a
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupScreenOn:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2323
    :pswitch_80
    sget-object v1, Lcom/google/android/maps/MapsActivity;->stopwatchStatsStartupAfterBriefPause:LaT/h;

    invoke-virtual {v1, v0}, LaT/h;->a(I)V

    goto :goto_29

    .line 2285
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
    .end packed-switch

    .line 2306
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_74
        :pswitch_7a
        :pswitch_80
    .end packed-switch
.end method

.method public searchFor(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 2202
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 2206
    return-void
.end method

.method public showBubbleForRecentPlace(Ljava/lang/String;)Lcom/google/googlenav/ag;
    .registers 3
    .parameter

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->d(Ljava/lang/String;)Lcom/google/googlenav/ag;

    move-result-object v0

    return-object v0
.end method

.method public showFriend(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 2210
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 2211
    if-eqz v0, :cond_13

    .line 2214
    invoke-virtual {v0, p1}, LaM/X;->b(Ljava/lang/String;)V

    .line 2219
    const/4 v0, 0x1

    .line 2221
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public showStarDetails(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2086
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->k(Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method public showStarOnMap(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->j(Ljava/lang/String;)V

    .line 2082
    return-void
.end method

.method public startBusinessDetailsLayer(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 2054
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;I)V

    .line 2056
    return-void
.end method

.method public startBusinessDetailsLayer(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2048
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;ZI)V

    .line 2050
    return-void
.end method

.method public startBusinessRatings(Lcom/google/googlenav/ai;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2062
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aC;->a(Lcom/google/googlenav/ai;)V

    .line 2064
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;ILjava/lang/String;)V

    .line 2066
    return-void
.end method

.method public startBusinessRatings(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2070
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2072
    return-void
.end method

.method public startCheckinWizardFromIntent(Lcom/google/googlenav/h;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2035
    .line 2037
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    .line 2044
    return-void
.end method

.method public startFriendsLayer(LaM/am;)V
    .registers 4
    .parameter

    .prologue
    .line 1835
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Z)V

    .line 1836
    return-void
.end method

.method public startFriendsLayerHistorySummary()V
    .registers 3

    .prologue
    .line 1844
    const/4 v0, 0x1

    .line 1845
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/friend/ae;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 1846
    return-void
.end method

.method public startFriendsListView(LaM/am;)V
    .registers 4
    .parameter

    .prologue
    .line 1991
    const/16 v0, 0x13c

    invoke-virtual {p1, v0}, LaM/am;->e(I)V

    .line 1992
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Z)V

    .line 1993
    return-void
.end method

.method public startFriendsLocation(LaM/am;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1997
    const/16 v0, 0x14b

    invoke-virtual {p1, v0, p2}, LaM/am;->a(ILjava/lang/Object;)V

    .line 1998
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Z)V

    .line 1999
    return-void
.end method

.method public startFriendsLocationChooser(LaM/am;Ljava/lang/Class;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xc9

    const/4 v6, 0x1

    .line 1853
    invoke-static {}, Lcom/google/googlenav/friend/af;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1854
    invoke-static {}, Lcom/google/googlenav/ui/wizard/dp;->f()I

    move-result v1

    .line 1856
    and-int/lit8 v1, v1, -0x3

    .line 1858
    new-instance v2, Lcom/google/android/maps/i;

    invoke-direct {v2, p0}, Lcom/google/android/maps/i;-><init>(Lcom/google/android/maps/MapsActivity;)V

    .line 1870
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v3

    .line 1871
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->s()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1872
    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->m()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 1875
    :cond_27
    new-instance v4, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v4}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    invoke-static {v7}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/dO;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    const/16 v4, 0x510

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    const/16 v4, 0x61e

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/wizard/dO;->c(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/j;

    invoke-direct {v1, p0, v2, p2}, Lcom/google/android/maps/j;-><init>(Lcom/google/android/maps/MapsActivity;Lcom/google/googlenav/friend/aS;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 1926
    return-void
.end method

.method public startFriendsProfile(LaM/am;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2003
    const/16 v0, 0x14a

    invoke-virtual {p1, v0, p2}, LaM/am;->a(ILjava/lang/Object;)V

    .line 2004
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Z)V

    .line 2005
    return-void
.end method

.method public startLatitudeSettingsActivity()V
    .registers 4

    .prologue
    .line 2118
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/o;

    invoke-direct {v2, p0}, Lcom/google/android/maps/o;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 2136
    return-void
.end method

.method public startLocationHistoryOptIn(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 2009
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_activity_on_complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2011
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/maps/m;

    invoke-direct {v3, p0, v0}, Lcom/google/android/maps/m;-><init>(Lcom/google/android/maps/MapsActivity;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 2030
    return-void
.end method

.method public startManageAutoCheckinPlaces()V
    .registers 3

    .prologue
    .line 1931
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/el;)V

    .line 1932
    return-void
.end method

.method public startMyPlacesList(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1813
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->g(Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2363
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2364
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2366
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2367
    const/high16 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2372
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 2373
    if-nez v1, :cond_36

    :goto_34
    move-object v1, v0

    .line 2378
    goto :goto_18

    .line 2375
    :cond_36
    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v5, v0, :cond_50

    .line 2382
    :goto_3c
    if-eqz v2, :cond_4e

    .line 2383
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2384
    invoke-virtual {p0, v3}, Lcom/google/android/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2385
    const/4 v0, 0x1

    .line 2387
    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d

    :cond_50
    move-object v0, v1

    goto :goto_34

    :cond_52
    move-object v2, v1

    goto :goto_3c
.end method

.method public startOffersList()V
    .registers 4

    .prologue
    .line 1819
    sget-object v0, Lag/b;->k:Lag/c;

    sget v1, Lag/c;->a:I

    invoke-virtual {v0, v1}, Lag/c;->a(I)V

    .line 1823
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->az()Lcom/google/googlenav/offers/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "i"

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/offers/a;->a(ZLjava/lang/String;)V

    .line 1825
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aA()Lab/a;

    move-result-object v0

    invoke-virtual {v0}, Lab/a;->a()V

    .line 2160
    invoke-virtual {p0}, Lcom/google/android/maps/MapsActivity;->getCurrentViewportDetails()Landroid/os/Bundle;

    move-result-object v0

    .line 2161
    if-eqz p3, :cond_14

    .line 2162
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2166
    :cond_14
    const-string v1, "searchIncludeInHistory"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2170
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2171
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/actionbar/a;->a(Ljava/lang/String;)V

    .line 2178
    :goto_2f
    return-void

    .line 2173
    :cond_30
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ag()Lcom/google/googlenav/ui/wizard/C;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->o()LaM/i;

    move-result-object v2

    invoke-static {v1, v2}, LaI/n;->a(Lcom/google/googlenav/ui/wizard/C;LaM/i;)I

    move-result v1

    .line 2175
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v2

    invoke-virtual {v2, v1}, LaI/o;->e(I)V

    .line 2176
    invoke-super {p0, p1, p2, v0, p4}, Lcom/google/googlenav/android/BaseMapsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_2f
.end method

.method public startSettingsActivity()V
    .registers 4

    .prologue
    .line 2096
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/google/googlenav/settings/SettingsPreferenceActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/n;

    invoke-direct {v2, p0}, Lcom/google/android/maps/n;-><init>(Lcom/google/android/maps/MapsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 2114
    return-void
.end method

.method public startTransitEntry()V
    .registers 2

    .prologue
    .line 1829
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ax()V

    .line 1830
    return-void
.end method

.method public startTransitNavigationLayer()V
    .registers 2

    .prologue
    .line 1808
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->G()V

    .line 1809
    return-void
.end method

.method public startTransitStationPage(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 2076
    invoke-direct {p0}, Lcom/google/android/maps/MapsActivity;->getController()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/v;->f(Ljava/lang/String;)V

    .line 2077
    return-void
.end method

.method public startVoiceRecognition(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 2226
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p0, v0}, Lcom/google/android/maps/MapsActivity;->isIntentAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2227
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapsActivity;->voiceRecognizer:Lcom/google/googlenav/android/ab;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 2229
    :cond_11
    return-void
.end method

.method public unlockScreenOrientation()V
    .registers 2

    .prologue
    .line 2491
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapsActivity;->setRequestedOrientation(I)V

    .line 2492
    return-void
.end method
