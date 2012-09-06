.class public LaQ/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:I

.field final b:Lcom/google/googlenav/ai;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, LaQ/I;->a:I

    .line 61
    iput-object p2, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    .line 62
    return-void
.end method

.method private a(LaQ/M;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p1, LaQ/M;->b:Landroid/widget/ImageView;

    invoke-static {v0, p2}, LaQ/G;->a(Landroid/widget/ImageView;I)V

    .line 175
    iget-object v0, p1, LaQ/M;->c:Landroid/widget/TextView;

    invoke-static {v0, p3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p1, LaQ/M;->a:Landroid/view/View;

    invoke-static {v0, p4}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 177
    if-nez p3, :cond_1e

    const/16 v0, 0x8

    .line 178
    :goto_13
    iget-object v1, p1, LaQ/M;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p1, LaQ/M;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void

    .line 177
    :cond_1e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private b(Landroid/view/View;)LaQ/M;
    .registers 4
    .parameter

    .prologue
    .line 92
    new-instance v1, LaQ/M;

    invoke-direct {v1}, LaQ/M;-><init>()V

    .line 93
    iput-object p1, v1, LaQ/M;->a:Landroid/view/View;

    .line 94
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/M;->b:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/M;->c:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1002aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/M;->d:Landroid/view/View;

    .line 97
    return-object v1
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 81
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 82
    new-instance v1, LaQ/L;

    invoke-direct {v1}, LaQ/L;-><init>()V

    .line 83
    iput-object p1, v1, LaQ/L;->a:Landroid/view/View;

    .line 84
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/L;->b:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/L;->c:Landroid/view/View;

    .line 86
    const v0, 0x7f1002ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, LaQ/I;->b(Landroid/view/View;)LaQ/M;

    move-result-object v0

    iput-object v0, v1, LaQ/L;->d:LaQ/M;

    .line 87
    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, LaQ/I;->b(Landroid/view/View;)LaQ/M;

    move-result-object v0

    iput-object v0, v1, LaQ/L;->e:LaQ/M;

    .line 88
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 105
    .line 107
    check-cast p2, LaQ/L;

    .line 110
    iget-object v0, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->az()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 115
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v5, v0}, LaM/aR;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 116
    const v2, 0x7f020275

    .line 117
    new-instance v0, LaQ/J;

    invoke-direct {v0, p0, p1, v5}, LaQ/J;-><init>(LaQ/I;Lcom/google/googlenav/ui/g;Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    const/16 v7, 0x1c

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ai;->o(I)V

    .line 126
    iget-object v5, p2, LaQ/L;->d:LaQ/M;

    .line 128
    :goto_33
    iget-object v7, p2, LaQ/L;->d:LaQ/M;

    invoke-direct {p0, v7, v2, v4, v0}, LaQ/I;->a(LaQ/M;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bC()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 135
    const/16 v0, 0x2ae

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 139
    iget-object v0, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bB()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "opentable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 141
    const v0, 0x7f020268

    .line 146
    :goto_63
    new-instance v2, LaQ/K;

    invoke-direct {v2, p0, p1}, LaQ/K;-><init>(LaQ/I;Lcom/google/googlenav/ui/g;)V

    .line 153
    iget-object v5, p0, LaQ/I;->b:Lcom/google/googlenav/ai;

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ai;->o(I)V

    .line 155
    iget-object v5, p2, LaQ/L;->e:LaQ/M;

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    .line 157
    :goto_74
    iget-object v7, p2, LaQ/L;->e:LaQ/M;

    invoke-direct {p0, v7, v2, v4, v0}, LaQ/I;->a(LaQ/M;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 161
    if-eqz v5, :cond_80

    .line 162
    iget-object v0, v5, LaQ/M;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_80
    if-nez v5, :cond_99

    .line 166
    :goto_82
    iget-object v0, p2, LaQ/L;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 167
    if-nez v1, :cond_8a

    move v3, v6

    .line 168
    :cond_8a
    iget-object v0, p2, LaQ/L;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p2, LaQ/L;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-void

    .line 143
    :cond_95
    const v0, 0x7f02021d

    goto :goto_63

    .line 164
    :cond_99
    const/16 v0, 0x11f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->bY:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_82

    :cond_aa
    move-object v0, v1

    move v2, v3

    move-object v4, v1

    goto :goto_74

    :cond_ae
    move-object v0, v1

    move v2, v3

    move-object v4, v1

    move-object v5, v1

    goto :goto_33
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, LaQ/I;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 66
    const v0, 0x7f0400ec

    return v0
.end method
