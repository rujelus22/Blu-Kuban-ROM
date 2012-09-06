.class public LpG;
.super Ljava/lang/Object;
.source "TermsOfServiceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 150
    iget-object v0, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()V

    .line 152
    :cond_23
    iget-object v0, p0, LpG;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a:LpL;

    invoke-interface {v0}, LpL;->d()V

    .line 153
    return-void
.end method
