.class public Lob;
.super Ljava/lang/Object;
.source "CreateDocumentDialogFragment.java"

# interfaces
.implements Loa;


# instance fields
.field final a:I

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

.field final a:LkU;

.field final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;LkU;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lob;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lob;->a:LkU;

    .line 80
    iput p3, p0, Lob;->b:I

    .line 81
    iput p4, p0, Lob;->a:I

    .line 82
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lob;->b:I

    return v0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lob;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v1, p0, Lob;->a:LkU;

    iget-object v2, p0, Lob;->a:Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    iget v3, p0, Lob;->a:I

    invoke-virtual {v2, v3}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(LkU;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
