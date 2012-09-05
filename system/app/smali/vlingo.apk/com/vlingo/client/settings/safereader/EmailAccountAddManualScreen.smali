.class public Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;
.super Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;
.source "EmailAccountAddManualScreen.java"


# instance fields
.field SERVER_TYPES:[Ljava/lang/String;

.field m_spinSecurityType:Landroid/widget/Spinner;

.field m_spinServerType:Landroid/widget/Spinner;

.field m_txtPort:Landroid/widget/EditText;

.field m_txtServer:Landroid/widget/EditText;

.field m_txtUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMAP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "POP3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->SERVER_TYPES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEmailAccount()Lcom/vlingo/client/safereader/email/EmailAccount;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/vlingo/client/safereader/email/EmailAccount;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/email/EmailAccount;-><init>()V

    .line 132
    .local v0, account:Lcom/vlingo/client/safereader/email/EmailAccount;
    const/4 v1, 0x4

    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->accountType:I

    .line 133
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    .line 135
    const v1, 0x7f0f007e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    .line 136
    const v1, 0x7f0f0081

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinServerType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_6c

    .line 139
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    .line 145
    :goto_52
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_7a

    .line 156
    :goto_5b
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    .line 161
    return-object v0

    .line 142
    :cond_6c
    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->serverType:I

    goto :goto_52

    .line 147
    :pswitch_6f
    iput v2, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    goto :goto_5b

    .line 150
    :pswitch_72
    iput v3, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    goto :goto_5b

    .line 153
    :pswitch_75
    const/4 v1, 0x2

    iput v1, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    goto :goto_5b

    .line 145
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_72
        :pswitch_75
    .end packed-switch
.end method

.method isInputValid()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->isInputValid()Z

    move-result v0

    .line 39
    .local v0, valid:Z
    if-eqz v0, :cond_13

    if-eqz v0, :cond_2e

    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->isEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move v0, v1

    .line 40
    :cond_13
    :goto_13
    if-eqz v0, :cond_20

    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtServer:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->isEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v0, v1

    .line 41
    :cond_20
    :goto_20
    if-eqz v0, :cond_2d

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPort:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->isEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v0, v1

    .line 42
    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    move v0, v2

    .line 39
    goto :goto_13

    :cond_30
    move v0, v2

    .line 40
    goto :goto_20

    :cond_32
    move v0, v2

    .line 41
    goto :goto_2d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstance"

    .prologue
    const v4, 0x1090009

    const v3, 0x1090008

    .line 46
    invoke-super {p0, p1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddScreenBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->initControls()V

    .line 50
    invoke-virtual {p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->updateNextButton()V

    .line 52
    const v1, 0x7f0f0080

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtUsername:Landroid/widget/EditText;

    .line 53
    const v1, 0x7f0f0083

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPort:Landroid/widget/EditText;

    .line 54
    const v1, 0x7f0f0081

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtServer:Landroid/widget/EditText;

    .line 55
    const v1, 0x7f0f007f

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinServerType:Landroid/widget/Spinner;

    .line 56
    const v1, 0x7f0f0082

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    .line 58
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtUsername:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 59
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPort:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 60
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtServer:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 61
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtPassword:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->addValidationListener(Landroid/widget/EditText;)V

    .line 63
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_txtEmail:Landroid/widget/EditText;

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$1;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v1, 0x7f07000f

    invoke-static {p0, v1, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 77
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinServerType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinServerType:Landroid/widget/Spinner;

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$2;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    const v1, 0x7f070010

    invoke-static {p0, v1, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;->m_spinSecurityType:Landroid/widget/Spinner;

    new-instance v2, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen$3;-><init>(Lcom/vlingo/client/settings/safereader/EmailAccountAddManualScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    return-void
.end method
