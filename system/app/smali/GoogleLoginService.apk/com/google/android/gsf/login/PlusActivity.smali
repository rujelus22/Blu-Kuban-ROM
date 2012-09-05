.class public Lcom/google/android/gsf/login/PlusActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3ff

    const/16 v4, 0x3fe

    const/16 v3, 0x3fa

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 37
    if-nez p2, :cond_57

    .line 38
    sparse-switch p1, :sswitch_data_12c

    .line 160
    :goto_d
    return-void

    .line 40
    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 45
    :sswitch_19
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_d

    .line 50
    :sswitch_20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 55
    :sswitch_2b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 59
    :sswitch_36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 63
    :sswitch_41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 68
    :sswitch_4c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 75
    :cond_57
    sparse-switch p1, :sswitch_data_14a

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_d

    .line 77
    :sswitch_61
    if-ne p2, v0, :cond_70

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 82
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_d

    .line 87
    :sswitch_74
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7d

    .line 88
    const/16 v0, 0x385

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 90
    :cond_7d
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    if-nez v0, :cond_8a

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto :goto_d

    .line 95
    :cond_8a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusQueryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 101
    :sswitch_96
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_a8

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 104
    :cond_a8
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_d

    .line 110
    :sswitch_ad
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_c4

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 115
    :cond_c4
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_d

    .line 122
    :sswitch_cc
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PicassaInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 127
    :cond_ea
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 133
    :sswitch_f8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 138
    :sswitch_106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ProfileTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 143
    :sswitch_114
    if-eq p2, v0, :cond_124

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 147
    :cond_124
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusActivity;->finish()V

    goto/16 :goto_d

    .line 38
    :sswitch_data_12c
    .sparse-switch
        0x384 -> :sswitch_e
        0x3f2 -> :sswitch_41
        0x3fa -> :sswitch_20
        0x3fe -> :sswitch_19
        0x3ff -> :sswitch_2b
        0x401 -> :sswitch_4c
        0x405 -> :sswitch_36
    .end sparse-switch

    .line 75
    :sswitch_data_14a
    .sparse-switch
        0x384 -> :sswitch_74
        0x385 -> :sswitch_61
        0x3f2 -> :sswitch_106
        0x3fa -> :sswitch_ad
        0x3fe -> :sswitch_96
        0x3ff -> :sswitch_cc
        0x401 -> :sswitch_114
        0x405 -> :sswitch_f8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    if-nez p1, :cond_11

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/PlusCheckTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x384

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/PlusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    :cond_11
    return-void
.end method
