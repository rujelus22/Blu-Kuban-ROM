.class public Lcom/google/android/finsky/utils/PackageInfoCache;
.super Ljava/lang/Object;
.source "PackageInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .registers 5
    .parameter "pm"
    .parameter "receiver"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    new-instance v0, Lcom/google/android/finsky/utils/PackageInfoCache$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/PackageInfoCache$1;-><init>(Lcom/google/android/finsky/utils/PackageInfoCache;)V

    .line 66
    .local v0, packageMonitor:Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;
    invoke-virtual {p2, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updatePackageInfo(Ljava/lang/String;)V
    .registers 15
    .parameter "packageName"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    monitor-enter p0

    :try_start_3
    iget-object v11, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_55

    .line 128
    .local v0, packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    if-eqz v0, :cond_f

    .line 157
    :goto_d
    monitor-exit p0

    return-void

    .line 132
    :cond_f
    const/4 v1, -0x1

    .line 133
    .local v1, versionCode:I
    :try_start_10
    const-string v2, ""
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_55

    .line 134
    .local v2, versionName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 135
    .local v3, isSystemApp:Z
    const/4 v4, 0x0

    .line 136
    .local v4, isUpdatedSystemApp:Z
    const/4 v5, 0x0

    .line 137
    .local v5, canLaunch:Z
    const/4 v6, 0x0

    .line 139
    .local v6, isDisabledByUser:Z
    :try_start_16
    iget-object v11, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 140
    .local v7, pi:Landroid/content/pm/PackageInfo;
    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 141
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 142
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_37

    .line 143
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_58

    move v3, v9

    .line 144
    :goto_2e
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_5a

    move v4, v9

    .line 147
    :cond_37
    :goto_37
    iget-object v11, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_5c

    move v5, v9

    .line 148
    :goto_40
    iget-object v11, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_45} :catch_60

    move-result v8

    .line 149
    .local v8, state:I
    const/4 v11, 0x3

    if-ne v8, v11, :cond_5e

    move v6, v9

    .line 154
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    .end local v8           #state:I
    :goto_4a
    :try_start_4a
    new-instance v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    .end local v0           #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;-><init>(ILjava/lang/String;ZZZZ)V

    .line 156
    .restart local v0       #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    iget-object v9, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_55

    goto :goto_d

    .line 127
    .end local v0           #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    .end local v1           #versionCode:I
    .end local v2           #versionName:Ljava/lang/String;
    .end local v3           #isSystemApp:Z
    .end local v4           #isUpdatedSystemApp:Z
    .end local v5           #canLaunch:Z
    .end local v6           #isDisabledByUser:Z
    :catchall_55
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v0       #packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;
    .restart local v1       #versionCode:I
    .restart local v2       #versionName:Ljava/lang/String;
    .restart local v3       #isSystemApp:Z
    .restart local v4       #isUpdatedSystemApp:Z
    .restart local v5       #canLaunch:Z
    .restart local v6       #isDisabledByUser:Z
    .restart local v7       #pi:Landroid/content/pm/PackageInfo;
    :cond_58
    move v3, v10

    .line 143
    goto :goto_2e

    :cond_5a
    move v4, v10

    .line 144
    goto :goto_37

    :cond_5c
    move v5, v10

    .line 147
    goto :goto_40

    .restart local v8       #state:I
    :cond_5e
    move v6, v10

    .line 149
    goto :goto_4a

    .line 150
    .end local v7           #pi:Landroid/content/pm/PackageInfo;
    .end local v8           #state:I
    :catch_60
    move-exception v9

    goto :goto_4a
.end method


# virtual methods
.method public declared-synchronized canLaunch(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-boolean v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->canLaunch:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 117
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageVersion(Ljava/lang/String;)I
    .registers 3
    .parameter "packageName"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionCode:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 99
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->versionName:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 108
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDisabledByUser(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-boolean v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isDisabledByUser:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 122
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageInstalled(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-boolean v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isSystemApp:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 82
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUpdatedSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->updatePackageInfo(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;

    iget-boolean v0, v0, Lcom/google/android/finsky/utils/PackageInfoCache$PackageInfo;->isUpdatedSystemApp:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    .line 90
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
