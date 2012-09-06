.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# instance fields
.field mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mProgressException:Lcom/android/emailcommon/mail/MessagingException;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 868
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/mail/MessagingException;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onEditCertificateOk()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 349
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_9

    .line 350
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 352
    :cond_9
    return-void
.end method

.method private getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .registers 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 284
    .local v1, target:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_b

    .line 285
    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 289
    .end local v1           #target:Landroid/app/Fragment;
    :goto_a
    return-object v1

    .line 287
    .restart local v1       #target:Landroid/app/Fragment;
    :cond_b
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_17

    .line 289
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0           #activity:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_a

    .line 291
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_17
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private static getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "ex"

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, message:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 601
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 603
    :cond_a
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v9

    packed-switch v9, :pswitch_data_ae

    .line 666
    :pswitch_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9d

    const v3, 0x7f080111

    .line 671
    .local v3, id:I
    :goto_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_24
    return-object v9

    .line 607
    .end local v3           #id:I
    :pswitch_25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2f

    const v3, 0x7f08010c

    .line 610
    .restart local v3       #id:I
    :goto_2e
    goto :goto_1a

    .line 607
    .end local v3           #id:I
    :cond_2f
    const v3, 0x7f08010d

    goto :goto_2e

    .line 613
    :pswitch_33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const v3, 0x7f08010a

    .line 616
    .restart local v3       #id:I
    :goto_3c
    goto :goto_1a

    .line 613
    .end local v3           #id:I
    :cond_3d
    const v3, 0x7f08010b

    goto :goto_3c

    .line 618
    :pswitch_41
    const v3, 0x7f080110

    .line 619
    .restart local v3       #id:I
    goto :goto_1a

    .line 621
    .end local v3           #id:I
    :pswitch_45
    const v3, 0x7f080116

    .line 622
    .restart local v3       #id:I
    goto :goto_1a

    .line 624
    .end local v3           #id:I
    :pswitch_49
    const v3, 0x7f080113

    .line 625
    .restart local v3       #id:I
    goto :goto_1a

    .line 627
    .end local v3           #id:I
    :pswitch_4d
    const v3, 0x7f080114

    .line 628
    .restart local v3       #id:I
    goto :goto_1a

    .line 630
    .end local v3           #id:I
    :pswitch_51
    const v3, 0x7f08011b

    .line 632
    .restart local v3       #id:I
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v8, v9

    check-cast v8, [Ljava/lang/String;

    .line 633
    .local v8, unsupportedPolicies:[Ljava/lang/String;
    if-nez v8, :cond_67

    .line 634
    const-string v9, "AccountCheckSettingsFragment"

    const-string v10, "No data for unsupported policies?"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 638
    :cond_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 640
    .local v1, first:Z
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_70
    if-ge v2, v4, :cond_83

    aget-object v6, v0, v2

    .line 641
    .local v6, policyName:Ljava/lang/String;
    if-eqz v1, :cond_7d

    .line 642
    const/4 v1, 0x0

    .line 646
    :goto_77
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 644
    :cond_7d
    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 648
    .end local v6           #policyName:Ljava/lang/String;
    :cond_83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 649
    goto :goto_1a

    .line 651
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #first:Z
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #unsupportedPolicies:[Ljava/lang/String;
    :pswitch_88
    const v3, 0x7f080118

    .line 652
    .restart local v3       #id:I
    goto :goto_1a

    .line 654
    .end local v3           #id:I
    :pswitch_8c
    const v3, 0x7f080117

    .line 655
    .restart local v3       #id:I
    goto :goto_1a

    .line 657
    .end local v3           #id:I
    :pswitch_90
    const v3, 0x7f080115

    .line 658
    .restart local v3       #id:I
    goto :goto_1a

    .line 660
    .end local v3           #id:I
    :pswitch_94
    const v3, 0x7f08010e

    .line 661
    .restart local v3       #id:I
    goto :goto_1a

    .line 663
    .end local v3           #id:I
    :pswitch_98
    const v3, 0x7f08010f

    .line 664
    .restart local v3       #id:I
    goto/16 :goto_1a

    .line 666
    .end local v3           #id:I
    :cond_9d
    const v3, 0x7f080112

    goto/16 :goto_1a

    .line 671
    .restart local v3       #id:I
    :cond_a2
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {p0, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_24

    .line 603
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_90
        :pswitch_33
        :pswitch_11
        :pswitch_11
        :pswitch_51
        :pswitch_8c
        :pswitch_25
        :pswitch_33
        :pswitch_11
        :pswitch_41
        :pswitch_88
        :pswitch_11
        :pswitch_94
        :pswitch_98
    .end packed-switch
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .registers 3
    .parameter "mode"
    .parameter "parentFragment"

    .prologue
    .line 129
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 130
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 131
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 318
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 319
    return-void
.end method

.method private onEditCertificateOk()V
    .registers 4

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 323
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 325
    return-void
.end method

.method private onErrorDialogEditButton()V
    .registers 4

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 336
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_12

    .line 338
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    .line 343
    :goto_e
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->finish()V

    .line 344
    return-void

    .line 341
    :cond_12
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_e
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .registers 5
    .parameter "okPressed"

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 361
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-eqz p1, :cond_14

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 366
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_13

    .line 367
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 369
    :cond_13
    return-void

    .line 361
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_14
    const/4 v2, 0x2

    goto :goto_7
.end method

.method private recoverAndDismissCheckingDialog()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v0, :cond_12

    .line 299
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 302
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v0, :cond_1e

    .line 303
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismissAllowingStateLoss()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 306
    :cond_1e
    return-void
.end method

.method private reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V
    .registers 11
    .parameter "newState"
    .parameter "ex"

    .prologue
    const/4 v5, 0x0

    .line 205
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 206
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    .line 209
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v6, :cond_35

    .line 210
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 212
    .local v2, fm:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_ac

    .line 264
    const-string v5, "CheckProgressDialog"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 266
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v5, :cond_a4

    .line 267
    iget v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 268
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string v7, "CheckProgressDialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 277
    .end local v2           #fm:Landroid/app/FragmentManager;
    .end local p2
    :cond_35
    :goto_35
    return-void

    .line 216
    .restart local v2       #fm:Landroid/app/FragmentManager;
    .restart local p2
    :pswitch_36
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 218
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 220
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_35

    .line 224
    :pswitch_44
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 226
    const-string v5, "SecurityRequiredDialog"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_35

    .line 227
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 229
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 231
    :cond_59
    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    move-result-object v4

    .line 233
    .local v4, securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "SecurityRequiredDialog"

    invoke-virtual {v5, v4, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_35

    .line 241
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    :pswitch_6b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 243
    const-string v5, "ErrorDialog"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_35

    .line 244
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {v5, p0, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Landroid/content/Context;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Lcom/android/emailcommon/mail/MessagingException;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v1

    .line 246
    .local v1, errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "ErrorDialog"

    invoke-virtual {v5, v1, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_35

    .line 252
    .end local v1           #errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :pswitch_8e
    check-cast p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;

    .end local p2
    iget-object v0, p2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 254
    .local v0, autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 256
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 258
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v6

    if-eqz v0, :cond_a2

    :goto_9e
    invoke-interface {v6, v5, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_35

    :cond_a2
    const/4 v5, 0x1

    goto :goto_9e

    .line 272
    .end local v0           #autoDiscoverResult:Lcom/android/emailcommon/provider/HostAuth;
    .restart local p2
    :cond_a4
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto :goto_35

    .line 212
    :pswitch_data_ac
    .packed-switch 0x4
        :pswitch_36
        :pswitch_44
        :pswitch_6b
        :pswitch_6b
        :pswitch_8e
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 156
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v2, :cond_24

    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetRequestCode()I

    move-result v1

    .line 158
    .local v1, checkMode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 159
    .local v0, checkAccount:Lcom/android/emailcommon/provider/Account;
    new-instance v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/Account;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 163
    .end local v0           #checkAccount:Lcom/android/emailcommon/provider/Account;
    .end local v1           #checkMode:I
    :cond_24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 142
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 186
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 196
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 172
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_e

    .line 173
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mProgressException:Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(ILcom/android/emailcommon/mail/MessagingException;)V

    .line 175
    :cond_e
    return-void
.end method
