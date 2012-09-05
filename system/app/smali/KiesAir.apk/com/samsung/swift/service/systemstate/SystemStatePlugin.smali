.class public Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
.super Ljava/lang/Object;
.source "SystemStatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;,
        Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = null

.field private static _isDualSim:Ljava/lang/Boolean; = null

.field private static _mobileNetworks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static _telephonyService2:Ljava/lang/String; = null

.field private static final allPortlets:Ljava/lang/String; = "allPortlets"

.field private static final bookmarksPortlet:Ljava/lang/String; = "bookmarksPortlet"

.field private static final calendarPortlet:Ljava/lang/String; = "calendarPortlet"

.field private static final callPortlet:Ljava/lang/String; = "callsPortlet"

.field private static final contactsPortlet:Ljava/lang/String; = "contactsPortlet"

.field private static final deviceName:Ljava/lang/String; = "devicenamepref"

.field private static final explorerPortlet:Ljava/lang/String; = "explorerPortlet"

.field private static final externalStoragePath:Ljava/lang/String; = "/sdcard/sd"

.field private static final internalStoragePath:Ljava/lang/String; = "/sdcard"

#the value of this static final field might be set in the static constructor
.field private static final logSignal:Z = false

.field private static final messagesPortlet:Ljava/lang/String; = "messagesPortlet"

.field private static final musicPortlet:Ljava/lang/String; = "musicPortlet"

.field private static final photosPortlet:Ljava/lang/String; = "photosPortlet"

.field private static final ringtonesPortlet:Ljava/lang/String; = "ringtonesPortlet"

.field private static s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin; = null

.field private static final videosPortlet:Ljava/lang/String; = "videosPortlet"


# instance fields
.field private _batteryLevel:I

.field private _charging:Z

.field private _signalStrength:F

.field private final batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 140
    const-class v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    .line 141
    sput-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 142
    sget-object v0, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    const-string v1, "SYSTEMSTATE_VERBOSE_SIGNAL"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->logSignal:Z

    .line 143
    sput-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    .line 144
    sput-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_telephonyService2:Ljava/lang/String;

    .line 145
    sput-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_batteryLevel:I

    .line 157
    iput-boolean v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_charging:Z

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_signalStrength:F

    .line 179
    new-instance v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$1;-><init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)V

    iput-object v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "SystemStatePlugin constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/SwiftService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;

    invoke-direct {v1, p0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$2;-><init>(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setBatteryLevel(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setCharging(Z)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->logSignal:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 121
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->setSignalStrength(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;)Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/swift/service/systemstate/SystemStatePlugin;Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;)Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    return-object p1
.end method

.method private static accessNetworkStrength()F
    .registers 1

    .prologue
    .line 394
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->signalStrength()F

    move-result v0

    return v0
.end method

.method private declared-synchronized batteryLevel()F
    .registers 2

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_batteryLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6

    int-to-float v0, v0

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized charging()Z
    .registers 2

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_charging:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 174
    const-class v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 175
    monitor-exit v0

    return-void

    .line 174
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getAndroidVersion()I
    .registers 1

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getAvailableBlocks(Z)J
    .registers 5
    .parameter "external"

    .prologue
    .line 443
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 446
    if-eqz p0, :cond_12

    .line 447
    :try_start_5
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard/sd"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_1a

    .line 458
    .local v1, statfs:Landroid/os/StatFs;
    :goto_c
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    .end local v1           #statfs:Landroid/os/StatFs;
    :goto_11
    return-wide v2

    .line 450
    :cond_12
    :try_start_12
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    .restart local v1       #statfs:Landroid/os/StatFs;
    goto :goto_c

    .line 453
    .end local v1           #statfs:Landroid/os/StatFs;
    :catch_1a
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, 0x0

    goto :goto_11
.end method

.method public static getAvailableBlocksPath(Ljava/lang/String;)J
    .registers 5
    .parameter "path"

    .prologue
    .line 463
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 466
    :try_start_3
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_e

    .line 473
    .local v1, statfs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .end local v1           #statfs:Landroid/os/StatFs;
    :goto_d
    return-wide v2

    .line 468
    :catch_e
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method private static getBatStatus()F
    .registers 1

    .prologue
    .line 382
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->batteryLevel()F

    move-result v0

    return v0
.end method

.method private static getBlockSize(Z)J
    .registers 5
    .parameter "external"

    .prologue
    .line 493
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 497
    if-eqz p0, :cond_12

    .line 498
    :try_start_5
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard/sd"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_1a

    .line 509
    .local v1, statfs:Landroid/os/StatFs;
    :goto_c
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .end local v1           #statfs:Landroid/os/StatFs;
    :goto_11
    return-wide v2

    .line 501
    :cond_12
    :try_start_12
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    .restart local v1       #statfs:Landroid/os/StatFs;
    goto :goto_c

    .line 504
    .end local v1           #statfs:Landroid/os/StatFs;
    :catch_1a
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, 0x0

    goto :goto_11
.end method

.method public static getBlockSizePath(Ljava/lang/String;)J
    .registers 5
    .parameter "path"

    .prologue
    .line 478
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 482
    :try_start_3
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_e

    .line 488
    .local v1, statfs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .end local v1           #statfs:Landroid/os/StatFs;
    :goto_d
    return-wide v2

    .line 484
    :catch_e
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method private static getContentLockList()Lcom/samsung/swift/util/StringArrayList;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 598
    new-instance v0, Lcom/samsung/swift/util/StringArrayList;

    invoke-direct {v0}, Lcom/samsung/swift/util/StringArrayList;-><init>()V

    .line 600
    .local v0, contentLockList:Lcom/samsung/swift/util/StringArrayList;
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "allPortlets"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 602
    const-string v1, "musicPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 603
    const-string v1, "ringtonesPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 604
    const-string v1, "photosPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 605
    const-string v1, "videosPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 606
    const-string v1, "contactsPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 607
    const-string v1, "messagesPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 608
    const-string v1, "callsPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 609
    const-string v1, "bookmarksPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 610
    const-string v1, "explorerPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 611
    const-string v1, "calendarPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 666
    :cond_44
    :goto_44
    return-object v0

    .line 615
    :cond_45
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "musicPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 617
    const-string v1, "musicPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 620
    :cond_56
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ringtonesPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 622
    const-string v1, "ringtonesPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 625
    :cond_67
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "photosPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 627
    const-string v1, "photosPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 630
    :cond_78
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "videosPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 632
    const-string v1, "videosPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 635
    :cond_89
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "contactsPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 637
    const-string v1, "contactsPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 640
    :cond_9a
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "messagesPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 642
    const-string v1, "messagesPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 645
    :cond_ab
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "callsPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 647
    const-string v1, "callsPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 650
    :cond_bc
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bookmarksPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 652
    const-string v1, "bookmarksPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 655
    :cond_cd
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "explorerPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 657
    const-string v1, "explorerPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    .line 660
    :cond_de
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "calendarPortlet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 662
    const-string v1, "calendarPortlet"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/StringArrayList;->add(Ljava/lang/String;)V

    goto/16 :goto_44
.end method

.method private static getDeviceName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 376
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "devicenamepref"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFreeBlocks(Z)J
    .registers 5
    .parameter "external"

    .prologue
    .line 416
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 420
    if-eqz p0, :cond_12

    .line 421
    :try_start_5
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard/sd"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_1a

    .line 432
    .local v1, statfs:Landroid/os/StatFs;
    :goto_c
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .end local v1           #statfs:Landroid/os/StatFs;
    :goto_11
    return-wide v2

    .line 424
    :cond_12
    :try_start_12
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    .restart local v1       #statfs:Landroid/os/StatFs;
    goto :goto_c

    .line 427
    .end local v1           #statfs:Landroid/os/StatFs;
    :catch_1a
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v2, 0x0

    goto :goto_11
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
    .registers 3

    .prologue
    .line 165
    const-class v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    if-nez v0, :cond_15

    .line 166
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "SystemStatePlugin getInstance, creating plugin instance"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 169
    :cond_15
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->s:Lcom/samsung/swift/service/systemstate/SystemStatePlugin;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 165
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMobileNetworks()[Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v9, 0x1

    .line 763
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    if-nez v8, :cond_57

    .line 766
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    .line 767
    new-instance v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    invoke-direct {v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;-><init>()V

    .line 768
    .local v1, gsmMobileNetwork:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    const-string v8, "gsm"

    iput-object v8, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->id:Ljava/lang/String;

    .line 769
    iput-boolean v9, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->ready:Z

    .line 772
    new-instance v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;-><init>()V

    .line 773
    .local v0, cdmaMobileNetwork:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    const-string v8, "cdma"

    iput-object v8, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->id:Ljava/lang/String;

    .line 774
    const-string v8, "CDMA"

    iput-object v8, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 775
    iput-boolean v9, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->ready:Z

    .line 776
    iput v9, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 778
    new-instance v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    invoke-direct {v7}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;-><init>()V

    .line 779
    .local v7, wcdmaMobileNetwork:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    const-string v8, "wcdma"

    iput-object v8, v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->id:Ljava/lang/String;

    .line 780
    const-string v8, "Slot2"

    iput-object v8, v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 781
    iput-boolean v9, v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->ready:Z

    .line 782
    iput v13, v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 784
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 786
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 788
    iput v9, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 789
    const-string v8, "Slot1"

    iput-object v8, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 790
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_57
    :goto_57
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_123

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    .line 825
    .local v3, mn:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    iget v8, v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    if-ne v8, v9, :cond_105

    .line 826
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 835
    .local v6, tm:Landroid/telephony/TelephonyManager;
    :goto_71
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 836
    .local v5, simState:I
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Slot "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " simState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v8, 0x5

    if-ne v5, v8, :cond_120

    move v8, v9

    :goto_9d
    iput-boolean v8, v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->ready:Z

    goto :goto_5d

    .line 795
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mn:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    .end local v5           #simState:I
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_a0
    iput v13, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 796
    const-string v8, "GSM"

    iput-object v8, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 797
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 803
    :cond_b1
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    .line 805
    .local v4, networkType:I
    if-ne v4, v13, :cond_e0

    .line 807
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TelephonyManager reports CDMA phone: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iput v9, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 809
    const-string v8, "CDMA"

    iput-object v8, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 810
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 813
    :cond_e0
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TelephonyManager reports GSM phone: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput v9, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    .line 815
    const-string v8, "GSM"

    iput-object v8, v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->name:Ljava/lang/String;

    .line 816
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 827
    .end local v4           #networkType:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mn:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    :cond_105
    iget v8, v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->slot:I

    if-ne v8, v13, :cond_117

    .line 828
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    sget-object v11, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_telephonyService2:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .restart local v6       #tm:Landroid/telephony/TelephonyManager;
    goto/16 :goto_71

    .line 831
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_117
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v11, "Found mobile network whose sim slot was neither 1 nor 2 - unsupported"

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .restart local v5       #simState:I
    .restart local v6       #tm:Landroid/telephony/TelephonyManager;
    :cond_120
    move v8, v10

    .line 837
    goto/16 :goto_9d

    .line 840
    .end local v3           #mn:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;
    .end local v5           #simState:I
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_123
    sget-object v8, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    new-array v9, v10, [Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    return-object v8
.end method

.method private static getScreenHeight()I
    .registers 6

    .prologue
    .line 556
    sget-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "getScreenDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v3, "window"

    invoke-static {v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 565
    .local v2, window_manager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 566
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 568
    .local v1, height:I
    sget-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v1
.end method

.method private static getScreenWidth()I
    .registers 6

    .prologue
    .line 576
    sget-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "getScreenDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v3, "window"

    invoke-static {v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 585
    .local v2, window_manager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 588
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 590
    .local v1, width:I
    sget-object v3, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v1
.end method

.method public static getSingleSimNetworkId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 755
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 756
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getMobileNetworks()[Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    .line 758
    :cond_7
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_mobileNetworks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;

    iget-object v0, v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin$MobileNetwork;->id:Ljava/lang/String;

    return-object v0
.end method

.method private static getSpeaker()Z
    .registers 2

    .prologue
    .line 516
    const-string v1, "audio"

    invoke-static {v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 517
    .local v0, audio_manager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method private static getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .parameter "Service"

    .prologue
    .line 325
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static hasTelephony()Z
    .registers 1

    .prologue
    .line 847
    invoke-static {}, Lcom/samsung/swift/Swift;->isTelephonySupported()Z

    move-result v0

    return v0
.end method

.method public static hasWCDMA()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 743
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 745
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 750
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCharging()Z
    .registers 1

    .prologue
    .line 388
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->charging()Z

    move-result v0

    return v0
.end method

.method public static isDualSim()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 674
    const/4 v3, 0x0

    .line 676
    .local v3, isChinieseModel:Z
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    if-eqz v7, :cond_e

    .line 678
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 736
    :goto_d
    return v7

    .line 681
    :cond_e
    invoke-static {}, Lcom/samsung/swift/Swift;->getSaleCode()Ljava/lang/String;

    move-result-object v5

    .line 682
    .local v5, m:Ljava/lang/String;
    if-nez v5, :cond_1d

    .line 684
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 685
    goto :goto_d

    .line 688
    :cond_1d
    const-string v7, "chinese_sale_codes"

    invoke-static {v7}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 689
    .local v6, s:Ljava/lang/String;
    if-nez v6, :cond_2e

    .line 691
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 692
    goto :goto_d

    .line 695
    :cond_2e
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, lm:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_35
    array-length v7, v4

    if-ge v2, v7, :cond_45

    .line 698
    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 700
    const/4 v3, 0x1

    .line 705
    :cond_45
    if-nez v3, :cond_53

    .line 707
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 708
    goto :goto_d

    .line 696
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 714
    :cond_53
    :try_start_53
    const-class v7, Landroid/content/Context;

    const-string v10, "TELEPHONY_SERVICE_2"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 715
    .local v1, f:Ljava/lang/reflect/Field;
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v10, "isDualSim: success - this handset is dual sim"

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v7, Ljava/lang/Boolean;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    .line 717
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_telephonyService2:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/NoSuchFieldException; {:try_start_53 .. :try_end_73} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_73} :catch_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_73} :catch_98

    move v7, v9

    .line 718
    goto :goto_d

    .line 720
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_75
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/NoSuchFieldException;
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "isDualSim: NoSuchFieldException: not dual sim"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 724
    goto :goto_d

    .line 726
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_86
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "isDualSim: SecurityException: not dual sim"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 730
    goto/16 :goto_d

    .line 732
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_98
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v9, "isDualSim: IllegalAccessException : not dual sim"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_isDualSim:Ljava/lang/Boolean;

    move v7, v8

    .line 736
    goto/16 :goto_d
.end method

.method private static pluginUnloading()V
    .registers 1

    .prologue
    .line 853
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->stop()V

    .line 854
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->destroy()V

    .line 855
    return-void
.end method

.method private declared-synchronized setBatteryLevel(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_batteryLevel:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCharging(Z)V
    .registers 3
    .parameter "charging"

    .prologue
    .line 345
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_charging:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 346
    monitor-exit p0

    return-void

    .line 345
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setSignalStrength(F)V
    .registers 6
    .parameter "level"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->logSignal:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSignalStrength called with signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1d
    float-to-double v0, p1

    const-wide/high16 v2, 0x4059

    cmpl-double v0, v0, v2

    if-lez v0, :cond_26

    .line 357
    const/high16 p1, 0x42c8

    .line 358
    :cond_26
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2e

    .line 359
    const/4 p1, 0x0

    .line 360
    :cond_2e
    iput p1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_signalStrength:F
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 361
    monitor-exit p0

    return-void

    .line 355
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setSpeaker(Z)V
    .registers 5
    .parameter "state"

    .prologue
    .line 523
    sget-object v1, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeaker = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v1, "audio"

    invoke-static {v1}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 525
    .local v0, audio_manager:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 526
    return-void
.end method

.method private static setWallpaper(Ljava/lang/String;)V
    .registers 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    const-string v3, "wallpaper"

    invoke-static {v3}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 534
    .local v2, wallpaper_manager:Landroid/app/WallpaperManager;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 535
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 537
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 538
    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 540
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "file is not compatible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 542
    :cond_1f
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 545
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_2b
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 549
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 551
    return-void

    .line 549
    :catchall_32
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method private declared-synchronized signalStrength()F
    .registers 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->_signalStrength:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stop()V
    .registers 4

    .prologue
    .line 307
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "SystemStatePlugin stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    if-eqz v0, :cond_22

    .line 310
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/SwiftService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->listner:Lcom/samsung/swift/service/systemstate/SystemStatePlugin$SignalSrengthListner;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 314
    :cond_22
    monitor-exit p0

    return-void

    .line 307
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static telephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    .prologue
    .line 283
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static wifiSignalStrength()F
    .registers 1

    .prologue
    .line 400
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->wifiState()Lcom/samsung/swift/security/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->getWiFiSignalStrength()F

    move-result v0

    return v0
.end method

.method private static wifiState()Lcom/samsung/swift/security/Network;
    .registers 1

    .prologue
    .line 405
    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->getCurrentState()Lcom/samsung/swift/security/Network;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->stop()V

    .line 320
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 321
    return-void
.end method
