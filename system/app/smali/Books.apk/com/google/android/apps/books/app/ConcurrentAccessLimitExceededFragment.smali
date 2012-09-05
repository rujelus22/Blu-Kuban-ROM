.class public Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;
.super Landroid/app/DialogFragment;
.source "ConcurrentAccessLimitExceededFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 51
    new-instance v3, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;-><init>(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)V

    .line 59
    .local v3, okListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$2;-><init>(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)V

    .line 70
    .local v0, helpListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;->getMaxDevices(Landroid/os/Bundle;)I

    move-result v1

    .line 71
    .local v1, maxDevices:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100001

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, template:Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "%1$d"

    aput-object v6, v5, v8

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 75
    .local v2, message:Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e0087

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0088

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
