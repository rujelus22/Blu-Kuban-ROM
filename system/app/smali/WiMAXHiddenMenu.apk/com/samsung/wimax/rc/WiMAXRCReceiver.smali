.class public Lcom/samsung/wimax/rc/WiMAXRCReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiMAXRCReceiver.java"


# static fields
.field public static final EXTRA_NEW_CINR:Ljava/lang/String; = "CINRValue"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "RSSIValue"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "com.android.samsung.wimax.RSSI_CHANGED"

.field private static final TAG:Ljava/lang/String; = "WiMAXRCReceiver"

.field private static currentStateDetail:I

.field private static currentWimaxState:Landroid/net/fourG/wimax/WimaxState;


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

.field private sCinr:Ljava/lang/String;

.field private sRssi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentStateDetail:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private handleSignalChanged(I)V
    .registers 6
    .parameter "rssi"

    .prologue
    .line 62
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 64
    iget-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    .line 65
    .local v0, WiMAXInfo:Landroid/net/fourG/wimax/Wimax4GInfo;
    const-string v1, "WiMAXRCReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSSI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CINR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v1

    const/16 v2, -0x78

    if-le v1, v2, :cond_5b

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v1

    const/16 v2, -0x18

    if-le v1, v2, :cond_5b

    .line 68
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sRssi:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sCinr:Ljava/lang/String;

    .line 84
    :goto_5a
    return-void

    .line 73
    :cond_5b
    const-string v1, " - "

    iput-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sRssi:Ljava/lang/String;

    .line 74
    const-string v1, " - "

    iput-object v1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sCinr:Ljava/lang/String;

    goto :goto_5a
.end method

.method private updateRSSISignal()V
    .registers 2

    .prologue
    .line 88
    const-string v0, " - "

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sRssi:Ljava/lang/String;

    .line 89
    const-string v0, " - "

    iput-object v0, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->sCinr:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x6

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->mContext:Landroid/content/Context;

    .line 32
    const-string v1, "android.net.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 33
    const-string v1, "WiMAXRCReceiver"

    const-string v2, "Received broadcast RSSI_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_26

    sget-object v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_26

    sget v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentStateDetail:I

    if-ne v1, v3, :cond_2a

    .line 36
    :cond_26
    invoke-direct {p0}, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->updateRSSISignal()V

    .line 55
    :cond_29
    :goto_29
    return-void

    .line 40
    :cond_2a
    const-string v1, "newRSSI"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->handleSignalChanged(I)V

    goto :goto_29

    .line 43
    :cond_35
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 44
    const-string v1, "WimaxState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/WimaxState;

    sput-object v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 45
    const-string v1, "WimaxStateDetail"

    const/16 v2, 0x8

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentStateDetail:I

    .line 47
    sget-object v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_61

    sget-object v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_61

    sget v1, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->currentStateDetail:I

    if-ne v1, v3, :cond_29

    .line 48
    :cond_61
    invoke-direct {p0}, Lcom/samsung/wimax/rc/WiMAXRCReceiver;->updateRSSISignal()V

    goto :goto_29

    .line 50
    :cond_65
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_29
.end method
