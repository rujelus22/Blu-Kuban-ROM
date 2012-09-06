.class public LPc;
.super Ljava/lang/Object;
.source "ConfirmSharingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, LPc;->a:Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LPc;->a:Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LPc;->a:Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, LPc;->a:Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;)V

    .line 69
    return-void
.end method
