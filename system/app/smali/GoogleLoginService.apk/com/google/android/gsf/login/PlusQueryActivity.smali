.class public Lcom/google/android/gsf/login/PlusQueryActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "PlusQueryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mNextButton:Landroid/view/View;

.field mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableBackKey()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    .line 48
    :cond_9
    :goto_9
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->setResult(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gsf/login/PlusQueryActivity;->finish()V

    .line 50
    return-void

    .line 45
    :cond_11
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 46
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/PlusQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusQueryActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
