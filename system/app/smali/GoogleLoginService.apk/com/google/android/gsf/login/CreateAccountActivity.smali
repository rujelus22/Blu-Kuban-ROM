.class public Lcom/google/android/gsf/login/CreateAccountActivity;
.super Lcom/google/android/gsf/login/AddAccountActivity;
.source "CreateAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CreateAccountActivity$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/AddAccountActivity;-><init>()V

    .line 264
    return-void
.end method

.method private handleBack(IILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3fe

    const/16 v4, 0x3fa

    const/16 v3, 0x3f3

    const/16 v2, 0x404

    .line 43
    packed-switch p1, :pswitch_data_aa

    .line 113
    :pswitch_b
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    :goto_e
    return-void

    .line 45
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 50
    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 56
    :pswitch_25
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto :goto_e

    .line 61
    :pswitch_2c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 66
    :pswitch_37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 72
    :pswitch_42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 76
    :pswitch_4d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 81
    :pswitch_58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 86
    :pswitch_65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v1, "noBack"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const/16 v1, 0x40b

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 92
    :pswitch_78
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_89

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 96
    :cond_89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 103
    :pswitch_95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 108
    :pswitch_a1
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_e

    .line 43
    nop

    :pswitch_data_aa
    .packed-switch 0x3eb
        :pswitch_95
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a1
        :pswitch_78
        :pswitch_58
        :pswitch_4d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_37
        :pswitch_42
        :pswitch_25
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_1a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2c
        :pswitch_b
        :pswitch_b
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3ff

    const/16 v3, 0x3f4

    const/16 v2, 0x3f2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 119
    if-ne p2, v1, :cond_11

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    .line 283
    :cond_10
    :goto_10
    return-void

    .line 125
    :cond_11
    if-nez p2, :cond_17

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/login/CreateAccountActivity;->handleBack(IILandroid/content/Intent;)V

    goto :goto_10

    .line 130
    :cond_17
    packed-switch p1, :pswitch_data_19c

    .line 281
    :pswitch_1a
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/AddAccountActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_10

    .line 132
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_31

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x406

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 136
    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 142
    :pswitch_3c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 146
    :pswitch_47
    if-ne p2, v0, :cond_54

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 149
    :cond_54
    if-eqz p2, :cond_10

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BadNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x407

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 157
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_74

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 161
    :cond_74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 167
    :pswitch_7f
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/UsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x404

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    .line 173
    :pswitch_90
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_a2

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 179
    :cond_a2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 185
    :pswitch_ae
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 190
    :pswitch_bc
    if-ne p2, v0, :cond_ca

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 194
    :cond_ca
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 201
    :pswitch_db
    if-ne p2, v0, :cond_e9

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 205
    :cond_e9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CheckAvailTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 212
    :pswitch_f7
    if-ne p2, v0, :cond_10

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/AccountSecurityActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 222
    :pswitch_107
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->isESEnabled()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fe

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 226
    :cond_11b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 232
    :pswitch_127
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    if-eqz v0, :cond_13b

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 237
    :cond_13b
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_10

    .line 243
    :pswitch_143
    if-ne p2, v0, :cond_15c

    .line 245
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mIsNewAccount:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MarketHelper;->allowCreditCard(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->afterAddAccount()V

    goto/16 :goto_10

    .line 250
    :cond_15c
    invoke-static {p3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 251
    sget-object v1, Lcom/google/android/gsf/login/CreateAccountActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1e2

    .line 263
    const/16 v0, 0x3f1

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 253
    :pswitch_172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 258
    :pswitch_180
    const/16 v0, 0x3f5

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 271
    :pswitch_187
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/CreateAccountActivity;->setResult(I)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountActivity;->finish()V

    goto/16 :goto_10

    .line 277
    :pswitch_18f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_10

    .line 130
    nop

    :pswitch_data_19c
    .packed-switch 0x3eb
        :pswitch_143
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_187
        :pswitch_127
        :pswitch_107
        :pswitch_f7
        :pswitch_18f
        :pswitch_1a
        :pswitch_1a
        :pswitch_bc
        :pswitch_db
        :pswitch_7f
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1e
        :pswitch_3c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_ae
        :pswitch_1a
        :pswitch_47
        :pswitch_63
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_90
    .end packed-switch

    .line 251
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_172
        :pswitch_180
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/AddAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    if-nez p1, :cond_11

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3fa

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 40
    :cond_11
    return-void
.end method
