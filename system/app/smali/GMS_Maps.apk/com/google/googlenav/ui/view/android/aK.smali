.class public Lcom/google/googlenav/ui/view/android/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/V;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/V;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    .line 58
    return-void
.end method

.method public static a(ILcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aW;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/ak;->a(ILjava/util/List;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    if-nez p1, :cond_e

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    :goto_d
    return-object v0

    .line 85
    :cond_e
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d
.end method

.method public static a(ILjava/util/List;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/googlenav/ui/view/android/ak;->a(ILjava/lang/CharSequence;Lcom/google/googlenav/ui/android/ac;Landroid/view/View;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/ak;)Lcom/google/googlenav/ui/view/android/V;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    return-object v0
.end method

.method private static a(Lcom/google/googlenav/ui/view/C;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/view/C;->a:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/C;->a()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    const-string v1, "<hr/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, "<div>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v3, p0, Lcom/google/googlenav/ui/view/C;->d:[Lcom/google/googlenav/ui/aW;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v4, :cond_34

    aget-object v5, v3, v1

    .line 404
    iget-object v6, v5, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-static {v6}, Laa/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-boolean v5, v5, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v5, :cond_31

    .line 406
    const-string v5, "<br/>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 409
    :cond_34
    const-string v1, "</div>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "</body>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, "</body>"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_48
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 424
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 426
    if-eqz p2, :cond_27

    .line 427
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 428
    check-cast v0, Lcom/google/googlenav/ui/view/D;

    .line 429
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/D;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 432
    :cond_27
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 437
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/android/ac;
    .registers 3
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/google/googlenav/ui/view/android/am;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/am;-><init>(Lcom/google/googlenav/ui/view/android/ak;I)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;
    .registers 3
    .parameter

    .prologue
    .line 164
    new-instance v0, Lcom/google/googlenav/ui/view/android/an;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/an;-><init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/bd;)V

    return-object v0
.end method

.method public a()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 118
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/V;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/V;->g:Lcom/google/googlenav/ui/g;

    .line 121
    if-eqz v0, :cond_2d

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    new-instance v2, Lcom/google/googlenav/ui/view/android/al;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/view/android/al;-><init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/g;)V

    .line 135
    new-instance v1, Lcom/google/googlenav/ui/view/a;

    invoke-direct {v1, v3, v3}, Lcom/google/googlenav/ui/view/a;-><init>(II)V

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 139
    :cond_2d
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/view/C;Landroid/webkit/WebViewClient;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 255
    iget-object v0, p2, Lcom/google/googlenav/ui/view/C;->e:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 256
    const v0, 0x7f100369

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_13
    iget-object v0, p2, Lcom/google/googlenav/ui/view/C;->f:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 259
    const v0, 0x7f10036b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_25
    const v0, 0x7f100014

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 267
    iget-boolean v1, p2, Lcom/google/googlenav/ui/view/C;->l:Z

    if-eqz v1, :cond_3f

    .line 269
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.3.2; en-gb; Nexus S Build/GMM_TABLET) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 274
    :cond_3f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 275
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 278
    :cond_4e
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 280
    new-instance v1, Lcom/google/googlenav/ui/view/android/ao;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/googlenav/ui/view/android/ao;-><init>(Lcom/google/googlenav/ui/view/android/ak;Lcom/google/googlenav/ui/view/C;Landroid/view/ViewGroup;Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 359
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->a:Ljava/lang/String;

    if-eqz v1, :cond_9d

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:text/html;charset=utf-8,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/view/C;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 381
    :cond_7f
    :goto_7f
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->i:Lcom/google/googlenav/ui/view/c;

    if-nez v1, :cond_87

    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->j:Lcom/google/googlenav/ui/view/c;

    if-eqz v1, :cond_9c

    .line 383
    :cond_87
    new-instance v1, Lcom/google/googlenav/ui/view/android/ap;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/C;->i:Lcom/google/googlenav/ui/view/c;

    iget-object v3, p2, Lcom/google/googlenav/ui/view/C;->j:Lcom/google/googlenav/ui/view/c;

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/c;)V

    const-string v2, "parentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 387
    :cond_9c
    return-void

    .line 363
    :cond_9d
    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/C;->a()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Footer not supported with URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_ab
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->b:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 369
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/C;->k:Ljava/util/Vector;

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/ak;->a(Ljava/lang/String;Ljava/util/Vector;)V

    .line 371
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->m:[B

    if-nez v1, :cond_c0

    .line 373
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7f

    .line 376
    :cond_c0
    iget-object v1, p2, Lcom/google/googlenav/ui/view/C;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/googlenav/ui/view/C;->m:[B

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_7f
.end method

.method public a(Landroid/widget/Button;Lcom/google/googlenav/ui/bd;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_a

    .line 102
    if-nez p2, :cond_b

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    :cond_a
    :goto_a
    return-void

    .line 105
    :cond_b
    iget-object v1, p2, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    if-eqz p3, :cond_20

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bd;->e()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a
.end method

.method protected a(Lcom/google/googlenav/ui/view/t;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/android/TemplateView;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 187
    if-nez p1, :cond_4

    .line 224
    :cond_3
    :goto_3
    return-void

    .line 192
    :cond_4
    if-eqz p2, :cond_22

    .line 193
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 194
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_50

    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 195
    check-cast p2, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->r()Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->setDialogActionHandler(Lcom/google/googlenav/ui/g;)V

    .line 203
    :cond_22
    :goto_22
    if-eqz p3, :cond_44

    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_44

    .line 204
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 205
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->b:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 206
    check-cast p3, Lcom/google/googlenav/ui/android/EditableTemplateView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->r()Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/EditableTemplateView;->setDialogActionHandler(Lcom/google/googlenav/ui/g;)V

    .line 211
    :cond_44
    if-eqz p4, :cond_3

    .line 212
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->c:Lcom/google/googlenav/ui/bd;

    .line 213
    if-nez v0, :cond_69

    .line 214
    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    goto :goto_3

    .line 196
    :cond_50
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bd;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 197
    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    .line 198
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->a:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    .line 216
    :cond_69
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setVisibility(I)V

    .line 217
    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 218
    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {p4, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setClickable(Z)V

    .line 220
    iget-object v0, p1, Lcom/google/googlenav/ui/view/t;->c:Lcom/google/googlenav/ui/bd;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ak;->a(Lcom/google/googlenav/ui/bd;)Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ak;->b()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public b()Lcom/google/googlenav/android/c;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ak;->a:Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 229
    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method
