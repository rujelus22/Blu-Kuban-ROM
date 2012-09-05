.class public Lbd/av;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/gY;

.field private b:Landroid/widget/EditText;

.field private final c:Lcom/google/googlenav/ui/wizard/hh;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gY;Lcom/google/googlenav/ui/wizard/hh;Z)V
    .registers 5

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p1, p0, Lbd/av;->a:Lcom/google/googlenav/ui/wizard/gY;

    iput-object p2, p0, Lbd/av;->c:Lcom/google/googlenav/ui/wizard/hh;

    iput-boolean p3, p0, Lbd/av;->d:Z

    return-void
.end method

.method static synthetic a(Lbd/av;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lbd/av;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lbd/av;)Lcom/google/googlenav/ui/wizard/gY;
    .registers 2

    iget-object v0, p0, Lbd/av;->a:Lcom/google/googlenav/ui/wizard/gY;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbd/av;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbd/av;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030139

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_28

    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lbd/av;->c:Lcom/google/googlenav/ui/wizard/hh;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/hh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_28
    const v0, 0x7f0f036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbd/av;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lbd/av;->b:Landroid/widget/EditText;

    new-instance v2, Lbd/aw;

    invoke-direct {v2, p0}, Lbd/aw;-><init>(Lbd/av;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0f01cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x71

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lbd/av;->d:Z

    if-eqz v0, :cond_65

    const v0, 0x7f0f036c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x77

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    const v0, 0x7f0f0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x72

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lbd/ax;

    invoke-direct {v2, p0}, Lbd/ax;-><init>(Lbd/av;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x62

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lbd/ay;

    invoke-direct {v2, p0}, Lbd/ay;-><init>(Lbd/av;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lax/aA;->w()V

    return-object v1
.end method

.method protected g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lbd/av;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lbd/av;->c:Lcom/google/googlenav/ui/wizard/hh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbd/av;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
