.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/emailcommon/mail/MessagingException;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccount:Lcom/android/emailcommon/provider/Account;

.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mStoreHost:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V
    .registers 5
    .parameter
    .parameter "mode"
    .parameter "checkAccount"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 413
    invoke-virtual {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 414
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 415
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 416
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 417
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 418
    iget-object v0, p3, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 419
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 16
    .parameter "params"

    .prologue
    const/4 v13, -0x1

    const/4 v4, 0x0

    .line 428
    :try_start_2
    iget v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_80

    .line 429
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 498
    :cond_e
    :goto_e
    return-object v4

    .line 430
    :cond_f
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 431
    const-string v10, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Begin auto-discover for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 433
    .local v9, store:Lcom/android/email/mail/Store;
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 439
    .local v5, result:Landroid/os/Bundle;
    if-nez v5, :cond_55

    .line 440
    new-instance v4, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_e

    .line 495
    .end local v5           #result:Landroid/os/Bundle;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :catch_53
    move-exception v4

    .line 498
    .local v4, me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_e

    .line 442
    .end local v4           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v5       #result:Landroid/os/Bundle;
    .restart local v9       #store:Lcom/android/email/mail/Store;
    :cond_55
    const-string v10, "autodiscover_error_code"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 444
    .local v2, errorCode:I
    const/16 v10, 0xb

    if-ne v2, v10, :cond_67

    .line 445
    new-instance v4, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_e

    .line 446
    :cond_67
    if-eq v2, v13, :cond_71

    .line 447
    new-instance v4, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_e

    .line 449
    :cond_71
    const-string v10, "autodiscover_host_auth"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/HostAuth;

    .line 451
    .local v8, serverInfo:Lcom/android/emailcommon/provider/HostAuth;
    new-instance v4, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v10, 0x0

    invoke-direct {v4, v10, v8}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_e

    .line 456
    .end local v2           #errorCode:I
    .end local v5           #result:Landroid/os/Bundle;
    .end local v8           #serverInfo:Lcom/android/emailcommon/provider/HostAuth;
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_80
    iget v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_ef

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e

    .line 458
    const-string v10, "Email"

    const-string v11, "Begin check of incoming email settings"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 460
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 461
    .restart local v9       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 463
    .local v6, resultCode:I
    if-eqz v0, :cond_b6

    .line 464
    const-string v10, "validate_result_code"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 467
    :cond_b6
    const/4 v10, 0x7

    if-ne v6, v10, :cond_cd

    .line 468
    const-string v10, "validate_policy_set"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/Policy;

    invoke-static {v10}, Lcom/android/email/activity/setup/SetupData;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 470
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v4, v6, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 471
    :cond_cd
    const/16 v10, 0x8

    if-ne v6, v10, :cond_e0

    .line 472
    const-string v10, "validate_unsupported_policies"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, data:[Ljava/lang/String;
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v4, v6, v10, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 475
    .end local v1           #data:[Ljava/lang/String;
    :cond_e0
    if-eq v6, v13, :cond_ef

    .line 476
    const-string v10, "validate_error_message"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, errorMessage:Ljava/lang/String;
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v4, v6, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 483
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #errorMessage:Ljava/lang/String;
    .end local v6           #resultCode:I
    .end local v9           #store:Lcom/android/email/mail/Store;
    :cond_ef
    iget v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_e

    .line 484
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e

    .line 485
    const-string v10, "Email"

    const-string v11, "Begin check of outgoing email settings"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 487
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v10, v11}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/Sender;

    move-result-object v7

    .line 488
    .local v7, sender:Lcom/android/email/mail/Sender;
    invoke-virtual {v7}, Lcom/android/email/mail/Sender;->close()V

    .line 489
    invoke-virtual {v7}, Lcom/android/email/mail/Sender;->open()V

    .line 490
    invoke-virtual {v7}, Lcom/android/email/mail/Sender;->close()V
    :try_end_121
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_121} :catch_53

    goto/16 :goto_e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 594
    :goto_6
    return-void

    .line 571
    :cond_7
    if-nez p1, :cond_11

    .line 572
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v3, 0x4

    const/4 v4, 0x0

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_6

    .line 574
    :cond_11
    const/4 v1, 0x6

    .line 575
    .local v1, progressState:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v0

    .line 577
    .local v0, exceptionType:I
    packed-switch v0, :pswitch_data_26

    .line 592
    :goto_19
    :pswitch_19
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V
    invoke-static {v2, v1, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_6

    .line 581
    :pswitch_1f
    const/4 v1, 0x7

    .line 582
    goto :goto_19

    .line 584
    :pswitch_21
    const/16 v1, 0x8

    .line 585
    goto :goto_19

    .line 589
    :pswitch_24
    const/4 v1, 0x5

    goto :goto_19

    .line 577
    :pswitch_data_26
    .packed-switch 0x7
        :pswitch_24
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1f
        :pswitch_21
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5
    .parameter "progress"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 557
    :goto_6
    return-void

    .line 556
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_6
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
