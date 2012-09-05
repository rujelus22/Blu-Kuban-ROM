.class final Lcom/android/MtpApplication/MtpService$ServiceHandler;
.super Landroid/os/Handler;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/MtpApplication/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/MtpService;


# direct methods
.method public constructor <init>(Lcom/android/MtpApplication/MtpService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "_looper"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 74
    const-string v4, "MtpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage. msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v4, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v5

    #setter for: Lcom/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;
    invoke-static {v4, v5}, Lcom/android/MtpApplication/MtpService;->access$002(Lcom/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    .line 76
    iget-object v4, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    invoke-static {}, Lcom/android/MtpApplication/MtpReceiver;->getMtpContext()Landroid/content/Context;

    move-result-object v5

    #setter for: Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;
    invoke-static {v4, v5}, Lcom/android/MtpApplication/MtpService;->access$102(Lcom/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;

    .line 78
    const v0, 0x7f020008

    .line 79
    .local v0, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, when:J
    iget-object v4, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    #getter for: Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/MtpApplication/MtpService;->access$100(Lcom/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 81
    iget-object v5, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    iget-object v4, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    #getter for: Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/MtpApplication/MtpService;->access$100(Lcom/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    #getter for: Lcom/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/MtpApplication/MtpService;->access$100(Lcom/android/MtpApplication/MtpService;)Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, v5, Lcom/android/MtpApplication/MtpService;->mNotiManager:Landroid/app/NotificationManager;

    .line 82
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 93
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/MtpApplication/MtpService$ServiceHandler;->this$0:Lcom/android/MtpApplication/MtpService;

    const/16 v5, 0x2b68

    invoke-virtual {v4, v5, v1}, Lcom/android/MtpApplication/MtpService;->startForeground(ILandroid/app/Notification;)V

    .line 95
    .end local v1           #notification:Landroid/app/Notification;
    :goto_60
    return-void

    .line 94
    :cond_61
    const-string v4, "MtpService"

    const-string v5, "mContext is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method
