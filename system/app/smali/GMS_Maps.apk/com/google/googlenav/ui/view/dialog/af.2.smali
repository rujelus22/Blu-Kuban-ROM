.class public Lcom/google/googlenav/ui/view/dialog/af;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/ak;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/ui/view/dialog/aj;

.field private final k:Lax/aB;

.field private final l:Lay/r;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/ak;ILjava/lang/String;Lcom/google/googlenav/ui/view/dialog/aj;Lax/aB;Lay/r;)V
    .registers 8

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/af;->b:I

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/af;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/af;->d:Lcom/google/googlenav/ui/view/dialog/aj;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/dialog/af;->k:Lax/aB;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/dialog/af;->l:Lay/r;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/af;)Lay/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->l:Lay/r;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/af;)Lcom/google/googlenav/ui/view/dialog/aj;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->d:Lcom/google/googlenav/ui/view/dialog/aj;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/af;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->b:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/af;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/af;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cf

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0f0008

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/af;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->k:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->a()Z

    move-result v0

    if-eqz v0, :cond_103

    const v0, 0x7f0f0062

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->k:Lax/aB;

    invoke-virtual {v1}, Lax/aB;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->k:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->l:Lay/r;

    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    const v0, 0x7f0f01df

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/google/googlenav/ui/bG;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/bw;->d(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ag;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/googlenav/ui/view/dialog/ag;-><init>(Lcom/google/googlenav/ui/view/dialog/af;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bG;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->l:Lay/r;

    invoke-virtual {v0, v2}, Lay/r;->c(Lcom/google/googlenav/ui/bG;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface {v1}, Lay/q;->aa_()V

    :cond_6b
    :goto_6b
    const v0, 0x7f0f01e4

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/ak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0063

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0269

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi, user-scalable=no, initial-scale=1.0\" /></head><body style=\"padding: 0px; margin:0px; font-size:1.3em\"><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/af;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" style=\"float:right;padding-left: 1em;padding-bottom: 1em;vertical-align:text-top\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/dialog/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "file:///android_res/drawable/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f0267

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ah;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ah;-><init>(Lcom/google/googlenav/ui/view/dialog/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/ai;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/ai;-><init>(Lcom/google/googlenav/ui/view/dialog/af;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/af;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v6

    :cond_f3
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/af;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/af;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_fc
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->l:Lay/r;

    invoke-virtual {v0, v2, v1}, Lay/r;->a(Lcom/google/googlenav/ui/bG;Lay/q;)V

    goto/16 :goto_6b

    :cond_103
    const v0, 0x7f0f0268

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6b
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/af;->a:Lcom/google/googlenav/ui/view/dialog/ak;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/ak;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
