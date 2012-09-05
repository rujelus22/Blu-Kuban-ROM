.class public Lcom/android/systemui/statusbar/policy/SilentModeController;
.super Ljava/lang/Object;
.source "SilentModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeController"

.field private static mSoundProfile:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .registers 5
    .parameter "context"
    .parameter "button"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/policy/SilentModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/SilentModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setSoundEffectsEnabled(Z)V

    .line 72
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    sput p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2e

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SilentModeController;->updateStatus()V

    .line 86
    :goto_2d
    return-void

    .line 84
    :cond_2e
    const-string v1, "STATUSBAR-SilentModeController"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public onClick(Z)V
    .registers 6
    .parameter "state"

    .prologue
    .line 93
    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 98
    const/4 v0, 0x0

    .line 107
    :goto_1f
    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 110
    return-void

    .line 99
    :cond_3d
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    if-nez v1, :cond_43

    .line 100
    const/4 v0, 0x2

    goto :goto_1f

    .line 101
    :cond_43
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    .line 102
    const/4 v0, 0x1

    goto :goto_1f

    .line 104
    :cond_4a
    const/4 v0, 0x2

    goto :goto_1f
.end method

.method public updateStatus()V
    .registers 5

    .prologue
    .line 124
    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, -0x1

    .line 128
    .local v0, status:I
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 129
    const/4 v0, 0x1

    .line 138
    :goto_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 139
    return-void

    .line 130
    :cond_27
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    if-nez v1, :cond_2d

    .line 131
    const/4 v0, 0x4

    goto :goto_21

    .line 132
    :cond_2d
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 133
    const/4 v0, 0x2

    goto :goto_21

    .line 135
    :cond_34
    const/4 v0, 0x2

    goto :goto_21
.end method
