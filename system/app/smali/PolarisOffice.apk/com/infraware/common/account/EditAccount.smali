.class public Lcom/infraware/common/account/EditAccount;
.super Landroid/preference/PreferenceActivity;
.source "EditAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/account/EditAccount$CloseReceiver;
    }
.end annotation


# static fields
.field public static final CHECK_ACTION:I = 0x12c

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SERVICE:Ljava/lang/String; = "service"

.field private static final POPUP_DELETE_ACCOUNT:I = 0x1

.field private static final POPUP_EDIT_PASSWORD:I


# instance fields
.field private mAccount:Lcom/infraware/common/account/AccountInfo;

.field private mCloseReceiver:Lcom/infraware/common/account/EditAccount$CloseReceiver;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEditPasswordDialog:Landroid/app/AlertDialog;

.field private mEmailPref:Landroid/preference/Preference;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field public mEventHandler:Landroid/os/Handler;

.field private mPasswordPref:Landroid/preference/Preference;

.field private mServicePref:Landroid/preference/Preference;

.field private m_bChangePassword:Z

.field private m_bDeleteAccount:Z

.field private m_etPassword:Landroid/widget/EditText;

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oImm:Landroid/view/inputmethod/InputMethodManager;

.field private m_oProgressDialog:Landroid/app/ProgressDialog;

.field private m_oToastMsg:Landroid/widget/Toast;

.field private m_runToastMsg:Ljava/lang/Runnable;

.field private m_strPassword:Ljava/lang/String;

.field private m_strToastMsg:Ljava/lang/String;

.field private m_tvPassword:Landroid/widget/TextView;

.field protected uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mErrorDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    .line 64
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    .line 66
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_tvPassword:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    .line 69
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-boolean v0, p0, Lcom/infraware/common/account/EditAccount;->m_bChangePassword:Z

    .line 72
    iput-boolean v0, p0, Lcom/infraware/common/account/EditAccount;->m_bDeleteAccount:Z

    .line 73
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_strPassword:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    .line 79
    iput v0, p0, Lcom/infraware/common/account/EditAccount;->m_nLocaleCode:I

    .line 81
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEventHandler:Landroid/os/Handler;

    .line 83
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;

    .line 84
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/infraware/common/account/EditAccount$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/EditAccount$1;-><init>(Lcom/infraware/common/account/EditAccount;)V

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_runToastMsg:Ljava/lang/Runnable;

    .line 525
    new-instance v0, Lcom/infraware/common/account/EditAccount$2;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/EditAccount$2;-><init>(Lcom/infraware/common/account/EditAccount;)V

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->uiUpdateHandler:Landroid/os/Handler;

    .line 551
    iput-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 45
    return-void
.end method

.method private CloseForm()V
    .registers 5

    .prologue
    .line 380
    new-instance v1, Landroid/content/Intent;

    const-string v2, "result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, result:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ChangePassword"

    iget-boolean v3, p0, Lcom/infraware/common/account/EditAccount;->m_bChangePassword:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    const-string v2, "DeleteAccount"

    iget-boolean v3, p0, Lcom/infraware/common/account/EditAccount;->m_bDeleteAccount:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    const-string v2, "Password"

    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v3}, Lcom/infraware/common/account/AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 386
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/infraware/common/account/EditAccount;->setResult(ILandroid/content/Intent;)V

    .line 387
    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->finish()V

    .line 388
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/account/EditAccount;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/common/account/EditAccount;)Z
    .registers 2
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/infraware/common/account/EditAccount;->checkAccount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/infraware/common/account/EditAccount;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/common/account/EditAccount;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/common/account/EditAccount;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/infraware/common/account/EditAccount;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/common/account/EditAccount;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/infraware/common/account/EditAccount;->m_bDeleteAccount:Z

    return-void
.end method

.method static synthetic access$17(Lcom/infraware/common/account/EditAccount;)V
    .registers 1
    .parameter

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/infraware/common/account/EditAccount;->CloseForm()V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/common/account/EditAccount;Landroid/widget/Toast;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount;->m_oToastMsg:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/common/account/EditAccount;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/account/EditAccount;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/common/account/EditAccount;)V
    .registers 1
    .parameter

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/infraware/common/account/EditAccount;->stopProgressing()V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/common/account/EditAccount;)Lcom/infraware/common/account/AccountInfo;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/common/account/EditAccount;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_strPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/common/account/EditAccount;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/infraware/common/account/EditAccount;->m_bChangePassword:Z

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/common/account/EditAccount;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/common/account/EditAccount;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkAccount()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 485
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v4

    .line 486
    .local v4, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 488
    const v6, 0x7f08030e

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FV04"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_25

    .line 489
    const v6, 0x7f0800bf

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V

    .line 522
    :goto_24
    return v5

    .line 491
    :cond_25
    const v6, 0x7f0800be

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 495
    :cond_30
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 497
    const v6, 0x7f080068

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/infraware/common/account/EditAccount;->onToastMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 501
    :cond_41
    const/4 v3, 0x0

    .line 502
    .local v3, serviceType:I
    iget-object v6, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v6}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v6

    packed-switch v6, :pswitch_data_72

    goto :goto_24

    .line 505
    :pswitch_4c
    const/4 v3, 0x1

    .line 514
    :goto_4d
    iget-object v6, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v6}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, loginId:Ljava/lang/String;
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/infraware/common/account/EditAccount;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v6, v7}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 517
    .local v0, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    const-string v6, "LOGIN"

    invoke-virtual {v4, v6, v3, v1, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .line 518
    .local v2, loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    iget-object v6, p0, Lcom/infraware/common/account/EditAccount;->m_strPassword:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPassword(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setMode(I)V

    .line 520
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->start()V

    .line 522
    const/4 v5, 0x1

    goto :goto_24

    .line 508
    .end local v0           #handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    .end local v1           #loginId:Ljava/lang/String;
    .end local v2           #loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    :pswitch_70
    const/4 v3, 0x2

    .line 509
    goto :goto_4d

    .line 502
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_70
    .end packed-switch
.end method

.method private initUI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 147
    const-string v0, "service"

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    .line 148
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    .line 149
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    const-string v1, "Google docs"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->mEmailPref:Landroid/preference/Preference;

    .line 156
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mEmailPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mEmailPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->mPasswordPref:Landroid/preference/Preference;

    .line 163
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 165
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    new-instance v1, Lcom/infraware/common/account/EditAccount$4;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/EditAccount$4;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void

    .line 150
    :cond_5c
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v0}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 151
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    const-string v1, "Box.net"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_strToastMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 430
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_runToastMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    :cond_15
    return-void
.end method

.method private startProgressing(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "aActivityCtx"
    .parameter "aTitle"

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 580
    :goto_5
    return-void

    .line 556
    :cond_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 557
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 559
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/common/account/EditAccount$13;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/EditAccount$13;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 568
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/common/account/EditAccount$14;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/EditAccount$14;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 578
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 579
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5
.end method

.method private stopProgressing()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 589
    :goto_4
    return-void

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "_newConfig"

    .prologue
    const v7, 0x7f080043

    const v6, 0x7f080039

    const v5, 0x7f080035

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 435
    iget v1, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1e

    .line 436
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    .line 437
    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    invoke-static {v1, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 440
    :cond_1e
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 441
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/account/EditAccount;->m_nLocaleCode:I

    if-eq v1, v0, :cond_d6

    .line 442
    iput v0, p0, Lcom/infraware/common/account/EditAccount;->m_nLocaleCode:I

    .line 444
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/EditAccount;->setTitle(I)V

    .line 445
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 446
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_da

    .line 447
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    const-string v2, "Google docs"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEmailPref:Landroid/preference/Preference;

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 452
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEmailPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v2}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mPasswordPref:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 456
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 458
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9b

    .line 459
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 460
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_tvPassword:Landroid/widget/TextView;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 462
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 463
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 464
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 468
    :cond_9b
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_cd

    .line 469
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 470
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 471
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    const v2, 0x7f080056

    invoke-virtual {p0, v2}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 473
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 477
    :cond_cd
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d6

    .line 478
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-static {p0, v1}, Lcom/infraware/common/util/Utils;->onLocaleChanged(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 480
    :cond_d6
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 481
    return-void

    .line 448
    :cond_da
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_48

    .line 449
    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->mServicePref:Landroid/preference/Preference;

    const-string v2, "Box.net"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_48
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, nService:I
    const-string v4, ""

    .line 103
    .local v4, strEmail:Ljava/lang/String;
    const-string v5, ""

    .line 105
    .local v5, strPassword:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 106
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "key_account_type"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    const-string v6, "key_account_email"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v6, "key_account_password"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v6, Lcom/infraware/common/account/AccountInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4, v5}, Lcom/infraware/common/account/AccountInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    .line 114
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    .line 116
    const v6, 0x7f030012

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->addPreferencesFromResource(I)V

    .line 118
    const v6, 0x7f03000e

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/EditAccount;->setContentView(I)V

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v1, closeFilter:Landroid/content/IntentFilter;
    const-string v6, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v6, Lcom/infraware/common/account/EditAccount$CloseReceiver;

    invoke-direct {v6, p0}, Lcom/infraware/common/account/EditAccount$CloseReceiver;-><init>(Lcom/infraware/common/account/EditAccount;)V

    iput-object v6, p0, Lcom/infraware/common/account/EditAccount;->mCloseReceiver:Lcom/infraware/common/account/EditAccount$CloseReceiver;

    .line 124
    iget-object v6, p0, Lcom/infraware/common/account/EditAccount;->mCloseReceiver:Lcom/infraware/common/account/EditAccount$CloseReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/infraware/common/account/EditAccount;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Lcom/infraware/common/account/EditAccount;->initUI()V

    .line 128
    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v6

    iput v6, p0, Lcom/infraware/common/account/EditAccount;->m_nLocaleCode:I

    .line 129
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    .line 130
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 131
    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget v7, p0, Lcom/infraware/common/account/EditAccount;->m_nOrientation:I

    invoke-static {v6, v7}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 133
    new-instance v6, Lcom/infraware/common/account/EditAccount$3;

    invoke-direct {v6, p0}, Lcom/infraware/common/account/EditAccount$3;-><init>(Lcom/infraware/common/account/EditAccount;)V

    iput-object v6, p0, Lcom/infraware/common/account/EditAccount;->mEventHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v8, 0x7f080045

    const v7, 0x7f080043

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    packed-switch p1, :pswitch_data_f8

    .line 351
    :goto_c
    return-object v3

    .line 192
    :pswitch_d
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/infraware/common/account/EditAccount;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 193
    .local v2, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030013

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, v:Landroid/view/View;
    const v3, 0x7f0c006e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_tvPassword:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f0c006a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    .line 198
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/infraware/common/account/EditAccount;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v4}, Lcom/infraware/common/account/AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 201
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 202
    .local v0, filters:[Landroid/text/InputFilter;
    new-instance v3, Lcom/infraware/common/account/EditAccount$5;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/EditAccount$5;-><init>(Lcom/infraware/common/account/EditAccount;)V

    aput-object v3, v0, v5

    .line 217
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 219
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    new-instance v4, Lcom/infraware/common/account/EditAccount$6;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$6;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    new-instance v4, Lcom/infraware/common/account/EditAccount$7;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$7;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 264
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 267
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 268
    new-instance v4, Lcom/infraware/common/account/EditAccount$8;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$8;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 287
    new-instance v4, Lcom/infraware/common/account/EditAccount$9;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$9;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 264
    iput-object v3, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    .line 295
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 297
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/infraware/common/account/EditAccount;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 298
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mEditPasswordDialog:Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 301
    .end local v0           #filters:[Landroid/text/InputFilter;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #vi:Landroid/view/LayoutInflater;
    :pswitch_9f
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    const v4, 0x7f080035

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 304
    const v4, 0x7f080056

    invoke-virtual {p0, v4}, Lcom/infraware/common/account/EditAccount;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 305
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 306
    new-instance v4, Lcom/infraware/common/account/EditAccount$10;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$10;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 315
    new-instance v4, Lcom/infraware/common/account/EditAccount$11;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$11;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 323
    new-instance v4, Lcom/infraware/common/account/EditAccount$12;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/EditAccount$12;-><init>(Lcom/infraware/common/account/EditAccount;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 340
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 301
    iput-object v3, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 341
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 343
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungGlobalVer()Z

    move-result v3

    if-nez v3, :cond_ec

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 344
    :cond_ec
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 349
    :cond_f4
    iget-object v3, p0, Lcom/infraware/common/account/EditAccount;->mDeleteDialog:Landroid/app/AlertDialog;

    goto/16 :goto_c

    .line 190
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_d
        :pswitch_9f
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mCloseReceiver:Lcom/infraware/common/account/EditAccount$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 404
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 372
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 373
    invoke-direct {p0}, Lcom/infraware/common/account/EditAccount;->CloseForm()V

    .line 376
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_14

    .line 394
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->m_oImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/infraware/common/account/EditAccount;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 396
    :cond_14
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 397
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/infraware/common/account/EditAccount;->mPasswordPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_a

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->showDialog(I)V

    .line 186
    const/4 v0, 0x1

    :goto_9
    return v0

    .line 184
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 358
    packed-switch p1, :pswitch_data_12

    .line 368
    :goto_6
    return-void

    .line 360
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->removeDialog(I)V

    goto :goto_6

    .line 364
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/EditAccount;->removeDialog(I)V

    goto :goto_6

    .line 358
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
