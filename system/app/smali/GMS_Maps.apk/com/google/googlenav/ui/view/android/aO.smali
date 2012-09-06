.class Lcom/google/googlenav/ui/view/android/ao;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/C;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/webkit/WebViewClient;

.field final synthetic d:Lcom/google/googlenav/ui/view/android/ak;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/view/C;Landroid/view/ViewGroup;Landroid/webkit/WebViewClient;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ao;->d:Lcom/google/googlenav/ui/view/android/ak;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ao;->a:Lcom/google/googlenav/ui/view/C;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/ao;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/ao;->c:Landroid/webkit/WebViewClient;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ao;->e:Z

    if-nez v0, :cond_47

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f100368

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->c:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1f

    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 305
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->a:Lcom/google/googlenav/ui/view/C;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/C;->j:Lcom/google/googlenav/ui/view/c;

    if-eqz v0, :cond_47

    .line 306
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

    .line 311
    :cond_47
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->a:Lcom/google/googlenav/ui/view/C;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/C;->f:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 288
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f100368

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->b:Landroid/view/ViewGroup;

    const v1, 0x7f10036b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/ao;->e:Z

    .line 292
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ao;->a:Lcom/google/googlenav/ui/view/C;

    iget v2, v2, Lcom/google/googlenav/ui/view/C;->g:I

    if-nez v2, :cond_9

    .line 354
    :goto_8
    :pswitch_8
    return v0

    .line 322
    :cond_9
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->d:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/ak;->a(Ljava/lang/String;)V

    move v0, v1

    .line 328
    goto :goto_8

    .line 331
    :cond_28
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ao;->a:Lcom/google/googlenav/ui/view/C;

    iget v2, v2, Lcom/google/googlenav/ui/view/C;->g:I

    packed-switch v2, :pswitch_data_4e

    .line 354
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    .line 344
    :pswitch_34
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 348
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_8

    .line 350
    :cond_47
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ao;->d:Lcom/google/googlenav/ui/view/android/ak;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/ak;->a(Ljava/lang/String;)V

    move v0, v1

    .line 351
    goto :goto_8

    .line 331
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_34
    .end packed-switch
.end method
