.class Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;
.super Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelperClient;
.source "BrowserAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthHelperClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    invoke-direct {p0}, Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelperClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;-><init>(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;)V

    return-void
.end method


# virtual methods
.method public finished(Landroid/content/Intent;Ljava/lang/Exception;)V
    .registers 7
    .parameter "intent"
    .parameter "exception"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    #calls: Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v2}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->access$400(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    #calls: Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getRequestId(Landroid/os/Bundle;)I
    invoke-static {v3}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$300(Landroid/os/Bundle;)I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->authenticationFinished(Landroid/content/Intent;Ljava/lang/Exception;I)V

    .line 74
    iget-object v2, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 79
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_27

    .line 80
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 81
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 88
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 90
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_27
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;->this$0:Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
