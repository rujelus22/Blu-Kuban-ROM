.class public Lcom/google/googlenav/ui/view/dialog/P;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Lcom/google/googlenav/ui/view/dialog/O;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/O;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, "G+WEBVIEW"

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "gmm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "continue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "googleplussignup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->c:Z

    :cond_7
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->c:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->e:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/O;->d()V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->e:Z

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    goto :goto_1a
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->b:Z

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    :goto_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->c:Z

    const-string v0, "gmm://googleplussignup?state=confirmed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/O;->a()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->b:Z

    goto :goto_7

    :cond_1e
    const-string v0, "gmm://googleplussignup?state=cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/O;->b()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_1a
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const-string v1, "gmm://googleplussignup?state=confirmed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/O;->a()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :goto_11
    return v0

    :cond_12
    const-string v1, "gmm://googleplussignup?state=cancelled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->f:Lcom/google/googlenav/ui/view/dialog/O;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/O;->b()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_11

    :cond_23
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/dialog/P;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->c:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    if-nez v1, :cond_44

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;)V

    goto :goto_11

    :cond_44
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/P;->c:Z

    if-nez v1, :cond_4a

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/P;->d:Z

    :cond_4a
    const/4 v0, 0x0

    goto :goto_11
.end method
