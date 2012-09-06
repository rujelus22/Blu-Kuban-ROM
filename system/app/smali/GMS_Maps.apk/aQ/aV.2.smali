.class public LaQ/aV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/googlenav/ai;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    .line 45
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    iget-object v1, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aR()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 117
    const/16 v2, 0x20e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->at:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_29
    iget-object v1, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aS()Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v2, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 127
    sget-object v2, Lcom/google/googlenav/ui/aV;->at:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 132
    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :cond_5e
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 48
    const v0, 0x7f100014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 49
    const v1, 0x7f10009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    const v2, 0x7f100368

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 51
    const v2, 0x7f100369

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    const v2, 0x7f10036b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->an()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 57
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 60
    :cond_3e
    new-instance v4, LaQ/aW;

    invoke-direct {v4, p0, v3, v2, p2}, LaQ/aW;-><init>(LaQ/aV;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v2, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 95
    if-eqz v3, :cond_80

    .line 98
    :try_start_52
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_59} :catch_84

    .line 102
    :goto_59
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 103
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

    .line 105
    iget-object v0, p0, LaQ/aV;->a:Lcom/google/googlenav/ai;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->o(I)V

    .line 109
    :cond_80
    invoke-direct {p0, v1}, LaQ/aV;->a(Landroid/widget/TextView;)V

    .line 110
    return-void

    .line 99
    :catch_84
    move-exception v2

    .line 100
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_59
.end method
