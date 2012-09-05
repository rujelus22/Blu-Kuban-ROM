.class Lcom/google/android/apps/books/app/BooksActivity$1$3;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$chapterTitle:Ljava/lang/String;

.field final synthetic val$pageTitle:Ljava/lang/String;

.field final synthetic val$position:Lcom/google/android/apps/books/common/Position;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$volumeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$position:Lcom/google/android/apps/books/common/Position;

    iput-object p5, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$chapterTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$pageTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$volumeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$position:Lcom/google/android/apps/books/common/Position;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$chapterTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity$1$3;->val$pageTitle:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/books/app/NewPositionAvailableFragment$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 872
    const-class v2, Lcom/google/android/apps/books/app/NewPositionAvailableFragment;

    const-string v3, "newPositionAvailable"

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 874
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 875
    return-void
.end method
