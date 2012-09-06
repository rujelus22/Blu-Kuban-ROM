.class public LpE;
.super Ljava/lang/Object;
.source "SortSelectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

.field final synthetic a:[LsO;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;Landroid/content/Context;[LsO;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, LpE;->a:Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    iput-object p2, p0, LpE;->a:Landroid/content/Context;

    iput-object p3, p0, LpE;->a:[LsO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LpE;->a:Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LpE;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, LpE;->a:Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpF;

    .line 80
    iget-object v1, p0, LpE;->a:[LsO;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, LpF;->a(LsO;)V

    .line 81
    iget-object v0, p0, LpE;->a:Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a()V

    .line 82
    return-void
.end method
