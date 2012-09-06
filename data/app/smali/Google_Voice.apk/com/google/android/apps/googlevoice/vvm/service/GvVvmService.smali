.class public Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;
.super Landroid/app/IntentService;
.source "GvVvmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;
    }
.end annotation


# static fields
.field public static final ACTION_START:Ljava/lang/String; = "com.google.android.apps.googlevoice.vvm.service.START"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.google.android.apps.googlevoice.vvm.service.STOP"

.field private static final ID_CREDENTIALS:I = 0x3f2

.field private static final ID_CREDENTIALS_FAILED:I = 0x3f4

.field private static final ID_CREDENTIALS_OK:I = 0x3f3

.field private static final ID_START:I = 0x3e9

.field private static final ID_STOP:I = 0x3ea


# instance fields
.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

.field private startSyncRunnable:Ljava/lang/Runnable;

.field private stopSyncRunnable:Ljava/lang/Runnable;

.field private final syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const-string v0, "GvVvmService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 120
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$1;-><init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->startSyncRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$2;-><init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->stopSyncRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getGvVvmSyncer()Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->handler:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->startSyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->stopSyncRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;)Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 67
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;-><init>(Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->handler:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

    .line 68
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 72
    if-nez p1, :cond_3

    .line 86
    :cond_2
    :goto_2
    return-void

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.apps.googlevoice.vvm.service.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->stopSyncRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 78
    :cond_17
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "com.google.android.apps.googlevoice.vvm.service.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    :cond_27
    const-string v1, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "com.android.voicemail.extra.SELF_CHANGE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;->handler:Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService$Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
