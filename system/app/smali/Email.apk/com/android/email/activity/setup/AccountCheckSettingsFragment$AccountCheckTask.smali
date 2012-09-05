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
.field final mCheckEmail:Ljava/lang/String;

.field final mCheckPassword:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field final mMode:I

.field final mSenderUri:Ljava/lang/String;

.field final mStoreHost:Ljava/lang/String;

.field final mStoreUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 5
    .parameter
    .parameter "mode"
    .parameter "checkAccount"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 508
    invoke-virtual {p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    .line 509
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    .line 510
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    .line 511
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    .line 513
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    .line 514
    iget-object v0, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    .line 515
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 21
    .parameter "params"

    .prologue
    .line 524
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d6

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 526
    const/4 v12, 0x0

    .line 637
    :goto_f
    return-object v12

    .line 527
    :cond_10
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 528
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_40

    .line 529
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin auto-discover for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 535
    .local v1, store:Lcom/android/email/mail/Store;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, checkDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mCheckPassword:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/mail/Store;->autoDiscover(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v14

    .line 546
    .local v14, result:Landroid/os/Bundle;
    if-nez v14, :cond_86

    .line 547
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    :try_end_6b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_f

    .line 632
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v5           #checkDomain:Ljava/lang/String;
    .end local v14           #result:Landroid/os/Bundle;
    :catch_6c
    move-exception v12

    .line 636
    .local v12, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountCheckTask MessagingException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 549
    .end local v12           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #store:Lcom/android/email/mail/Store;
    .restart local v5       #checkDomain:Ljava/lang/String;
    .restart local v14       #result:Landroid/os/Bundle;
    :cond_86
    :try_start_86
    const-string v2, "autodiscover_error_code"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 552
    .local v9, errorCode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    .line 553
    .local v11, mCheckAutodicoverCount:I
    if-nez v11, :cond_a2

    .line 554
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 555
    const/4 v2, -0x1

    if-eq v9, v2, :cond_a9

    .line 556
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_f

    .line 557
    :cond_a2
    const/4 v2, 0x1

    if-ne v2, v11, :cond_a9

    .line 558
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    .line 561
    :cond_a9
    const/4 v2, 0x5

    if-eq v9, v2, :cond_af

    const/4 v2, 0x1

    if-ne v9, v2, :cond_b8

    .line 563
    :cond_af
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_f

    .line 564
    :cond_b8
    const/4 v2, -0x1

    if-eq v9, v2, :cond_c4

    .line 565
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_f

    .line 567
    :cond_c4
    const-string v2, "autodiscover_host_auth"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 569
    .local v17, serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    new-instance v12, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v2, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;-><init>(ZLcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto/16 :goto_f

    .line 574
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v5           #checkDomain:Ljava/lang/String;
    .end local v9           #errorCode:I
    .end local v11           #mCheckAutodicoverCount:I
    .end local v14           #result:Landroid/os/Bundle;
    .end local v17           #serverInfo:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_d6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_193

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 576
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 577
    :cond_e7
    const-string v2, "Email"

    const-string v3, "Begin check of incoming email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 586
    .local v18, tmpURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 590
    .restart local v1       #store:Lcom/android/email/mail/Store;
    invoke-virtual {v1}, Lcom/android/email/mail/Store;->checkSettings()Landroid/os/Bundle;

    move-result-object v7

    .line 591
    .local v7, bundle:Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 593
    .local v15, resultCode:I
    if-eqz v7, :cond_154

    .line 594
    const-string v2, "validate_result_code"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 596
    const-string v2, "validate_protocol_version"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 598
    .local v13, protocolVersion:Ljava/lang/String;
    if-eqz v13, :cond_154

    .line 599
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iput-object v13, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 602
    .end local v13           #protocolVersion:Ljava/lang/String;
    :cond_154
    const/4 v2, 0x7

    if-ne v15, v2, :cond_16e

    .line 603
    const-string v2, "validate_policy_set"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V

    .line 605
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 607
    :cond_16e
    const/16 v2, 0x8

    if-ne v15, v2, :cond_183

    .line 608
    const-string v2, "validate_unsupported_policies"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 610
    .local v8, data:[Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mStoreHost:Ljava/lang/String;

    invoke-direct {v12, v15, v2, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 611
    .end local v8           #data:[Ljava/lang/String;
    :cond_183
    const/4 v2, -0x1

    if-eq v15, v2, :cond_193

    .line 612
    const-string v2, "validate_error_message"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 614
    .local v10, errorMessage:Ljava/lang/String;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v12, v15, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 619
    .end local v1           #store:Lcom/android/email/mail/Store;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v15           #resultCode:I
    .end local v18           #tmpURI:Ljava/lang/String;
    :cond_193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1d0

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 621
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 622
    :cond_1a4
    const-string v2, "Email"

    const-string v3, "Begin check of outgoing email settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->publishProgress([Ljava/lang/Object;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->mSenderUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v16

    .line 625
    .local v16, sender:Lcom/android/email/mail/Sender;
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V

    .line 626
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->open()V

    .line 627
    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/Sender;->close()V
    :try_end_1d0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_86 .. :try_end_1d0} :catch_6c

    .line 631
    .end local v16           #sender:Lcom/android/email/mail/Sender;
    :cond_1d0
    const/4 v12, 0x0

    goto/16 :goto_f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 485
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V
    .registers 20
    .parameter "result"

    .prologue
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 833
    .end local p1
    :goto_6
    return-void

    .line 719
    .restart local p1
    :cond_7
    if-nez p1, :cond_17

    .line 720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_6

    .line 722
    :cond_17
    const/4 v10, 0x6

    .line 723
    .local v10, progressState:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    .line 725
    .local v2, exceptionType:I
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "message : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v8, ""

    .line 727
    .local v8, message:Ljava/lang/String;
    const/4 v4, 0x0

    .line 728
    .local v4, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v6, 0x0

    .line 730
    .local v6, id:I
    sparse-switch v2, :sswitch_data_c8

    .line 828
    const v6, 0x7f080110

    .line 831
    .end local p1
    :goto_42
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-virtual {v13, v10, v6, v8, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_6

    .line 735
    .restart local p1
    :sswitch_4a
    const v6, 0x7f0803d6

    .line 739
    const/4 v10, 0x7

    .line 740
    goto :goto_42

    .line 742
    :sswitch_4f
    check-cast p1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 744
    const/4 v13, 0x1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v14

    if-eq v13, v14, :cond_5e

    if-eqz v4, :cond_61

    .line 746
    :cond_5e
    const/16 v10, 0x8

    goto :goto_42

    .line 748
    :cond_61
    const v6, 0x7f0803d6

    .line 749
    const/4 v10, 0x7

    .line 752
    goto :goto_42

    .line 758
    .restart local p1
    :sswitch_66
    const/4 v10, 0x5

    .line 759
    goto :goto_42

    .line 766
    :sswitch_68
    const v6, 0x7f08010d

    .line 767
    goto :goto_42

    .line 769
    :sswitch_6c
    const v6, 0x7f08010b

    .line 770
    goto :goto_42

    .line 772
    :sswitch_70
    const v6, 0x7f08010f

    .line 773
    goto :goto_42

    .line 775
    :sswitch_74
    const v6, 0x7f080115

    .line 776
    goto :goto_42

    .line 778
    :sswitch_78
    const v6, 0x7f080112

    .line 779
    goto :goto_42

    .line 781
    :sswitch_7c
    const v6, 0x7f080113

    .line 782
    goto :goto_42

    .line 784
    :sswitch_80
    const v6, 0x7f08011a

    .line 787
    invoke-virtual/range {p1 .. p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object v12, v13

    check-cast v12, [Ljava/lang/String;

    .line 788
    .local v12, unsupportedPolicies:[Ljava/lang/String;
    if-nez v12, :cond_96

    .line 789
    const-string v13, "AccountCheckSettingsFragment"

    const-string v14, "No data for unsupported policies?"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 794
    :cond_96
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v11, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 796
    .local v3, first:Z
    move-object v1, v12

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_9f
    if-ge v5, v7, :cond_b2

    aget-object v9, v1, v5

    .line 797
    .local v9, policyName:Ljava/lang/String;
    if-eqz v3, :cond_ac

    .line 798
    const/4 v3, 0x0

    .line 802
    :goto_a6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 800
    :cond_ac
    const-string v13, ", "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    .line 804
    .end local v9           #policyName:Ljava/lang/String;
    :cond_b2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 805
    goto :goto_42

    .line 807
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #first:Z
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    .end local v12           #unsupportedPolicies:[Ljava/lang/String;
    :sswitch_b7
    const v6, 0x7f080117

    .line 808
    goto :goto_42

    .line 810
    :sswitch_bb
    const v6, 0x7f080114

    .line 811
    goto :goto_42

    .line 821
    :sswitch_bf
    const v6, 0x7f080116

    .line 823
    goto :goto_42

    .line 825
    :sswitch_c3
    const v6, 0x7f0803ec

    .line 826
    goto/16 :goto_42

    .line 730
    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_74
        0x2 -> :sswitch_78
        0x3 -> :sswitch_7c
        0x4 -> :sswitch_bb
        0x5 -> :sswitch_6c
        0x7 -> :sswitch_66
        0x8 -> :sswitch_80
        0x9 -> :sswitch_b7
        0xe -> :sswitch_c3
        0x10 -> :sswitch_bf
        0x4a -> :sswitch_68
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4f
        0x4d -> :sswitch_70
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    check-cast p1, Lcom/android/emailcommon/mail/MessagingException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onPostExecute(Lcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 6
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 701
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 704
    :goto_8
    return-void

    .line 703
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_8
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
