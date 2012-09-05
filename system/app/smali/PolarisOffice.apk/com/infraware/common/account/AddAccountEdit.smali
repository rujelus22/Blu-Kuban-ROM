.class public Lcom/infraware/common/account/AddAccountEdit;
.super Landroid/app/Activity;
.source "AddAccountEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;
    }
.end annotation


# static fields
.field public static final CHECK_ACTION:I = 0x12c

.field public static final CLOSE_ACTION:I = 0x190

.field public static final POPUP_MSG:I = 0x64


# instance fields
.field private mCloseReceiver:Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field public mEventHandler:Landroid/os/Handler;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mPopupMsg:I

.field public mResultIntent:Landroid/content/Intent;

.field private m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

.field protected m_btnAdd:Landroid/widget/Button;

.field protected m_btnCancel:Landroid/widget/Button;

.field protected m_etEmail:Landroid/widget/EditText;

.field protected m_etPassword:Landroid/widget/EditText;

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_nService:I

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oProgressDialog:Landroid/app/ProgressDialog;

.field private m_oToastMsg:Landroid/widget/Toast;

.field private m_runToastMsg:Ljava/lang/Runnable;

.field private m_strToastMsg:Ljava/lang/String;

.field protected m_tvEditStatic:Landroid/widget/TextView;

.field protected uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_tvEditStatic:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    .line 52
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    .line 53
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    .line 54
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnCancel:Landroid/widget/Button;

    .line 56
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    .line 57
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mErrorDialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    .line 64
    iput v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    .line 65
    iput v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nLocaleCode:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    .line 67
    iput v2, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I

    .line 69
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    .line 70
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mResultIntent:Landroid/content/Intent;

    .line 72
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oToastMsg:Landroid/widget/Toast;

    .line 73
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_strToastMsg:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 75
    new-instance v0, Lcom/infraware/common/account/AddAccountEdit$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/AddAccountEdit$1;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_runToastMsg:Ljava/lang/Runnable;

    .line 526
    new-instance v0, Lcom/infraware/common/account/AddAccountEdit$2;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/AddAccountEdit$2;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->uiUpdateHandler:Landroid/os/Handler;

    .line 561
    iput-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 44
    return-void
.end method

.method private SetAddBtnStatus()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, email:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_49

    .line 315
    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 316
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    :goto_35
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 323
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 326
    :goto_42
    return-void

    .line 318
    :cond_43
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_35

    .line 320
    :cond_49
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_35

    .line 325
    :cond_4f
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_42
.end method

.method static synthetic access$0(Lcom/infraware/common/account/AddAccountEdit;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oToastMsg:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/account/AddAccountEdit;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_strToastMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 1
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->SetAddBtnStatus()V

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/common/account/AddAccountEdit;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/infraware/common/account/AddAccountEdit;->onToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/infraware/common/account/AddAccountEdit;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/common/account/AddAccountEdit;Landroid/widget/Toast;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oToastMsg:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/common/account/AddAccountEdit;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 562
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/account/AddAccountEdit;->startProgressing(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 1
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->stopProgressing()V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/common/account/AddAccountEdit;)Lcom/infraware/common/account/ListAccountInfo;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/common/account/AddAccountEdit;)I
    .registers 2
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    return v0
.end method

.method static synthetic access$7(Lcom/infraware/common/account/AddAccountEdit;Landroid/app/AlertDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit;->mErrorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/common/account/AddAccountEdit;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/common/account/AddAccountEdit;)Z
    .registers 2
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->checkAccount()Z

    move-result v0

    return v0
.end method

.method private checkAccount()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v5

    .line 331
    .local v5, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 333
    const v7, 0x7f08030e

    invoke-virtual {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FV04"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_25

    .line 334
    const v7, 0x7f0800bf

    invoke-virtual {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->onToastMessage(Ljava/lang/String;)V

    .line 368
    :goto_24
    return v6

    .line 336
    :cond_25
    const v7, 0x7f0800be

    invoke-virtual {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->onToastMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 340
    :cond_30
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 342
    const v7, 0x7f080068

    invoke-virtual {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/infraware/common/account/AddAccountEdit;->onToastMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 346
    :cond_41
    const/4 v4, 0x0

    .line 347
    .local v4, serviceType:I
    iget v7, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    packed-switch v7, :pswitch_data_82

    goto :goto_24

    .line 350
    :pswitch_48
    const/4 v4, 0x1

    .line 359
    :goto_49
    iget-object v7, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, loginId:Ljava/lang/String;
    iget-object v7, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, password:Ljava/lang/String;
    new-instance v0, Lcom/infraware/filemanager/async/FileAsyncControlHandler;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/infraware/common/account/AddAccountEdit;->uiUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v7, v8}, Lcom/infraware/filemanager/async/FileAsyncControlHandler;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/file/FileListItem;Landroid/os/Handler;)V

    .line 363
    .local v0, handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    const-string v7, "LOGIN"

    invoke-virtual {v5, v7, v4, v1, v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->createThreadByType(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .line 364
    .local v2, loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setPassword(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->setMode(I)V

    .line 366
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;->start()V

    .line 368
    const/4 v6, 0x1

    goto :goto_24

    .line 353
    .end local v0           #handler:Lcom/infraware/filemanager/async/FileAsyncControlHandler;
    .end local v1           #loginId:Ljava/lang/String;
    .end local v2           #loginThread:Lcom/infraware/filemanager/webstorage/thread/LoginThread;
    .end local v3           #password:Ljava/lang/String;
    :pswitch_80
    const/4 v4, 0x2

    .line 354
    goto :goto_49

    .line 347
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_48
        :pswitch_80
    .end packed-switch
.end method

.method private initUI()V
    .registers 3

    .prologue
    .line 148
    new-instance v0, Lcom/infraware/common/account/ListAccountInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/infraware/common/account/ListAccountInfo;-><init>(Z)V

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    .line 151
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/account/ListAccountInfo;->setUseGoogleDocs(Z)V

    .line 153
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_tvEditStatic:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    .line 156
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    .line 158
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    .line 159
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnCancel:Landroid/widget/Button;

    .line 161
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->SetAddBtnStatus()V

    .line 162
    return-void
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_strToastMsg:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_strToastMsg:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_strToastMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 481
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_runToastMsg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_15
    return-void
.end method

.method private setControlAction()V
    .registers 5

    .prologue
    .line 165
    new-instance v0, Lcom/infraware/common/account/MailInputFilter;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/MailInputFilter;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, filter:Lcom/infraware/common/account/MailInputFilter;
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/infraware/common/account/MailInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 168
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$4;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$4;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 184
    .local v1, filters:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$5;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$5;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    aput-object v3, v1, v2

    .line 200
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 202
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$6;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$6;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$7;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$7;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 238
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$8;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$8;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnCancel:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$9;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$9;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method

.method private startProgressing(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "aActivityCtx"
    .parameter "aTitle"

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    .line 596
    :goto_5
    return-void

    .line 566
    :cond_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    .line 567
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 569
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/common/account/AddAccountEdit$11;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/AddAccountEdit$11;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 578
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/infraware/common/account/AddAccountEdit$12;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/AddAccountEdit$12;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 594
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 595
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5
.end method

.method private stopProgressing()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_5

    .line 605
    :goto_4
    return-void

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4
.end method


# virtual methods
.method public isValidEmailAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "emailAddress"

    .prologue
    .line 373
    const-string v0, "^[\\w-]+(\\.[\\w-]+)*@([\\w-]+\\.)+[\\w-]{2,4}$"

    .line 374
    .local v0, EMAIL_REGEX1:Ljava/lang/String;
    const-string v1, "^[\\w-]+(\\.[\\w-]+)*$"

    .line 384
    .local v1, EMAIL_REGEX2:Ljava/lang/String;
    const/4 v2, 0x0

    .line 385
    .local v2, isValid:Z
    iget v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    packed-switch v3, :pswitch_data_20

    .line 394
    :goto_a
    return v2

    .line 388
    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v2, 0x0

    .line 389
    :goto_18
    goto :goto_a

    .line 388
    :cond_19
    const/4 v2, 0x1

    goto :goto_18

    .line 391
    :pswitch_1b
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_a

    .line 385
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method

.method public isValidPassword(Ljava/lang/String;)Z
    .registers 6
    .parameter "password"

    .prologue
    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 405
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-lt v1, v2, :cond_9

    .line 413
    const/4 v3, 0x1

    :goto_8
    return v3

    .line 406
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 408
    .local v0, code:I
    const/16 v3, 0x21

    if-lt v0, v3, :cond_15

    const/16 v3, 0x7e

    if-le v0, v3, :cond_17

    .line 409
    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    .line 405
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "_newConfig"

    .prologue
    const v3, 0x7f080033

    .line 486
    iget v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_16

    .line 487
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    .line 488
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccountEdit;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    invoke-static {v1, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 491
    :cond_16
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 492
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nLocaleCode:I

    if-eq v1, v0, :cond_84

    .line 493
    iput v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nLocaleCode:I

    .line 495
    iget v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    packed-switch v1, :pswitch_data_cc

    .line 505
    :goto_27
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_tvEditStatic:Landroid/widget/TextView;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 507
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etPassword:Landroid/widget/EditText;

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 509
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnAdd:Landroid/widget/Button;

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 510
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->m_btnCancel:Landroid/widget/Button;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 512
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7b

    .line 513
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 514
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 515
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 520
    :cond_7b
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_84

    .line 521
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-static {p0, v1}, Lcom/infraware/common/util/Utils;->onLocaleChanged(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 523
    :cond_84
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 524
    return-void

    .line 498
    :pswitch_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Google docs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccountEdit;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    .line 501
    :pswitch_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Box.net"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccountEdit;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_27

    .line 495
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_88
        :pswitch_aa
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080033

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v3, 0x7f030011

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AddAccountEdit;->setContentView(I)V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, closeFilter:Landroid/content/IntentFilter;
    const-string v3, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    iput-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->mCloseReceiver:Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;

    .line 97
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->mCloseReceiver:Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/infraware/common/account/AddAccountEdit;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccountEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 100
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "key_account_type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    .line 104
    iget v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nService:I

    packed-switch v3, :pswitch_data_be

    .line 113
    :goto_37
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->initUI()V

    .line 115
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccountEdit;->setControlAction()V

    .line 117
    new-instance v3, Lcom/infraware/common/account/AddAccountEdit$3;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AddAccountEdit$3;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    iput-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    .line 132
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccountEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nLocaleCode:I

    .line 133
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    .line 134
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 135
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccountEdit;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/infraware/common/account/AddAccountEdit;->m_nOrientation:I

    invoke-static {v3, v4}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 141
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 143
    new-instance v3, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 144
    iget-object v3, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 145
    return-void

    .line 106
    :pswitch_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Google docs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AddAccountEdit;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 109
    :pswitch_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Box.net"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AddAccountEdit;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    .line 104
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_9b
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_36

    .line 440
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 425
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccountEdit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 428
    iget v1, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupMsg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 429
    const v1, 0x7f080043

    new-instance v2, Lcom/infraware/common/account/AddAccountEdit$10;

    invoke-direct {v2, p0}, Lcom/infraware/common/account/AddAccountEdit$10;-><init>(Lcom/infraware/common/account/AddAccountEdit;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 425
    iput-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    .line 436
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 437
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;

    goto :goto_4

    .line 423
    :pswitch_data_36
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->mCloseReceiver:Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 459
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 305
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 444
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 446
    packed-switch p1, :pswitch_data_e

    .line 452
    :goto_6
    return-void

    .line 448
    :pswitch_7
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->removeDialog(I)V

    goto :goto_6

    .line 446
    nop

    :pswitch_data_e
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    return-void
.end method

.method public onSendBroadcastMsg()V
    .registers 3

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.infraware.polarisoffice.ADD_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccountEdit;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    return-void
.end method
