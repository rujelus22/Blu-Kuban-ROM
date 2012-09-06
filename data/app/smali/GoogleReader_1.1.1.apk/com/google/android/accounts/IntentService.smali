.class abstract Lcom/google/android/accounts/IntentService;
.super Lcom/google/android/accounts/CompatService;
.source "AbstractSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/accounts/IntentService$ServiceHandler;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPriority:I

.field private volatile mServiceHandler:Lcom/google/android/accounts/IntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/android/accounts/CompatService;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/google/android/accounts/IntentService;->mName:Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/accounts/IntentService;->mPriority:I

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "name"
    .parameter "priority"

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/android/accounts/CompatService;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/google/android/accounts/IntentService;->mName:Ljava/lang/String;

    .line 312
    iput p2, p0, Lcom/google/android/accounts/IntentService;->mPriority:I

    .line 313
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/android/accounts/CompatService;->onCreate()V

    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/accounts/IntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/accounts/IntentService;->mPriority:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 319
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/accounts/IntentService;->mServiceLooper:Landroid/os/Looper;

    .line 322
    new-instance v1, Lcom/google/android/accounts/IntentService$ServiceHandler;

    iget-object v2, p0, Lcom/google/android/accounts/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/google/android/accounts/IntentService$ServiceHandler;-><init>(Lcom/google/android/accounts/IntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/accounts/IntentService;->mServiceHandler:Lcom/google/android/accounts/IntentService$ServiceHandler;

    .line 323
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/accounts/IntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 337
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/google/android/accounts/CompatService;->onStart(Landroid/content/Intent;I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/accounts/IntentService;->mServiceHandler:Lcom/google/android/accounts/IntentService$ServiceHandler;

    invoke-virtual {v0}, Lcom/google/android/accounts/IntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 329
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 330
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lcom/google/android/accounts/IntentService;->mServiceHandler:Lcom/google/android/accounts/IntentService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/accounts/IntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    return-void
.end method
