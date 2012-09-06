.class public LpH;
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
    .line 155
    iput-object p1, p0, LpH;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, LpH;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->b(Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LpH;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, LpH;->a:Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/TermsOfServiceDialogFragment;->a()V

    .line 160
    return-void
.end method
