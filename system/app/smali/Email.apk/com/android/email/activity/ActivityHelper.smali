.class public final Lcom/android/email/activity/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static debugSetWindowFlags(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    const/high16 v2, 0x100

    .line 126
    sget-boolean v0, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    if-eqz v0, :cond_f

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 135
    :goto_e
    return-void

    .line 132
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_e
.end method

.method public static deleteMessage(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->deleteMessage(J)V

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static moveMessages(Landroid/content/Context;J[J)V
    .registers 5
    .parameter "context"
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/email/Controller;->moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 104
    new-instance v0, Lcom/android/email/activity/ActivityHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper$1;-><init>(Landroid/content/Context;J[J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 117
    return-void
.end method

.method public static openCalendar(Landroid/app/Activity;J)V
    .registers 7
    .parameter "activity"
    .parameter "epochEventStartTime"

    .prologue
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.calendar/time/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    const-string v2, "VIEW"

    const-string v3, "DAY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public static openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z
    .registers 8
    .parameter "activity"
    .parameter "url"
    .parameter "senderAccountId"

    .prologue
    .line 64
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    .line 80
    :goto_12
    return v1

    .line 69
    :cond_13
    const/4 v1, 0x0

    .line 70
    .local v1, result:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    :try_start_32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_32 .. :try_end_35} :catch_37

    .line 76
    const/4 v1, 0x1

    goto :goto_12

    .line 77
    :catch_37
    move-exception v2

    goto :goto_12
.end method

.method public static showSecurityHoldDialog(Landroid/app/Activity;J)V
    .registers 4
    .parameter "callerActivity"
    .parameter "accountId"

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method
