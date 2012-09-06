.class public final Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;
.super Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;
.source "PreviewFragment.java"


# instance fields
.field private a:Lcom/google/android/apps/docs/fragment/PreviewFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->a(Landroid/os/Bundle;)V

    .line 121
    if-eqz p1, :cond_17

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    const-string v1, "parentFragment"

    invoke-virtual {v0, p1, v1}, Lx;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/fragment/PreviewFragment;

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    .line 126
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    if-nez v0, :cond_25

    .line 127
    const-string v0, "PreviewFragment"

    const-string v1, "No parent fragment provided."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a()V

    .line 130
    :cond_25
    return-void
.end method

.method a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    .line 115
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/ContactSharingDialogFragment;->c(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    const-string v1, "parentFragment"

    iget-object v2, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-virtual {v0, p1, v1, v2}, Lx;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 138
    return-void
.end method

.method protected p()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/PreviewFragment$ContactSharingDialogFragmentImpl;->a:Lcom/google/android/apps/docs/fragment/PreviewFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/PreviewFragment;->a(Lcom/google/android/apps/docs/fragment/PreviewFragment;)V

    .line 144
    return-void
.end method
