.class public final Lcom/android/systemui/statusbar/policy/WimaxSettingButton;
.super Ljava/lang/Object;
.source "WimaxSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxSettingButton"


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 5
    .parameter "context"
    .parameter "button"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)Landroid/app/StatusBarManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    return-object v0
.end method

.method private handleStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->updateStatus(I)V

    .line 44
    return-void
.end method

.method private onDisplayBTTetheringConnectedAlert()V
    .registers 5

    .prologue
    .line 220
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080063

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080062

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 227
    .local v0, mAlertDialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 237
    return-void
.end method

.method private onDisplayWifiConnectedAlert()V
    .registers 11

    .prologue
    const v9, 0x7f080063

    const v8, 0x1080027

    const v5, 0x104000a

    const/high16 v7, 0x1

    const/16 v6, 0x7d8

    .line 170
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 173
    .local v2, mWifiState:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_61

    .line 174
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080061

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 181
    .local v1, mAlertDialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 188
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 189
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v7}, Landroid/app/StatusBarManager;->disable(I)V

    .line 215
    :goto_60
    return-void

    .line 192
    .end local v1           #mAlertDialog:Landroid/app/AlertDialog;
    :cond_61
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080064

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 206
    .restart local v1       #mAlertDialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/WimaxSettingButton;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 211
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 212
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v7}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_60
.end method

.method private updateStatus(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 80
    const-string v0, "WimaxSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatus state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    packed-switch p1, :pswitch_data_32

    .line 98
    :goto_1b
    return-void

    .line 84
    :pswitch_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1b

    .line 88
    :pswitch_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1b

    .line 93
    :pswitch_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1b

    .line 81
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_1c
        :pswitch_23
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .registers 6

    .prologue
    .line 143
    const-string v3, "WimaxSettingButton"

    const-string v4, "activate()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 145
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 148
    .local v1, mBluetoothState:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2e

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->onDisplayBTTetheringConnectedAlert()V

    .line 157
    :cond_2d
    :goto_2d
    return-void

    .line 150
    :cond_2e
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->onDisplayWifiConnectedAlert()V

    goto :goto_2d

    .line 153
    :cond_38
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    if-eqz v3, :cond_2d

    .line 154
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    goto :goto_2d
.end method

.method public deactivate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    const-string v0, "WimaxSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v0

    if-ne v0, v3, :cond_16

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v3, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimaxMode(IZ)I

    .line 164
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    if-eqz v0, :cond_1f

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 167
    :cond_1f
    return-void
.end method

.method public deinit()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "WimaxSettingButton"

    const-string v1, "deinit()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method

.method public init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 55
    const-string v0, "WimaxSettingButton"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    if-eqz v0, :cond_4e

    .line 65
    const-string v0, "WimaxSettingButton"

    const-string v1, "init():mWimax4GManager != null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "WimaxSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init():mWimax4GManager.get4GState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->updateStatus(I)V

    .line 69
    :cond_4e
    return-void
.end method

.method public onClick(Z)V
    .registers 5
    .parameter "state"

    .prologue
    .line 133
    const-string v0, "WimaxSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    if-nez p1, :cond_1e

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->deactivate()V

    .line 140
    :goto_1d
    return-void

    .line 138
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WimaxSettingButton;->activate()V

    goto :goto_1d
.end method

.method public updateResources()V
    .registers 1

    .prologue
    .line 130
    return-void
.end method
