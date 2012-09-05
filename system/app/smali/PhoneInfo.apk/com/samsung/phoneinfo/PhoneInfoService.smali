.class public Lcom/samsung/phoneinfo/PhoneInfoService;
.super Landroid/app/Service;
.source "PhoneInfoService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhoneInfo:Lcom/samsungframeworks/internal/PhoneInfoInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/phoneinfo/PhoneInfoService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 61
    const-string v0, "PhoneInfoService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/samsung/phoneinfo/PhoneInfoService;->mPhoneInfo:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 27
    const-string v0, "PhoneInfoService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/samsungframeworks/internal/PhoneInfoInterface;

    invoke-direct {v0, p0}, Lcom/samsungframeworks/internal/PhoneInfoInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/phoneinfo/PhoneInfoService;->mPhoneInfo:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    .line 33
    const-string v0, "PhoneInfoService"

    const-string v1, "mPhoneInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "iphoneinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_24

    .line 35
    const-string v0, "iphoneinfo"

    iget-object v1, p0, Lcom/samsung/phoneinfo/PhoneInfoService;->mPhoneInfo:Lcom/samsungframeworks/internal/PhoneInfoInterface;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 43
    :cond_24
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "PhoneInfoService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 48
    const-string v0, "PhoneInfoService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
