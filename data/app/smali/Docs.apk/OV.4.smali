.class public LOV;
.super Ljava/lang/Object;
.source "AddCollaboratorTextDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, LOV;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, LOV;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LOV;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 198
    iget-object v0, p0, LOV;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    .line 199
    return-void
.end method
