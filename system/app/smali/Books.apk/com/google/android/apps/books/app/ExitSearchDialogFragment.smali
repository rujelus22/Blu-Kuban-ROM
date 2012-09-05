.class public Lcom/google/android/apps/books/app/ExitSearchDialogFragment;
.super Landroid/app/DialogFragment;
.source "ExitSearchDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ExitSearchDialogFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/ExitSearchDialogFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, arguments:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$Arguments;->getPageTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, pageTitle:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;-><init>(Lcom/google/android/apps/books/app/ExitSearchDialogFragment;)V

    .line 55
    .local v3, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f0e001f

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const v5, 0x7f0e0020

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    .line 68
    .local v2, items:[Ljava/lang/CharSequence;
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
