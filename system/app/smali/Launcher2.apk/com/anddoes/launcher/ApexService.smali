.class public Lcom/anddoes/launcher/ApexService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/anddoes/launcher/preference/h;

.field private c:Z

.field private d:Z

.field private e:Lcom/anddoes/launcher/preference/e;

.field private f:Lcom/anddoes/launcher/a/e;

.field private g:Lcom/anddoes/launcher/b/a;

.field private h:Landroid/content/ServiceConnection;

.field private i:Lcom/a/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anddoes/launcher/ApexService;->a:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->b:Lcom/anddoes/launcher/preference/h;

    .line 27
    iput-boolean v1, p0, Lcom/anddoes/launcher/ApexService;->c:Z

    .line 29
    iput-boolean v1, p0, Lcom/anddoes/launcher/ApexService;->d:Z

    .line 30
    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->e:Lcom/anddoes/launcher/preference/e;

    .line 31
    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->f:Lcom/anddoes/launcher/a/e;

    .line 32
    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    .line 34
    new-instance v0, Lcom/anddoes/launcher/n;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/n;-><init>(Lcom/anddoes/launcher/ApexService;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->h:Landroid/content/ServiceConnection;

    .line 56
    new-instance v0, Lcom/anddoes/launcher/o;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/o;-><init>(Lcom/anddoes/launcher/ApexService;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->i:Lcom/a/a/a/b;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/b/a;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    sget-boolean v0, Lcom/anddoes/launcher/ApexService;->a:Z

    if-nez v0, :cond_11

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anddoes/launcher/ApexService;->a:Z

    .line 143
    new-instance v0, Lcom/anddoes/launcher/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/p;-><init>(Lcom/anddoes/launcher/ApexService;B)V

    invoke-virtual {v0}, Lcom/anddoes/launcher/p;->start()V

    .line 140
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/anddoes/launcher/ApexService;Lcom/anddoes/launcher/b/a;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ApexService;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/anddoes/launcher/ApexService;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/ApexService;)Lcom/a/a/a/b;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->i:Lcom/a/a/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/ApexService;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v2

    const-string v3, "User Action"

    const-string v4, "Unlock Pro Version"

    const-string v5, "unlocker_app"

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_e
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/anddoes/launcher/ApexService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private b()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 150
    new-instance v1, Landroid/content/Intent;

    .line 151
    const-string v2, "com.anddoes.launcher.pro.LVLService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/ApexService;->h:Landroid/content/ServiceConnection;

    .line 150
    invoke-virtual {p0, v1, v2, v0}, Lcom/anddoes/launcher/ApexService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 153
    if-nez v1, :cond_18

    .line 154
    const-string v0, "ApexService"

    const-string v1, "Could not bind to LVL service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    .line 157
    :cond_18
    return v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/ApexService;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/anddoes/launcher/ApexService;->a:Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    iget-boolean v0, p0, Lcom/anddoes/launcher/ApexService;->c:Z

    if-nez v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/ApexService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ApexService;->stopService(Landroid/content/Intent;)Z

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/a/e;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->f:Lcom/anddoes/launcher/a/e;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/ApexService;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/anddoes/launcher/ApexService;->d:Z

    return v0
.end method

.method static synthetic f(Lcom/anddoes/launcher/ApexService;)Lcom/anddoes/launcher/preference/e;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->e:Lcom/anddoes/launcher/preference/e;

    return-object v0
.end method

.method static synthetic g(Lcom/anddoes/launcher/ApexService;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->h:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic h(Lcom/anddoes/launcher/ApexService;)Z
    .registers 2
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/anddoes/launcher/ApexService;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/anddoes/launcher/ApexService;)Z
    .registers 5
    .parameter

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anddoes/launcher/ApexService;->e:Lcom/anddoes/launcher/preference/e;

    const-string v3, "last_lvl_check"

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/preference/e;->d(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-direct {p0}, Lcom/anddoes/launcher/ApexService;->b()Z

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 108
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->b:Lcom/anddoes/launcher/preference/h;

    .line 109
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->b:Lcom/anddoes/launcher/preference/h;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/h;->aY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ApexService;->c:Z

    .line 111
    new-instance v0, Lcom/anddoes/launcher/preference/e;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->e:Lcom/anddoes/launcher/preference/e;

    .line 112
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->f:Lcom/anddoes/launcher/a/e;

    .line 113
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->f:Lcom/anddoes/launcher/a/e;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anddoes/launcher/ApexService;->d:Z

    .line 115
    iget-boolean v0, p0, Lcom/anddoes/launcher/ApexService;->c:Z

    if-eqz v0, :cond_38

    .line 116
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/ApexService;->startForeground(ILandroid/app/Notification;)V

    .line 118
    :cond_38
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    if-eqz v0, :cond_16

    .line 189
    :try_start_7
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    iget-object v1, p0, Lcom/anddoes/launcher/ApexService;->i:Lcom/a/a/a/b;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/b/a;->b(Lcom/a/a/a/a;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_20

    .line 193
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/anddoes/launcher/ApexService;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ApexService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_17

    .line 198
    :goto_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ApexService;->g:Lcom/anddoes/launcher/b/a;

    .line 200
    :cond_16
    return-void

    .line 196
    :catch_17
    move-exception v0

    const-string v0, "ApexService"

    const-string v1, "Unable to unbind from LVL service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :catch_20
    move-exception v0

    goto :goto_e
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/anddoes/launcher/ApexService;->a()V

    .line 131
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/anddoes/launcher/ApexService;->a()V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
