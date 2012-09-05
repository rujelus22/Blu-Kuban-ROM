.class Lcom/sprint/w/installer/BootListener$2;
.super Ljava/lang/Thread;
.source "BootListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/BootListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/BootListener;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/BootListener;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 80
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 81
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 82
    .local v11, sp:Landroid/content/SharedPreferences;
    const-string v2, "PREF_IN_FIRST_RUN"

    invoke-interface {v11, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 84
    .local v8, infirstRun:Z
    if-eqz v8, :cond_a7

    .line 85
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PREF_IN_FIRST_RUN"

    invoke-interface {v2, v3, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isPrepaid()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 87
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$100(Lcom/sprint/w/installer/BootListener;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Installing Default Pack..."

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #calls: Lcom/sprint/w/installer/BootListener;->startDefaultPackService()V
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$200(Lcom/sprint/w/installer/BootListener;)V

    .line 93
    :goto_3a
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #calls: Lcom/sprint/w/installer/BootListener;->installAPKs()V
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$400(Lcom/sprint/w/installer/BootListener;)V

    .line 100
    :cond_3f
    :goto_3f
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sprint/w/installer/AlarmService;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v7, alarmIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 102
    .local v6, alarmSender:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 103
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 105
    new-instance v10, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sprint/w/installer/delivery/ReportPostService;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v10, reportIntent:Landroid/content/Intent;
    const-string v2, "force"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$000(Lcom/sprint/w/installer/BootListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12, v10, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 109
    .local v9, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 110
    return-void

    .line 90
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v6           #alarmSender:Landroid/app/PendingIntent;
    .end local v7           #alarmIntent:Landroid/content/Intent;
    .end local v9           #pendingIntent:Landroid/app/PendingIntent;
    .end local v10           #reportIntent:Landroid/content/Intent;
    :cond_96
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$100(Lcom/sprint/w/installer/BootListener;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Checking for D2C..."

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #calls: Lcom/sprint/w/installer/BootListener;->checkIfDirectToConsumer()V
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$300(Lcom/sprint/w/installer/BootListener;)V

    goto :goto_3a

    .line 94
    :cond_a7
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isPrepaid()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 95
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #getter for: Lcom/sprint/w/installer/BootListener;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$100(Lcom/sprint/w/installer/BootListener;)Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Installing Default Pack..."

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/sprint/w/installer/BootListener$2;->this$0:Lcom/sprint/w/installer/BootListener;

    #calls: Lcom/sprint/w/installer/BootListener;->startDefaultPackService()V
    invoke-static {v2}, Lcom/sprint/w/installer/BootListener;->access$200(Lcom/sprint/w/installer/BootListener;)V

    goto :goto_3f
.end method
