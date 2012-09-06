.class public Lcom/dropbox/android/DropboxApplication;
.super Lcom/github/droidfu/DroidFuApplication;
.source "panda.py"


# static fields
.field protected static final a:Ljava/lang/Object;

.field protected static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/DropboxApplication;->a:Ljava/lang/Object;

    .line 35
    sput-boolean v1, Lcom/dropbox/android/DropboxApplication;->b:Z

    .line 37
    sput-boolean v1, Lcom/dropbox/android/DropboxApplication;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/github/droidfu/DroidFuApplication;-><init>()V

    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 123
    const-string v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 124
    sget-object v1, Lcom/dropbox/android/DropboxApplication;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :goto_13
    :try_start_13
    sget-boolean v0, Lcom/dropbox/android/DropboxApplication;->b:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_21

    if-nez v0, :cond_1f

    .line 127
    :try_start_17
    sget-object v0, Lcom/dropbox/android/DropboxApplication;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_21
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_13

    .line 128
    :catch_1d
    move-exception v0

    goto :goto_13

    .line 131
    :cond_1f
    :try_start_1f
    monitor-exit v1

    .line 133
    :cond_20
    return-void

    .line 131
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_21

    throw v0
.end method

.method private c()V
    .registers 5

    .prologue
    const/high16 v3, 0x1000

    .line 144
    invoke-virtual {p0}, Lcom/dropbox/android/DropboxApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_10

    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 147
    :cond_10
    const-string v0, "com.dropbox.android"

    .line 150
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    invoke-static {p0, v1}, Lcom/dropbox/android/util/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 171
    :goto_39
    return-void

    .line 165
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/UpgradeMessageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v1}, Lcom/dropbox/android/DropboxApplication;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/dropbox/android/DropboxApplication;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_39
.end method

.method private d()Z
    .registers 5

    .prologue
    .line 174
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/dropbox/android/DropboxApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 175
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 178
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_14

    .line 179
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.dropbox.android:message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 180
    const/4 v0, 0x1

    .line 184
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 108
    sget-object v1, Lcom/dropbox/android/DropboxApplication;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/dropbox/android/DropboxApplication;->b:Z

    .line 110
    sget-object v0, Lcom/dropbox/android/DropboxApplication;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    const-class v2, Lcom/dropbox/android/DropboxApplication;

    monitor-enter v2

    .line 47
    :try_start_8
    sget-boolean v3, Lcom/dropbox/android/DropboxApplication;->c:Z

    if-eqz v3, :cond_11

    .line 48
    invoke-super {p0}, Lcom/github/droidfu/DroidFuApplication;->onCreate()V

    .line 49
    monitor-exit v2

    .line 105
    :cond_10
    :goto_10
    return-void

    .line 51
    :cond_11
    const/4 v3, 0x1

    sput-boolean v3, Lcom/dropbox/android/DropboxApplication;->c:Z

    .line 53
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_36

    .line 55
    invoke-virtual {p0}, Lcom/dropbox/android/DropboxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/a;->a(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/dropbox/android/provider/g;->a(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/provider/g;->b()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 60
    invoke-super {p0}, Lcom/github/droidfu/DroidFuApplication;->onCreate()V

    .line 61
    invoke-direct {p0}, Lcom/dropbox/android/DropboxApplication;->d()Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    invoke-direct {p0}, Lcom/dropbox/android/DropboxApplication;->c()V

    goto :goto_10

    .line 53
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 71
    :cond_39
    invoke-static {p0}, Lcom/dropbox/android/util/u;->a(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Ldbxyzptlk/h/b;->a(Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/dropbox/android/service/t;->a(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/dropbox/android/util/aU;->a(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Ldbxyzptlk/j/m;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Ldbxyzptlk/j/a;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/dropbox/android/filemanager/a;->a(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/dropbox/android/filemanager/v;->a(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/h;->a(Ljava/io/File;)V

    .line 86
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/h/b;->c()V

    .line 92
    invoke-static {}, Lcom/dropbox/android/util/ab;->e()V

    .line 93
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/app/Application;)V

    .line 95
    invoke-super {p0}, Lcom/github/droidfu/DroidFuApplication;->onCreate()V

    .line 97
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/j/m;->f()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 98
    invoke-static {v4, p0}, Lcom/dropbox/android/service/CameraUploadService;->c(ZLandroid/content/Context;)V

    .line 101
    :cond_78
    invoke-virtual {p0}, Lcom/dropbox/android/DropboxApplication;->a()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 104
    invoke-static {}, Lcom/dropbox/android/util/h;->ad()Lcom/dropbox/android/util/r;

    move-result-object v2

    const-string v3, "dur"

    invoke-virtual {v2, v3, v0, v1}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_10
.end method
