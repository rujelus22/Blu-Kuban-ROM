.class public LaQ/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ui/bw;

.field private final c:Lcom/google/googlenav/ai;

.field private final d:Lcom/google/googlenav/ui/view/c;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, LaQ/N;->a:I

    .line 65
    iput-object p2, p0, LaQ/N;->b:Lcom/google/googlenav/ui/bw;

    .line 66
    iput-object p3, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    .line 67
    iput-object p4, p0, LaQ/N;->d:Lcom/google/googlenav/ui/view/c;

    .line 70
    invoke-virtual {p0}, LaQ/N;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 71
    const/16 v0, 0x2d

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ai;->o(I)V

    .line 74
    :cond_16
    return-void
.end method

.method private a(LaQ/O;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Lcom/google/googlenav/ap;->b()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_53

    move v0, v1

    .line 168
    :goto_14
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->J()Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz v4, :cond_22

    if-eqz v0, :cond_55

    :cond_22
    move v3, v1

    .line 173
    :goto_23
    if-eqz v3, :cond_8e

    .line 174
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->as()Lcom/google/googlenav/ay;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_57

    .line 176
    invoke-virtual {v0}, Lcom/google/googlenav/ay;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 177
    iget-object v1, p1, LaQ/O;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, LaT/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p1, LaQ/O;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    iget-object v0, p1, LaQ/O;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p1, LaQ/O;->b:Landroid/widget/ImageView;

    iget-object v1, p0, LaQ/N;->d:Lcom/google/googlenav/ui/view/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 214
    :cond_52
    :goto_52
    return-void

    :cond_53
    move v0, v2

    .line 166
    goto :goto_14

    :cond_55
    move v3, v2

    .line 168
    goto :goto_23

    .line 186
    :cond_57
    iget-object v0, p1, LaQ/O;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    const/16 v1, 0x3c5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/16 v1, 0x909

    const/4 v3, -0x1

    const-string v4, "lp"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    .line 190
    iget-object v1, p1, LaQ/O;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, LaQ/N;->d:Lcom/google/googlenav/ui/view/c;

    invoke-static {v1, v3, v0}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 191
    iget-object v0, p1, LaQ/O;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    iget-object v0, p1, LaQ/O;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    goto :goto_52

    .line 198
    :cond_8e
    if-eqz v4, :cond_52

    .line 200
    invoke-static {v4}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    .line 201
    iget-object v3, p0, LaQ/N;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v3

    invoke-virtual {v3, v2}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 202
    iget-object v3, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-static {v3, v0, v1}, LaM/aR;->b(Lcom/google/googlenav/ai;ZZ)Lcom/google/googlenav/ui/view/a;

    move-result-object v1

    .line 204
    iget-object v3, p1, LaQ/O;->b:Landroid/widget/ImageView;

    iget-object v4, p0, LaQ/N;->d:Lcom/google/googlenav/ui/view/c;

    invoke-static {v3, v4, v1}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 205
    iget-object v1, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-static {v1, v0}, LaM/aR;->b(Lcom/google/googlenav/ai;Z)V

    .line 206
    iget-object v0, p0, LaQ/N;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 207
    iget-object v1, p1, LaQ/O;->b:Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    goto :goto_52
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 93
    new-instance v1, LaQ/O;

    invoke-direct {v1, p0}, LaQ/O;-><init>(LaQ/N;)V

    .line 94
    const v0, 0x7f1002bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/O;->a:Landroid/view/ViewGroup;

    .line 95
    const v0, 0x7f1002bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/O;->b:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    iput-object v0, v1, LaQ/O;->c:Lcom/google/googlenav/ui/view/android/DistanceView;

    .line 97
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/HeadingView;

    iput-object v0, v1, LaQ/O;->d:Lcom/google/googlenav/ui/view/android/HeadingView;

    .line 98
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/O;->e:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/O;->f:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f100199

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/O;->g:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f1002bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/O;->h:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f10023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, LaQ/O;->i:Landroid/widget/Button;

    .line 103
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    check-cast p2, LaQ/O;

    .line 111
    invoke-direct {p0, p2}, LaQ/N;->a(LaQ/O;)V

    .line 114
    iget-object v0, p2, LaQ/O;->e:Landroid/widget/TextView;

    iget-object v2, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p2, LaQ/O;->c:Lcom/google/googlenav/ui/view/android/DistanceView;

    iget-object v2, p2, LaQ/O;->d:Lcom/google/googlenav/ui/view/android/HeadingView;

    iget-object v3, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/aS;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;Lat/B;)V

    .line 120
    iget-object v0, p2, LaQ/O;->f:Landroid/widget/TextView;

    iget-object v2, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p2, LaQ/O;->g:Landroid/widget/TextView;

    iget-object v2, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bx()Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v0, 0x3bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->br:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 126
    :goto_48
    iget-object v2, p2, LaQ/O;->h:Landroid/widget/TextView;

    invoke-static {v2, v0}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, LaQ/N;->d()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 129
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-nez v0, :cond_82

    const/16 v0, 0x41b

    .line 131
    :goto_61
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 133
    iget-object v2, p2, LaQ/O;->i:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p2, LaQ/O;->i:Landroid/widget/Button;

    iget-object v2, p0, LaQ/N;->d:Lcom/google/googlenav/ui/view/c;

    new-instance v3, Lcom/google/googlenav/ui/view/a;

    const/16 v4, 0x6a4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 141
    :goto_7f
    return-void

    :cond_80
    move-object v0, v1

    .line 124
    goto :goto_48

    .line 129
    :cond_82
    const/16 v0, 0x3f2

    goto :goto_61

    .line 139
    :cond_85
    iget-object v0, p2, LaQ/O;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7f
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, LaQ/N;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 78
    const v0, 0x7f0400f5

    return v0
.end method

.method public d()Z
    .registers 5

    .prologue
    .line 217
    iget-object v0, p0, LaQ/N;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
