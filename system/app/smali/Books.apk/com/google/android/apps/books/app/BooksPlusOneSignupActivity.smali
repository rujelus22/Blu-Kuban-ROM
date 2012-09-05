.class public Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;
.source "BooksPlusOneSignupActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 49
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
    .registers 4
    .parameter "accountName"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    .line 70
    .local v0, app:Lcom/google/android/apps/books/app/BooksApplication;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/BooksApplication;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v1

    return-object v1
.end method

.method protected getProgressText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 54
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSignupPromptText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 59
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getSignupPromptTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 64
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->mWebView:Landroid/webkit/WebView;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 35
    return-void
.end method

.method protected showWebView()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 40
    return-void
.end method
