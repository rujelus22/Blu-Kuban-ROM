.class public Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressFragmentDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    .registers 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    .registers 6
    .parameter "title"
    .parameter "message"
    .parameter "cancelable"

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, args:Landroid/os/Bundle;
    if-eqz p0, :cond_c

    .line 52
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_c
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;-><init>()V

    .line 57
    .local v1, frag:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->setCancelable(Z)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f0001

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 70
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, newDialog:Landroid/app/ProgressDialog;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 72
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_26
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->isCancelable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 78
    return-object v2
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4
    .parameter "manager"
    .parameter "tag"

    .prologue
    .line 87
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    .line 93
    :goto_3
    return-void

    .line 88
    :catch_4
    move-exception v0

    goto :goto_3
.end method
