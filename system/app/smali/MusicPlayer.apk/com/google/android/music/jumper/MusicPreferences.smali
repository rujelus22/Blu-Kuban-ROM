.class public Lcom/google/android/music/jumper/MusicPreferences;
.super Ljava/lang/Object;
.source "MusicPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final MSG_REFRESH_STREAMING_ENABLED:I

.field private static sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private static sPreferenceReferences:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCachedPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEnableNewAndRecentCarousel:Z

.field private final mEnableNewAndRecentWall:Z

.field private final mIsLargeScreen:Z

.field private mIsStreamingEnabled:Z

.field private final mIsTv:Z

.field private final mIsVoiceCapable:Z

.field private final mIsXLargeScreen:Z

.field private mLockScreenEnabled:Ljava/lang/Boolean;

.field private mPreferenceChangeListener:Lcom/google/android/music/IPreferenceChangeListener;

.field private mPreferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceService:Lcom/google/android/music/IPreferenceService;

.field private mPreferenceServiceBound:Z

.field private mPreferenceServiceConnected:Z

.field private mPreferenceServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private final mRefreshStreamingEnabledRunnable:Ljava/lang/Runnable;

.field private final mRunOnceServiceConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "MusicPreferences"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    .line 139
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/jumper/MusicPreferences;->MSG_REFRESH_STREAMING_ENABLED:I

    .line 1059
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 1061
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    .line 125
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    .line 132
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    .line 134
    iput-boolean v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z

    .line 137
    iput-boolean v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z

    .line 142
    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences$1;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 248
    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences$2;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRefreshStreamingEnabledRunnable:Ljava/lang/Runnable;

    .line 1138
    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences$5;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences$5;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListener:Lcom/google/android/music/IPreferenceChangeListener;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsXLargeScreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    .line 159
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsLargeScreen()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    .line 160
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsVoiceCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    .line 161
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsTv()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsTv:Z

    .line 163
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    .line 164
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    .line 166
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b000f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v2, "music_lock_screen_enabled"

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v2, 0x1

    :goto_7e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    .line 171
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    const-string v4, "MusicPreferences"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    .line 174
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->updateStreamingEnabled()V

    .line 175
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->bindToPreferenceService()V

    .line 176
    return-void

    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_99
    move v2, v3

    .line 167
    goto :goto_7e
.end method

.method static synthetic access$000(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ComponentName;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->onServiceDisconnectedImp(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabledSync()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/jumper/MusicPreferences;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasPreferenceService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bindToPreferenceService()V
    .registers 5

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    .line 187
    :goto_5
    monitor-exit p0

    return-void

    .line 182
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.PREFERENCE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not connect to the preference service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_21

    .line 179
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_24
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_21

    goto :goto_5
.end method

.method private destroy()V
    .registers 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->unbindFromPreferenceService()V

    .line 240
    return-void
.end method

.method private getBooleanPreference(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 952
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 954
    .end local p2
    :cond_14
    return p2
.end method

.method private static getDefaultViewModePreferenceKey(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Ljava/lang/String;
    .registers 4
    .parameter "orientation"
    .parameter "view"

    .prologue
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentViewMode_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 978
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 980
    .end local p2
    :cond_14
    return p2
.end method

.method private getIsLargeScreen()Z
    .registers 4

    .prologue
    .line 314
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 315
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0x3

    .line 316
    .local v1, screenSize:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    const/4 v2, 0x1

    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private getIsTv()Z
    .registers 8

    .prologue
    .line 356
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v1

    .line 357
    .local v1, availableFeatures:[Landroid/content/pm/FeatureInfo;
    if-eqz v1, :cond_31

    .line 358
    move-object v0, v1

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v4, :cond_31

    aget-object v3, v0, v2

    .line 359
    .local v3, info:Landroid/content/pm/FeatureInfo;
    iget-object v5, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_2e

    const-string v5, "com.google.android.tv"

    iget-object v6, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 360
    sget-boolean v5, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v5, :cond_2c

    .line 361
    const-string v5, "MusicPreferences"

    const-string v6, "Found TV feature, using TV experience."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2c
    const/4 v5, 0x1

    .line 367
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/content/pm/FeatureInfo;
    .end local v4           #len$:I
    :goto_2d
    return v5

    .line 358
    .restart local v0       #arr$:[Landroid/content/pm/FeatureInfo;
    .restart local v2       #i$:I
    .restart local v3       #info:Landroid/content/pm/FeatureInfo;
    .restart local v4       #len$:I
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 367
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/content/pm/FeatureInfo;
    .end local v4           #len$:I
    :cond_31
    const/4 v5, 0x0

    goto :goto_2d
.end method

.method private getIsVoiceCapable()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 331
    if-nez v0, :cond_f

    move v0, v1

    .line 352
    :goto_e
    return v0

    .line 336
    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-array v1, v1, [Ljava/lang/Class;

    .line 337
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "isVoiceCapable"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 340
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 341
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_26} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_26} :catch_28

    move-result v0

    goto :goto_e

    .line 350
    :catch_28
    move-exception v0

    .line 352
    :goto_29
    const/4 v0, 0x1

    goto :goto_e

    .line 347
    :catch_2b
    move-exception v0

    goto :goto_29

    .line 343
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private getIsXLargeScreen()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 293
    :try_start_1
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "SCREENLAYOUT_SIZE_XLARGE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_12} :catch_21

    move-result-object v2

    .line 298
    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    .line 300
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1b} :catch_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_1b} :catch_21

    and-int/lit8 v2, v2, 0xf

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 310
    :cond_20
    :goto_20
    return v0

    .line 307
    :catch_21
    move-exception v1

    goto :goto_20

    .line 303
    :catch_23
    move-exception v1

    goto :goto_20
.end method

.method private getLongPreference(Ljava/lang/String;J)J
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 972
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 974
    .end local p2
    :cond_14
    return-wide p2
.end method

.method public static getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 5
    .parameter "context"
    .parameter "reference"

    .prologue
    .line 1064
    sget-object v1, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1065
    :try_start_3
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1066
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-nez v0, :cond_1c

    .line 1067
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/jumper/MusicPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 1069
    :cond_1c
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-exit v1

    return-object v0

    .line 1070
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 959
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 961
    :goto_10
    return-object v0

    :cond_11
    move-object v0, p2

    goto :goto_10
.end method

.method private declared-synchronized hasPreferenceService()Z
    .registers 2

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isHoneycombOrGreater()Z
    .registers 2

    .prologue
    .line 507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isICSOrGreater()Z
    .registers 2

    .prologue
    .line 515
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isJellyBeanOrGreater()Z
    .registers 2

    .prologue
    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isPreGingerbread()Z
    .registers 2

    .prologue
    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isRecentCarouselViewEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isRecentViewEnabled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 458
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isRecentWallViewEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private notifyPreferenceChangeListeners(Ljava/lang/String;)V
    .registers 6
    .parameter "key"

    .prologue
    .line 1177
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 1178
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1179
    .local v1, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_9

    .line 1181
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1d
    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    .line 1182
    return-void
.end method

.method private onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1100
    monitor-enter p0

    .line 1101
    :try_start_1
    invoke-static {p2}, Lcom/google/android/music/IPreferenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    .line 1102
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z

    .line 1103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_53

    .line 1105
    :try_start_d
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListener:Lcom/google/android/music/IPreferenceChangeListener;

    invoke-interface {v2, v3}, Lcom/google/android/music/IPreferenceService;->registerPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V

    .line 1109
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    invoke-interface {v2}, Lcom/google/android/music/IPreferenceService;->getCurrentPreferences()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_49

    .line 1114
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_53

    .line 1116
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->clearSyncForUnselectedAccounts()V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSavedScreenTimeOut()I

    move-result v1

    .line 1124
    .local v1, screenTimeout:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 1125
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->removeSavedScreenTimeout()V

    .line 1130
    :cond_3c
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->runSavedServiceTasks()V

    .line 1132
    monitor-enter p0

    .line 1133
    :try_start_40
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1134
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_56

    .line 1135
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    .line 1136
    .end local v1           #screenTimeout:I
    :goto_48
    return-void

    .line 1110
    :catch_49
    move-exception v0

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4a
    const-string v2, "MusicPreferences"

    const-string v3, "Could not register remote preference change listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    monitor-exit p0

    goto :goto_48

    .line 1114
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_53
    move-exception v2

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_53

    throw v2

    .line 1134
    .restart local v1       #screenTimeout:I
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method

.method private declared-synchronized onServiceDisconnectedImp(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 1206
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    .line 1207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1208
    monitor-exit p0

    return-void

    .line 1206
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private refreshNetworkUsageComponent()V
    .registers 6

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 646
    const/4 v0, 0x1

    .line 651
    .local v0, newState:I
    :goto_d
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    const-string v4, "com.google.android.music.Settings.NetworkUsage"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 654
    return-void

    .line 648
    .end local v0           #newState:I
    :cond_21
    const/4 v0, 0x2

    .restart local v0       #newState:I
    goto :goto_d
.end method

.method private refreshStreamingEnabledSync()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->updateStreamingEnabled()V

    .line 262
    iget-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    if-nez v1, :cond_16

    .line 263
    invoke-virtual {p0, v4}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 280
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshNetworkUsageComponent()V

    .line 282
    invoke-direct {p0, v4}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    .line 283
    return-void

    .line 272
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 273
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_f

    .line 274
    sget-boolean v1, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v1, :cond_3a

    .line 275
    const-string v1, "MusicPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-setting music sync state for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3a
    const-string v1, "com.google.android.music.MusicContent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_f
.end method

.method public static releaseMusicPreferences(Ljava/lang/Object;)V
    .registers 8
    .parameter "reference"

    .prologue
    .line 1074
    sget-object v4, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1075
    :try_start_3
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1076
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 1077
    .local v2, referenceFound:Z
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1078
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1079
    .local v1, possibleReference:Ljava/lang/Object;
    if-eqz v1, :cond_1e

    if-ne v1, p0, :cond_a

    .line 1080
    :cond_1e
    if-eqz v1, :cond_21

    .line 1081
    const/4 v2, 0x1

    .line 1083
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 1096
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v1           #possibleReference:Ljava/lang/Object;
    .end local v2           #referenceFound:Z
    :catchall_25
    move-exception v3

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v3

    .line 1086
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v2       #referenceFound:Z
    :cond_28
    if-nez v2, :cond_47

    .line 1087
    :try_start_2a
    const-string v3, "MusicPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find reference holding on to MusicPreferences: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    :cond_47
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-eqz v3, :cond_5b

    .line 1093
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v3}, Lcom/google/android/music/jumper/MusicPreferences;->destroy()V

    .line 1094
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 1096
    :cond_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_25

    .line 1097
    return-void
.end method

.method private resolveAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter "username"

    .prologue
    .line 544
    if-nez p1, :cond_4

    .line 545
    const/4 v2, 0x0

    .line 556
    :cond_3
    :goto_3
    return-object v2

    .line 547
    :cond_4
    iget-object v4, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 548
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.google"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 549
    .local v3, tmpaccounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 550
    .local v2, selectedAccount:Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 551
    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 552
    aget-object v2, v3, v1

    .line 553
    goto :goto_3

    .line 550
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private declared-synchronized runSavedServiceTasks()V
    .registers 4

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1200
    .local v1, task:Ljava/lang/Runnable;
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v2, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 1199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Ljava/lang/Runnable;
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1202
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    .line 1203
    monitor-exit p0

    return-void
.end method

.method private setNewAtHomeSubmitterId()J
    .registers 5

    .prologue
    .line 937
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 938
    .local v0, submitterId:J
    const-string v2, "AtHomeSubmitterId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 939
    return-wide v0
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 984
    if-nez p2, :cond_10

    .line 985
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :goto_7
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 990
    return-void

    .line 987
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method private setPreferenceWithExtraTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "key"
    .parameter "value"
    .parameter "extraTask"

    .prologue
    .line 993
    if-nez p2, :cond_10

    .line 994
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    :goto_7
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 999
    return-void

    .line 996
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method private switchAccountAsync(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 622
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/jumper/MusicPreferences$3;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/accounts/Account;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 637
    return-void
.end method

.method private declared-synchronized unbindFromPreferenceService()V
    .registers 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    .line 198
    :goto_5
    monitor-exit p0

    return-void

    .line 194
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 190
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateStreamingEnabled()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->hasVerifiedAccounts(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    .line 257
    return-void
.end method

.method private declared-synchronized waitForServiceConnection()Z
    .registers 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_16

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "waitForServiceConnection() was called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    .line 224
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_16
    :goto_16
    :try_start_16
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBound:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_13

    if-nez v0, :cond_24

    .line 230
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_16

    .line 231
    :catch_22
    move-exception v0

    goto :goto_16

    .line 235
    :cond_24
    :try_start_24
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceConnected:Z
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_13

    monitor-exit p0

    return v0
.end method


# virtual methods
.method public clearSyncForUnselectedAccounts()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 578
    iget-object v6, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 579
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 580
    .local v5, selectedAccount:Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_30

    aget-object v0, v2, v3

    .line 581
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 582
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 583
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 584
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 580
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 587
    .end local v0           #account:Landroid/accounts/Account;
    :cond_30
    return-void
.end method

.method public getAllSongsSortOrder()I
    .registers 3

    .prologue
    .line 765
    const-string v0, "AllSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getArtistSongsSortOrder()I
    .registers 3

    .prologue
    .line 773
    const-string v0, "ArtistSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAtHomeSubmitterId()J
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    .line 929
    const-string v2, "AtHomeSubmitterId"

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/music/jumper/MusicPreferences;->getLongPreference(Ljava/lang/String;J)J

    move-result-wide v0

    .line 930
    .local v0, submitterId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_10

    .line 931
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->setNewAtHomeSubmitterId()J

    move-result-wide v0

    .line 933
    :cond_10
    return-wide v0
.end method

.method public getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    if-eqz v0, :cond_7

    .line 829
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 833
    :goto_6
    return-object v0

    .line 830
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    if-eqz v0, :cond_e

    .line 831
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    goto :goto_6

    .line 833
    :cond_e
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    goto :goto_6
.end method

.method public getDefaultViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I
    .registers 5
    .parameter "orientation"
    .parameter "viewState"

    .prologue
    .line 722
    invoke-static {p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultViewModePreferenceKey(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDisplayOptions()I
    .registers 4

    .prologue
    .line 813
    const-string v1, "DisplayOptions"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 814
    .local v0, displayOptions:I
    return v0
.end method

.method public getGenreSongsSortOrder()I
    .registers 3

    .prologue
    .line 781
    const-string v0, "GenreSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHideWhenNotConnected()Z
    .registers 3

    .prologue
    .line 838
    const-string v0, "HideWhenNotConnected"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 916
    const-string v1, "StringNonNegativeLoggingId"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, loggingId:Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 918
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 919
    const-string v1, "StringNonNegativeLoggingId"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 921
    :cond_1f
    return-object v0
.end method

.method public getPreferredSurfaceFormat()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v0, 0x1

    .line 324
    .local v0, use32Bpp:Z
    :goto_14
    if-eqz v0, :cond_17

    const/4 v1, 0x2

    :cond_17
    return v1

    .end local v0           #use32Bpp:Z
    :cond_18
    move v0, v1

    .line 323
    goto :goto_14
.end method

.method public getRecentlyAddedSongsSortOrder()I
    .registers 3

    .prologue
    .line 789
    const-string v0, "RecentlyAddedSongsSortOrder"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSavedScreenTimeOut()I
    .registers 5

    .prologue
    .line 884
    const/4 v1, -0x1

    .line 886
    .local v1, systemValue:I
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_14

    move-result v1

    .line 891
    :goto_d
    const-string v2, "savedScreenTimeout"

    invoke-direct {p0, v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 888
    :catch_14
    move-exception v0

    .line 889
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MusicPreferences"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getSelectedAccount()Landroid/accounts/Account;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 535
    const-string v1, "SelectedAccount"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->resolveAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 537
    :cond_11
    return-object v0
.end method

.method public getStoreAvailable()Z
    .registers 3

    .prologue
    .line 661
    const-string v0, "storeAvailable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStoreAvailableLastChecked()J
    .registers 4

    .prologue
    .line 670
    const-string v0, "storeAvailableLastChecked"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getLongPreference(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStoreSongsSortOrder()I
    .registers 3

    .prologue
    .line 797
    const-string v0, "StoreSongsSortOrder"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThumbsUpSongsSortOrder()I
    .registers 3

    .prologue
    .line 805
    const-string v0, "ThumbsUpSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTopLevelDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 4

    .prologue
    .line 698
    const-string v1, "TopLevelDisplayMode"

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 699
    .local v0, ordinal:I
    iget-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    if-nez v1, :cond_1a

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2d

    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    if-nez v1, :cond_26

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2d

    :cond_26
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_35

    .line 704
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v0

    .line 706
    :cond_35
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public isCachedStreamingMusicEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 748
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isCachingFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "CacheStreamed"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCachingFeatureAvailable()Z
    .registers 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isConfiguredStreamingAccount()Z
    .registers 3

    .prologue
    .line 573
    const-string v0, "SelectedAccount"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isLargeScreen()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    return v0
.end method

.method public isLockScreenActivityAvailable()Z
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    .line 488
    const-string v0, "MusicPreferences"

    const-string v1, "Asking for isLockScreenActivityAvailable before loaded, defaulting to false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_11
.end method

.method public isLockScreenActivityEnabled()Z
    .registers 3

    .prologue
    .line 876
    const-string v0, "useLockScreenActivity"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLogFilesEnabled()Z
    .registers 3

    .prologue
    .line 757
    const-string v0, "LogFilesEnabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOfflineDLOnlyOnWifi()Z
    .registers 3

    .prologue
    .line 867
    const-string v0, "OfflineDLOnlyOnWifi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOfflineFeatureAvailable()Z
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRecentCarouselViewEnabled()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    return v0
.end method

.method public isRecentWallViewEnabled()Z
    .registers 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    return v0
.end method

.method public isStreamOnlyHQ()Z
    .registers 3

    .prologue
    .line 856
    const-string v1, "StreamOnlyHighQuality"

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStreamOnlyOnWifi()Z
    .registers 3

    .prologue
    .line 847
    const-string v0, "StreamOnlyOnWifi"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStreamingEnabled()Z
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    return v0
.end method

.method public isTabletMusicExperience()Z
    .registers 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isTvMusic()Z
    .registers 2

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsTv:Z

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    return v0
.end method

.method public isXLargeScreen()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    return v0
.end method

.method public refreshStreamingEnabled()V
    .registers 5

    .prologue
    .line 244
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/jumper/MusicPreferences;->MSG_REFRESH_STREAMING_ENABLED:I

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRefreshStreamingEnabledRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;ILjava/lang/Runnable;Z)V

    .line 246
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 1049
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    monitor-exit v1

    .line 1051
    return-void

    .line 1050
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeSavedScreenTimeout()V
    .registers 3

    .prologue
    .line 900
    const-string v0, "savedScreenTimeout"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    return-void
.end method

.method public declared-synchronized runWithPreferenceService(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasPreferenceService()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1192
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    .line 1196
    :goto_c
    monitor-exit p0

    return-void

    .line 1194
    :cond_e
    :try_start_e
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0, p1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_c

    .line 1191
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 769
    const-string v0, "AllSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    return-void
.end method

.method public setArtistSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 777
    const-string v0, "ArtistSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    return-void
.end method

.method public setCachedStreamingMusicEnabled(Z)V
    .registers 4
    .parameter "cache"

    .prologue
    .line 753
    const-string v0, "CacheStreamed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 5
    .parameter "choice"

    .prologue
    .line 820
    const-string v0, "DisplayOptions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences$4;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences$4;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setPreferenceWithExtraTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method public setGenreSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 785
    const-string v0, "GenreSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 786
    return-void
.end method

.method public setHideNowPlayingBar(Z)V
    .registers 4
    .parameter "hide"

    .prologue
    .line 694
    const-string v0, "HideNowPlayingBar"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    return-void
.end method

.method public setHideWhenNotConnected(Z)V
    .registers 6
    .parameter "hide"

    .prologue
    .line 842
    const-string v0, "HideWhenNotConnected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 844
    return-void
.end method

.method public setLockScreenActivityEnabled(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 880
    const-string v0, "useLockScreenActivity"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 881
    return-void
.end method

.method public setLogFilesEnable(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 761
    const-string v0, "LogFilesEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    return-void
.end method

.method public setOffineDLOnlyOnWifi(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 871
    const-string v0, "OfflineDLOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 873
    return-void
.end method

.method public setRecentlyAddedSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 793
    const-string v0, "RecentlyAddedSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    return-void
.end method

.method public setSavedScreenTimeout(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 895
    const-string v0, "savedScreenTimeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    return-void
.end method

.method public setStoreAvailable(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 665
    const-string v0, "MusicPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting store availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v0, "storeAvailable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    return-void
.end method

.method public setStoreAvailableLastChecked(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 674
    const-string v0, "storeAvailableLastChecked"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public setStoreSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 801
    const-string v0, "StoreSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    return-void
.end method

.method public setStreamOnlyHQ(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 861
    const-string v0, "StreamOnlyHighQuality"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 863
    return-void
.end method

.method public setStreamOnlyOnWifi(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 851
    const-string v0, "StreamOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 853
    return-void
.end method

.method public setStreamingAccount(Landroid/accounts/Account;)V
    .registers 6
    .parameter "newAccount"

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 598
    .local v0, oldAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_d
    if-nez v0, :cond_12

    if-nez p1, :cond_12

    .line 618
    :cond_11
    :goto_11
    return-void

    .line 603
    :cond_12
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->setNewAtHomeSubmitterId()J

    .line 604
    const-string v2, "SelectedAccount"

    if-nez p1, :cond_55

    const/4 v1, 0x0

    :goto_1a
    invoke-direct {p0, v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    if-eqz v0, :cond_2e

    .line 608
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 609
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 610
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 613
    :cond_2e
    sget-boolean v1, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v1, :cond_4e

    .line 614
    const-string v2, "MusicPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Active account: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_58

    const-string v1, "null"

    :goto_43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_4e
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->switchAccountAsync(Landroid/accounts/Account;)V

    .line 617
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshNetworkUsageComponent()V

    goto :goto_11

    .line 604
    :cond_55
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_1a

    .line 614
    :cond_58
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_43
.end method

.method public setThumbsUpSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 809
    const-string v0, "ThumbsUpSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 810
    return-void
.end method

.method public setTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 710
    const-string v0, "TopLevelDisplayMode"

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    return-void
.end method

.method public setTutorialViewed(Z)V
    .registers 4
    .parameter "viewed"

    .prologue
    .line 908
    const-string v0, "TutorialViewed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 909
    return-void
.end method

.method public shouldHideNowPlayingBar()Z
    .registers 3

    .prologue
    .line 690
    const-string v0, "HideNowPlayingBar"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showVolumeButton()Z
    .registers 2

    .prologue
    .line 967
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    return v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 1055
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1056
    monitor-exit v1

    .line 1057
    return-void

    .line 1056
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public useActionBarNowPlaying()Z
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public validateStreamingAccount()V
    .registers 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_10

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 566
    :cond_10
    return-void
.end method

.method public declared-synchronized waitForFullyLoaded()Z
    .registers 2

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForServiceConnection()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wasTutorialViewed()Z
    .registers 3

    .prologue
    .line 904
    const-string v0, "TutorialViewed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
