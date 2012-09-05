.class Lcom/android/email/service/MailService$3;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$accountId:J

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$3;->val$intent:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    iput-object p5, p0, Lcom/android/email/service/MailService$3;->val$alarmManager:Landroid/app/AlarmManager;

    iput p6, p0, Lcom/android/email/service/MailService$3;->val$startId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 334
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v4, p0, Lcom/android/email/service/MailService$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    .line 336
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_28

    .line 337
    const-string v3, "Email-MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: check mail for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_28
    iget-wide v3, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_39

    .line 340
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-wide v4, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    iget-object v6, p0, Lcom/android/email/service/MailService$3;->val$alarmManager:Landroid/app/AlarmManager;

    #calls: Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/email/service/MailService;->access$000(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V

    .line 344
    :cond_39
    const/4 v2, 0x0

    .line 345
    .local v2, syncStarted:Z
    iget-wide v3, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    #calls: Lcom/android/email/service/MailService;->isBackgroundDataEnabled()Z
    invoke-static {v3}, Lcom/android/email/service/MailService;->access$100(Lcom/android/email/service/MailService;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 346
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 347
    :try_start_4b
    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 348
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    iget-wide v7, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_55

    .line 349
    const-string v3, "eas"

    iget-object v5, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 350
    iget-boolean v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    if-eqz v3, :cond_8f

    .line 351
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, v5, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    iget v8, p0, Lcom/android/email/service/MailService$3;->val$startId:I

    #calls: Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z

    move-result v2

    .line 361
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_8f
    :goto_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_4b .. :try_end_90} :catchall_e0

    .line 364
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_90
    if-nez v2, :cond_d0

    .line 367
    iget-wide v3, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_c2

    .line 368
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-wide v4, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 369
    const-string v3, "Email-MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_CHECK_MAIL EmailWidget.mRefreshing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sput-boolean v9, Lcom/android/email/widget/EmailWidget;->mRefreshing:Z

    .line 371
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/widget/WidgetManager;->updateAllWidgets()V

    .line 375
    :cond_c2
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v4, p0, Lcom/android/email/service/MailService$3;->val$alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 378
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget v4, p0, Lcom/android/email/service/MailService$3;->val$startId:I

    invoke-virtual {v3, v4}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 380
    :cond_d0
    return-void

    .line 355
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_d1
    :try_start_d1
    iget-object v3, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v5, v5, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v6, p0, Lcom/android/email/service/MailService$3;->val$accountId:J

    iget v8, p0, Lcom/android/email/service/MailService$3;->val$startId:I

    #calls: Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z
    invoke-static {v3, v5, v6, v7, v8}, Lcom/android/email/service/MailService;->access$300(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z

    move-result v2

    .line 358
    goto :goto_8f

    .line 361
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_e0
    move-exception v3

    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_d1 .. :try_end_e2} :catchall_e0

    throw v3
.end method
