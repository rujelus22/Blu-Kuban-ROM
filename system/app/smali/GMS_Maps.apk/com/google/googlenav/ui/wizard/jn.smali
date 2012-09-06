.class public Lcom/google/googlenav/ui/wizard/jn;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/jj;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/jj;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jn;->a:Lcom/google/googlenav/ui/wizard/jj;

    .line 148
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 6

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/jn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    const v1, 0x7f0401b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 156
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jn;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/jj;->a(Landroid/view/View;)V

    .line 157
    const v0, 0x7f10036a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    const v0, 0x7f100014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 159
    new-instance v1, Lcom/google/googlenav/ui/wizard/jo;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jo;-><init>(Lcom/google/googlenav/ui/wizard/jn;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 166
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 167
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 169
    :cond_37
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 172
    :try_start_3f
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jn;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/jj;->a(Lcom/google/googlenav/ui/wizard/jj;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_4c} :catch_67

    .line 176
    :goto_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:text/html;charset=utf-8,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 177
    return-object v2

    .line 173
    :catch_67
    move-exception v1

    .line 174
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/jn;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/jj;->a(Lcom/google/googlenav/ui/wizard/jj;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4c
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    const/16 v0, 0x5a7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
