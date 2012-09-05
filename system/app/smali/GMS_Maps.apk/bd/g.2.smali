.class public Lbd/g;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:I

.field private final b:Lcom/google/googlenav/ah;

.field private final c:Lbb/c;

.field private final d:Lbd/aj;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lbb/c;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbd/g;->e:Ljava/lang/String;

    iput-object p1, p0, Lbd/g;->b:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lbd/g;->c:Lbb/c;

    iput p3, p0, Lbd/g;->a:I

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bD()I

    move-result v1

    if-gtz v1, :cond_26

    const/16 v0, 0x350

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    :goto_1e
    new-instance v2, Lbd/aj;

    invoke-direct {v2, v1, v0, p2}, Lbd/aj;-><init>(ILcom/google/googlenav/ui/bh;Lbb/c;)V

    iput-object v2, p0, Lbd/g;->d:Lbd/aj;

    return-void

    :cond_26
    const/16 v0, 0x334

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    goto :goto_1e
.end method

.method static synthetic a(Lbd/g;)Lcom/google/googlenav/ah;
    .registers 2

    iget-object v0, p0, Lbd/g;->b:Lcom/google/googlenav/ah;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Lbd/j;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lbd/j;-><init>(Lbd/h;)V

    const v0, 0x7f0f0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lbd/j;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0238

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lbd/j;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0f023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/j;->h:Landroid/view/View;

    iget-object v0, v1, Lbd/j;->a:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0236

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/j;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/j;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f0f023a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/j;->d:Landroid/widget/TextView;

    const v0, 0x7f0f0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/j;->e:Landroid/view/View;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_61

    const v0, 0x7f0f016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/j;->f:Landroid/view/View;

    const v0, 0x7f0f0237

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/j;->g:Landroid/view/View;

    :cond_61
    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7b

    const v0, 0x7f0f0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7b
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 9

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    check-cast p2, Lbd/j;

    iget-object v0, p0, Lbd/g;->b:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/m;->e(Lcom/google/googlenav/ah;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lbd/g;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bN()Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x67

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/g;->e:Ljava/lang/String;

    :goto_1e
    iget-object v0, p2, Lbd/j;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lbd/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lbd/j;->a:Landroid/widget/LinearLayout;

    new-instance v4, Lbd/h;

    invoke-direct {v4, p0, p1}, Lbd/h;-><init>(Lbd/g;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lbd/j;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v1

    :goto_35
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->K()Z

    move-result v4

    if-eqz v4, :cond_9a

    iget-object v4, p2, Lbd/j;->d:Landroid/widget/TextView;

    const/16 v5, 0x3e

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p2, Lbd/j;->b:Landroid/widget/LinearLayout;

    new-instance v5, Lbd/i;

    invoke-direct {v5, p0, p1}, Lbd/i;-><init>(Lbd/g;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p2, Lbd/j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5b
    if-nez v0, :cond_a0

    iget-object v0, p2, Lbd/j;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p2, Lbd/j;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lbd/j;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_72
    :goto_72
    iget-object v0, p0, Lbd/g;->d:Lbd/aj;

    iget-object v1, p2, Lbd/j;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lbd/aj;->a(Landroid/view/View;)V

    iget-object v0, p2, Lbd/j;->h:Landroid/view/View;

    iget-object v1, p0, Lbd/g;->c:Lbb/c;

    new-instance v2, Lbb/a;

    const/16 v3, 0x6a4

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-void

    :cond_8a
    const/16 v0, 0x91

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/g;->e:Ljava/lang/String;

    goto :goto_1e

    :cond_93
    iget-object v0, p2, Lbd/j;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    goto :goto_35

    :cond_9a
    iget-object v4, p2, Lbd/j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5b

    :cond_a0
    iget-object v4, p2, Lbd/j;->e:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v4

    if-nez v4, :cond_72

    iget-object v4, p2, Lbd/j;->f:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p2, Lbd/j;->g:Landroid/view/View;

    if-ne v0, v1, :cond_b5

    move v2, v3

    :cond_b5
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_72
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300ae

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/g;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
