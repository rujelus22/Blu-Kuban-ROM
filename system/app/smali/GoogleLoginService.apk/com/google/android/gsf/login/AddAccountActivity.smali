.class public Lcom/google/android/gsf/login/AddAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AddAccountActivity.java"


# static fields
.field private static BEFORE_PROFILE:I

.field private static PROFILE_PROGRESS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->BEFORE_PROFILE:I

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gsf/login/AddAccountActivity;->PROFILE_PROGRESS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public afterAddAccount()V
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    sget v1, Lcom/google/android/gsf/login/AddAccountActivity;->BEFORE_PROFILE:I

    if-ne v0, v1, :cond_21

    .line 39
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    sget v1, Lcom/google/android/gsf/login/AddAccountActivity;->PROFILE_PROGRESS:I

    iput v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ProfileTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x401

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    :goto_20
    return-void

    .line 45
    :cond_21
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipCreditCard:Z

    if-nez v0, :cond_8f

    .line 47
    :try_start_2d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9e

    .line 50
    sget-object v0, Lcom/google/android/gsf/login/AddAccountActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mMarketIntent:Landroid/content/Intent;

    move-object v2, v0

    .line 52
    :goto_3f
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_88

    if-eqz v1, :cond_88

    .line 56
    const-string v3, "cardholder_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_88
    const/16 v0, 0x3fc

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8d
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_8d} :catch_8e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_8d} :catch_9c

    goto :goto_20

    .line 61
    :catch_8e
    move-exception v0

    .line 68
    :cond_8f
    :goto_8f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_20

    .line 63
    :catch_9c
    move-exception v0

    goto :goto_8f

    :cond_9e
    move-object v2, v0

    goto :goto_3f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 80
    if-ne p2, v0, :cond_b

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->finish()V

    .line 120
    :goto_a
    return-void

    .line 86
    :cond_b
    sparse-switch p1, :sswitch_data_62

    .line 116
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown activity result req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_a

    .line 88
    :sswitch_34
    if-eq p2, v1, :cond_43

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x40a

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 92
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->afterAddAccount()V

    goto :goto_a

    .line 97
    :sswitch_47
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->afterAddAccount()V

    goto :goto_a

    .line 101
    :sswitch_4b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 107
    :sswitch_58
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AddAccountActivity;->onSetupComplete(Z)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/AddAccountActivity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AddAccountActivity;->finish()V

    goto :goto_a

    .line 86
    :sswitch_data_62
    .sparse-switch
        0x3ed -> :sswitch_58
        0x3fc -> :sswitch_4b
        0x401 -> :sswitch_34
        0x40a -> :sswitch_47
    .end sparse-switch
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 26
    iput p2, p0, Lcom/google/android/gsf/login/AddAccountActivity;->mNextRequest:I

    .line 27
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    return-void
.end method
