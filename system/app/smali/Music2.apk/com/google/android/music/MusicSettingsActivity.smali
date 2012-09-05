.class public Lcom/google/android/music/MusicSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

.field private mCachedStreamed:Landroid/preference/CheckBoxPreference;

.field private mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

.field private mHideStreamingPreferences:Ljava/lang/Runnable;

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

.field private mUpdateUI:Ljava/lang/Runnable;

.field private mVersion:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "MusicSettings"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicSettingsActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    .line 135
    new-instance v0, Lcom/google/android/music/MusicSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicSettingsActivity$2;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideStreamingPreferences:Ljava/lang/Runnable;

    .line 239
    new-instance v0, Lcom/google/android/music/MusicSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicSettingsActivity$4;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mUpdateUI:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MusicSettingsActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideStreamingPreferences:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/MusicSettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/MusicSettingsActivity;)Ljava/util/Collection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/MusicSettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/music/MusicSettingsActivity;->mIsWifiOnly:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/MusicSettingsActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mUpdateUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/MusicSettingsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->getIsWifiOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MusicSettingsActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/MusicSettingsActivity;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private getIsWifiOnly()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-nez v2, :cond_50

    .line 192
    :try_start_a
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 193
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
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

    .line 201
    :goto_31
    return v0

    .line 195
    :catch_32
    move-exception v1

    .line 196
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

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    :cond_50
    move v0, v1

    .line 201
    goto :goto_31
.end method

.method public static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MusicSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    return-object v0
.end method

.method private refreshUI()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mUpdateUI:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 237
    :goto_d
    return-void

    .line 231
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v1, Lcom/google/android/music/MusicSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicSettingsActivity$3;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method private updateVersion()V
    .registers 6

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 208
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

    .line 212
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_27
    return-void

    .line 209
    :catch_28
    move-exception v0

    .line 210
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->addPreferencesFromResource(I)V

    .line 65
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    .line 71
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 75
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    .line 79
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    .line 83
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    .line 87
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    .line 91
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    .line 102
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamingPreferences:Ljava/util/Collection;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mDownloadQueueScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_118

    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_120

    .line 112
    :cond_118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the preference screens"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_120
    const-string v1, "music_version_key"

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mVersion:Landroid/preference/PreferenceScreen;

    .line 117
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->updateVersion()V

    .line 119
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 120
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_13b
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v1

    if-eqz v1, :cond_149

    .line 125
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideStreamingPreferences:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 133
    :goto_148
    return-void

    .line 127
    :cond_149
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v2, Lcom/google/android/music/MusicSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/MusicSettingsActivity$1;-><init>(Lcom/google/android/music/MusicSettingsActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    goto :goto_148
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 224
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 180
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_14

    .line 181
    invoke-virtual {p0}, Lcom/google/android/music/MusicSettingsActivity;->finish()V

    .line 182
    const/4 v0, 0x1

    .line 185
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
    .line 316
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 293
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mAccountSettingsScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_10

    .line 294
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    :goto_f
    return v0

    .line 295
    :cond_10
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_20

    .line 296
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mHideWhenNotConnected:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setHideWhenNotConnected(Z)V

    goto :goto_f

    .line 297
    :cond_20
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_30

    .line 298
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mCachedStreamed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setCachedStreamingMusicEnabled(Z)V

    goto :goto_f

    .line 299
    :cond_30
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_40

    .line 300
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamOnlyOnWifi(Z)V

    goto :goto_f

    .line 301
    :cond_40
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_50

    .line 302
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mStreamOnlyHQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamOnlyHQ(Z)V

    goto :goto_f

    .line 303
    :cond_50
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_60

    .line 304
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mOfflineDlOnlyOnWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setOffineDLOnlyOnWifi(Z)V

    goto :goto_f

    .line 305
    :cond_60
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mRefreshScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_6a

    .line 306
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v1, v0}, Lcom/google/android/music/MusicUtils;->requestSync(Lcom/google/android/music/jumper/MusicPreferences;Z)V

    goto :goto_f

    .line 307
    :cond_6a
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7a

    .line 308
    iget-object v1, p0, Lcom/google/android/music/MusicSettingsActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/MusicSettingsActivity;->mLockscreenControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setLockScreenActivityEnabled(Z)V

    goto :goto_f

    .line 310
    :cond_7a
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 218
    invoke-direct {p0}, Lcom/google/android/music/MusicSettingsActivity;->refreshUI()V

    .line 219
    return-void
.end method
