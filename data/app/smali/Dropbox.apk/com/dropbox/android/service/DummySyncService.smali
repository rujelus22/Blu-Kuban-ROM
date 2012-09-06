.class public Lcom/dropbox/android/service/DummySyncService;
.super Landroid/app/Service;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/dropbox/android/service/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/service/DummySyncService;->a:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/service/DummySyncService;->b:Lcom/dropbox/android/service/s;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/android/service/DummySyncService;->b:Lcom/dropbox/android/service/s;

    invoke-virtual {v0}, Lcom/dropbox/android/service/s;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 25
    sget-object v1, Lcom/dropbox/android/service/DummySyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/DummySyncService;->b:Lcom/dropbox/android/service/s;

    if-nez v0, :cond_13

    .line 27
    new-instance v0, Lcom/dropbox/android/service/s;

    invoke-virtual {p0}, Lcom/dropbox/android/service/DummySyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/dropbox/android/service/s;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/dropbox/android/service/DummySyncService;->b:Lcom/dropbox/android/service/s;

    .line 29
    :cond_13
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
