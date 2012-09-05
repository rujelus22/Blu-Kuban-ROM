.class public Lbd/I;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Z

.field final c:Ljava/lang/CharSequence;

.field final d:Z

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:Z

.field private final i:Lcom/google/googlenav/ah;

.field private final j:Lcom/google/googlenav/ui/p;

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;LaY/i;I)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/I;->i:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lbd/I;->j:Lcom/google/googlenav/ui/p;

    iput p3, p0, Lbd/I;->k:I

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-virtual {p2}, LaY/i;->av()Z

    move-result v0

    if-eqz v0, :cond_80

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lbd/I;->b:Z

    const/16 v0, 0x420

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/I;->a:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lbd/I;->b:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ah;->n(I)V

    :cond_29
    invoke-virtual {p2, v2}, LaY/i;->a(LaJ/g;)Z

    move-result v0

    iput-boolean v0, p0, Lbd/I;->d:Z

    const/16 v0, 0xe0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/I;->c:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, LaY/i;->b(LaJ/g;)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p2, v2}, LaY/i;->c(LaJ/g;)Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_43
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0xf

    iput v0, p0, Lbd/I;->e:I

    const/4 v0, 0x4

    iput v0, p0, Lbd/I;->f:I

    invoke-static {p1, p2}, LaY/aq;->a(Lcom/google/googlenav/ah;LaY/i;)Ljava/util/Vector;

    :cond_57
    :goto_57
    const/16 v0, 0x61

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd/I;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    invoke-virtual {p2}, LaY/i;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->e()Z

    move-result v0

    iput-boolean v0, p0, Lbd/I;->h:Z

    iget-boolean v0, p0, Lbd/I;->h:Z

    if-eqz v0, :cond_7f

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ah;->n(I)V

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    move v0, v1

    goto :goto_17

    :cond_82
    const/16 v0, 0x25b

    iput v0, p0, Lbd/I;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lbd/I;->f:I

    iget-boolean v0, p0, Lbd/I;->d:Z

    if-eqz v0, :cond_57

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_57

    :cond_92
    iput-boolean v1, p0, Lbd/I;->h:Z

    goto :goto_7f
.end method

.method static synthetic a(Lbd/I;)Lcom/google/googlenav/ui/p;
    .registers 2

    iget-object v0, p0, Lbd/I;->j:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;ZC)V
    .registers 5

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->n()Lah/g;

    move-result-object v0

    :goto_a
    invoke-interface {v0, p3}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_18
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->o()Lah/g;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 11

    invoke-virtual {p8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p7, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    if-eqz p6, :cond_16

    new-instance v0, Lbd/K;

    invoke-direct {v0, p0, p4, p5}, Lbd/K;-><init>(Lbd/I;II)V

    invoke-virtual {p7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    invoke-virtual {p7, p6}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, p9, p6, p3}, Lbd/I;->a(Landroid/widget/ImageView;ZC)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_28

    const v0, 0x7f0201bd

    invoke-virtual {p7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 8

    const v5, 0x7f0f03a3

    const v4, 0x7f0f03a2

    const/4 v3, 0x0

    new-instance v1, Lbd/J;

    invoke-direct {v1}, Lbd/J;-><init>()V

    const v0, 0x7f0f0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/J;->a:Landroid/view/View;

    iget-object v0, v1, Lbd/J;->a:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v1, Lbd/J;->a:Landroid/view/View;

    const v2, 0x7f0f016e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/J;->b:Landroid/view/View;

    iget-object v0, v1, Lbd/J;->a:Landroid/view/View;

    const v2, 0x7f0f0170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/J;->c:Landroid/view/View;

    iget-object v0, v1, Lbd/J;->a:Landroid/view/View;

    const v2, 0x7f0f0172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/J;->d:Landroid/view/View;

    iget-object v0, v1, Lbd/J;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/J;->e:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/J;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/J;->f:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/J;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/J;->g:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/J;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/J;->h:Landroid/widget/ImageView;

    iget-object v0, v1, Lbd/J;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/J;->i:Landroid/widget/ImageView;

    iget-object v0, v1, Lbd/J;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lbd/J;->j:Landroid/widget/ImageView;

    iget-object v0, v1, Lbd/J;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lbd/J;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lbd/J;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lbd/J;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 13

    check-cast p2, Lbd/J;

    iget-object v1, p0, Lbd/I;->a:Ljava/lang/CharSequence;

    const/16 v0, 0x41f

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bw;->aW:C

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-boolean v6, p0, Lbd/I;->b:Z

    iget-object v7, p2, Lbd/J;->b:Landroid/view/View;

    iget-object v8, p2, Lbd/J;->e:Landroid/widget/TextView;

    iget-object v9, p2, Lbd/J;->h:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lbd/I;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lbd/I;->c:Ljava/lang/CharSequence;

    const/16 v0, 0x1b3

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bw;->aV:C

    iget v4, p0, Lbd/I;->e:I

    iget v5, p0, Lbd/I;->f:I

    iget-boolean v6, p0, Lbd/I;->d:Z

    iget-object v7, p2, Lbd/J;->c:Landroid/view/View;

    iget-object v8, p2, Lbd/J;->f:Landroid/widget/TextView;

    iget-object v9, p2, Lbd/J;->i:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lbd/I;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lbd/I;->g:Ljava/lang/CharSequence;

    iget-object v0, p0, Lbd/I;->g:Ljava/lang/CharSequence;

    if-nez v0, :cond_4d

    const/4 v2, 0x0

    :goto_3b
    sget-char v3, Lcom/google/googlenav/ui/bw;->aU:C

    const/16 v4, 0x10

    const/4 v5, -0x1

    iget-boolean v6, p0, Lbd/I;->h:Z

    iget-object v7, p2, Lbd/J;->d:Landroid/view/View;

    iget-object v8, p2, Lbd/J;->g:Landroid/widget/TextView;

    iget-object v9, p2, Lbd/J;->j:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lbd/I;->a(Ljava/lang/CharSequence;Ljava/lang/String;CIIZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void

    :cond_4d
    iget-object v0, p0, Lbd/I;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3b
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lbd/I;->b:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lbd/I;->d:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lbd/I;->h:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300a1

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/I;->k:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
