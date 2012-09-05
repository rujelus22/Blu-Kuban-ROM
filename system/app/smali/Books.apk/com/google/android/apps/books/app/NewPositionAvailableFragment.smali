.class public Lcom/google/android/apps/books/app/NewPositionAvailableFragment;
.super Landroid/app/DialogFragment;
.source "NewPositionAvailableFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/NewPositionAvailableFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 98
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, arguments:Landroid/os/Bundle;
    new-instance v4, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$1;-><init>(Lcom/google/android/apps/books/app/NewPositionAvailableFragment;Landroid/os/Bundle;)V

    .line 75
    .local v4, okListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 76
    .local v2, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->getChapterTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, chapterTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->getPageTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, pageTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 81
    const v6, 0x7f0e009e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    aput-object v5, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, message:Ljava/lang/String;
    :goto_31
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e00a1

    invoke-virtual {v6, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e00a2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 84
    .end local v3           #message:Ljava/lang/String;
    :cond_52
    const v6, 0x7f0e009f

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_31

    .line 88
    .end local v3           #message:Ljava/lang/String;
    :cond_5e
    const v6, 0x7f0e00a0

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_31
.end method
