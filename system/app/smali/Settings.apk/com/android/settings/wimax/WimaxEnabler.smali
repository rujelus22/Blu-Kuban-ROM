.class public Lcom/android/settings/wimax/WimaxEnabler;
.super Ljava/lang/Object;
.source "WimaxEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wimax/WimaxEnabler$MyHandler;
    }
.end annotation


# static fields
.field private static m_bIsWifiConnected:Z


# instance fields
.field private final WIMAX_STATE_CONNECTED:I

.field private final WIMAX_STATE_CONNECTING:I

.field private final WIMAX_STATE_DISCONNECTED:I

.field private final WIMAX_STATE_DISCONNECTING:I

.field private final WIMAX_STATE_INITIALIZED:I

.field private final WIMAX_STATE_INITIALIZING:I

.field private final WIMAX_STATE_OBTAINING_IPADDR:I

.field private final WIMAX_STATE_READY:I

.field private final WIMAX_STATE_SCANNING:I

.field private final WIMAX_STATE_UNKNOWN:I

.field private ad:Landroid/app/AlertDialog;

.field private alert:Landroid/app/AlertDialog;

.field private currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mAirplaneMode:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimaxState:I

.field private m_bLog:Z

.field private m_bNewValue:Z

.field private m_nCurrentStateDetail:I

.field private m_strNapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 6
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    .line 75
    iput-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bNewValue:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    .line 90
    iput v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_UNKNOWN:I

    .line 91
    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_INITIALIZING:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_INITIALIZED:I

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_SCANNING:I

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_READY:I

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_CONNECTING:I

    .line 96
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_OBTAINING_IPADDR:I

    .line 97
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_CONNECTED:I

    .line 98
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_DISCONNECTING:I

    .line 99
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->WIMAX_STATE_DISCONNECTED:I

    .line 100
    iput v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I

    .line 101
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 103
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wimax/WimaxEnabler$1;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    .line 142
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 148
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wimax/WimaxEnabler$MyHandler;-><init>(Lcom/android/settings/wimax/WimaxEnabler;Lcom/android/settings/wimax/WimaxEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wimax/WimaxEnabler;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStatusChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;)Landroid/net/fourG/wimax/WimaxState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->setWimaxEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/widget/Switch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wimax/WimaxEnabler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wimax/WimaxEnabler;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_nCurrentStateDetail:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wimax/WimaxEnabler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wimax/WimaxEnabler;Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wimax/WimaxEnabler;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wimax/WimaxEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleErrorAuth(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wimax/WimaxEnabler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wimax/WimaxEnabler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wimax/WimaxEnabler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wimax/WimaxEnabler;->handleAirplaneMode(Z)V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    return p0
.end method

.method private static getHumanReadableWimaxStatus(I)Ljava/lang/String;
    .registers 2
    .parameter "nWimaxStatus"

    .prologue
    .line 453
    packed-switch p0, :pswitch_data_16

    .line 465
    const-string v0, "Some other status!"

    :goto_5
    return-object v0

    .line 455
    :pswitch_6
    const-string v0, "Disabled"

    goto :goto_5

    .line 457
    :pswitch_9
    const-string v0, "Disabling"

    goto :goto_5

    .line 459
    :pswitch_c
    const-string v0, "Enabled"

    goto :goto_5

    .line 461
    :pswitch_f
    const-string v0, "Enabling"

    goto :goto_5

    .line 463
    :pswitch_12
    const-string v0, "Unknown"

    goto :goto_5

    .line 453
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_f
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method private handleAirplaneMode(Z)V
    .registers 5
    .parameter "state"

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1c
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez p1, :cond_25

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 185
    return-void

    .line 184
    :cond_25
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private handleErrorAuth(I)V
    .registers 5
    .parameter "nErrorMsg"

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleErrorAuth]  Error Authentication Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b087a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b087b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0869

    new-instance v2, Lcom/android/settings/wimax/WimaxEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wimax/WimaxEnabler$6;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    .line 486
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 487
    return-void
.end method

.method private handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxState;I)V
    .registers 8
    .parameter "wimaxState"
    .parameter "nWimaxStateDetail"

    .prologue
    .line 378
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v2, :cond_1c

    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  Received Wimax network state changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1c
    invoke-virtual {p1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a0

    .line 381
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    .line 382
    .local v0, ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    const/4 v1, 0x0

    .line 384
    .local v1, strTempNapId:Ljava/lang/String;
    if-nez v0, :cond_a1

    .line 385
    const-string v2, "000000"

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 386
    const-string v1, "000000"

    .line 391
    :goto_33
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v2, :cond_5b

    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  enabler napId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", framework napid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_5b
    if-nez v1, :cond_6f

    .line 394
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v2, :cond_68

    const-string v2, "WimaxEnabler"

    const-string v3, "[getConnectedNSP]  framework napId is null. It will be changed to 000000."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_68
    const-string v2, "000000"

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->setNapId(Ljava/lang/String;)V

    .line 396
    const-string v1, "000000"

    .line 399
    :cond_6f
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 400
    :cond_7b
    iput-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 401
    iget-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v2, :cond_9b

    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  napid changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_9b
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wimax/WimaxEnabler;->updateNapId(Ljava/lang/String;)V

    .line 423
    .end local v0           #ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .end local v1           #strTempNapId:Ljava/lang/String;
    :cond_a0
    return-void

    .line 388
    .restart local v0       #ConnectedNspInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .restart local v1       #strTempNapId:Ljava/lang/String;
    :cond_a1
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->getNapId()Ljava/lang/String;

    move-result-object v1

    goto :goto_33
.end method

.method private handleWimaxStatusChanged(II)V
    .registers 7
    .parameter "nWimaxStatus"
    .parameter "nPreviousWimaxStatus"

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_2f

    .line 336
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWimaxStatusChanged]\tReceived Wimax Status changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/wimax/WimaxEnabler;->getHumanReadableWimaxStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2f
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_34

    .line 371
    :goto_33
    return-void

    .line 343
    :cond_34
    packed-switch p1, :pswitch_data_72

    .line 360
    invoke-direct {p0, v3}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitchChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_33

    .line 345
    :pswitch_46
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_33

    .line 348
    :pswitch_4c
    invoke-direct {p0, v3}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitchChecked(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_33

    .line 352
    :pswitch_5b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_33

    .line 355
    :pswitch_61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wimax/WimaxEnabler;->setSwitchChecked(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/wimax/WimaxEnabler;->isWimaxAllowed(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_33

    .line 343
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_46
        :pswitch_4c
        :pswitch_5b
        :pswitch_61
    .end packed-switch
.end method

.method private isAirplaneModeEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static isWimaxAllowed(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 435
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 446
    :cond_7
    :goto_7
    return v1

    .line 439
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, radios:Ljava/lang/String;
    if-eqz v0, :cond_1c

    const-string v2, "wimax"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 441
    :cond_1c
    const-string v2, "WimaxEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleWimaxStateChanged]  radios: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 445
    :cond_35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggable_radio"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_49

    const-string v2, "wimax"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_49
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private setSwitchChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_13

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mStateMachineEvent:Z

    .line 472
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mStateMachineEvent:Z

    .line 475
    :cond_13
    return-void
.end method

.method private setWimaxEnabled(Z)V
    .registers 5
    .parameter "bEnable"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWimaxEnabled called with enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 221
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxEnabler"

    const-string v1, "[on destroy] was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 492
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    :cond_1d
    return-void
.end method

.method public getEnableLog()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 505
    const/4 v8, 0x0

    .line 507
    .local v8, strMsg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 508
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 510
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/4G.txt"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_38

    .line 517
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_48

    .line 518
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_91
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_94

    move-result-object v8

    .line 524
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 525
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_3a

    .line 532
    const/4 v6, 0x0

    .local v6, i:I
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_8e

    .line 533
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 534
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 536
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_37
    return v9

    .line 511
    :catch_38
    move-exception v5

    .line 513
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_37

    .line 526
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    .line 527
    .local v7, ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 529
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 519
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_48
    move-exception v2

    .line 520
    .local v2, e:Ljava/io/IOException;
    :goto_49
    :try_start_49
    const-string v10, "WimaxEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getEnableLog]\tFile error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_76

    .line 524
    :try_start_61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 525
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_67} :catch_69

    move-object v3, v4

    .line 529
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 526
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_69
    move-exception v7

    .line 527
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 529
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 523
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_76
    move-exception v10

    .line 524
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 525
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7d} :catch_7e

    .line 529
    throw v10

    .line 526
    :catch_7e
    move-exception v7

    .line 527
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v10, "WimaxEnabler"

    const-string v11, "[getEnableLog]\tFile close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 529
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 532
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v6       #i:I
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_8e
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 536
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 523
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_91
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_77

    .line 519
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_94
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_49
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 14
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v10, 0x7f0b0869

    const v9, 0x7f0b00be

    const v8, 0x1080027

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 247
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v6}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v4

    .line 248
    .local v4, wimaxStatus:I
    const/4 v6, 0x3

    if-ne v4, v6, :cond_31

    move v2, v1

    .line 249
    .local v2, isEnabled:Z
    :goto_15
    if-ne v4, v1, :cond_33

    .line 251
    .local v1, isDisabled:Z
    :goto_17
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 252
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 254
    .local v3, mBluetoothState:Landroid/net/NetworkInfo;
    if-eqz p2, :cond_2c

    if-nez v2, :cond_30

    :cond_2c
    if-nez p2, :cond_35

    if-eqz v1, :cond_35

    .line 328
    :cond_30
    :goto_30
    return-void

    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #isDisabled:Z
    .end local v2           #isEnabled:Z
    .end local v3           #mBluetoothState:Landroid/net/NetworkInfo;
    :cond_31
    move v2, v5

    .line 248
    goto :goto_15

    .restart local v2       #isEnabled:Z
    :cond_33
    move v1, v5

    .line 249
    goto :goto_17

    .line 255
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #isDisabled:Z
    .restart local v3       #mBluetoothState:Landroid/net/NetworkInfo;
    :cond_35
    iget-boolean v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mStateMachineEvent:Z

    if-nez v6, :cond_30

    .line 274
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_6e

    if-eqz p2, :cond_6e

    .line 276
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0928

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wimax/WimaxEnabler$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wimax/WimaxEnabler$2;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 284
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_30

    .line 285
    :cond_6e
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_df

    if-eqz p2, :cond_df

    .line 286
    sget-boolean v5, Lcom/android/settings/wimax/WimaxEnabler;->m_bIsWifiConnected:Z

    if-eqz v5, :cond_a7

    .line 288
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b086d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wimax/WimaxEnabler$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wimax/WimaxEnabler$3;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 296
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_30

    .line 299
    :cond_a7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b086e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wimax/WimaxEnabler$5;

    invoke-direct {v6, p0, p2}, Lcom/android/settings/wimax/WimaxEnabler$5;-><init>(Lcom/android/settings/wimax/WimaxEnabler;Z)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b086f

    new-instance v7, Lcom/android/settings/wimax/WimaxEnabler$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wimax/WimaxEnabler$4;-><init>(Lcom/android/settings/wimax/WimaxEnabler;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    .line 317
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_30

    .line 320
    :cond_df
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v6, p2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 322
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_30

    .line 325
    :cond_ee
    iget-boolean v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v5, :cond_30

    const-string v5, "WimaxEnabler"

    const-string v6, "Error during turning on/off 4G"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxEnabler"

    const-string v1, "pause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    return-void
.end method

.method public resume()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 188
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v3, :cond_d

    const-string v3, "WimaxEnabler"

    const-string v4, "resume called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_d
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 190
    .local v0, status:I
    iget-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    invoke-static {v3}, Lcom/android/settings/wimax/WimaxStatus;->setEnableLog(Z)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_29

    .line 193
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isAirplaneModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 194
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 195
    iput-boolean v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    .line 201
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wimax/WimaxEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    return-void

    .line 198
    :cond_38
    iget-object v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x3

    if-eq v0, v4, :cond_42

    if-eq v0, v2, :cond_42

    const/4 v4, 0x4

    if-ne v0, v4, :cond_43

    :cond_42
    move v1, v2

    :cond_43
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_29
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .registers 9
    .parameter "switch_"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_7

    .line 243
    :cond_6
    :goto_6
    return-void

    .line 225
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    .line 227
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mWimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    .line 230
    .local v2, wimaxStatus:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3e

    move v1, v3

    .line 231
    .local v1, isEnabled:Z
    :goto_1e
    if-ne v2, v3, :cond_40

    move v0, v3

    .line 232
    .local v0, isDisabled:Z
    :goto_21
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 233
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_2c

    if-eqz v0, :cond_42

    :cond_2c
    move v5, v3

    :goto_2d
    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wimax/WimaxEnabler;->isAirplaneModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 236
    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 237
    iput-boolean v3, p0, Lcom/android/settings/wimax/WimaxEnabler;->mAirplaneMode:Z

    goto :goto_6

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3e
    move v1, v4

    .line 230
    goto :goto_1e

    .restart local v1       #isEnabled:Z
    :cond_40
    move v0, v4

    .line 231
    goto :goto_21

    .restart local v0       #isDisabled:Z
    :cond_42
    move v5, v4

    .line 233
    goto :goto_2d
.end method

.method public updateNapId(Ljava/lang/String;)V
    .registers 5
    .parameter "strNapId"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_strNapId:Ljava/lang/String;

    .line 497
    iget-boolean v0, p0, Lcom/android/settings/wimax/WimaxEnabler;->m_bLog:Z

    if-eqz v0, :cond_1e

    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNapId]  calling WimaxStatus.updateNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1e
    const-string v0, "000002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "000004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxStatus;->updateNapId(Z)V

    .line 499
    return-void

    .line 498
    :cond_33
    const/4 v0, 0x0

    goto :goto_2f
.end method
