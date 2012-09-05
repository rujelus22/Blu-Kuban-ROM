.class public Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field private final mAutoOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mBTStateHandler:Landroid/os/Handler;

.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEqualizerSetting:Landroid/preference/Preference;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuKeyCount:I

.field private mMusicAutoOff:Landroid/preference/ListPreference;

.field private mMusicMenuSetting:Landroid/preference/Preference;

.field private mSoundEffectSetting:Landroid/preference/Preference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

.field private mVisualizationSetting:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToast:Landroid/widget/Toast;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMenuKeyCount:I

    .line 403
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$6;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 414
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$7;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$8;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$9;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 492
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$10;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$11;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->showSoundEffectErrorToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/framework/SecAudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showSoundEffectErrorToast()V
    .registers 5

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, strId:I
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 325
    const v0, 0x7f0900f8

    .line 332
    :goto_c
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_3b

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToast:Landroid/widget/Toast;

    .line 337
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 338
    return-void

    .line 326
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 327
    const v0, 0x7f0900f7

    goto :goto_c

    .line 329
    :cond_37
    const v0, 0x7f0900f9

    goto :goto_c

    .line 335
    :cond_3b
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1d
.end method

.method private updateSettingValues()V
    .registers 11

    .prologue
    .line 344
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v7}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v7}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-nez v7, :cond_18

    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v7}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 346
    :cond_18
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    :goto_1e
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v0

    .line 353
    .local v0, eqValue:I
    sget-object v7, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    array-length v7, v7

    if-lt v0, v7, :cond_28

    .line 354
    const/4 v0, 0x0

    .line 356
    :cond_28
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mEqualizerSetting:Landroid/preference/Preference;

    sget-object v8, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqResourceId:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 359
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v4

    .line 360
    .local v4, soundEffectValue:I
    sget-object v7, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    array-length v7, v7

    if-lt v4, v7, :cond_3b

    .line 361
    const/4 v4, 0x0

    .line 363
    :cond_3b
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    sget-object v8, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectResourceId:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 366
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v2, musicMenuString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, mMusicMenuName:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, setting:Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDisplayByValues(): setting="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "|"

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v5, strToken:Ljava/util/StringTokenizer;
    :cond_8b
    :goto_8b
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 376
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, token:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v7, v1, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 379
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8b

    .line 348
    .end local v0           #eqValue:I
    .end local v1           #mMusicMenuName:[Ljava/lang/String;
    .end local v2           #musicMenuString:Ljava/lang/StringBuffer;
    .end local v3           #setting:Ljava/lang/String;
    .end local v4           #soundEffectValue:I
    .end local v5           #strToken:Ljava/util/StringTokenizer;
    .end local v6           #token:Ljava/lang/String;
    :cond_ae
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1e

    .line 381
    .restart local v0       #eqValue:I
    .restart local v1       #mMusicMenuName:[Ljava/lang/String;
    .restart local v2       #musicMenuString:Ljava/lang/StringBuffer;
    .restart local v3       #setting:Ljava/lang/String;
    .restart local v4       #soundEffectValue:I
    .restart local v5       #strToken:Ljava/util/StringTokenizer;
    :cond_b6
    iget-object v7, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicMenuSetting:Landroid/preference/Preference;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 544
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->setVolumeControlStream(I)V

    .line 119
    new-instance v5, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mContext:Landroid/content/Context;

    .line 121
    iput-object p0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mActivity:Landroid/app/Activity;

    .line 122
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v5}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 124
    const/high16 v5, 0x7f05

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 126
    .local v4, ps:Landroid/preference/PreferenceScreen;
    const-string v5, "equalizer"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mEqualizerSetting:Landroid/preference/Preference;

    .line 127
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mEqualizerSetting:Landroid/preference/Preference;

    new-instance v6, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$1;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string v5, "effect"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    .line 141
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mSoundEffectSetting:Landroid/preference/Preference;

    new-instance v6, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$2;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    const-string v5, "music_menu"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicMenuSetting:Landroid/preference/Preference;

    .line 156
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicMenuSetting:Landroid/preference/Preference;

    new-instance v6, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$3;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    const-string v5, "visualization"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mVisualizationSetting:Landroid/preference/Preference;

    .line 168
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mVisualizationSetting:Landroid/preference/Preference;

    const v6, 0x7f09005b

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 170
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mVisualizationSetting:Landroid/preference/Preference;

    new-instance v6, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$4;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    const-string v5, "music_auto_off"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.music.musicservicecommand.MUSIC_AUTO_OFF"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x2000

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 196
    .local v3, pi:Landroid/app/PendingIntent;
    if-nez v3, :cond_a0

    .line 197
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 199
    :cond_a0
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v5, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v5, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, autoOff:Landroid/content/IntentFilter;
    const-string v5, "com.sec.android.app.music.autooffcompleted"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "id"
    .parameter "args"

    .prologue
    .line 550
    const/16 v1, -0x3e7

    if-ne p1, v1, :cond_2a

    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 553
    const v1, 0x7f0900ef

    new-instance v2, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$12;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v1, 0x7f0900f0

    new-instance v2, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$13;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 570
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_29
    return-object v1

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_29
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mAutoOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_2d

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_28

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 299
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 301
    :cond_2d
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 302
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 273
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_10} :catch_2c

    .line 278
    :goto_10
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v1, :cond_19

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 280
    :cond_19
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mBTStateHandler:Landroid/os/Handler;

    const v2, 0xc8596

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 285
    return-void

    .line 274
    :catch_2c
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->CLASSNAME:Ljava/lang/String;

    const-string v2, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->updateSettingValues()V

    .line 266
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 11
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 306
    const-string v3, "music_auto_off"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 307
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 309
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 311
    .local v1, autoOffTime:I
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.music.musicservicecommand.MUSIC_AUTO_OFF"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x800

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 313
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 314
    if-eqz v1, :cond_3f

    .line 315
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 318
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->mMusicAutoOff:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #autoOffTime:I
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_4a
    return-void
.end method
