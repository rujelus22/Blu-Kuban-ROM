.class public Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/google/googlenav/android/Y;

.field private c:Lcom/google/googlenav/ui/view/n;

.field private d:Lcom/google/googlenav/ui/view/o;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setClickable(Z)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setFocusable(Z)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)Lcom/google/googlenav/ui/view/n;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->c:Lcom/google/googlenav/ui/view/n;

    return-object v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 163
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    if-eqz v0, :cond_12

    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_12
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 155
    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method private b(I)Landroid/view/animation/Animation;
    .registers 4
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    const p1, 0x7f0f0022

    :cond_a
    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/google/googlenav/ui/view/m;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/m;-><init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 184
    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->d:Lcom/google/googlenav/ui/view/o;

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->d:Lcom/google/googlenav/ui/view/o;

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/o;->a()V

    .line 117
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1c

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->e:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a:I

    if-lez v0, :cond_35

    .line 124
    const/4 v0, 0x1

    .line 125
    new-instance v1, Lcom/google/googlenav/ui/view/l;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->b:Lcom/google/googlenav/android/Y;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/googlenav/ui/view/l;-><init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;LY/c;Lcom/google/googlenav/android/Y;Z)V

    .line 134
    iget v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, LaT/i;->a(J)V

    .line 135
    invoke-virtual {v1}, LaT/i;->g()V

    .line 138
    :cond_35
    return-void
.end method

.method public a(Lcom/google/googlenav/android/Y;Ljava/lang/CharSequence;IIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 77
    iput-object p1, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->b:Lcom/google/googlenav/android/Y;

    .line 78
    iput-object p7, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->c:Lcom/google/googlenav/ui/view/n;

    .line 79
    iput-object p8, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->d:Lcom/google/googlenav/ui/view/o;

    .line 80
    iput p6, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a:I

    .line 82
    if-ne p4, v2, :cond_26

    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->e:Landroid/view/animation/Animation;

    .line 84
    if-ne p5, v2, :cond_2f

    :goto_11
    iput-object v1, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->f:Landroid/view/animation/Animation;

    .line 87
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a(Ljava/lang/CharSequence;)V

    .line 88
    sget v0, Lag/c;->a:I

    if-le p3, v0, :cond_1d

    .line 89
    invoke-direct {p0, p3}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->a(I)V

    .line 92
    :cond_1d
    new-instance v0, Lcom/google/googlenav/ui/view/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/k;-><init>(Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void

    .line 82
    :cond_26
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_d

    .line 84
    :cond_2f
    invoke-direct {p0, p5}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->b(I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_11
.end method

.method public b()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->f:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->f:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 149
    :goto_9
    return-void

    .line 147
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/ContentHintAnchoredPopup;->setVisibility(I)V

    goto :goto_9
.end method
