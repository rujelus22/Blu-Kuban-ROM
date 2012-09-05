.class public Lcom/google/googlenav/ui/view/dialog/V;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/dialog/Z;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/Z;)V
    .registers 3

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/V;->a:Lcom/google/googlenav/ui/view/dialog/Z;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/V;)Lcom/google/googlenav/ui/view/dialog/Z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/V;->a:Lcom/google/googlenav/ui/view/dialog/Z;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/V;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/V;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/V;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0008

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/V;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    const/16 v0, 0x23b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/google/googlenav/M;->ac()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->T()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0f0266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    const v0, 0x7f0f0267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x243

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/W;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/W;-><init>(Lcom/google/googlenav/ui/view/dialog/V;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0144

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x62

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/X;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/dialog/X;-><init>(Lcom/google/googlenav/ui/view/dialog/V;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/Y;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/Y;-><init>(Lcom/google/googlenav/ui/view/dialog/V;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/V;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v1

    :cond_96
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/V;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/V;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x237

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
