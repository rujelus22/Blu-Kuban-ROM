.class Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAccountStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 1289
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1800()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1293
    .local v6, c:Landroid/database/Cursor;
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1294
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1295
    .local v7, flags:I
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_33

    .line 1296
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2e

    .line 1300
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1302
    .end local v7           #flags:I
    :goto_2d
    return-object v0

    .line 1300
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1302
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2d
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1284
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "isSecurityHold"

    .prologue
    const/4 v4, 0x0

    .line 1307
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1308
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1309
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->mAccountId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 1311
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1316
    .end local v0           #i:Landroid/content/Intent;
    :cond_1a
    :goto_1a
    return-void

    .line 1313
    :cond_1b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->completeAddBasicAccount()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_1a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1284
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$CheckAccountStateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
