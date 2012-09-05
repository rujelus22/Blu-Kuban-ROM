.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 422
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 423
    .local v2, count:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v1

    .line 427
    .local v1, allCount:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 429
    const v4, 0x7f0a0014

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v4, 0x7f0a0071

    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;

    invoke-direct {v5, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    if-ne v2, v1, :cond_7f

    .line 438
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    :goto_57
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 448
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 451
    .local v3, win:Landroid/view/Window;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 460
    return-void

    .line 439
    .end local v3           #win:Landroid/view/Window;
    :cond_7f
    if-ne v2, v6, :cond_92

    .line 440
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_57

    .line 442
    :cond_92
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_57
.end method
