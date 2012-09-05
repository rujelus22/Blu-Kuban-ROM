.class public Lcom/android/systemui/statusbar/policy/MobileDataController;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;
    }
.end annotation


# static fields
.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final TAG:Ljava/lang/String; = "StatusBar.MobileData"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-MobileDataController"


# instance fields
.field private isAirPlaneMode:I

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mMobileData:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .registers 4
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 80
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 5
    .parameter "context"
    .parameter "button"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 87
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MobileDataController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MobileDataController;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileData()Z
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_11

    .line 198
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 200
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private isSimReady()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 224
    .local v0, SimState:I
    if-eqz v0, :cond_e

    if-ne v0, v3, :cond_49

    .line 226
    :cond_e
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080097

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v3, 0x7f080098

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 230
    const v3, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/MobileDataController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_38

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 242
    :cond_38
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 243
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 247
    .end local v1           #alert:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_49
    return v3
.end method

.method private onDisplayMobileDataOffAlert()V
    .registers 8

    .prologue
    .line 263
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 265
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f030020

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 268
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0f00ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 270
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/MobileDataController$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08008b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 286
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 287
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/MobileDataController$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/MobileDataController$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MobileDataController$4;-><init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_55

    .line 303
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapse()V

    .line 307
    :cond_55
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 308
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method

.method private setMobileData(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_mobiledata_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, mChecked:I
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data waring checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p1, :cond_2d

    if-nez v0, :cond_2d

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->onDisplayMobileDataOffAlert()V

    .line 213
    :goto_2c
    return-void

    .line 211
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    goto :goto_2c
.end method

.method private setMobileDataEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 254
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2a

    .line 255
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled : set to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 260
    :goto_29
    return-void

    .line 258
    :cond_2a
    const-string v1, "STATUSBAR-MobileDataController"

    const-string v2, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private updateActivateStatus(Z)V
    .registers 4
    .parameter "status"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    if-eqz v0, :cond_c

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 220
    :cond_c
    return-void

    .line 217
    :cond_d
    const/4 v0, 0x2

    goto :goto_9
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method public init()V
    .registers 6

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() : mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eq p2, v0, :cond_d

    .line 190
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileData(Z)V

    .line 192
    :cond_d
    return-void
.end method

.method public onClick(Z)V
    .registers 5
    .parameter "state"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    .line 132
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 141
    :cond_14
    :goto_14
    return-void

    .line 136
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 138
    :cond_1f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    if-eq p1, v0, :cond_14

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileData(Z)V

    goto :goto_14
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 153
    const-string v1, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, isAirPlaneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I

    if-ne v1, v4, :cond_53

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 169
    :cond_52
    :goto_52
    return-void

    .line 160
    :cond_53
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V

    goto :goto_52

    .line 163
    :cond_59
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 164
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v4, :cond_52

    .line 165
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V

    goto :goto_52
.end method
