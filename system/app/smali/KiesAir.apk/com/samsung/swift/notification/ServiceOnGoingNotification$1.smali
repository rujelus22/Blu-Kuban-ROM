.class Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceOnGoingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/notification/ServiceOnGoingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;


# direct methods
.method constructor <init>(Lcom/samsung/swift/notification/ServiceOnGoingNotification;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;->this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    invoke-static {}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "**************** localeChangeReciever"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/samsung/swift/service/webserver/WebServerJNI;

    invoke-direct {v0}, Lcom/samsung/swift/service/webserver/WebServerJNI;-><init>()V

    .line 137
    .local v0, webServer:Lcom/samsung/swift/service/webserver/WebServer;
    iget-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;->this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    const-string v2, "notification_ongoing_tickertext"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->tickerText:Ljava/lang/CharSequence;

    .line 139
    invoke-interface {v0}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 143
    iget-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;->this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-virtual {v1}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->hide()V

    .line 144
    iget-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;->this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "appName"

    invoke-static {v3}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "notification_ongoing_contextText"

    invoke-static {v4}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/samsung/swift/applet/AppletActivity;

    invoke-static {v5}, Lcom/samsung/swift/notification/SwiftNotification;->getPendingIntent(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/swift/notification/ServiceOnGoingNotification$1;->this$0:Lcom/samsung/swift/notification/ServiceOnGoingNotification;

    invoke-virtual {v1}, Lcom/samsung/swift/notification/ServiceOnGoingNotification;->show()V

    .line 153
    :cond_4f
    return-void
.end method
