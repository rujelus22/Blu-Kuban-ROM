.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BluetoothController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BluetoothController"


# instance fields
.field private isAirPlaneMode:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContentDescriptionId:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    .line 43
    const v2, 0x7f020090

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 44
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    .line 45
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->isAirPlaneMode:I

    .line 46
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 50
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->toastAlert:Landroid/widget/Toast;

    .line 53
    new-instance v2, Lcom/android/systemui/statusbar/policy/BluetoothController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 142
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4a

    .line 143
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 144
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    .line 146
    :cond_4a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 6
    .parameter "context"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    .line 43
    const v0, 0x7f020090

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    .line 45
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->isAirPlaneMode:I

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 50
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->toastAlert:Landroid/widget/Toast;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BluetoothController;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BluetoothController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method

.method private handleStateChanged(I)I
    .registers 5
    .parameter "state"

    .prologue
    .line 114
    const-string v0, "StatusBar.BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    packed-switch p1, :pswitch_data_24

    .line 128
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 118
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 121
    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_1c

    .line 125
    :pswitch_21
    const/4 v0, 0x3

    goto :goto_1c

    .line 116
    nop

    :pswitch_data_24
    .packed-switch 0xa
        :pswitch_1f
        :pswitch_21
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public deinit()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method

.method public handleAdapterStateChange(I)V
    .registers 3
    .parameter "adapterState"

    .prologue
    .line 169
    const/16 v0, 0xc

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 170
    return-void

    .line 169
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public handleConnectionStateChange(I)V
    .registers 4
    .parameter "connectionState"

    .prologue
    .line 173
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    .line 174
    .local v0, connected:Z
    :goto_4
    if-eqz v0, :cond_13

    .line 175
    const v1, 0x7f020091

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 176
    const v1, 0x7f080042

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    .line 181
    :goto_10
    return-void

    .line 173
    .end local v0           #connected:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_4

    .line 178
    .restart local v0       #connected:Z
    :cond_13
    const v1, 0x7f020090

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    .line 179
    const v1, 0x7f080043

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    goto :goto_10
.end method

.method public init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_28

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 75
    :cond_28
    return-void
.end method

.method public onClick(Z)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v0, "STATUSBAR-BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->isAirPlaneMode:I

    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->toastAlert:Landroid/widget/Toast;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_42
    :goto_42
    return-void

    .line 93
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_4f

    .line 94
    const-string v0, "STATUSBAR-BluetoothController"

    const-string v1, "mBluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 98
    :cond_4f
    if-eqz p1, :cond_6d

    .line 99
    const-string v0, "STATUSBAR-BluetoothController"

    const-string v1, "Bluetooth activate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_42

    .line 108
    :cond_6d
    const-string v0, "STATUSBAR-BluetoothController"

    const-string v1, "Bluetooth deactivate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_42
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 158
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 165
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->refreshViews()V

    .line 166
    return-void

    .line 160
    :cond_1b
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 161
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleConnectionStateChange(I)V

    goto :goto_17
.end method

.method public refreshViews()V
    .registers 6

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_35

    .line 186
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 187
    .local v2, v:Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    if-nez v3, :cond_2c

    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 188
    :cond_29
    const/16 v3, 0x8

    goto :goto_1b

    .line 189
    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mContentDescriptionId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 193
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_35
    return-void
.end method
