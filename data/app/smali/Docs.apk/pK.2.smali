.class final enum LpK;
.super LpI;
.source "TermsOfServiceDialogFragment.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LpI;-><init>(Ljava/lang/String;ILpG;)V

    return-void
.end method


# virtual methods
.method public a(Lx;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    const-string v0, "TermOfServiceDialogFragment"

    invoke-virtual {p1, v0}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 78
    if-eqz v0, :cond_13

    .line 79
    invoke-static {p2}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->a()V

    .line 83
    :cond_13
    return-void
.end method

.method public a(Lx;Landroid/content/Context;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p2}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 68
    :goto_7
    if-eqz v0, :cond_13

    .line 69
    new-instance v1, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;-><init>()V

    .line 70
    const-string v2, "TermOfServiceDialogFragment"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 72
    :cond_13
    return v0

    .line 67
    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method
