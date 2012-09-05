.class public Lcom/android/MtpApplication/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/MtpApplication/MtpService$ServiceHandler;
    }
.end annotation


# instance fields
.field private jniObj:Landroid/mtp/MTPJNIInterface;

.field private mContext:Landroid/content/Context;

.field mNotiManager:Landroid/app/NotificationManager;

.field private mServiceHandler:Lcom/android/MtpApplication/MtpService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/MtpApplication/MtpService;->mServiceHandler:Lcom/android/MtpApplication/MtpService$ServiceHandler;

    .line 22
    iput-object v0, p0, Lcom/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    .line 23
    iput-object v0, p0, Lcom/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    .line 24
    iput-object v0, p0, Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/android/MtpApplication/MtpService;->mNotiManager:Landroid/app/NotificationManager;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/MtpApplication/MtpService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 62
    const-string v0, "MtpService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 29
    const-string v1, "MtpService"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtpService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 32
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    .line 35
    new-instance v1, Lcom/android/MtpApplication/MtpService$ServiceHandler;

    iget-object v2, p0, Lcom/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/MtpApplication/MtpService$ServiceHandler;-><init>(Lcom/android/MtpApplication/MtpService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/MtpApplication/MtpService;->mServiceHandler:Lcom/android/MtpApplication/MtpService$ServiceHandler;

    .line 36
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "MtpService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 56
    :cond_11
    iget-object v0, p0, Lcom/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 57
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 40
    const-string v1, "MtpService"

    const-string v2, "onStartCommand."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/android/MtpApplication/MtpService;->mServiceHandler:Lcom/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/MtpApplication/MtpService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 43
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 44
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/android/MtpApplication/MtpService;->mServiceHandler:Lcom/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/MtpApplication/MtpService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    const/4 v1, 0x1

    return v1
.end method
