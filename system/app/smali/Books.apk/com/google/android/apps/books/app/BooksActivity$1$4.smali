.class Lcom/google/android/apps/books/app/BooksActivity$1$4;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->showExitSearchDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$pageTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 930
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$4;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$4;->val$pageTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$4;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$4;->val$pageTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$Arguments;->create(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 936
    const-class v2, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;

    const-string v3, "exitSearchDialog"

    const/4 v4, 0x0

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 938
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 939
    return-void
.end method
