.class public Lcom/google/googlenav/ui/android/TemplateViewForHtml;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/googlenav/ui/android/ae;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/ae;-><init>(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-eqz p3, :cond_49

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:text/html;charset=utf-8,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/TemplateViewForHtml;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected b(Lcom/google/googlenav/ui/bl;)I
    .registers 5

    const/16 v0, 0x4f8

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x281

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bl;)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f01ae

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->a:Landroid/webkit/WebView;

    const v0, 0x7f0f022d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->i:Landroid/widget/TextView;

    const v0, 0x7f0f022c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->j:Landroid/view/ViewGroup;

    const v0, 0x7f0f022f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->k:Landroid/widget/TextView;

    const v0, 0x7f0f0071

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->l:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewForHtml;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x1f4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;->onMeasure(II)V

    return-void
.end method
