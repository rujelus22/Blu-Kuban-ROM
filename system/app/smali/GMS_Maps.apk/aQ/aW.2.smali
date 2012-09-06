.class LaQ/aW;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:LaQ/aV;

.field private e:Z


# direct methods
.method constructor <init>(LaQ/aV;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, LaQ/aW;->d:LaQ/aV;

    iput-object p2, p0, LaQ/aW;->a:Landroid/view/View;

    iput-object p3, p0, LaQ/aW;->b:Landroid/widget/TextView;

    iput-object p4, p0, LaQ/aW;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/googlenav/android/c;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, LaQ/aW;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 84
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, LaQ/aW;->e:Z

    if-nez v0, :cond_f

    .line 76
    iget-object v0, p0, LaQ/aW;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 79
    :cond_f
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LaQ/aW;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, LaQ/aW;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, LaQ/aW;->e:Z

    .line 70
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, LaQ/aW;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
