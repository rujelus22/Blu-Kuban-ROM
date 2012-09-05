.class Lcom/google/android/apps/books/app/BooksActivity$1$2;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksActivity$1;->addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksActivity$1;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->this$1:Lcom/google/android/apps/books/app/BooksActivity$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/BooksActivity$1;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 842
    const-class v1, Lcom/google/android/apps/books/app/PromptAddVolumeDialog;

    const-string v2, "addToMyEBooks"

    iget-object v3, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity$1$2;->val$volumeId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/apps/books/app/PromptAddVolumeDialog$Arguments;->create(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/books/app/BooksActivity;->access$1800(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 845
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 846
    return-void
.end method
