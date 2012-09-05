.class public Lcom/google/android/apps/books/app/SyncErrorFragment;
.super Landroid/app/DialogFragment;
.source "SyncErrorFragment.java"


# instance fields
.field private mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/google/android/apps/books/app/SyncErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/SyncErrorFragment$1;-><init>(Lcom/google/android/apps/books/app/SyncErrorFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/SyncErrorFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    new-instance v0, Lcom/google/android/apps/books/app/SyncErrorFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/SyncErrorFragment$2;-><init>(Lcom/google/android/apps/books/app/SyncErrorFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/SyncErrorFragment;->mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/SyncErrorFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/apps/books/app/SyncErrorFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/SyncErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 24
    const v2, 0x7f0e008f

    iget-object v3, p0, Lcom/google/android/apps/books/app/SyncErrorFragment;->mPositiveClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 25
    const v2, 0x7f0e0090

    iget-object v3, p0, Lcom/google/android/apps/books/app/SyncErrorFragment;->mNegativeClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
