.class public LaQ/F;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/googlenav/ui/wizard/ez;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaQ/F;->e:Z

    iput-object p2, p0, LaQ/F;->a:Ljava/lang/String;

    iput-boolean p1, p0, LaQ/F;->d:Z

    iput-object p3, p0, LaQ/F;->f:Lcom/google/googlenav/ui/wizard/ez;

    return-void
.end method

.method static synthetic a(LaQ/F;)Z
    .registers 2

    iget-boolean v0, p0, LaQ/F;->d:Z

    return v0
.end method

.method static synthetic b(LaQ/F;)Lcom/google/googlenav/ui/wizard/ez;
    .registers 2

    iget-object v0, p0, LaQ/F;->f:Lcom/google/googlenav/ui/wizard/ez;

    return-object v0
.end method

.method static synthetic c(LaQ/F;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, LaQ/F;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0f02c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaQ/F;->b:Landroid/view/View;

    const v0, 0x7f0f02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaQ/F;->c:Landroid/widget/TextView;

    const v0, 0x7f0f02c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->j()Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x2fa

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_34
    iget-boolean v0, p0, LaQ/F;->d:Z

    iget-object v1, p0, LaQ/F;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LaQ/F;->a(ZLjava/lang/String;)V

    iget-object v0, p0, LaQ/F;->b:Landroid/view/View;

    new-instance v1, LaQ/G;

    invoke-direct {v1, p0}, LaQ/G;-><init>(LaQ/F;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34
.end method

.method public a(Z)V
    .registers 5

    iget-boolean v0, p0, LaQ/F;->e:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-boolean p1, p0, LaQ/F;->e:Z

    if-eqz p1, :cond_35

    iget-object v0, p0, LaQ/F;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_31

    const v0, 0x7f04001c

    :goto_1a
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, LaQ/F;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, LaQ/H;

    invoke-direct {v1, p0}, LaQ/H;-><init>(LaQ/F;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_6

    :cond_31
    const v0, 0x7f04001d

    goto :goto_1a

    :cond_35
    iget-object v0, p0, LaQ/F;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public a(ZLjava/lang/String;)V
    .registers 4

    iput-object p2, p0, LaQ/F;->a:Ljava/lang/String;

    iput-boolean p1, p0, LaQ/F;->d:Z

    iget-object v0, p0, LaQ/F;->b:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaQ/F;->c:Landroid/widget/TextView;

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, v0}, LaQ/F;->a(Z)V

    if-eqz p2, :cond_c

    iget-object v0, p0, LaQ/F;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method
