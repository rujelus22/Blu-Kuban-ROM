.class public Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;
.super Ljava/lang/Object;
.source "UpdaterService.java"

# interfaces
.implements Lcom/sprint/id/updater/CheckForUpdateThread$UpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/id/updater/UpdaterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/id/updater/UpdaterService;


# direct methods
.method public constructor <init>(Lcom/sprint/id/updater/UpdaterService;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "packageName"
    .parameter "versionName"
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update available for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    iget-object v7, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    invoke-virtual {v7}, Lcom/sprint/id/updater/UpdaterService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Lcom/sprint/id/updater/UpdaterService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, tickerText:Ljava/lang/String;
    iget-object v5, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Lcom/sprint/id/updater/UpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 106
    .local v1, mNotificationManager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    sget v5, Lcom/sprint/id/updater/R$drawable;->update_avail_icon:I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 106
    invoke-direct {v2, v5, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 110
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    const-class v6, Lcom/sprint/id/updater/ConfigurationActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, configIntent:Landroid/content/Intent;
    const-string v5, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    invoke-virtual {v0, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v5, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    .line 113
    const/high16 v6, 0x1000

    .line 112
    invoke-static {v5, v8, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 114
    .local v3, pend:Landroid/app/PendingIntent;
    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 115
    iget-object v5, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    .line 116
    iget-object v6, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    iget-object v7, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    invoke-virtual {v7}, Lcom/sprint/id/updater/UpdaterService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Lcom/sprint/id/updater/UpdaterService;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Update is available"

    .line 115
    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 118
    if-eqz p3, :cond_6c

    .line 119
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 122
    :cond_6c
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method

.method public onFinished()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    iget-object v1, p0, Lcom/sprint/id/updater/UpdaterService$UpdateThreadHandler;->this$0:Lcom/sprint/id/updater/UpdaterService;

    #getter for: Lcom/sprint/id/updater/UpdaterService;->startId:I
    invoke-static {v1}, Lcom/sprint/id/updater/UpdaterService;->access$0(Lcom/sprint/id/updater/UpdaterService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sprint/id/updater/UpdaterService;->stopSelf(I)V

    .line 128
    return-void
.end method
