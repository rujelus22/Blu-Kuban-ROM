.class public abstract Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneSignupActivity;
.source "BasePlusOneWebSignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;,
        Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;
    }
.end annotation


# instance fields
.field private mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic access$202(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;)Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    return-object p1
.end method

.method private getNonConfigurationInstance()Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    if-nez v0, :cond_c

    .line 137
    new-instance v0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    return-object v0
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    .line 133
    :goto_4
    return-void

    .line 130
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected abstract getProgressText()Ljava/lang/CharSequence;
.end method

.method protected abstract getTokenType()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    .line 89
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    if-eqz v0, :cond_1c

    .line 90
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    iget-object v0, v0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;->browserHelper:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    new-instance v1, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->setClient(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;)V

    .line 92
    :cond_1c
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 108
    packed-switch p1, :pswitch_data_24

    .line 121
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 110
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getProgressText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    new-instance v1, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_8

    .line 108
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    return-object v0
.end method

.method protected onSignupClicked()V
    .registers 6

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->showProgressDialog()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getNonConfigurationInstance()Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    move-result-object v0

    new-instance v1, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    new-instance v2, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;)V

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getTokenType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;-><init>(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;->browserHelper:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    .line 100
    return-void
.end method

.method protected final processSignupResultUriAndFinish(Landroid/net/Uri;)V
    .registers 4
    .parameter "signupResultUri"

    .prologue
    .line 150
    if-eqz p1, :cond_13

    const-string v0, "confirmed"

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->performFirstPlusOne()V

    .line 154
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->finish()V

    .line 155
    return-void
.end method

.method protected showProgressDialog()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->showDialog(I)V

    .line 104
    return-void
.end method

.method protected abstract startSignup(Landroid/net/Uri;)V
.end method
