.class Lcom/google/googlenav/ui/view/android/aF;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lbb/y;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/webkit/WebViewClient;

.field final synthetic d:Lcom/google/googlenav/ui/view/android/aB;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aB;Lbb/y;Landroid/view/ViewGroup;Landroid/webkit/WebViewClient;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aF;->d:Lcom/google/googlenav/ui/view/android/aB;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aF;->a:Lbb/y;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/aF;->c:Landroid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aF;->e:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0f022c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->c:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->a:Lbb/y;

    iget-object v0, v0, Lbb/y;->j:Lbb/c;

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.parentActivity.notifyPageLoad(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->a:Lbb/y;

    iget-object v0, v0, Lbb/y;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0f022c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0f022f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/aF;->e:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aF;->a:Lbb/y;

    iget v2, v2, Lbb/y;->g:I

    if-nez v2, :cond_9

    :goto_8
    :pswitch_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ak()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->d:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aB;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :cond_28
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aF;->a:Lbb/y;

    iget v2, v2, Lbb/y;->g:I

    packed-switch v2, :pswitch_data_4e

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :pswitch_34
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    :cond_47
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aF;->d:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/aB;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_34
    .end packed-switch
.end method
