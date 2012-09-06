.class public Lcom/google/googlenav/ui/view/dialog/ar;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/google/googlenav/ui/view/dialog/aq;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aq;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    .line 50
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 132
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
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    if-nez v0, :cond_7

    .line 111
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->b:Z

    .line 114
    :cond_7
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->b:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    if-nez v0, :cond_1b

    .line 115
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->d:Z

    if-nez v0, :cond_1a

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aq;->d()V

    .line 117
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->d:Z

    .line 122
    :cond_1a
    :goto_1a
    return-void

    .line 120
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    goto :goto_1a
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->a:Z

    if-eqz v0, :cond_1b

    .line 90
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    .line 94
    :goto_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->b:Z

    .line 97
    const-string v0, "gmm://googleplussignup?state=confirmed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aq;->a()V

    .line 100
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 106
    :cond_1a
    :goto_1a
    return-void

    .line 92
    :cond_1b
    iput-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->a:Z

    goto :goto_7

    .line 101
    :cond_1e
    const-string v0, "gmm://googleplussignup?state=cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aq;->b()V

    .line 104
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_1a
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 57
    const-string v1, "gmm://googleplussignup?state=confirmed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 59
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/aq;->a()V

    .line 60
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 83
    :goto_11
    return v0

    .line 62
    :cond_12
    const-string v1, "gmm://googleplussignup?state=cancelled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_23

    .line 64
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->e:Lcom/google/googlenav/ui/view/dialog/aq;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/aq;->b()V

    .line 65
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_11

    .line 69
    :cond_23
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/dialog/ar;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->b:Z

    if-eqz v1, :cond_44

    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    if-nez v1, :cond_44

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    goto :goto_11

    .line 79
    :cond_44
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/dialog/ar;->b:Z

    if-nez v1, :cond_4a

    .line 80
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/dialog/ar;->c:Z

    .line 83
    :cond_4a
    const/4 v0, 0x0

    goto :goto_11
.end method
