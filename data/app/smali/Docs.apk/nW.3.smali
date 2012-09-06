.class public LnW;
.super Ljava/lang/Object;
.source "CreateDocumentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

.field final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;Landroid/support/v4/app/FragmentActivity;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, LnW;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iput-object p2, p0, LnW;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, LnW;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, LnW;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, LnW;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, LnW;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, LafQ;->a(II)I

    .line 143
    iget-object v0, p0, LnW;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loa;

    invoke-interface {v0}, Loa;->a()V

    .line 144
    return-void
.end method
