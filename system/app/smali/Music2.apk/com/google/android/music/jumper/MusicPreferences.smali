.class public Lcom/google/android/music/jumper/MusicPreferences;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field private mPreferenceServiceBinded:Z

.field private mPreferencesLoaded:Z

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
    .line 59
    const-string v0, "MusicPreferences"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    .line 132
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/jumper/MusicPreferences;->MSG_REFRESH_STREAMING_ENABLED:I

    .line 934
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 936
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    .line 127
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    .line 129
    iput-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBinded:Z

    .line 130
    iput-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferencesLoaded:Z

    .line 210
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences$2;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRefreshStreamingEnabledRunnable:Ljava/lang/Runnable;

    .line 1008
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences$5;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListener:Lcom/google/android/music/IPreferenceChangeListener;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsXLargeScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    .line 139
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsLargeScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    .line 140
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    .line 141
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getIsTv()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsTv:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    .line 144
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    .line 147
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/jumper/MusicPreferences$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences$1;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 155
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->bindToPreferenceService()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabledSync()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/jumper/MusicPreferences;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasPreferenceService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/IPreferenceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/jumper/MusicPreferences;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized bindToPreferenceService()V
    .registers 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBinded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 167
    :goto_5
    monitor-exit p0

    return-void

    .line 162
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PREFERENCE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not connect to the preference service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1f

    .line 159
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_22
    const/4 v0, 0x1

    :try_start_23
    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBinded:Z
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_1f

    goto :goto_5
.end method

.method private destroy()V
    .registers 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->unbindFromPreferenceService()V

    .line 202
    return-void
.end method

.method private getBooleanPreference(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 829
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 830
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 832
    .end local p2
    :cond_17
    return p2
.end method

.method private static getDefaultViewModePreferenceKey(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Ljava/lang/String;
    .registers 4
    .parameter "orientation"
    .parameter "view"

    .prologue
    .line 655
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
    .line 851
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 852
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 853
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 855
    .end local p2
    :cond_17
    return p2
.end method

.method private getIsLargeScreen()Z
    .registers 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 259
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0x3

    .line 260
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
    .line 300
    iget-object v5, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v1

    .line 301
    .local v1, availableFeatures:[Landroid/content/pm/FeatureInfo;
    if-eqz v1, :cond_31

    .line 302
    move-object v0, v1

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v4, :cond_31

    aget-object v3, v0, v2

    .line 303
    .local v3, info:Landroid/content/pm/FeatureInfo;
    iget-object v5, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_2e

    const-string v5, "com.google.android.tv"

    iget-object v6, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 304
    sget-boolean v5, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v5, :cond_2c

    .line 305
    const-string v5, "MusicPreferences"

    const-string v6, "Found TV feature, using TV experience."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2c
    const/4 v5, 0x1

    .line 311
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/content/pm/FeatureInfo;
    .end local v4           #len$:I
    :goto_2d
    return v5

    .line 302
    .restart local v0       #arr$:[Landroid/content/pm/FeatureInfo;
    .restart local v2       #i$:I
    .restart local v3       #info:Landroid/content/pm/FeatureInfo;
    .restart local v4       #len$:I
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 311
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

    .line 273
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 275
    if-nez v0, :cond_f

    move v0, v1

    .line 296
    :goto_e
    return v0

    .line 280
    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-array v1, v1, [Ljava/lang/Class;

    .line 281
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "isVoiceCapable"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 284
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 285
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_26} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_26} :catch_28

    move-result v0

    goto :goto_e

    .line 294
    :catch_28
    move-exception v0

    .line 296
    :goto_29
    const/4 v0, 0x1

    goto :goto_e

    .line 291
    :catch_2b
    move-exception v0

    goto :goto_29

    .line 287
    :catch_2d
    move-exception v0

    goto :goto_29
.end method

.method private getIsXLargeScreen()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 237
    :try_start_1
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "SCREENLAYOUT_SIZE_XLARGE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_12} :catch_21

    move-result-object v2

    .line 242
    :try_start_13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    .line 244
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1b} :catch_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_1b} :catch_21

    and-int/lit8 v2, v2, 0xf

    if-ne v1, v2, :cond_20

    const/4 v0, 0x1

    .line 254
    :cond_20
    :goto_20
    return v0

    .line 251
    :catch_21
    move-exception v1

    goto :goto_20

    .line 247
    :catch_23
    move-exception v1

    goto :goto_20
.end method

.method private getLongPreference(Ljava/lang/String;J)J
    .registers 5
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 845
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 846
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 848
    .end local p2
    :cond_17
    return-wide p2
.end method

.method public static getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 5
    .parameter "context"
    .parameter "reference"

    .prologue
    .line 939
    sget-object v1, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    monitor-enter v1

    .line 940
    :try_start_3
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-nez v0, :cond_1c

    .line 942
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/jumper/MusicPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 944
    :cond_1c
    sget-object v0, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    monitor-exit v1

    return-object v0

    .line 945
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
    .line 836
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 837
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 838
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 840
    :goto_13
    return-object v0

    :cond_14
    move-object v0, p2

    goto :goto_13
.end method

.method private declared-synchronized hasPreferenceService()Z
    .registers 2

    .prologue
    .line 1080
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
    .line 448
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
    .line 456
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

.method public static isPreGingerbread()Z
    .registers 2

    .prologue
    .line 440
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
    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isRecentViewEnabled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 399
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
    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private notifyPreferenceChangeListeners(Ljava/lang/String;)V
    .registers 6
    .parameter "key"

    .prologue
    .line 1047
    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 1048
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

    .line 1049
    .local v1, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_9

    .line 1051
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

    .line 1052
    return-void
.end method

.method private refreshNetworkUsageComponent()V
    .registers 6

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 574
    const/4 v0, 0x1

    .line 579
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

    .line 582
    return-void

    .line 576
    .end local v0           #newState:I
    :cond_21
    const/4 v0, 0x2

    .restart local v0       #newState:I
    goto :goto_d
.end method

.method private refreshStreamingEnabledSync()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/tutorial/SignupStatus;->hasVerifiedAccounts(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    .line 220
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    if-nez v0, :cond_14

    .line 221
    invoke-virtual {p0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 224
    :cond_14
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshNetworkUsageComponent()V

    .line 226
    invoke-direct {p0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public static releaseMusicPreferences(Ljava/lang/Object;)V
    .registers 8
    .parameter "reference"

    .prologue
    .line 949
    sget-object v4, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    monitor-enter v4

    .line 950
    :try_start_3
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 951
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 952
    .local v2, referenceFound:Z
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 953
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 954
    .local v1, possibleReference:Ljava/lang/Object;
    if-eqz v1, :cond_1e

    if-ne v1, p0, :cond_a

    .line 955
    :cond_1e
    if-eqz v1, :cond_21

    .line 956
    const/4 v2, 0x1

    .line 958
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 969
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v1           #possibleReference:Ljava/lang/Object;
    .end local v2           #referenceFound:Z
    :catchall_25
    move-exception v3

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v3

    .line 961
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v2       #referenceFound:Z
    :cond_28
    if-nez v2, :cond_47

    .line 962
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

    .line 965
    :cond_47
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sPreferenceReferences:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-eqz v3, :cond_5b

    .line 966
    sget-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v3}, Lcom/google/android/music/jumper/MusicPreferences;->destroy()V

    .line 967
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/music/jumper/MusicPreferences;->sMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 969
    :cond_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_2a .. :try_end_5c} :catchall_25

    .line 970
    return-void
.end method

.method private resolveAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter "username"

    .prologue
    .line 477
    if-nez p1, :cond_4

    .line 478
    const/4 v2, 0x0

    .line 489
    :cond_3
    :goto_3
    return-object v2

    .line 480
    :cond_4
    iget-object v4, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 481
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.google"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 482
    .local v3, tmpaccounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 483
    .local v2, selectedAccount:Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 484
    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 485
    aget-object v2, v3, v1

    .line 486
    goto :goto_3

    .line 483
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private declared-synchronized runSavedServiceTasks()V
    .registers 4

    .prologue
    .line 1069
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

    .line 1070
    .local v1, task:Ljava/lang/Runnable;
    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v2, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 1069
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Ljava/lang/Runnable;
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1072
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    .line 1073
    monitor-exit p0

    return-void
.end method

.method private setPreference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 860
    if-nez p2, :cond_13

    .line 861
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :goto_a
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 866
    return-void

    .line 863
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private setPreferenceWithExtraTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "key"
    .parameter "value"
    .parameter "extraTask"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->waitForFullyLoaded()V

    .line 870
    if-nez p2, :cond_13

    .line 871
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :goto_a
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/jumper/MusicPreferences$AsyncPreferenceUpdate;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 876
    return-void

    .line 873
    :cond_13
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private switchAccountAsync(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 551
    new-instance v0, Lcom/google/android/music/jumper/MusicPreferences$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/jumper/MusicPreferences$3;-><init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/accounts/Account;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method private declared-synchronized unbindFromPreferenceService()V
    .registers 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBinded:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_7

    .line 175
    :goto_5
    monitor-exit p0

    return-void

    .line 173
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceServiceBinded:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 170
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearSyncForUnselectedAccounts()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 511
    iget-object v6, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 512
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v5

    .line 513
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

    .line 514
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 515
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 516
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 517
    const-string v6, "com.google.android.music.MusicContent"

    invoke-static {v0, v6, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 513
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 520
    .end local v0           #account:Landroid/accounts/Account;
    :cond_30
    return-void
.end method

.method public getAllSongsSortOrder()I
    .registers 3

    .prologue
    .line 668
    const-string v0, "AllSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getArtistSongsSortOrder()I
    .registers 3

    .prologue
    .line 676
    const-string v0, "ArtistSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    .registers 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    if-eqz v0, :cond_7

    .line 732
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 736
    :goto_6
    return-object v0

    .line 733
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    if-eqz v0, :cond_e

    .line 734
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    goto :goto_6

    .line 736
    :cond_e
    sget-object v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    goto :goto_6
.end method

.method public getDefaultViewMode(ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I
    .registers 5
    .parameter "orientation"
    .parameter "viewState"

    .prologue
    .line 633
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
    .line 716
    const-string v1, "DisplayOptions"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 717
    .local v0, displayOptions:I
    return v0
.end method

.method public getGenreSongsSortOrder()I
    .registers 3

    .prologue
    .line 684
    const-string v0, "GenreSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHideWhenNotConnected()Z
    .registers 3

    .prologue
    .line 741
    const-string v0, "HideWhenNotConnected"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 819
    const-string v1, "StringNonNegativeLoggingId"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, loggingId:Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 821
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 822
    const-string v1, "StringNonNegativeLoggingId"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 824
    :cond_1f
    return-object v0
.end method

.method public getPreferredSurfaceFormat()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 267
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

    .line 268
    .local v0, use32Bpp:Z
    :goto_14
    if-eqz v0, :cond_17

    const/4 v1, 0x2

    :cond_17
    return v1

    .end local v0           #use32Bpp:Z
    :cond_18
    move v0, v1

    .line 267
    goto :goto_14
.end method

.method public getRecentlyAddedSongsSortOrder()I
    .registers 3

    .prologue
    .line 692
    const-string v0, "RecentlyAddedSongsSortOrder"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSavedScreenTimeOut()I
    .registers 5

    .prologue
    .line 787
    const/4 v1, -0x1

    .line 789
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

    .line 794
    :goto_d
    const-string v2, "savedScreenTimeout"

    invoke-direct {p0, v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 791
    :catch_14
    move-exception v0

    .line 792
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

    .line 467
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 468
    const-string v1, "SelectedAccount"

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->resolveAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 470
    :cond_11
    return-object v0
.end method

.method public getShowLabels(I)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStoreAvailable()Z
    .registers 3

    .prologue
    .line 589
    const-string v0, "storeAvailable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStoreAvailableLastChecked()J
    .registers 4

    .prologue
    .line 597
    const-string v0, "storeAvailableLastChecked"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->getLongPreference(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStoreSongsSortOrder()I
    .registers 3

    .prologue
    .line 700
    const-string v0, "StoreSongsSortOrder"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getThumbsUpSongsSortOrder()I
    .registers 3

    .prologue
    .line 708
    const-string v0, "ThumbsUpSongsSortOrder"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasIconsInPopupMenus()Z
    .registers 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCachedStreamingMusicEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 659
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
    .line 369
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
    .line 506
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
    .line 324
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsLargeScreen:Z

    return v0
.end method

.method public isLockScreenActivityAvailable()Z
    .registers 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mLockScreenEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    .line 429
    const-string v0, "MusicPreferences"

    const-string v1, "Asking for isLockScreenActivityAvailable before loaded, defaulting to false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v0, 0x0

    .line 432
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
    .line 779
    const-string v0, "useLockScreenActivity"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOfflineDLOnlyOnWifi()Z
    .registers 3

    .prologue
    .line 770
    const-string v0, "OfflineDLOnlyOnWifi"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOfflineFeatureAvailable()Z
    .registers 2

    .prologue
    .line 362
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
    .line 406
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentCarousel:Z

    return v0
.end method

.method public isRecentWallViewEnabled()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mEnableNewAndRecentWall:Z

    return v0
.end method

.method public isStreamOnlyHQ()Z
    .registers 3

    .prologue
    .line 759
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
    .line 750
    const-string v0, "StreamOnlyOnWifi"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStreamingEnabled()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsStreamingEnabled:Z

    return v0
.end method

.method public isTabletMusic()Z
    .registers 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_14

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
    .line 348
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsTv:Z

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsVoiceCapable:Z

    return v0
.end method

.method public isXLargeScreen()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mIsXLargeScreen:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 973
    monitor-enter p0

    .line 974
    :try_start_1
    invoke-static {p2}, Lcom/google/android/music/IPreferenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IPreferenceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_50

    .line 976
    :try_start_7
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    iget-object v3, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListener:Lcom/google/android/music/IPreferenceChangeListener;

    invoke-interface {v2, v3}, Lcom/google/android/music/IPreferenceService;->registerPreferenceChangeListener(Lcom/google/android/music/IPreferenceChangeListener;)V

    .line 978
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;

    invoke-interface {v2}, Lcom/google/android/music/IPreferenceService;->getCurrentPreferences()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mCachedPreferences:Ljava/util/Map;

    .line 979
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferencesLoaded:Z
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_50
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_46

    .line 984
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_50

    .line 986
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshStreamingEnabled()V

    .line 990
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->clearSyncForUnselectedAccounts()V

    .line 993
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSavedScreenTimeOut()I

    move-result v1

    .line 994
    .local v1, screenTimeout:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 995
    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->removeSavedScreenTimeout()V

    .line 1000
    :cond_39
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->runSavedServiceTasks()V

    .line 1002
    monitor-enter p0

    .line 1003
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1004
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_53

    .line 1005
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/music/jumper/MusicPreferences;->notifyPreferenceChangeListeners(Ljava/lang/String;)V

    .line 1006
    .end local v1           #screenTimeout:I
    :goto_45
    return-void

    .line 980
    :catch_46
    move-exception v0

    .line 981
    .local v0, e:Landroid/os/RemoteException;
    :try_start_47
    const-string v2, "MusicPreferences"

    const-string v3, "Could not register remote preference change listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    monitor-exit p0

    goto :goto_45

    .line 984
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_50
    move-exception v2

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_50

    throw v2

    .line 1004
    .restart local v1       #screenTimeout:I
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 1076
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceService:Lcom/google/android/music/IPreferenceService;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 1077
    monitor-exit p0

    return-void

    .line 1076
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public preferencesLoaded()Z
    .registers 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferencesLoaded:Z

    return v0
.end method

.method public refreshStreamingEnabled()V
    .registers 5

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/jumper/MusicPreferences;->MSG_REFRESH_STREAMING_ENABLED:I

    iget-object v2, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRefreshStreamingEnabledRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;ILjava/lang/Runnable;Z)V

    .line 208
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 923
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 924
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    monitor-exit v1

    .line 926
    return-void

    .line 925
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
    .line 803
    const-string v0, "savedScreenTimeout"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public declared-synchronized runWithPreferenceService(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->hasPreferenceService()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1062
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mRunOnceServiceConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    .line 1066
    :goto_c
    monitor-exit p0

    return-void

    .line 1064
    :cond_e
    :try_start_e
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0, p1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_c

    .line 1061
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 672
    const-string v0, "AllSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    return-void
.end method

.method public setArtistSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 680
    const-string v0, "ArtistSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method public setCachedStreamingMusicEnabled(Z)V
    .registers 4
    .parameter "cache"

    .prologue
    .line 664
    const-string v0, "CacheStreamed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 5
    .parameter "choice"

    .prologue
    .line 723
    const-string v0, "DisplayOptions"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences$4;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences$4;-><init>(Lcom/google/android/music/jumper/MusicPreferences;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setPreferenceWithExtraTask(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 728
    return-void
.end method

.method public setGenreSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 688
    const-string v0, "GenreSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    return-void
.end method

.method public setHideNowPlayingBar(Z)V
    .registers 4
    .parameter "hide"

    .prologue
    .line 621
    const-string v0, "HideNowPlayingBar"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    return-void
.end method

.method public setHideWhenNotConnected(Z)V
    .registers 6
    .parameter "hide"

    .prologue
    .line 745
    const-string v0, "HideWhenNotConnected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 747
    return-void
.end method

.method public setLockScreenActivityEnabled(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 783
    const-string v0, "useLockScreenActivity"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method public setOffineDLOnlyOnWifi(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 774
    const-string v0, "OfflineDLOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 776
    return-void
.end method

.method public setRecentlyAddedSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 696
    const-string v0, "RecentlyAddedSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public setSavedScreenTimeout(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 798
    const-string v0, "savedScreenTimeout"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    return-void
.end method

.method public setShowLabels(IZ)V
    .registers 5
    .parameter "state"
    .parameter "value"

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowLabels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    return-void
.end method

.method public setStoreAvailable(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 593
    const-string v0, "storeAvailable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public setStoreAvailableLastChecked(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 601
    const-string v0, "storeAvailableLastChecked"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method public setStoreSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 704
    const-string v0, "StoreSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    return-void
.end method

.method public setStreamOnlyHQ(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 764
    const-string v0, "StreamOnlyHighQuality"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 766
    return-void
.end method

.method public setStreamOnlyOnWifi(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 754
    const-string v0, "StreamOnlyOnWifi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 756
    return-void
.end method

.method public setStreamingAccount(Landroid/accounts/Account;)V
    .registers 6
    .parameter "newAccount"

    .prologue
    const/4 v3, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 529
    .local v0, oldAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 547
    :goto_d
    return-void

    .line 533
    :cond_e
    const-string v2, "SelectedAccount"

    if-nez p1, :cond_4e

    const/4 v1, 0x0

    :goto_13
    invoke-direct {p0, v2, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    if-eqz v0, :cond_27

    .line 537
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 538
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 539
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 542
    :cond_27
    sget-boolean v1, Lcom/google/android/music/jumper/MusicPreferences;->LOGV:Z

    if-eqz v1, :cond_47

    .line 543
    const-string v2, "MusicPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Active account: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_51

    const-string v1, "null"

    :goto_3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_47
    invoke-direct {p0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->switchAccountAsync(Landroid/accounts/Account;)V

    .line 546
    invoke-direct {p0}, Lcom/google/android/music/jumper/MusicPreferences;->refreshNetworkUsageComponent()V

    goto :goto_d

    .line 533
    :cond_4e
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_13

    .line 543
    :cond_51
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_3c
.end method

.method public setThumbsUpSongsSortOrder(I)V
    .registers 4
    .parameter "order"

    .prologue
    .line 712
    const-string v0, "ThumbsUpSongsSortOrder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method public setTutorialViewed(Z)V
    .registers 4
    .parameter "viewed"

    .prologue
    .line 811
    const-string v0, "TutorialViewed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    return-void
.end method

.method public shouldHideNowPlayingBar()Z
    .registers 3

    .prologue
    .line 617
    const-string v0, "HideNowPlayingBar"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 929
    iget-object v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 930
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 931
    monitor-exit v1

    .line 932
    return-void

    .line 931
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public useActionBarNowPlaying()Z
    .registers 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public validateStreamingAccount()V
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_10

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 499
    :cond_10
    return-void
.end method

.method public declared-synchronized waitForFullyLoaded()V
    .registers 5

    .prologue
    .line 178
    monitor-enter p0

    const/4 v0, 0x1

    .line 179
    .local v0, firstLog:Z
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/music/jumper/MusicPreferences;->mPreferencesLoaded:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2f

    if-nez v1, :cond_3f

    .line 181
    :try_start_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_25

    .line 182
    const-string v1, "MusicPreferences"

    const-string v2, "Waiting for preferences to be fully loaded on main thread"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :goto_1c
    const/4 v0, 0x0

    .line 193
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 194
    :catch_23
    move-exception v1

    goto :goto_2

    .line 185
    :cond_25
    if-eqz v0, :cond_32

    .line 186
    const-string v1, "MusicPreferences"

    const-string v2, "Waiting for preferences to be fully loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_2e} :catch_23

    goto :goto_1c

    .line 178
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 188
    :cond_32
    :try_start_32
    const-string v1, "MusicPreferences"

    const-string v2, "STILL Waiting for preferences to be fully loaded"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_3e} :catch_23

    goto :goto_1c

    .line 198
    :cond_3f
    monitor-exit p0

    return-void
.end method

.method public wasTutorialViewed()Z
    .registers 3

    .prologue
    .line 807
    const-string v0, "TutorialViewed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
