.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1312
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1314
    const-string v1, "AlarmAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string v1, "AlarmAlert"

    const-string v2, "Received android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const-string v1, "AlarmAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 1327
    :cond_26
    :goto_26
    return-void

    .line 1319
    :cond_27
    const-string v1, "android.intent.action.ACTION_POWEROFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1321
    const-string v1, "AlarmAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v1, "AlarmAlert"

    const-string v2, "Received android.intent.action.ACTION_POWEROFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const-string v1, "AlarmAlert"

    const-string v2, "*****************************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    goto :goto_26
.end method
