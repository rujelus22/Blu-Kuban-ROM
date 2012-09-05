.class public Lcom/samsung/swift/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final ONSERVICEREADYACTION_EVENT:Ljava/lang/String;

.field public static final POSTCONSTRUCT_EVENT:Ljava/lang/String;

.field private static controller:Lcom/samsung/swift/controller/Controller;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field protected serviceManager:Lcom/samsung/swift/service/SwiftServiceManagerBound;

.field private state:Lcom/samsung/swift/controller/State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 131
    const-class v0, Lcom/samsung/swift/controller/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/Controller;->LOGTAG:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/controller/Controller;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SERVICE_READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/Controller;->ONSERVICEREADYACTION_EVENT:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/controller/Controller;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/controller/Controller;->POSTCONSTRUCT_EVENT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v2, Lcom/samsung/swift/controller/Controller$1;

    invoke-direct {v2, p0}, Lcom/samsung/swift/controller/Controller$1;-><init>(Lcom/samsung/swift/controller/Controller;)V

    iput-object v2, p0, Lcom/samsung/swift/controller/Controller;->receiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/swift/controller/Controller;->handler:Landroid/os/Handler;

    .line 148
    const/4 v2, 0x0

    :try_start_1a
    new-instance v3, Lcom/samsung/swift/controller/WaitingForServiceConnection;

    invoke-direct {v3}, Lcom/samsung/swift/controller/WaitingForServiceConnection;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/swift/controller/State;->transition(Lcom/samsung/swift/controller/State;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_e7

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v1, intentFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/samsung/swift/service/SwiftService;->STOP_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    sget-object v2, Lcom/samsung/swift/service/SwiftService;->START_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->BUTTONCLICK_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->RESTARTNETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/samsung/swift/controller/Controller;->POSTCONSTRUCT_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_CHOSEN_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->STOPNETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->LEAVENETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->START_NETWORK_ONLY_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->NETWORK_ONLY_SELECTED_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->DISMISS_START_NETWORK_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/samsung/swift/controller/Controller;->ONSERVICEREADYACTION_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/samsung/swift/service/Installer;->STATE_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    sget-object v2, Lcom/samsung/swift/install/InstallActivity;->RESUMED_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    sget-object v2, Lcom/samsung/swift/install/InstallActivity;->SETWORLDREASABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v2, Lcom/samsung/swift/install/InstallActivity;->EXPLICIT_INSTALL_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_BEGIN_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    sget-object v2, Lcom/samsung/swift/security/SecurityManager;->CHALLANGE_END_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    sget-object v2, Lcom/samsung/swift/security/SecurityManager;->ACCESS_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v2, Lcom/samsung/swift/security/SecurityPreferencesActivity;->FOCUS_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    sget-object v2, Lcom/samsung/swift/security/SecurityPreferencesActivity;->TIMEOUT_CHANGE_EVENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/controller/Controller;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/controller/Controller;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->makeIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    new-instance v2, Lcom/samsung/swift/service/SwiftServiceManagerBound;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/samsung/swift/controller/Controller;->ONSERVICEREADYACTION_EVENT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/samsung/swift/service/SwiftServiceManagerBound;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/samsung/swift/controller/Controller;->serviceManager:Lcom/samsung/swift/service/SwiftServiceManagerBound;

    .line 197
    return-void

    .line 150
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :catch_e7
    move-exception v0

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/samsung/swift/controller/Controller;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/swift/controller/Controller;Lcom/samsung/swift/controller/State;)Lcom/samsung/swift/controller/State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/swift/controller/Controller;->state:Lcom/samsung/swift/controller/State;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 129
    sget-object v0, Lcom/samsung/swift/controller/Controller;->ONSERVICEREADYACTION_EVENT:Ljava/lang/String;

    return-object v0
.end method

.method public static instance()Lcom/samsung/swift/controller/Controller;
    .registers 1

    .prologue
    .line 389
    sget-object v0, Lcom/samsung/swift/controller/Controller;->controller:Lcom/samsung/swift/controller/Controller;

    if-nez v0, :cond_b

    .line 391
    new-instance v0, Lcom/samsung/swift/controller/Controller;

    invoke-direct {v0}, Lcom/samsung/swift/controller/Controller;-><init>()V

    sput-object v0, Lcom/samsung/swift/controller/Controller;->controller:Lcom/samsung/swift/controller/Controller;

    .line 393
    :cond_b
    sget-object v0, Lcom/samsung/swift/controller/Controller;->controller:Lcom/samsung/swift/controller/Controller;

    return-object v0
.end method


# virtual methods
.method protected cancelPoll(Ljava/lang/Object;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/swift/controller/Controller;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method protected postPoll(Ljava/lang/Object;J)V
    .registers 8
    .parameter "token"
    .parameter "milliseconds"

    .prologue
    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, v2, p2

    .line 359
    .local v0, absoluteTime:J
    iget-object v2, p0, Lcom/samsung/swift/controller/Controller;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/swift/controller/Controller$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/swift/controller/Controller$2;-><init>(Lcom/samsung/swift/controller/Controller;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 373
    return-void
.end method
