.class public final Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;
.super Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;
.source "ModifySharingActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method b(I)V
    .registers 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity$SharingOptionsDialogFragment;->a:Lck;

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 73
    invoke-static {v0, p1}, Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;->a(Lcom/google/android/apps/docs/sharingactivity/ModifySharingActivity;I)V

    .line 74
    return-void
.end method
