.class public LQh;
.super Ljava/lang/Object;
.source "SelectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, LQh;->a:Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, LQh;->a:Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LQh;->a:Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 100
    invoke-static {p1}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a(Landroid/content/DialogInterface;)I

    move-result v0

    .line 101
    if-ltz v0, :cond_1a

    .line 102
    iget-object v1, p0, LQh;->a:Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b(I)V

    .line 104
    :cond_1a
    return-void
.end method
