.class public Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;
.super Landroid/app/Fragment;
.source "BrowserAuthenticationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$1;,
        Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;,
        Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .registers 6

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, args:Landroid/os/Bundle;
    new-instance v1, Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelper;

    new-instance v2, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$AuthHelperClient;-><init>(Lcom/google/android/apps/books/app/BrowserAuthenticationFragment;Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$1;)V

    #calls: Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getAccount(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$100(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->getUrl(Landroid/os/Bundle;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BrowserAuthenticationFragment$Arguments;->access$200(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelper;-><init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
