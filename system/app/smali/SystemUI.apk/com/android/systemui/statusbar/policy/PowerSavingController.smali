.class public Lcom/android/systemui/statusbar/policy/PowerSavingController;
.super Ljava/lang/Object;
.source "PowerSavingController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.PowerSavingController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PowerSavingController"


# instance fields
.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 8
    .parameter "context"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;-><init>(Lcom/android/systemui/statusbar/policy/PowerSavingController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "maximum_power_saving"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "maximum_power_saving"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3a

    :goto_35
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mState:Z

    .line 50
    return-void

    .line 48
    :cond_38
    const/4 v0, 0x2

    goto :goto_28

    :cond_3a
    move v1, v2

    .line 49
    goto :goto_35
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/PowerSavingController;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/PowerSavingController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/PowerSavingController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/PowerSavingController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "maximum_power_saving"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "maximum_power_saving"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEMPOWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 58
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "maximum_power_saving"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    return-void
.end method

.method public onClick(Z)V
    .registers 4
    .parameter "state"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mState:Z

    if-eq v0, p1, :cond_10

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 63
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->setMode(I)V

    .line 65
    :cond_10
    return-void

    .line 63
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
