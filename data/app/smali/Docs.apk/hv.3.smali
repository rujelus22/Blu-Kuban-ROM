.class public Lhv;
.super Ljava/lang/Object;
.source "VersionCheckDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lhv;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lhv;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->b(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Lhv;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lhv;->a:Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 85
    return-void
.end method
