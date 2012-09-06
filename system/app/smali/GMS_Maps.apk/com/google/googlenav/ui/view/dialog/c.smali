.class Lcom/google/googlenav/ui/view/dialog/c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/d;-><init>(Lcom/google/googlenav/ui/view/dialog/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v7, v0, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/a;->m:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/webkit/WebView;IIIFF)I

    move-result v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 192
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/c;->a:Lcom/google/googlenav/ui/view/dialog/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/a;->a(Lcom/google/googlenav/ui/view/dialog/a;Z)V

    .line 181
    const/4 v0, 0x0

    return v0
.end method
