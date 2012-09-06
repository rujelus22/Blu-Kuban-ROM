.class public Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;
.super Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.source "InstantUploadSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;,
        Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

.field private static final WIFI_ONLY:Z

.field private static sConnectionPhotoKey:Ljava/lang/String;

.field private static sConnectionVideoKey:Ljava/lang/String;

.field private static sInstantUploadKey:Ljava/lang/String;

.field private static sMatchFilter:Landroid/content/IntentFilter;

.field private static sOnBatteryKey:Ljava/lang/String;

.field private static sRoamingUploadKey:Ljava/lang/String;

.field private static sSyncNowKey:Ljava/lang/String;


# instance fields
.field private mIsReceiverRegistered:Z

.field private mIsUploading:Z

.field private mMasterSyncEnabled:Z

.field private mPhotoSyncEnabled:Z

.field private final mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
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

    sput-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

    .line 64
    const-string v0, "wifi-only"

    const-string v1, "ro.carrier"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$1;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 455
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->PROJECTION_PICASA_SETTINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mMasterSyncEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mPhotoSyncEnabled:Z

    return v0
.end method

.method static synthetic access$1500()Landroid/content/IntentFilter;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getRejectStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sSyncNowKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->updateEnabledStates(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    return-object v0
.end method

.method private getRejectStateString(I)Ljava/lang/String;
    .registers 3
    .parameter "rejectState"

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_46

    .line 302
    :pswitch_3
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 279
    :pswitch_b
    const/4 v0, 0x0

    goto :goto_a

    .line 281
    :pswitch_d
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 283
    :pswitch_15
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 285
    :pswitch_1d
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 288
    :pswitch_25
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 290
    :pswitch_2d
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 293
    :pswitch_35
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 296
    :pswitch_3d
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 276
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_3
        :pswitch_3
        :pswitch_3d
        :pswitch_2d
        :pswitch_25
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private getUploadUriWithAccount()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 311
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    sget-object v2, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 312
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v2, "account"

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 322
    move-object v1, p0

    .line 323
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 324
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_a

    .line 325
    invoke-static {v1, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 327
    :cond_a
    return-void
.end method

.method private setUpSyncCapability()V
    .registers 5

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 255
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v2, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 256
    .local v2, picasaAuthority:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 258
    .local v1, currentAccount:Landroid/accounts/Account;
    const-string v3, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mPhotoSyncEnabled:Z

    .line 260
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mMasterSyncEnabled:Z

    .line 263
    iget-boolean v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mMasterSyncEnabled:Z

    if-eqz v3, :cond_2d

    iget-boolean v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mPhotoSyncEnabled:Z

    if-eqz v3, :cond_2d

    .line 265
    new-instance v3, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;

    invoke-direct {v3, p0, p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$SystemSettingLoader;->startLoading()V

    .line 269
    :goto_2c
    return-void

    .line 267
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->finish()V

    goto :goto_2c
.end method

.method private updateEnabledStates(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 330
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz p1, :cond_e

    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v0, :cond_74

    :cond_e
    move v0, v2

    :goto_f
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 331
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz p1, :cond_76

    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v0, :cond_76

    move v0, v2

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz p1, :cond_2e

    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v0, :cond_78

    :cond_2e
    move v0, v2

    :goto_2f
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 333
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz p1, :cond_7a

    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v0, :cond_7a

    move v0, v2

    :goto_3f
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz p1, :cond_4e

    sget-boolean v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v0, :cond_7c

    :cond_4e
    move v0, v2

    :goto_4f
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 335
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz p1, :cond_7e

    sget-boolean v3, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->WIFI_ONLY:Z

    if-nez v3, :cond_7e

    :goto_5e
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 336
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 337
    sget-object v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sSyncNowKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    return-void

    :cond_74
    move v0, v1

    .line 330
    goto :goto_f

    :cond_76
    move v0, v1

    .line 331
    goto :goto_1f

    :cond_78
    move v0, v1

    .line 332
    goto :goto_2f

    :cond_7a
    move v0, v1

    .line 333
    goto :goto_3f

    :cond_7c
    move v0, v1

    .line 334
    goto :goto_4f

    :cond_7e
    move v2, v1

    .line 335
    goto :goto_5e
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    packed-switch p2, :pswitch_data_3e

    .line 233
    :goto_5
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->dismissDialog(I)V

    .line 234
    return-void

    .line 205
    :pswitch_9
    iput-boolean v6, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z

    .line 206
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CS_SETTINGS_SYNC_ALL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 207
    sget-object v3, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sSyncNowKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 208
    .local v1, syncNowPreference:Landroid/preference/Preference;
    const v3, 0x7f0800f2

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
    const v3, 0x7f0800f4

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 213
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v2, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$3;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 223
    .local v2, uploadTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    new-array v4, v6, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 203
    nop

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    if-nez v7, :cond_4b

    .line 123
    const v7, 0x7f08001b

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    .line 124
    const v7, 0x7f08001e

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    .line 125
    const v7, 0x7f08001f

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    .line 126
    const v7, 0x7f08001c

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    .line 127
    const v7, 0x7f080020

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    .line 128
    const v7, 0x7f08001d

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sSyncNowKey:Ljava/lang/String;

    .line 130
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    sput-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    .line 131
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sMatchFilter:Landroid/content/IntentFilter;

    const-string v8, "com.google.android.apps.plus.iu.upload_all_progress"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    :cond_4b
    const v7, 0x7f05000c

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->addPreferencesFromResource(I)V

    .line 137
    new-instance v3, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V

    .line 139
    .local v3, listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sInstantUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 140
    .local v2, instantUpload:Landroid/preference/Preference;
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const/4 v8, 0x0

    move-object v7, v2

    check-cast v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v8, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->hookMasterSwitch(Landroid/preference/PreferenceCategory;Landroid/preference/CheckBoxPreference;)V

    .line 143
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionPhotoKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 144
    .local v0, connectionPhotoPreference:Landroid/preference/Preference;
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sConnectionVideoKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 147
    .local v1, connectionVideoPreference:Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sRoamingUploadKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 150
    .local v5, roamingUpload:Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sOnBatteryKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 153
    .local v4, onBatteryUpload:Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    sget-object v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->sSyncNowKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 156
    .local v6, syncNowPreference:Landroid/preference/Preference;
    new-instance v7, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;-><init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .end local v2           #instantUpload:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->updateEnabledStates(Z)V

    .line 173
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 191
    if-nez p1, :cond_1e

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 194
    const v1, 0x7f08020b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x7f08020e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 198
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->setUpSyncCapability()V

    .line 180
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsReceiverRegistered:Z

    .line 239
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_a

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsReceiverRegistered:Z

    .line 246
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_a
    return-void
.end method
