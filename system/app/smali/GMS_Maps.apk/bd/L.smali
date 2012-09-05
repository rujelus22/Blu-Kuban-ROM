.class public Lbd/L;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/googlenav/ah;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const/16 v2, 0x1dd

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->ar:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v1, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->aS()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->az()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    sget-object v2, Lcom/google/googlenav/ui/bg;->ar:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5e

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5e
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;)V
    .registers 8

    const v0, 0x7f0f01ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const v1, 0x7f0f0071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f022c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v2, 0x7f0f022d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f0f022f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->ak()Z

    move-result v4

    if-eqz v4, :cond_3e

    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_3e
    new-instance v4, Lbd/M;

    invoke-direct {v4, p0, v3, v2, p2}, Lbd/M;-><init>(Lbd/L;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    if-eqz v3, :cond_80

    :try_start_52
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_59} :catch_84

    :goto_59
    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:text/html;charset=utf-8,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lbd/L;->a:Lcom/google/googlenav/ah;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ah;->n(I)V

    :cond_80
    invoke-direct {p0, v1}, Lbd/L;->a(Landroid/widget/TextView;)V

    return-void

    :catch_84
    move-exception v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_59
.end method
