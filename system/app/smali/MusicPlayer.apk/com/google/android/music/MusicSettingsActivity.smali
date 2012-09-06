.class public Lcom/google/android/music/MusicSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

.field private mAndroidAtHomeScreen:Landroid/preference/PreferenceScreen;

.field private mCachedStreamed:Landroid/preference/CheckBoxPreference;

.field private mDebugLogs:Landroid/preference/CheckBoxPreference;

.field private mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

.field private mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

.field private mIsWifiOnly:Z

.field private mLockscreenControls:Landroid/preference/CheckBoxPreference;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

.field private mRefreshScreen:Landroid/preference/PreferenceScreen;

.field private mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

.field private mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

.field private mStreamingPreferences:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mVersion:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "MusicSettings"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicSettingsActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MusicSettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->killOurProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/MusicSettingsActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicSettingsActivity;->handleEnableDebugLogs(Z)V

    return-void
.end method

.method private getIsWifiOnly()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-nez v2, :cond_50

    .line 220
    :try_start_a
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 221
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 222
    const-string v2, "wifi-only"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.carrier"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_32

    move-result v0

    .line 229
    :goto_31
    return v0

    .line 223
    :catch_32
    move-exception v1

    .line 224
    const-string v2, "MusicSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to access SystemProperties to check if wifi-only: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_50
    move v0, v1

    .line 229
    goto :goto_31
.end method

.method public static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    return-object v0
.end method

.method private handleEnableDebugLogs(Z)V
    .registers 7
    .parameter "actionConfirmed"

    .prologue
    .line 397
    if-nez p1, :cond_13

    .line 399
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 400
    .local v0, value:Z
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 416
    .end local v0           #value:Z
    :goto_10
    return-void

    .line 400
    .restart local v0       #value:Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 404
    .end local v0           #value:Z
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setLogFilesEnable(Z)V

    .line 411
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicSettingsActivity$1;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/Worker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method private killOurProcesses()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 374
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 375
    .local v0, activityManger:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v5, -0x1

    .line 377
    .local v5, uiPid:I
    const/4 v3, -0x1

    .line 378
    .local v3, mainPid:I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 379
    .local v4, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.google.android.music:main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 380
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 384
    :cond_2b
    :goto_2b
    if-eq v5, v8, :cond_13

    if-eq v3, v8, :cond_13

    .line 388
    .end local v4           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2f
    if-eq v3, v8, :cond_34

    .line 389
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 391
    :cond_34
    if-eq v5, v8, :cond_39

    .line 392
    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 394
    :cond_39
    return-void

    .line 381
    .restart local v4       #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3a
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.google.android.music:ui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 382
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    goto :goto_2b
.end method

.method private refreshUI()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 261
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 266
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_8f

    .line 268
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 272
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 273
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 275
    iget-boolean v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-nez v1, :cond_3c

    .line 276
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    :cond_3c
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 300
    :goto_41
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyHQ()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineDLOnlyOnWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isLogFilesEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    return-void

    .line 282
    :cond_8f
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002d

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 285
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 286
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 291
    :goto_b7
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 293
    iget-boolean v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-nez v1, :cond_d5

    .line 294
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 297
    :cond_d5
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_41

    .line 288
    :cond_dc
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_b7
.end method

.method private updateVersion()V
    .registers 6

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 236
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mVersion:Landroid/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    .line 240
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_27
    return-void

    .line 237
    :catch_28
    move-exception v0

    .line 238
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MusicSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found (to retrieve version number)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 82
    const v6, 0x7f060001

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 86
    .local v4, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 88
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    .line 92
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    .line 100
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    .line 112
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    .line 116
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    .line 126
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v6, "android_at_home"

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mAndroidAtHomeScreen:Landroid/preference/PreferenceScreen;

    .line 130
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-gt v6, v7, :cond_157

    .line 131
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mAndroidAtHomeScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :goto_12b
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14f

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    if-nez v6, :cond_15f

    .line 145
    :cond_14f
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not find the preference screens"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    :cond_157
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v7, p0, Lcom/google/android/music/MusicSettingsActivity;->mAndroidAtHomeScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12b

    .line 148
    :cond_15f
    const-string v6, "music_version_key"

    invoke-virtual {p0, v6}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mVersion:Landroid/preference/PreferenceScreen;

    .line 150
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->updateVersion()V

    .line 152
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v6

    if-eqz v6, :cond_17a

    .line 153
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 157
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_17a
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->getIsWifiOnly()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    .line 159
    iget-boolean v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    if-eqz v6, :cond_19c

    .line 160
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_194

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_19c

    .line 162
    :cond_194
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not remove the streaming over wifi preferences"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 167
    :cond_19c
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isCachingFeatureAvailable()Z

    move-result v6

    if-nez v6, :cond_1b4

    .line 168
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_1b4

    .line 169
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not remove the caching preferences"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    :cond_1b4
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isOfflineFeatureAvailable()Z

    move-result v6

    if-nez v6, :cond_1d4

    .line 175
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_1cc

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_1d4

    .line 177
    :cond_1cc
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not remove the offline preferences"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_1d4
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityAvailable()Z

    move-result v6

    if-nez v6, :cond_1ec

    .line 183
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_1ec

    .line 184
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not remove the lockscreen controls preferences"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_1ec
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 190
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v6, "music_debug_logs_enabled"

    invoke-static {v5, v6, v8}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 191
    .local v2, isDebugLogsAvailable:Z
    if-nez v2, :cond_211

    .line 192
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_20c

    .line 193
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Could not remove the debug logs preferences"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_20c
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6, v8}, Lcom/google/android/music/jumper/MusicPreferences;->setLogFilesEnable(Z)V

    .line 199
    :cond_211
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v6

    if-nez v6, :cond_22f

    .line 200
    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 201
    .local v3, preference:Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_21f

    .line 204
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_22f
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 420
    if-eqz p1, :cond_4

    .line 421
    const/4 v1, 0x0

    .line 444
    :goto_3
    return-object v1

    .line 424
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 426
    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 430
    :goto_17
    const v1, 0x7f0d0006

    new-instance v2, Lcom/google/android/music/MusicSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicSettingsActivity$2;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    const v1, 0x7f0d0005

    new-instance v2, Lcom/google/android/music/MusicSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicSettingsActivity$3;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_3

    .line 428
    :cond_32
    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_17
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 256
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 208
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_14

    .line 209
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->finish()V

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_13
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_15

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #i:Landroid/content/Intent;
    :cond_13
    :goto_13
    move v1, v2

    .line 370
    :cond_14
    return v1

    .line 315
    :cond_15
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_49

    .line 316
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "hideWhenNotConnected"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_34

    move v1, v2

    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setHideWhenNotConnected(Z)V

    goto :goto_13

    .line 322
    :cond_49
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7d

    .line 323
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "cacheStreamed"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_68

    move v1, v2

    :cond_68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setCachedStreamingMusicEnabled(Z)V

    goto :goto_13

    .line 329
    :cond_7d
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b2

    .line 330
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "streamOnlyWifi"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9c

    move v1, v2

    :cond_9c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamOnlyOnWifi(Z)V

    goto/16 :goto_13

    .line 336
    :cond_b2
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e7

    .line 337
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "streamOnlyHQ"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d1

    move v1, v2

    :cond_d1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamOnlyHQ(Z)V

    goto/16 :goto_13

    .line 343
    :cond_e7
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_11c

    .line 344
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "pinOnlyWifi"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_106

    move v1, v2

    :cond_106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setOffineDLOnlyOnWifi(Z)V

    goto/16 :goto_13

    .line 350
    :cond_11c
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_130

    .line 351
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "refresh"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v1, v2}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V

    goto/16 :goto_13

    .line 353
    :cond_130
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mAndroidAtHomeScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_14e

    .line 354
    invoke-static {p0}, Lcom/google/android/music/athome/AtHomeUtils;->areAtHomeAppsInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-static {p0}, Lcom/google/android/music/athome/AtHomeUtils;->startAtHomeApp(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 355
    :cond_140
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "downloadAtHome"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {p0}, Lcom/google/android/music/athome/AtHomeUtils;->sendUserToGetAtHomeApps(Landroid/content/Context;)V

    goto/16 :goto_13

    .line 358
    :cond_14e
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_183

    .line 359
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v4, "changeSetting"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setting"

    aput-object v6, v5, v1

    const-string v6, "lockScreenControls"

    aput-object v6, v5, v2

    const-string v6, "settingValue"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_16d

    move v1, v2

    :cond_16d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setLockScreenActivityEnabled(Z)V

    goto/16 :goto_13

    .line 365
    :cond_183
    iget-object v3, p0, Lcom/google/android/music/MusicSettingsActivity;->mDebugLogs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_14

    .line 366
    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->showDialog(I)V

    goto/16 :goto_13
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 247
    return-void
.end method
