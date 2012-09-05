.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsHelp;
.super Landroid/app/Activity;
.source "AxT9optionsHelp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHelp;->setContentView(I)V

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, helpTitle:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHelp;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsHelp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 37
    .local v1, help_WebView:Landroid/webkit/WebView;
    const-string v2, "file:///android_asset/help.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method
