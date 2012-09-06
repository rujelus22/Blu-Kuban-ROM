.class public Lcom/google/android/apps/plus/phone/EsApplication;
.super Landroid/app/Application;
.source "EsApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static sMemoryClass:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private sSystemUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/EsApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsApplication;->sSystemUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 5

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/EsApplication;->sSystemUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v3, Lcom/google/android/apps/plus/phone/EsApplication$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/plus/phone/EsApplication$1;-><init>(Lcom/google/android/apps/plus/phone/EsApplication;Landroid/content/Context;)V

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/phone/EsApplication$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 68
    .local v1, mgr:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    .line 71
    const-class v2, Lcom/google/android/apps/plus/R;

    invoke-static {v2}, Lcom/google/android/picasasync/R;->init(Ljava/lang/Class;)V

    .line 72
    const-class v2, Lcom/google/android/apps/plus/service/PicasaNetworkReceiver;

    invoke-static {v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->setNetworkReceiver(Ljava/lang/Class;)V

    .line 73
    const-class v2, Lcom/google/android/apps/plus/service/PicasaNetworkReceiver;

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->setNetworkReceiver(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "thread"
    .parameter "ex"

    .prologue
    const/4 v4, 0x6

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p1, :cond_44

    const/4 v0, 0x1

    .line 82
    .local v0, background:Z
    :goto_c
    if-eqz v0, :cond_60

    .line 83
    const-string v1, "EsApplication"

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 84
    const-string v1, "EsApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uncaught exception in background thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_2e
    invoke-static {}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->isDatabaseRecentlyDeleted()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 92
    const-string v1, "EsApplication"

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 93
    const-string v1, "EsApplication"

    const-string v2, "An account has just been deactivated, which put background threads at a risk of failure. Letting this thread live."

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_43
    :goto_43
    return-void

    .line 81
    .end local v0           #background:Z
    :cond_44
    const/4 v0, 0x0

    goto :goto_c

    .line 99
    .restart local v0       #background:Z
    :cond_46
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsApplication;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_55

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/EsApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/EsApplication;->mHandler:Landroid/os/Handler;

    .line 102
    :cond_55
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsApplication;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/phone/EsApplication$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsApplication$2;-><init>(Lcom/google/android/apps/plus/phone/EsApplication;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    .line 110
    :cond_60
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsApplication;->sSystemUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_43
.end method
