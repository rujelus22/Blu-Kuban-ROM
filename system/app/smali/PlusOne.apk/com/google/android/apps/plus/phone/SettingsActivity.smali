.class public Lcom/google/android/apps/plus/phone/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/SettingsActivity$BackendPreferenceChangeListener;,
        Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;,
        Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;,
        Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;,
        Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;,
        Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

.field private static final VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

.field private static sConnectionPhotoKey:Ljava/lang/String;

.field private static sConnectionVideoKey:Ljava/lang/String;

.field private static sContactsSyncKey:Ljava/lang/String;

.field private static sInstantUploadKey:Ljava/lang/String;

.field private static sLicenseKey:Ljava/lang/String;

.field private static sMatchFilter:Landroid/content/IntentFilter;

.field private static sOnBatteryKey:Ljava/lang/String;

.field private static sPhotoCategoryKey:Ljava/lang/String;

.field private static sPhotoDisabledCategoryKey:Ljava/lang/String;

.field private static sRoamingUploadKey:Ljava/lang/String;

.field private static sSyncDisabledKey:Ljava/lang/String;

.field private static sSyncNowKey:Ljava/lang/String;


# instance fields
.field private mAclValueToSet:Ljava/lang/String;

.field private mCurrentBackend:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsReceiverRegistered:Z

.field private mIsUploading:Z

.field private mPhotoCategory:Landroid/preference/PreferenceCategory;

.field private mPhotoDisabledCategory:Landroid/preference/PreferenceCategory;

.field private mPhotoSyncEnabled:Z

.field private mRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mViewNavigationRecorded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->GENERAL_SETTINGS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sput-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto_upload_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sync_on_wifi_only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sync_on_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sync_on_battery"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "video_upload_wifi_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 133
    new-instance v0, Lcom/google/android/apps/plus/phone/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$1;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/google/android/apps/plus/phone/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$2;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 921
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/phone/SettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoSyncEnabled:Z

    return v0
.end method

.method static synthetic access$1800()Landroid/content/IntentFilter;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mCurrentBackend:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncNowKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/plus/phone/SettingsActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private getUploadUriWithAccount()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 981
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getUploadAllUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 982
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v2, "account"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 983
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private inMyPackage(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    .line 1005
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1006
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static final isDebugBuild(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 339
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->debuggable()Z

    move-result v0

    return v0
.end method

.method private processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 11
    .parameter "command"

    .prologue
    const v8, 0x7f070004

    const/4 v7, 0x1

    .line 527
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    .line 528
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 529
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v4

    .line 530
    .local v4, response:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->hasStatus()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v5

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-ne v5, v6, :cond_4f

    .line 532
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 534
    .local v0, aclPreference:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 536
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 538
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 539
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 542
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->dismissDialog(I)V

    .line 543
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    .end local v0           #aclPreference:Landroid/preference/ListPreference;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #response:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    :goto_4e
    return-void

    .line 548
    :cond_4f
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->dismissDialog(I)V

    .line 549
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/SettingsActivity;->showDialog(I)V

    goto :goto_4e
.end method

.method private putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "group"
    .parameter "account"

    .prologue
    .line 987
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_5
    if-ge v0, v2, :cond_28

    .line 988
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 989
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 991
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1c

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->inMyPackage(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 992
    const-string v4, "account"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 994
    :cond_1c
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_25

    .line 995
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3           #p:Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/google/android/apps/plus/phone/SettingsActivity;->putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 987
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 998
    .end local v1           #intent:Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 1019
    move-object v1, p0

    .line 1020
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1021
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_a

    .line 1022
    invoke-static {v1, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 1024
    :cond_a
    return-void
.end method

.method private setUpSyncCapability()V
    .registers 12

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 496
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, picasaAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 498
    .local v1, currentAccount:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 500
    .local v4, screen:Landroid/preference/PreferenceScreen;
    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoSyncEnabled:Z

    .line 504
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 505
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoDisabledCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    iget-boolean v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoSyncEnabled:Z

    if-eqz v8, :cond_4a

    .line 508
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    sget-object v8, Lcom/google/android/apps/plus/phone/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 511
    .local v2, instantUpload:Landroid/preference/Preference;
    const v8, 0x7f0700a4

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 514
    new-instance v8, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;

    invoke-direct {v8, p0, p0}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/google/android/apps/plus/phone/SettingsActivity$SystemSettingLoader;->startLoading()V

    .line 524
    .end local v2           #instantUpload:Landroid/preference/Preference;
    :goto_49
    return-void

    .line 516
    :cond_4a
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoDisabledCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 518
    const v8, 0x7f070036

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, syncName:Ljava/lang/String;
    const v8, 0x7f0700a6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, summary:Ljava/lang/String;
    sget-object v8, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncDisabledKey:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 522
    .local v6, syncDisabledPreference:Landroid/preference/Preference;
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 393
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_b

    .line 394
    sget-object v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 396
    :cond_b
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 397
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 939
    packed-switch p2, :pswitch_data_3e

    .line 973
    :goto_4
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->dismissDialog(I)V

    .line 974
    return-void

    .line 941
    :pswitch_9
    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z

    .line 942
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_SYNC_ALL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 943
    sget-object v3, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncNowKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 944
    .local v1, syncNowPreference:Landroid/preference/Preference;
    const v3, 0x7f0700b6

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 945
    const v3, 0x7f0700b8

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 947
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 949
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v2, Lcom/google/android/apps/plus/phone/SettingsActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/phone/SettingsActivity$6;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 963
    .local v2, uploadTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/google/android/apps/plus/phone/SettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 964
    new-array v4, v5, [Ljava/lang/Void;

    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 939
    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "savedInstanceState"

    .prologue
    .line 188
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    if-nez v21, :cond_a8

    .line 191
    const v21, 0x7f070014

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    .line 192
    const v21, 0x7f070017

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    .line 193
    const v21, 0x7f070018

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    .line 194
    const v21, 0x7f070015

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    .line 195
    const v21, 0x7f070019

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    .line 196
    const v21, 0x7f07001c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sContactsSyncKey:Ljava/lang/String;

    .line 197
    const v21, 0x7f070016

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncNowKey:Ljava/lang/String;

    .line 198
    const v21, 0x7f070013

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncDisabledKey:Ljava/lang/String;

    .line 199
    const v21, 0x7f07001d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sLicenseKey:Ljava/lang/String;

    .line 200
    const v21, 0x7f070011

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sPhotoCategoryKey:Ljava/lang/String;

    .line 201
    const v21, 0x7f070012

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sPhotoDisabledCategoryKey:Ljava/lang/String;

    .line 203
    new-instance v21, Landroid/content/IntentFilter;

    invoke-direct/range {v21 .. v21}, Landroid/content/IntentFilter;-><init>()V

    sput-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    .line 204
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    const-string v22, "com.google.android.picasasync.upload_all_progress"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    :cond_a8
    if-eqz p1, :cond_e6

    .line 208
    const-string v21, "request_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_ca

    .line 209
    const-string v21, "request_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    .line 211
    :cond_ca
    const-string v21, "acl_value"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e6

    .line 212
    const-string v21, "acl_value"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    .line 216
    :cond_e6
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 217
    const v21, 0x7f050008

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 218
    const v21, 0x7f05000c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->isDebugBuild(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_168

    .line 220
    const v21, 0x7f05000b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 221
    const v21, 0x7f070007

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 222
    .local v5, backend:Landroid/preference/Preference;
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$BackendPreferenceChangeListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/phone/SettingsActivity$BackendPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/android/apps/plus/phone/SettingsActivity$1;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 225
    .local v17, settings:Landroid/content/SharedPreferences;
    const v21, 0x7f070007

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    const v22, 0x7f070005

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mCurrentBackend:Ljava/lang/String;

    .line 231
    .end local v5           #backend:Landroid/preference/Preference;
    .end local v17           #settings:Landroid/content/SharedPreferences;
    :cond_168
    const v21, 0x7f05000a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 232
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sPhotoCategoryKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoCategory:Landroid/preference/PreferenceCategory;

    .line 233
    const v21, 0x7f050009

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 234
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sPhotoDisabledCategoryKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mPhotoDisabledCategory:Landroid/preference/PreferenceCategory;

    .line 236
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v21

    if-eqz v21, :cond_1b0

    .line 237
    const v21, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 240
    :cond_1b0
    const/high16 v21, 0x7f05

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->addPreferencesFromResource(I)V

    .line 242
    const v21, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 244
    .local v13, notify:Landroid/preference/CheckBoxPreference;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    .line 245
    .local v3, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v3, :cond_2ef

    .line 246
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 252
    :goto_1db
    :try_start_1db
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 254
    .local v15, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v21, "build_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1db .. :try_end_1fa} :catch_2f8

    .line 259
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1fa
    const v21, 0x7f070004

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 261
    .local v4, aclPreference:Landroid/preference/Preference;
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$AclPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    new-instance v12, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    .line 265
    .local v12, listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 266
    .local v9, instantUpload:Landroid/preference/Preference;
    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 269
    .local v6, connectionPhotoPreference:Landroid/preference/Preference;
    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 272
    .local v7, connectionVideoPreference:Landroid/preference/Preference;
    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 275
    .local v16, roamingUpload:Landroid/preference/Preference;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 278
    .local v14, onBatteryUpload:Landroid/preference/Preference;
    invoke-virtual {v14, v12}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncNowKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 281
    .local v19, syncNowPreference:Landroid/preference/Preference;
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$3;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 297
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sSyncDisabledKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 298
    .local v18, syncDisabledPreference:Landroid/preference/Preference;
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$4;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 308
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sLicenseKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 309
    .local v11, licensePreference:Landroid/preference/Preference;
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity$5;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 320
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 322
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v21

    if-eqz v21, :cond_2d9

    .line 323
    sget-object v21, Lcom/google/android/apps/plus/phone/SettingsActivity;->sContactsSyncKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    .line 325
    .local v20, syncPreference:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 326
    new-instance v21, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    .end local v20           #syncPreference:Landroid/preference/CheckBoxPreference;
    :cond_2d9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->putAccountExtra(Landroid/preference/PreferenceGroup;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 335
    if-eqz p1, :cond_30a

    const/16 v21, 0x1

    :goto_2e8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/phone/SettingsActivity;->mViewNavigationRecorded:Z

    .line 336
    return-void

    .line 248
    .end local v4           #aclPreference:Landroid/preference/Preference;
    .end local v6           #connectionPhotoPreference:Landroid/preference/Preference;
    .end local v7           #connectionVideoPreference:Landroid/preference/Preference;
    .end local v9           #instantUpload:Landroid/preference/Preference;
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #licensePreference:Landroid/preference/Preference;
    .end local v12           #listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v14           #onBatteryUpload:Landroid/preference/Preference;
    .end local v16           #roamingUpload:Landroid/preference/Preference;
    .end local v18           #syncDisabledPreference:Landroid/preference/Preference;
    .end local v19           #syncNowPreference:Landroid/preference/Preference;
    :cond_2ef
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1db

    .line 255
    :catch_2f8
    move-exception v8

    .line 256
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "build_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1fa

    .line 335
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #aclPreference:Landroid/preference/Preference;
    .restart local v6       #connectionPhotoPreference:Landroid/preference/Preference;
    .restart local v7       #connectionVideoPreference:Landroid/preference/Preference;
    .restart local v9       #instantUpload:Landroid/preference/Preference;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v11       #licensePreference:Landroid/preference/Preference;
    .restart local v12       #listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    .restart local v14       #onBatteryUpload:Landroid/preference/Preference;
    .restart local v16       #roamingUpload:Landroid/preference/Preference;
    .restart local v18       #syncDisabledPreference:Landroid/preference/Preference;
    .restart local v19       #syncNowPreference:Landroid/preference/Preference;
    :cond_30a
    const/16 v21, 0x0

    goto :goto_2e8
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 445
    const/4 v3, 0x1

    if-ne p1, v3, :cond_25

    .line 448
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 449
    .local v2, newDialog:Landroid/app/ProgressDialog;
    const v3, 0x7f070232

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    const v3, 0x7f070233

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 452
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 468
    .end local v2           #newDialog:Landroid/app/ProgressDialog;
    :cond_24
    :goto_24
    return-object v2

    .line 454
    :cond_25
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4d

    .line 455
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070234

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 457
    const v3, 0x7f070235

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 458
    const v3, 0x104000a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .local v1, dialog:Landroid/app/AlertDialog;
    move-object v2, v1

    .line 460
    goto :goto_24

    .line 461
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_4d
    const/4 v3, 0x3

    if-ne p1, v3, :cond_24

    .line 462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700ba

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 464
    const v3, 0x7f07016a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    const v3, 0x7f07016b

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_24
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    .line 435
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 429
    :pswitch_9
    const-string v1, "plus_settings"

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 430
    .local v0, helpUrl:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    const/4 v1, 0x1

    goto :goto_8

    .line 427
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0d01c6
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 380
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    return-void
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 347
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 349
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mServiceListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 350
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v3, :cond_2c

    .line 351
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->isRequestPending(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 352
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    move-result-object v2

    .line 353
    .local v2, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    if-eqz v2, :cond_41

    .line 354
    invoke-virtual {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    .line 355
    .local v1, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 366
    .end local v1           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v2           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->setUpSyncCapability()V

    .line 368
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 369
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mViewNavigationRecorded:Z

    if-nez v3, :cond_40

    if-eqz v0, :cond_40

    .line 370
    sget-object v3, Lcom/google/android/apps/plus/phone/SettingsActivity;->VIEW:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {p0, v0, v3}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 371
    iput-boolean v7, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mViewNavigationRecorded:Z

    .line 373
    :cond_40
    return-void

    .line 357
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v2       #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_41
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/SettingsActivity;->dismissDialog(I)V

    .line 358
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/SettingsActivity;->showDialog(I)V

    goto :goto_2c

    .line 362
    .end local v2           #result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    :cond_49
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 406
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 409
    const-string v0, "acl_value"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mAclValueToSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_1d
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsReceiverRegistered:Z

    .line 477
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_a

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsReceiverRegistered:Z

    .line 487
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 489
    :cond_a
    return-void
.end method
