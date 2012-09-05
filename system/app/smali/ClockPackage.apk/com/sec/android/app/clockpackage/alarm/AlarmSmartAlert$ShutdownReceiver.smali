.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmSmartAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 859
    const-string v1, "AlarmSmartAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v1, "AlarmSmartAlert"

    const-string v2, "Received android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v1, "AlarmSmartAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    .line 872
    :cond_26
    :goto_26
    return-void

    .line 864
    :cond_27
    const-string v1, "android.intent.action.ACTION_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 866
    const-string v1, "AlarmSmartAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v1, "AlarmSmartAlert"

    const-string v2, "Received android.intent.action.ACTION_POWEROFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v1, "AlarmSmartAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto :goto_26
.end method
