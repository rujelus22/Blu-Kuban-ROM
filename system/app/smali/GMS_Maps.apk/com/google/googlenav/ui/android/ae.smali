.class Lcom/google/googlenav/ui/android/ae;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ae;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/googlenav/android/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ae;->a:Lcom/google/googlenav/ui/android/TemplateViewForHtml;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->b(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/ae;->b:Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ae;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
