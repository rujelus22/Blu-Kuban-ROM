.class public Lcom/infraware/common/register/UserRegister;
.super Landroid/app/Activity;
.source "UserRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/register/UserRegister$MyWebClient;
    }
.end annotation


# static fields
.field private static final EH_CONNECT_CHECK:I = 0x384

.field private static final EH_CONNECT_NETWORK:I = 0x3e8

.field private static final EH_FORM_CLOSE:I = 0x5dc

.field private static final EH_NETWORK_ERROR:I = 0x514

.field private static final EH_NO_RESPONSE_SERVER_ERROR:I = 0x578

.field private static final EH_USER_REGISTER_FAIL:I = 0x4b0

.field private static final EH_USER_REGISTER_SUCCESS:I = 0x44c

.field private static final POPUP_MSG:I = 0xfa0

.field private static final POPUP_NETWORK_ERROR:I = 0xbb8

.field private static final POPUP_USER_REGISTER:I = 0x7d0

.field private static final USER_INFO_URL:Ljava/lang/String; = "http://polarisoffice.infraware.co.kr/dmweb/AddUserInfo.aspx?"


# instance fields
.field public mEventHandler:Landroid/os/Handler;

.field private mNetErrDialog:Landroid/app/AlertDialog;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mPopupMsg:I

.field private mUserRegisterDialog:Landroid/app/AlertDialog;

.field private m_bAfterWeekCheck:Z

.field private m_bNetErrAutoRegister:Z

.field private m_bUserRegisterSuccess:Z

.field private m_btnLater:Landroid/widget/Button;

.field private m_btnRegister:Landroid/widget/Button;

.field private m_checkAfterWeek:Landroid/widget/CheckBox;

.field private m_etEmail:Landroid/widget/EditText;

.field private m_etName:Landroid/widget/EditText;

.field private m_nFailValue:I

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_strEmail:Ljava/lang/String;

.field private m_strName:Ljava/lang/String;

.field private m_tvInfo1:Landroid/widget/TextView;

.field private m_tvInfo2:Landroid/widget/TextView;

.field private m_tvRegistringMsg:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    .line 65
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    .line 66
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo1:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_checkAfterWeek:Landroid/widget/CheckBox;

    .line 69
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_btnLater:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    .line 72
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvRegistringMsg:Landroid/widget/TextView;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/infraware/common/register/UserRegister;->m_bAfterWeekCheck:Z

    .line 78
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    .line 80
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    .line 82
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    .line 84
    iput-boolean v2, p0, Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z

    .line 85
    iput-boolean v2, p0, Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z

    .line 86
    iput v2, p0, Lcom/infraware/common/register/UserRegister;->m_nFailValue:I

    .line 88
    iput v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    .line 91
    iput v2, p0, Lcom/infraware/common/register/UserRegister;->m_nOrientation:I

    .line 92
    iput v2, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    .line 95
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->toast:Landroid/widget/Toast;

    .line 98
    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 48
    return-void
.end method

.method private GetRegistryData()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 653
    const-string v2, "PolarisDocumentMaster"

    invoke-virtual {p0, v2, v4}, Lcom/infraware/common/register/UserRegister;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 655
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "UserRegisterName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    .line 656
    const-string v2, "UserRegisterEmail"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    .line 658
    const-string v2, "AutoUserRegister"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 660
    .local v0, bAutoRegister:Z
    return v0
.end method

.method private SetAddBtnStatus()V
    .registers 5

    .prologue
    .line 603
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    .line 610
    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 611
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    :goto_34
    return-void

    .line 615
    :cond_35
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_34
.end method

.method private SetEventHandler()V
    .registers 2

    .prologue
    .line 137
    new-instance v0, Lcom/infraware/common/register/UserRegister$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/register/UserRegister$1;-><init>(Lcom/infraware/common/register/UserRegister;)V

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->mEventHandler:Landroid/os/Handler;

    .line 291
    return-void
.end method

.method private SetRegistryData(Z)V
    .registers 8
    .parameter "bShowAfterWeek"

    .prologue
    .line 624
    const-string v4, "PolarisDocumentMaster"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/infraware/common/register/UserRegister;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 625
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 627
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_2e

    .line 628
    const-string v4, "UserRegisterShowAfterWeek"

    iget-boolean v5, p0, Lcom/infraware/common/register/UserRegister;->m_bAfterWeekCheck:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 630
    iget-boolean v4, p0, Lcom/infraware/common/register/UserRegister;->m_bAfterWeekCheck:Z

    if-eqz v4, :cond_2a

    .line 631
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 632
    .local v0, cCurTime:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, strCurTime:Ljava/lang/String;
    const-string v4, "UserRegisterCurTime"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    .end local v0           #cCurTime:Ljava/util/Calendar;
    .end local v3           #strCurTime:Ljava/lang/String;
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 650
    return-void

    .line 637
    :cond_2e
    iget-boolean v4, p0, Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z

    if-nez v4, :cond_36

    iget-boolean v4, p0, Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z

    if-eqz v4, :cond_53

    .line 638
    :cond_36
    const-string v4, "UserRegisterName"

    iget-object v5, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    const-string v4, "UserRegisterEmail"

    iget-object v5, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 645
    :goto_44
    const-string v4, "UserRegisterSuccess"

    iget-boolean v5, p0, Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    const-string v4, "AutoUserRegister"

    iget-boolean v5, p0, Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2a

    .line 641
    :cond_53
    const-string v4, "UserRegisterName"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 642
    const-string v4, "UserRegisterEmail"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_44
.end method

.method static synthetic access$0(Lcom/infraware/common/register/UserRegister;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/common/register/UserRegister;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/infraware/common/register/UserRegister;->m_bAfterWeekCheck:Z

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/common/register/UserRegister;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/common/register/UserRegister;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/common/register/UserRegister;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/common/register/UserRegister;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/common/register/UserRegister;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/infraware/common/register/UserRegister;->m_bNetErrAutoRegister:Z

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/common/register/UserRegister;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/common/register/UserRegister;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/infraware/common/register/UserRegister;->m_bUserRegisterSuccess:Z

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/common/register/UserRegister;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/infraware/common/register/UserRegister;->m_nFailValue:I

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/common/register/UserRegister;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/infraware/common/register/UserRegister;->SetRegistryData(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/common/register/UserRegister;)I
    .registers 2
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/infraware/common/register/UserRegister;->m_nFailValue:I

    return v0
.end method

.method static synthetic access$7(Lcom/infraware/common/register/UserRegister;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/common/register/UserRegister;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/infraware/common/register/UserRegister;->onToastMessage(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/infraware/common/register/UserRegister;)V
    .registers 1
    .parameter

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->SetAddBtnStatus()V

    return-void
.end method

.method private initUI()V
    .registers 3

    .prologue
    .line 317
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    .line 318
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    .line 320
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo1:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 324
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_checkAfterWeek:Landroid/widget/CheckBox;

    .line 326
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_btnLater:Landroid/widget/Button;

    .line 327
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    .line 329
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 330
    return-void
.end method

.method private makeMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "str"

    .prologue
    .line 573
    const/4 v2, 0x0

    .line 576
    .local v2, md:Ljava/security/MessageDigest;
    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_e

    move-result-object v2

    .line 582
    if-eqz v2, :cond_b

    if-nez p1, :cond_15

    .line 583
    :cond_b
    const-string v6, ""

    .line 593
    :goto_d
    return-object v6

    .line 577
    :catch_e
    move-exception v0

    .line 578
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 579
    const-string v6, ""

    goto :goto_d

    .line 585
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 586
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 587
    .local v4, md5Code:[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    array-length v6, v4

    if-lt v1, v6, :cond_2e

    .line 593
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    .line 589
    :cond_2e
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v4, v1

    int-to-char v9, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, md5Char:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method private onToastMessage(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_15

    .line 782
    invoke-virtual {p0}, Lcom/infraware/common/register/UserRegister;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/register/UserRegister;->toast:Landroid/widget/Toast;

    .line 785
    :goto_f
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 786
    return-void

    .line 784
    :cond_15
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_f
.end method

.method private setControlAction()V
    .registers 5

    .prologue
    .line 333
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 334
    .local v1, filters:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Lcom/infraware/common/register/UserRegister$2;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$2;-><init>(Lcom/infraware/common/register/UserRegister;)V

    aput-object v3, v1, v2

    .line 349
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 351
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/common/register/UserRegister$3;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$3;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 366
    new-instance v0, Lcom/infraware/common/account/MailInputFilter;

    invoke-direct {v0, p0}, Lcom/infraware/common/account/MailInputFilter;-><init>(Landroid/content/Context;)V

    .line 367
    .local v0, filter:Lcom/infraware/common/account/MailInputFilter;
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/infraware/common/account/MailInputFilter;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 369
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    new-instance v3, Lcom/infraware/common/register/UserRegister$4;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$4;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_checkAfterWeek:Landroid/widget/CheckBox;

    new-instance v3, Lcom/infraware/common/register/UserRegister$5;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$5;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 392
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_checkAfterWeek:Landroid/widget/CheckBox;

    new-instance v3, Lcom/infraware/common/register/UserRegister$6;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$6;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 405
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnLater:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/register/UserRegister$7;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$7;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnLater:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/register/UserRegister$8;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$8;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 425
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/register/UserRegister$9;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$9;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    new-instance v3, Lcom/infraware/common/register/UserRegister$10;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$10;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 570
    return-void
.end method


# virtual methods
.method public isValidEmailAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "emailAddress"

    .prologue
    .line 619
    const-string v0, "^[\\w-]+(\\.[\\w-]+)*@([\\w-]+\\.)+[\\w-]{2,4}$"

    .line 620
    .local v0, EMAIL_REGEX:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/infraware/common/register/UserRegister;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 844
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "_newConfig"

    .prologue
    const v5, 0x7f08003e

    const v4, 0x7f08003c

    const/4 v3, -0x1

    .line 790
    iget v1, p0, Lcom/infraware/common/register/UserRegister;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_16

    .line 791
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/register/UserRegister;->onChangeScreen(I)V

    .line 792
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/register/UserRegister;->m_nOrientation:I

    .line 795
    :cond_16
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 796
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    if-eq v1, v0, :cond_e8

    .line 797
    iput v0, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    .line 799
    invoke-virtual {p0, v4}, Lcom/infraware/common/register/UserRegister;->setTitle(I)V

    .line 800
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 801
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 803
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo1:Landroid/widget/TextView;

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 805
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lcom/infraware/common/register/UserRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ec

    iget v1, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_ec

    .line 806
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    const v2, 0x7f080294

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 810
    :goto_5a
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_checkAfterWeek:Landroid/widget/CheckBox;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 812
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_btnLater:Landroid/widget/Button;

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 813
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_btnRegister:Landroid/widget/Button;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 815
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_8b

    .line 816
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 817
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvRegistringMsg:Landroid/widget/TextView;

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 818
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 822
    :cond_8b
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c0

    .line 823
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 824
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 825
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/register/UserRegister;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 827
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 831
    :cond_c0
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_e8

    .line 832
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 833
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 834
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/register/UserRegister;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 839
    :cond_e8
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 840
    return-void

    .line 808
    :cond_ec
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    const v2, 0x7f08005c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/infraware/common/register/UserRegister;->setContentView(I)V

    .line 106
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->initUI()V

    .line 108
    invoke-virtual {p0}, Lcom/infraware/common/register/UserRegister;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    .line 110
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lcom/infraware/common/register/UserRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/infraware/common/register/UserRegister;->m_nLocaleCode:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_33

    .line 111
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_tvInfo2:Landroid/widget/TextView;

    const v2, 0x7f080294

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 113
    :cond_33
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/register/UserRegister;->m_nOrientation:I

    .line 114
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 116
    iget v1, p0, Lcom/infraware/common/register/UserRegister;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/register/UserRegister;->onChangeScreen(I)V

    .line 118
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->setControlAction()V

    .line 119
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->SetEventHandler()V

    .line 121
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->GetRegistryData()Z

    move-result v0

    .line 122
    .local v0, bAutoRegister:Z
    if-eqz v0, :cond_73

    .line 123
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

    .line 124
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_etEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_strEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_73
    invoke-direct {p0}, Lcom/infraware/common/register/UserRegister;->SetAddBtnStatus()V

    .line 132
    new-instance v1, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 133
    iget-object v1, p0, Lcom/infraware/common/register/UserRegister;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 134
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f08003e

    const/4 v5, 0x0

    .line 664
    sparse-switch p1, :sswitch_data_b8

    .line 760
    :goto_8
    return-object v2

    .line 667
    :sswitch_9
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/infraware/common/register/UserRegister;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 668
    .local v1, vi:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 670
    .local v0, v:Landroid/view/View;
    const v2, 0x7f0c007a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->m_tvRegistringMsg:Landroid/widget/TextView;

    .line 672
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 673
    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 680
    new-instance v3, Lcom/infraware/common/register/UserRegister$11;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$11;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 695
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 672
    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    .line 696
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 697
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mUserRegisterDialog:Landroid/app/AlertDialog;

    goto :goto_8

    .line 702
    .end local v0           #v:Landroid/view/View;
    .end local v1           #vi:Landroid/view/LayoutInflater;
    :sswitch_4a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 705
    iget v3, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 706
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 707
    const v3, 0x7f080046

    new-instance v4, Lcom/infraware/common/register/UserRegister$12;

    invoke-direct {v4, p0}, Lcom/infraware/common/register/UserRegister$12;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 715
    const v3, 0x7f080047

    new-instance v4, Lcom/infraware/common/register/UserRegister$13;

    invoke-direct {v4, p0}, Lcom/infraware/common/register/UserRegister$13;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 724
    new-instance v3, Lcom/infraware/common/register/UserRegister$14;

    invoke-direct {v3, p0}, Lcom/infraware/common/register/UserRegister$14;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 741
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 702
    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    .line 742
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 743
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mNetErrDialog:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 747
    :sswitch_8d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 748
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 750
    iget v3, p0, Lcom/infraware/common/register/UserRegister;->mPopupMsg:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 751
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/common/register/UserRegister$15;

    invoke-direct {v4, p0}, Lcom/infraware/common/register/UserRegister$15;-><init>(Lcom/infraware/common/register/UserRegister;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 747
    iput-object v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    .line 757
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 758
    iget-object v2, p0, Lcom/infraware/common/register/UserRegister;->mPopupDialog:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 664
    nop

    :sswitch_data_b8
    .sparse-switch
        0x7d0 -> :sswitch_9
        0xbb8 -> :sswitch_4a
        0xfa0 -> :sswitch_8d
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 765
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 767
    sparse-switch p1, :sswitch_data_1a

    .line 778
    :goto_6
    return-void

    .line 769
    :sswitch_7
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->removeDialog(I)V

    goto :goto_6

    .line 772
    :sswitch_d
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->removeDialog(I)V

    goto :goto_6

    .line 775
    :sswitch_13
    const/16 v0, 0xfa0

    invoke-virtual {p0, v0}, Lcom/infraware/common/register/UserRegister;->removeDialog(I)V

    goto :goto_6

    .line 767
    nop

    :sswitch_data_1a
    .sparse-switch
        0x7d0 -> :sswitch_7
        0xbb8 -> :sswitch_d
        0xfa0 -> :sswitch_13
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/infraware/common/register/UserRegister;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 300
    return-void
.end method
