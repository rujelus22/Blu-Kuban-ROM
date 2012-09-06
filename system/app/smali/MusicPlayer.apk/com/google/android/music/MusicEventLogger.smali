.class public Lcom/google/android/music/MusicEventLogger;
.super Ljava/lang/Object;
.source "MusicEventLogger.java"


# static fields
.field private static sInstance:Lcom/google/android/music/MusicEventLogger;


# instance fields
.field private final mAccountReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEventLogger:Lcom/google/android/play/analytics/EventLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    .line 38
    new-instance v0, Lcom/google/android/music/MusicEventLogger$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicEventLogger$1;-><init>(Lcom/google/android/music/MusicEventLogger;)V

    iput-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mAccountReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    .line 49
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 50
    .local v7, musicPreferenceReference:Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v8

    .line 55
    .local v8, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_1e
    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, loggingId:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/google/android/music/MusicEventLogger;->getUploadAccount(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/accounts/Account;
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_4f

    move-result-object v3

    .line 58
    .local v3, uploadAccount:Landroid/accounts/Account;
    invoke-static {v7}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/google/android/play/analytics/EventLogger;

    iget-object v1, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/google/android/play/analytics/EventLogger$LogSource;->MUSIC:Lcom/google/android/play/analytics/EventLogger$LogSource;

    iget-object v5, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/play/utils/PlayUtils;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    .line 63
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "com.google.android.music.accountchanged"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void

    .line 58
    .end local v2           #loggingId:Ljava/lang/String;
    .end local v3           #uploadAccount:Landroid/accounts/Account;
    .end local v6           #filter:Landroid/content/IntentFilter;
    :catchall_4f
    move-exception v0

    invoke-static {v7}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/music/MusicEventLogger;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/music/MusicEventLogger;->updateUploadAccount()V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 140
    const-class v1, Lcom/google/android/music/MusicEventLogger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;

    if-eqz v0, :cond_f

    .line 141
    sget-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;

    invoke-direct {v0}, Lcom/google/android/music/MusicEventLogger;->onDestroy()V

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 144
    :cond_f
    monitor-exit v1

    return-void

    .line 140
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;
    .registers 4
    .parameter "context"

    .prologue
    .line 150
    const-class v1, Lcom/google/android/music/MusicEventLogger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;

    if-nez v0, :cond_12

    .line 153
    new-instance v0, Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/music/MusicEventLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;

    .line 155
    :cond_12
    sget-object v0, Lcom/google/android/music/MusicEventLogger;->sInstance:Lcom/google/android/music/MusicEventLogger;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUploadAccount()Landroid/accounts/Account;
    .registers 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 77
    .local v0, musicPreferenceReference:Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    .line 80
    .local v1, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_b
    invoke-direct {p0, v1}, Lcom/google/android/music/MusicEventLogger;->getUploadAccount(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/accounts/Account;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    move-result-object v2

    .line 82
    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    return-object v2

    :catchall_13
    move-exception v2

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v2
.end method

.method private getUploadAccount(Lcom/google/android/music/jumper/MusicPreferences;)Landroid/accounts/Account;
    .registers 7
    .parameter "preferences"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 88
    .local v2, streamingAccount:Landroid/accounts/Account;
    if-eqz v2, :cond_7

    .line 103
    .end local v2           #streamingAccount:Landroid/accounts/Account;
    :goto_6
    return-object v2

    .line 96
    .restart local v2       #streamingAccount:Landroid/accounts/Account;
    :cond_7
    iget-object v3, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 99
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 100
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_20

    array-length v3, v1

    if-eqz v3, :cond_20

    .line 101
    const/4 v3, 0x0

    aget-object v2, v1, v3

    goto :goto_6

    .line 103
    :cond_20
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private onDestroy()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/MusicEventLogger;->mAccountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method

.method private declared-synchronized updateUploadAccount()V
    .registers 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    invoke-direct {p0}, Lcom/google/android/music/MusicEventLogger;->getUploadAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/analytics/EventLogger;->setUploadAccount(Landroid/accounts/Account;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public varargs trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .parameter "tag"
    .parameter "extras"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public varargs trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .parameter "context"
    .parameter "screenName"
    .parameter "extras"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    if-nez p3, :cond_15

    .line 128
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "pageView"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "pageName"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_14
    return-void

    .line 131
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/MusicEventLogger;->mEventLogger:Lcom/google/android/play/analytics/EventLogger;

    const-string v1, "pageView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pageName"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/analytics/EventLogger;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getLoggerScreenExtras()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method
