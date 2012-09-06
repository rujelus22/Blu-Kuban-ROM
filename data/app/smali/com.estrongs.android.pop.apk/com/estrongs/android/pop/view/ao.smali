.class Lcom/estrongs/android/pop/view/ao;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ao;)Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a:I

    if-ne v0, v1, :cond_38

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const v2, 0x7f09021f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->finish()V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/view/ap;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/ap;-><init>(Lcom/estrongs/android/pop/view/ao;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/ap;->start()V

    goto :goto_2a

    :cond_38
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b:I

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    if-lez v1, :cond_5f

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5f
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;)V

    goto :goto_2a

    :cond_63
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c:I

    if-ne v0, v1, :cond_90

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_2a

    :cond_90
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->d:I

    if-ne v0, v1, :cond_a3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const-string v1, "Auth failed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    :cond_a3
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e:I

    if-ne v0, v1, :cond_c0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    const-string v1, "Auth failed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    :cond_c0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->f:I

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ao;->a:Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    if-lez v1, :cond_f2

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_f2
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;Ljava/lang/String;)V

    goto/16 :goto_2a
.end method
