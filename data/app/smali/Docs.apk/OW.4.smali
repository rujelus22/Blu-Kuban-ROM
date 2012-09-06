.class public LOW;
.super Ljava/lang/Object;
.source "AddCollaboratorTextDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, LOW;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, LOW;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LOW;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 207
    const/4 v0, 0x0

    .line 211
    :goto_1a
    return v0

    .line 210
    :cond_1b
    iget-object v0, p0, LOW;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    .line 211
    const/4 v0, 0x1

    goto :goto_1a
.end method
