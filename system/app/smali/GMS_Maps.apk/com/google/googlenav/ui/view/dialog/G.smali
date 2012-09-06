.class Lcom/google/googlenav/ui/view/dialog/g;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 326
    const/16 v0, 0x64

    if-ne p2, v0, :cond_17

    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Lcom/google/googlenav/ui/view/dialog/a;Z)V

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/a;->o()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 338
    :goto_16
    return-void

    .line 333
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->c(Lcom/google/googlenav/ui/view/dialog/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Lcom/google/googlenav/ui/view/dialog/a;Z)V

    .line 336
    :cond_29
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/g;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->c(Lcom/google/googlenav/ui/view/dialog/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_16
.end method
