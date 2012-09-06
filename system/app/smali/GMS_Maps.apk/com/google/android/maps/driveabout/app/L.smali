.class public Lcom/google/android/maps/driveabout/app/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/l;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/maps/driveabout/app/m;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/m;-><init>(Lcom/google/android/maps/driveabout/app/l;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->c:Landroid/content/BroadcastReceiver;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    .line 49
    new-instance v0, Lcom/google/android/maps/driveabout/app/n;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/n;-><init>(Lcom/google/android/maps/driveabout/app/l;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->e:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/l;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/l;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->c:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    if-eqz v0, :cond_e

    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    .line 103
    :cond_e
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-static {}, Lh/a;->g()V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_17

    .line 69
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 71
    :try_start_e
    const-string v0, "Show Disclaimer"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_45

    .line 73
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 79
    :cond_17
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->e:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/l;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestContentProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lt/q;->b(Landroid/content/Context;Ljava/lang/String;)Lt/s;

    move-result-object v0

    const-string v1, "UnitsSetting"

    invoke-virtual {v0, v1}, Lt/s;->a(Ljava/lang/String;)Lt/s;

    .line 95
    return-void

    .line 73
    :catchall_45
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    if-nez v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->e:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/maps/driveabout/app/l;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    .line 111
    :cond_10
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/l;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/l;->d:Z

    .line 119
    :cond_e
    return-void
.end method
