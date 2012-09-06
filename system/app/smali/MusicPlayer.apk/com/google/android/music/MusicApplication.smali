.class public Lcom/google/android/music/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# instance fields
.field private mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

.field mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 93
    new-instance v0, Lcom/google/android/music/MusicApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicApplication$1;-><init>(Lcom/google/android/music/MusicApplication;)V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public getAtHomeMediaRouter()Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    return-object v0
.end method

.method public onCreate()V
    .registers 12

    .prologue
    const/4 v7, 0x1

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isUIProcess()Z

    move-result v2

    .line 35
    .local v2, isUIProcess:Z
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    .line 37
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    .line 38
    .local v4, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    const/4 v1, 0x0

    .line 40
    .local v1, isLogFilesEnabled:Z
    :try_start_10
    invoke-virtual {p0}, Lcom/google/android/music/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 41
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v6, "music_debug_logs_enabled"

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, isDebugLogsAvailable:Z
    if-eqz v0, :cond_8d

    .line 43
    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isLogFilesEnabled()Z
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_92

    move-result v1

    .line 48
    :goto_25
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 50
    if-eqz v1, :cond_48

    .line 51
    invoke-static {v7}, Lcom/google/android/music/DebugUtils;->setAutoLogAll(Z)V

    .line 53
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v8, "music2_logs"

    invoke-direct {v3, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v3, logsDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_41

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 58
    :cond_41
    if-eqz v2, :cond_97

    .line 59
    const-string v6, "music_ui.log"

    invoke-static {v3, v6}, Lcom/google/android/music/log/Log;->configure(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .end local v3           #logsDir:Ljava/io/File;
    :cond_48
    :goto_48
    if-eqz v2, :cond_4d

    .line 67
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->openPlaylistCursor(Landroid/content/Context;)V

    .line 70
    :cond_4d
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 71
    iget-object v6, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 73
    if-eqz v2, :cond_6e

    .line 74
    invoke-static {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->forApplication(Landroid/content/Context;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/MusicApplication;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    .line 75
    iget-object v6, p0, Lcom/google/android/music/MusicApplication;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {p0}, Lcom/google/android/music/MusicApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setApplicationId(Ljava/lang/String;)V

    .line 76
    iget-object v6, p0, Lcom/google/android/music/MusicApplication;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->start()V

    .line 79
    :cond_6e
    if-nez v2, :cond_8c

    .line 83
    invoke-virtual {p0}, Lcom/google/android/music/MusicApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    const-string v6, "com.android.music.MediaAppWidgetProvider"

    invoke-direct {v9, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/music/MusicApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0b0011

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_a4

    move v6, v7

    :goto_89
    invoke-virtual {v8, v9, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 90
    :cond_8c
    return-void

    .line 45
    :cond_8d
    const/4 v6, 0x0

    :try_start_8e
    invoke-virtual {v4, v6}, Lcom/google/android/music/jumper/MusicPreferences;->setLogFilesEnable(Z)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_25

    .line 48
    .end local v0           #isDebugLogsAvailable:Z
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catchall_92
    move-exception v6

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v6

    .line 61
    .restart local v0       #isDebugLogsAvailable:Z
    .restart local v3       #logsDir:Ljava/io/File;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_97
    const-string v6, "music_main.log"

    invoke-static {v3, v6}, Lcom/google/android/music/log/Log;->configure(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    const-string v6, "com.google.android.music.pin"

    const-string v8, "music_pin.log"

    invoke-static {v6, v3, v8}, Lcom/google/android/music/log/Log;->configureLogFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_48

    .line 83
    .end local v3           #logsDir:Ljava/io/File;
    :cond_a4
    const/4 v6, 0x2

    goto :goto_89
.end method

.method public onTerminate()V
    .registers 2

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isUIProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mAtHomeMediaRouter:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-virtual {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->stop()V

    .line 116
    :cond_b
    invoke-static {}, Lcom/google/android/music/MusicUtils;->closePlaylistCursor()V

    .line 117
    invoke-static {}, Lcom/google/android/music/MusicEventLogger;->destroy()V

    .line 118
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 119
    return-void
.end method
