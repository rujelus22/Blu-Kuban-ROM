.class public LnU;
.super Ljava/lang/Object;
.source "ContentSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, LnU;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    iput-object p2, p0, LnU;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, LnU;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LnU;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, LnU;->a:Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Z)V

    .line 78
    return-void
.end method
