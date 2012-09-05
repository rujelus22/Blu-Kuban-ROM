.class public Lcom/google/android/apps/books/app/BooksDeletedActivity;
.super Landroid/app/Activity;
.source "BooksDeletedActivity.java"


# instance fields
.field private mIsFirstInstance:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/BooksDeletedActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->showHelp()V

    return-void
.end method

.method private showHelp()V
    .registers 4

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Lcom/google/android/apps/books/util/Config;->buildFrom(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/OceanUris;->getHelpCenterUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->setContentView(I)V

    .line 36
    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/BooksDeletedActivity;->mIsFirstInstance:Z

    .line 37
    return-void

    .line 36
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v4, sb:Ljava/lang/StringBuilder;
    const v7, 0x7f0e007e

    invoke-virtual {p0, v7}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "titles"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 47
    .local v6, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 50
    .end local v5           #title:Ljava/lang/String;
    :cond_39
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const v7, 0x7f0e007f

    invoke-virtual {p0, v7}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Lcom/google/android/apps/books/app/BooksDeletedActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/BooksDeletedActivity$1;-><init>(Lcom/google/android/apps/books/app/BooksDeletedActivity;)V

    .line 61
    .local v1, helpListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/apps/books/app/BooksDeletedActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksDeletedActivity$2;-><init>(Lcom/google/android/apps/books/app/BooksDeletedActivity;)V

    .line 68
    .local v0, cancelListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e0080

    invoke-virtual {v7, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksDeletedActivity;->mIsFirstInstance:Z

    if-eqz v0, :cond_b

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksDeletedActivity;->showDialog(I)V

    .line 80
    :cond_b
    return-void
.end method
