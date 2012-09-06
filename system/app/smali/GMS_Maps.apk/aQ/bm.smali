.class public LaQ/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# static fields
.field static final a:Ljava/lang/CharSequence;

.field static final b:Ljava/lang/CharSequence;

.field private static final j:Lcom/google/googlenav/ui/view/a;

.field private static final k:Lcom/google/googlenav/ui/view/a;


# instance fields
.field final c:I

.field final d:Lcom/google/googlenav/ui/bw;

.field final e:Lcom/google/googlenav/ai;

.field final f:Z

.field final g:Z

.field h:LaQ/bp;

.field final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x258

    const/4 v2, -0x1

    .line 60
    const/16 v0, 0x599

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sput-object v0, LaQ/bm;->a:Ljava/lang/CharSequence;

    .line 62
    const/16 v0, 0x1f2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sput-object v0, LaQ/bm;->b:Ljava/lang/CharSequence;

    .line 64
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sput-object v0, LaQ/bm;->j:Lcom/google/googlenav/ui/view/a;

    .line 66
    new-instance v0, Lcom/google/googlenav/ui/view/a;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sput-object v0, LaQ/bm;->k:Lcom/google/googlenav/ui/view/a;

    return-void
.end method

.method public constructor <init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;ZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p3}, Lcom/google/googlenav/ai;->br()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    :goto_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, LaQ/bm;-><init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;ZZZ)V

    .line 84
    return-void

    .line 80
    :cond_11
    const/4 v5, 0x0

    goto :goto_7
.end method

.method constructor <init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;ZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, LaQ/bm;->c:I

    .line 91
    iput-object p2, p0, LaQ/bm;->d:Lcom/google/googlenav/ui/bw;

    .line 92
    iput-object p3, p0, LaQ/bm;->e:Lcom/google/googlenav/ai;

    .line 97
    iput-boolean p4, p0, LaQ/bm;->f:Z

    .line 98
    iput-boolean p5, p0, LaQ/bm;->g:Z

    .line 100
    iput-boolean p6, p0, LaQ/bm;->i:Z

    .line 101
    return-void
.end method

.method static synthetic a(LaQ/bm;)V
    .registers 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, LaQ/bm;->d()V

    return-void
.end method

.method static synthetic a(LaQ/bm;LaQ/bp;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, LaQ/bm;->a(LaQ/bp;)V

    return-void
.end method

.method static synthetic a(LaQ/bm;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, LaQ/bm;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    return-void
.end method

.method private a(LaQ/bp;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, LaQ/bm;->h:LaQ/bp;

    .line 187
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, LaQ/bm;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 176
    iget-object v1, p0, LaQ/bm;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->a()LS/f;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 177
    invoke-static {p1, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 179
    :cond_13
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LaQ/bm;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    new-instance v1, LaQ/bn;

    invoke-direct {v1, p0, p1, p2}, LaQ/bn;-><init>(LaQ/bm;Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, p2, v1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    .line 116
    invoke-direct {p0, p1, p2}, LaQ/bm;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    .line 117
    new-instance v0, LaQ/bo;

    invoke-direct {v0, p0, p3, p4}, LaQ/bo;-><init>(LaQ/bm;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, LaQ/bm;->h:LaQ/bp;

    .line 195
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 199
    iget-boolean v0, p0, LaQ/bm;->i:Z

    if-eqz v0, :cond_7

    .line 200
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 202
    :cond_7
    new-instance v1, LaQ/bp;

    invoke-direct {v1}, LaQ/bp;-><init>()V

    .line 203
    const v0, 0x7f100318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bp;->a:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f100317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/bp;->b:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f100319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/bp;->c:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/bp;->d:Landroid/widget/ImageView;

    .line 207
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 129
    check-cast p2, LaQ/bp;

    iput-object p2, p0, LaQ/bm;->h:LaQ/bp;

    .line 132
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    invoke-virtual {v0, p0}, LaQ/bp;->a(LaQ/bm;)V

    .line 134
    iget-object v0, p0, LaQ/bm;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bW()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    .line 135
    iget-object v0, p0, LaQ/bm;->e:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bX()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    .line 137
    if-eqz v4, :cond_59

    move v3, v1

    .line 138
    :goto_1c
    if-eqz v5, :cond_5b

    move v0, v1

    .line 140
    :goto_1f
    iget-boolean v6, p0, LaQ/bm;->f:Z

    if-eqz v6, :cond_5d

    if-eqz v3, :cond_5d

    move v3, v1

    .line 141
    :goto_26
    iget-boolean v6, p0, LaQ/bm;->g:Z

    if-eqz v6, :cond_5f

    if-eqz v0, :cond_5f

    .line 142
    :goto_2c
    if-nez v3, :cond_30

    if-eqz v1, :cond_7f

    .line 143
    :cond_30
    if-eqz v1, :cond_61

    .line 144
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->a:Landroid/widget/TextView;

    sget-object v1, LaQ/bm;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->b:Landroid/widget/ImageView;

    sget-object v1, LaQ/bm;->k:Lcom/google/googlenav/ui/view/a;

    invoke-direct {p0, v0, v5, p1, v1}, LaQ/bm;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/a;)V

    .line 152
    :goto_44
    if-eqz v3, :cond_70

    .line 153
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->c:Landroid/widget/TextView;

    sget-object v1, LaQ/bm;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->d:Landroid/widget/ImageView;

    sget-object v1, LaQ/bm;->j:Lcom/google/googlenav/ui/view/a;

    invoke-direct {p0, v0, v4, p1, v1}, LaQ/bm;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/a;)V

    .line 166
    :goto_58
    return-void

    :cond_59
    move v3, v2

    .line 137
    goto :goto_1c

    :cond_5b
    move v0, v2

    .line 138
    goto :goto_1f

    :cond_5d
    move v3, v2

    .line 140
    goto :goto_26

    :cond_5f
    move v1, v2

    .line 141
    goto :goto_2c

    .line 148
    :cond_61
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44

    .line 157
    :cond_70
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58

    .line 161
    :cond_7f
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, LaQ/bm;->h:LaQ/bp;

    iget-object v0, v0, LaQ/bp;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_58
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, LaQ/bm;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 217
    const v0, 0x7f04012e

    return v0
.end method
