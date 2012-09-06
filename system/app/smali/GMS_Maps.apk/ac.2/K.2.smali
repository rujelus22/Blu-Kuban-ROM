.class public LaC/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/googlenav/ui/wizard/gi;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LaC/K;->e:Z

    .line 42
    iput-object p2, p0, LaC/K;->a:Ljava/lang/String;

    .line 43
    iput-boolean p1, p0, LaC/K;->d:Z

    .line 44
    iput-object p3, p0, LaC/K;->f:Lcom/google/googlenav/ui/wizard/gi;

    .line 45
    return-void
.end method

.method static synthetic a(LaC/K;)Z
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, LaC/K;->d:Z

    return v0
.end method

.method static synthetic b(LaC/K;)Lcom/google/googlenav/ui/wizard/gi;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LaC/K;->f:Lcom/google/googlenav/ui/wizard/gi;

    return-object v0
.end method

.method static synthetic c(LaC/K;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LaC/K;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    const v0, 0x7f10034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaC/K;->b:Landroid/view/View;

    .line 53
    const v0, 0x7f10034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LaC/K;->c:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f10034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->j()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    const/16 v1, 0x3b4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_34
    iget-boolean v0, p0, LaC/K;->d:Z

    iget-object v1, p0, LaC/K;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LaC/K;->a(ZLjava/lang/String;)V

    .line 64
    iget-object v0, p0, LaC/K;->b:Landroid/view/View;

    new-instance v1, LaC/L;

    invoke-direct {v1, p0}, LaC/L;-><init>(LaC/K;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void

    .line 61
    :cond_46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34
.end method

.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, LaC/K;->e:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 129
    :goto_6
    return-void

    .line 100
    :cond_7
    iput-boolean p1, p0, LaC/K;->e:Z

    .line 102
    if-eqz p1, :cond_35

    .line 104
    iget-object v0, p0, LaC/K;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_31

    const v0, 0x7f05001c

    :goto_1a
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 109
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 110
    iget-object v1, p0, LaC/K;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    new-instance v1, LaC/M;

    invoke-direct {v1, p0}, LaC/M;-><init>(LaC/K;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_6

    .line 105
    :cond_31
    const v0, 0x7f05001d

    goto :goto_1a

    .line 127
    :cond_35
    iget-object v0, p0, LaC/K;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public a(ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p2, p0, LaC/K;->a:Ljava/lang/String;

    .line 77
    iput-boolean p1, p0, LaC/K;->d:Z

    .line 79
    iget-object v0, p0, LaC/K;->b:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaC/K;->c:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 92
    :cond_c
    :goto_c
    return-void

    .line 84
    :cond_d
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0, v0}, LaC/K;->a(Z)V

    .line 87
    if-eqz p2, :cond_c

    .line 91
    iget-object v0, p0, LaC/K;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 84
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12
.end method
