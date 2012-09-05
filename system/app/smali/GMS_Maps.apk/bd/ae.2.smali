.class public Lbd/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# static fields
.field static final a:Ljava/lang/CharSequence;

.field static final b:Lbb/a;


# instance fields
.field final c:I

.field final d:Lcom/google/googlenav/ui/bF;

.field final e:Lcom/google/googlenav/ah;

.field final f:Z

.field g:Lbd/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x4a5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sput-object v0, Lbd/ae;->a:Ljava/lang/CharSequence;

    new-instance v0, Lbb/a;

    const/16 v1, 0x258

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lbb/a;-><init>(IILjava/lang/Object;)V

    sput-object v0, Lbd/ae;->b:Lbb/a;

    return-void
.end method

.method public constructor <init>(ILcom/google/googlenav/ui/bF;Lcom/google/googlenav/ah;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbd/ae;->c:I

    iput-object p2, p0, Lbd/ae;->d:Lcom/google/googlenav/ui/bF;

    iput-object p3, p0, Lbd/ae;->e:Lcom/google/googlenav/ah;

    iput-boolean p4, p0, Lbd/ae;->f:Z

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lbd/ae;->g:Lbd/ah;

    return-void
.end method

.method static synthetic a(Lbd/ae;)V
    .registers 1

    invoke-direct {p0}, Lbd/ae;->a()V

    return-void
.end method

.method static synthetic a(Lbd/ae;Lbd/ah;)V
    .registers 2

    invoke-direct {p0, p1}, Lbd/ae;->a(Lbd/ah;)V

    return-void
.end method

.method private a(Lbd/ah;)V
    .registers 2

    iput-object p1, p0, Lbd/ae;->g:Lbd/ah;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 4

    new-instance v1, Lbd/ah;

    invoke-direct {v1}, Lbd/ah;-><init>()V

    const v0, 0x7f0f0006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/ah;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/ah;->b:Landroid/widget/ImageView;

    const v0, 0x7f0f014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/ah;->c:Landroid/view/View;

    return-object v1
.end method

.method a(Lcom/google/googlenav/ui/bG;)V
    .registers 4

    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbd/ae;->d:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bF;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    iget-object v1, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v1, v1, Lbd/ah;->b:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lbd/l;->a(Landroid/widget/ImageView;Lai/f;)V

    :cond_13
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 8

    const/4 v4, 0x0

    const/16 v2, 0x8

    check-cast p2, Lbd/ah;

    iput-object p2, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    invoke-virtual {v0, p0}, Lbd/ah;->a(Lbd/ae;)V

    iget-object v0, p0, Lbd/ae;->e:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bR()Lcom/google/googlenav/ui/bG;

    move-result-object v0

    iget-boolean v1, p0, Lbd/ae;->f:Z

    if-eqz v1, :cond_18

    if-nez v0, :cond_2e

    :cond_18
    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v0, v0, Lbd/ah;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v0, v0, Lbd/ah;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v0, v0, Lbd/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2d
    return-void

    :cond_2e
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/bG;

    aput-object v0, v1, v4

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lbd/ae;->d:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v2

    new-instance v3, Lbd/af;

    invoke-direct {v3, p0, v0}, Lbd/af;-><init>(Lbd/ae;Lcom/google/googlenav/ui/bG;)V

    invoke-virtual {v2, v1, v3}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    iget-object v1, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v1, v1, Lbd/ah;->a:Landroid/widget/TextView;

    sget-object v2, Lbd/ae;->a:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lbd/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v1, v1, Lbd/ah;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lbd/ae;->a(Lcom/google/googlenav/ui/bG;)V

    iget-object v0, p0, Lbd/ae;->g:Lbd/ah;

    iget-object v0, v0, Lbd/ah;->b:Landroid/widget/ImageView;

    new-instance v1, Lbd/ag;

    invoke-direct {v1, p0, p1}, Lbd/ag;-><init>(Lbd/ae;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2d
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300e6

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/ae;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
