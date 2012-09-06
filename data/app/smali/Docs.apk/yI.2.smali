.class public LyI;
.super Ljava/lang/Object;
.source "UnsavedChangesDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, LyI;->a:Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lkg;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 37
    iget-object v0, p0, LyI;->a:Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->b(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LyI;->a:Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 38
    iget-object v0, p0, LyI;->a:Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    :cond_23
    return-void
.end method
