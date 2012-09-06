.class public Lcom/google/googlenav/ui/view/android/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:LaM/bj;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:LT/f;

.field private final f:Lat/B;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT/f;Lat/B;ILaM/bj;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Ljava/lang/CharSequence;

    .line 71
    if-nez p2, :cond_1e

    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bc;->c:Ljava/lang/CharSequence;

    .line 73
    if-nez p3, :cond_25

    :goto_13
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->d:Ljava/lang/CharSequence;

    .line 75
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bc;->e:LT/f;

    .line 76
    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/bc;->f:Lat/B;

    .line 77
    iput p6, p0, Lcom/google/googlenav/ui/view/android/bc;->g:I

    .line 78
    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/bc;->a:LaM/bj;

    .line 79
    return-void

    .line 71
    :cond_1e
    sget-object v0, Lcom/google/googlenav/ui/aV;->D:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f

    .line 73
    :cond_25
    sget-object v0, Lcom/google/googlenav/ui/aV;->ba:Lcom/google/googlenav/ui/aV;

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 115
    new-instance v1, Lcom/google/googlenav/ui/view/android/bd;

    invoke-direct {v1}, Lcom/google/googlenav/ui/view/android/bd;-><init>()V

    .line 117
    iput-object p1, v1, Lcom/google/googlenav/ui/view/android/bd;->a:Landroid/view/View;

    .line 118
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->b:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->c:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f100272

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->d:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->e:Landroid/widget/ImageView;

    .line 122
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 123
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 125
    new-instance v0, Lcom/google/googlenav/ui/view/android/be;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/be;-><init>(Lcom/google/googlenav/ui/view/android/bc;)V

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/bd;->h:Lcom/google/googlenav/ui/view/android/be;

    .line 127
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 132
    check-cast p2, Lcom/google/googlenav/ui/view/android/bd;

    .line 135
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->d:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->e:LT/f;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bc;->f:Lat/B;

    if-eqz v0, :cond_2b

    .line 148
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->f:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bd;->g:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bc;->f:Lat/B;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 152
    :cond_2b
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->h:Lcom/google/googlenav/ui/view/android/be;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bc;->g:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/be;->a:I

    .line 153
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/bd;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/bd;->h:Lcom/google/googlenav/ui/view/android/be;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 158
    const v0, 0x7f0400c9

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 182
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bc;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 195
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
