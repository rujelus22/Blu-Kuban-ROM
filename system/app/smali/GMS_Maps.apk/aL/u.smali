.class public LaL/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/friend/history/c;

.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/c;Landroid/content/Context;ZZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    .line 77
    iput-object p2, p0, LaL/u;->b:Landroid/content/Context;

    .line 78
    iput-boolean p3, p0, LaL/u;->c:Z

    .line 79
    iput-boolean p4, p0, LaL/u;->d:Z

    .line 80
    iput-object p5, p0, LaL/u;->e:Landroid/view/View$OnClickListener;

    .line 81
    iput-object p6, p0, LaL/u;->f:Landroid/view/View$OnClickListener;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 132
    new-instance v1, LaL/w;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/w;-><init>(LaL/v;)V

    .line 133
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/w;->a(LaL/w;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 134
    const v0, 0x7f10027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/w;->b(LaL/w;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 135
    const v0, 0x7f10027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaL/w;->a(LaL/w;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f10027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/w;->c(LaL/w;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 137
    const v0, 0x7f100269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v1, v0}, LaL/w;->a(LaL/w;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 138
    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, LaL/w;->a(LaL/w;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f10027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaL/w;->a(LaL/w;Landroid/view/View;)Landroid/view/View;

    .line 141
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 93
    check-cast p2, LaL/w;

    .line 94
    invoke-static {p2}, LaL/w;->a(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {p2}, LaL/w;->b(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-boolean v0, p0, LaL/u;->c:Z

    if-eqz v0, :cond_c1

    iget-boolean v0, p0, LaL/u;->d:Z

    if-nez v0, :cond_c1

    .line 97
    invoke-static {p2}, LaL/w;->b(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x274

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/c;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_43
    :goto_43
    invoke-static {p2}, LaL/w;->c(LaL/w;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, LaL/u;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    iget-boolean v3, p0, LaL/u;->c:Z

    iget-boolean v4, p0, LaL/u;->d:Z

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/friend/history/c;->a(ZZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-static {p2}, LaL/w;->d(LaL/w;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, LaL/u;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {p2}, LaL/w;->e(LaL/w;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, LaL/u;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v0, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->m()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->k()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v0, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->l()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 113
    :cond_90
    invoke-static {p2}, LaL/w;->f(LaL/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-static {p2}, LaL/w;->d(LaL/w;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    :goto_9e
    iget-object v0, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/history/c;->j()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    if-eqz v1, :cond_f5

    if-eqz v0, :cond_f5

    iget-object v1, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/c;->m()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 123
    invoke-static {p2}, LaL/w;->g(LaL/w;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {p2}, LaL/w;->g(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_c0
    return-void

    .line 100
    :cond_c1
    iget-boolean v0, p0, LaL/u;->d:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, LaL/u;->c:Z

    if-nez v0, :cond_43

    .line 101
    invoke-static {p2}, LaL/w;->b(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x26e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, LaL/u;->a:Lcom/google/googlenav/friend/history/c;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/c;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_43

    .line 116
    :cond_e6
    invoke-static {p2}, LaL/w;->f(LaL/w;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-static {p2}, LaL/w;->d(LaL/w;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_9e

    .line 126
    :cond_f5
    invoke-static {p2}, LaL/w;->g(LaL/w;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 151
    const v0, 0x7f0400cf

    return v0
.end method
