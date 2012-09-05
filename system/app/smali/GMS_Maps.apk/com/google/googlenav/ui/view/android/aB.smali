.class public Lcom/google/googlenav/ui/view/android/aB;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/ap;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/ap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    return-void
.end method

.method public static a(ILcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/bh;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/util/List;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;
    .registers 6

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez p1, :cond_e

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d
.end method

.method public static a(ILjava/util/List;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;
    .registers 5

    invoke-static {p1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/aB;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/M;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aB;)Lcom/google/googlenav/ui/view/android/ap;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    return-object v0
.end method

.method private static a(Lbb/y;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lbb/y;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lbb/y;->a()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<hr/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<div>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbb/y;->d:[Lcom/google/googlenav/ui/bh;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v4, :cond_34

    aget-object v5, v3, v1

    iget-object v6, v5, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-static {v6}, Las/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/google/googlenav/ui/bh;->c:Z

    if-eqz v5, :cond_31

    const-string v5, "<br/>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_34
    const-string v1, "</div>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</body>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</body>"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbb/z;

    invoke-virtual {v0}, Lbb/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_27
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/android/M;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/aD;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/view/android/aB;I)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/aE;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/aE;-><init>(Lcom/google/googlenav/ui/view/android/aB;Lcom/google/googlenav/ui/bl;)V

    return-object v0
.end method

.method public a()V
    .registers 5

    const/4 v3, -0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    const v1, 0x7f0f00d3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/ap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/ap;->f:Lcom/google/googlenav/ui/p;

    if-eqz v0, :cond_2d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/aC;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/aC;-><init>(Lcom/google/googlenav/ui/view/android/aB;Lcom/google/googlenav/ui/p;)V

    new-instance v1, Lbb/a;

    invoke-direct {v1, v3, v3}, Lbb/a;-><init>(II)V

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    :cond_2d
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Lbb/y;Landroid/webkit/WebViewClient;)V
    .registers 9

    const/4 v4, 0x1

    iget-object v0, p2, Lbb/y;->e:Ljava/lang/String;

    if-eqz v0, :cond_13

    const v0, 0x7f0f022d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lbb/y;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, p2, Lbb/y;->f:Ljava/lang/String;

    if-eqz v0, :cond_25

    const v0, 0x7f0f022f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lbb/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    const v0, 0x7f0f01ae

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-boolean v1, p2, Lbb/y;->m:Z

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.3.2; en-gb; Nexus S Build/GMM_TABLET) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_3f
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_4e

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_4e
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/aF;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/googlenav/ui/view/android/aF;-><init>(Lcom/google/googlenav/ui/view/android/aB;Lbb/y;Landroid/view/ViewGroup;Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p2, Lbb/y;->a:Ljava/lang/String;

    if-eqz v1, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:text/html;charset=utf-8,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/aB;->a(Lbb/y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    iget-object v1, p2, Lbb/y;->i:Lbb/c;

    if-nez v1, :cond_87

    iget-object v1, p2, Lbb/y;->j:Lbb/c;

    if-eqz v1, :cond_9c

    :cond_87
    new-instance v1, Lcom/google/googlenav/ui/view/android/aG;

    iget-object v2, p2, Lbb/y;->i:Lbb/c;

    iget-object v3, p2, Lbb/y;->j:Lbb/c;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/aG;-><init>(Lbb/c;Lbb/c;)V

    const-string v2, "parentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_9c
    return-void

    :cond_9d
    invoke-virtual {p2}, Lbb/y;->a()Z

    move-result v1

    if-eqz v1, :cond_ab

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not supported with URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    iget-object v1, p2, Lbb/y;->b:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iget-object v1, p2, Lbb/y;->b:Ljava/lang/String;

    iget-object v2, p2, Lbb/y;->k:Ljava/util/Vector;

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aB;->a(Ljava/lang/String;Ljava/util/Vector;)V

    iget-object v1, p2, Lbb/y;->n:[B

    if-nez v1, :cond_c0

    iget-object v1, p2, Lbb/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7f

    :cond_c0
    iget-object v1, p2, Lbb/y;->b:Ljava/lang/String;

    iget-object v2, p2, Lbb/y;->n:[B

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_7f
.end method

.method public a(Landroid/widget/Button;Lcom/google/googlenav/ui/bl;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p2, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p3, :cond_20

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bl;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method protected a(Lbb/n;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V
    .registers 8

    const/4 v2, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-eqz p2, :cond_22

    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_58

    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v0

    if-eqz v0, :cond_58

    check-cast p2, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->r()Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/p;)V

    :cond_22
    :goto_22
    if-eqz p3, :cond_4c

    iget-object v0, p1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    iget v0, v0, Lcom/google/googlenav/ui/bl;->r:I

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4c

    iget-object v0, p1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lbb/n;->m:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->c()Z

    move-result v0

    if-eqz v0, :cond_4c

    check-cast p3, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->r()Lcom/google/googlenav/ui/p;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->a(Lcom/google/googlenav/ui/p;)V

    :cond_4c
    if-eqz p4, :cond_3

    iget-object v0, p1, Lbb/n;->n:Lcom/google/googlenav/ui/bl;

    if-nez v0, :cond_71

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_3

    :cond_58
    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    iget-object v0, p1, Lbb/n;->l:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    :cond_71
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    if-eqz v0, :cond_3

    invoke-virtual {p4, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    iget-object v0, p1, Lbb/n;->n:Lcom/google/googlenav/ui/bl;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aB;->a(Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/android/M;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aB;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/google/googlenav/android/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aB;->a:Lcom/google/googlenav/ui/view/android/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method
