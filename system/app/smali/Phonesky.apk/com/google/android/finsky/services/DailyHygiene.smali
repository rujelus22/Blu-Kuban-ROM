.class public Lcom/google/android/finsky/services/DailyHygiene;
.super Landroid/app/Service;
.source "DailyHygiene.java"


# static fields
.field public static final BOOT_DELAY_MS:J

.field public static final IMMEDIATE_DELAY_MS:J

.field public static final REGULAR_INTERVAL_MS:J

.field public static final RETRY_INTERVAL_MS:J

.field private static final UPDATE_CHECK:Landroid/content/Intent;


# instance fields
.field private mUpdateSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneImmediateDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    .line 34
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneBootDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->BOOT_DELAY_MS:J

    .line 36
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRegularIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .line 38
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRetryIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/DailyHygiene;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/services/DailyHygiene;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/DailyHygiene;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->reschedule()V

    return-void
.end method

.method public static goMakeHygieneIfDirty(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->needsDailyHygiene()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->hasDatabaseVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 50
    :cond_d
    const-string v0, "Dirty, need more hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    sget-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    .line 55
    :goto_19
    return-void

    .line 53
    :cond_1a
    const-string v0, "No need to run daily hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method private static hasDatabaseVersionChanged()Z
    .registers 3

    .prologue
    .line 160
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    .local v1, prevDatabaseVersion:I
    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v0

    .line 162
    .local v0, currentDatabaseVersion:I
    if-eq v1, v0, :cond_14

    .line 163
    const/4 v2, 0x1

    .line 165
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method private static needsDailyHygiene()Z
    .registers 6

    .prologue
    .line 152
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private onLoaded()V
    .registers 9

    .prologue
    .line 97
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    .line 98
    .local v2, libraries:Lcom/google/android/finsky/library/Libraries;
    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/appstate/UpdateChecker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V

    .line 106
    .local v0, updateChecker:Lcom/google/android/finsky/appstate/UpdateChecker;
    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->cleanup()V

    .line 108
    new-instance v1, Lcom/google/android/finsky/services/DailyHygiene$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/DailyHygiene$2;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    new-instance v3, Lcom/google/android/finsky/services/DailyHygiene$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/services/DailyHygiene$3;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private reschedule()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 128
    iget-boolean v3, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    if-eqz v3, :cond_29

    .line 129
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 130
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 131
    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .line 144
    .local v1, interval:J
    :goto_22
    invoke-static {p0, v1, v2}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/finsky/services/DailyHygiene;->stopSelf()V

    .line 146
    return-void

    .line 133
    .end local v1           #interval:J
    :cond_29
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 134
    .local v0, failures:I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_53

    .line 135
    const-string v3, "Scheduling new run. (failures=%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 137
    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    .restart local v1       #interval:J
    goto :goto_22

    .line 139
    .end local v1           #interval:J
    :cond_53
    const-string v3, "Giving up. (failures=%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 141
    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .restart local v1       #interval:J
    goto :goto_22
.end method

.method public static schedule(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "delayMs"

    .prologue
    const/4 v4, 0x0

    .line 64
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/finsky/services/DailyHygiene$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/DailyHygiene$1;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    .line 88
    .local v0, continueRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 89
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    const-string v2, "daily-hygiene"

    invoke-interface {v1, v0, v2}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    .line 92
    const/4 v1, 0x2

    return v1
.end method
