.class public Lox;
.super Ljava/lang/Object;
.source "EditTitleDialogFragment.java"

# interfaces
.implements Lor;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lox;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    iput-object p2, p0, Lox;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lox;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Lox;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lox;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->e()V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lox;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->b(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)Lck;

    move-result-object v0

    iget-object v1, p0, Lox;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lox;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v1, p0, Lox;->a:Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;)LkU;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Ljava/lang/String;LkU;)V

    .line 82
    return-void
.end method
