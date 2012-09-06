.class public final Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;
.super Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;
.source "ModifySharingActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected p()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$ContactSharingDialogFragmentImpl;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;)V

    .line 59
    return-void
.end method
