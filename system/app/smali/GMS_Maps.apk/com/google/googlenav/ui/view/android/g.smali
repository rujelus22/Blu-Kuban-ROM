.class public Lcom/google/googlenav/ui/view/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field final a:LaM/bj;

.field final b:I

.field c:Ljava/lang/String;

.field d:Lcom/google/googlenav/ui/view/android/h;

.field e:Lcom/google/googlenav/ui/view/android/c;

.field private final f:Ljava/lang/CharSequence;

.field private final g:Ljava/lang/CharSequence;

.field private final h:Ljava/lang/CharSequence;

.field private final i:Ljava/lang/CharSequence;

.field private final j:Ljava/lang/CharSequence;

.field private final k:Ljava/lang/CharSequence;

.field private final l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILaM/bj;IZ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Lcom/google/googlenav/ui/view/android/g;->m:I

    .line 78
    if-nez p1, :cond_2c

    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->f:Ljava/lang/CharSequence;

    .line 80
    if-nez p2, :cond_33

    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->g:Ljava/lang/CharSequence;

    .line 82
    if-nez p3, :cond_3a

    move-object v0, v1

    :goto_14
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->h:Ljava/lang/CharSequence;

    .line 85
    if-nez p4, :cond_45

    move-object v0, v1

    :goto_19
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->i:Ljava/lang/CharSequence;

    .line 87
    if-nez p5, :cond_4c

    :goto_1d
    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->j:Ljava/lang/CharSequence;

    .line 89
    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/g;->k:Ljava/lang/CharSequence;

    .line 90
    iput p7, p0, Lcom/google/googlenav/ui/view/android/g;->p:I

    .line 91
    iput-object p8, p0, Lcom/google/googlenav/ui/view/android/g;->a:LaM/bj;

    .line 92
    iput p9, p0, Lcom/google/googlenav/ui/view/android/g;->b:I

    .line 93
    iput-boolean p10, p0, Lcom/google/googlenav/ui/view/android/g;->l:Z

    .line 94
    iput v3, p0, Lcom/google/googlenav/ui/view/android/g;->m:I

    .line 95
    return-void

    .line 78
    :cond_2c
    sget-object v0, Lcom/google/googlenav/ui/aV;->ac:Lcom/google/googlenav/ui/aV;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_a

    .line 80
    :cond_33
    sget-object v0, Lcom/google/googlenav/ui/aV;->z:Lcom/google/googlenav/ui/aV;

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f

    .line 82
    :cond_3a
    invoke-static {p3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->bP:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_14

    .line 85
    :cond_45
    sget-object v0, Lcom/google/googlenav/ui/aV;->A:Lcom/google/googlenav/ui/aV;

    invoke-static {p4, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_19

    .line 87
    :cond_4c
    sget-object v0, Lcom/google/googlenav/ui/aV;->A:Lcom/google/googlenav/ui/aV;

    invoke-static {p5, v0}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_1d
.end method

.method public static a(Lcom/google/googlenav/ai;Ljava/lang/String;ILaM/bj;IZ)Lcom/google/googlenav/ui/view/android/g;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_8

    .line 337
    const/4 v0, 0x0

    .line 380
    :cond_7
    :goto_7
    return-object v0

    .line 342
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aC()Ljava/lang/String;

    move-result-object v2

    .line 345
    :goto_18
    const/4 v3, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aI()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 348
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aJ()LO/d;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, LO/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {v0}, LO/d;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    const/16 v3, 0x3eb

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    :cond_42
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aD()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aE()Ljava/lang/String;

    move-result-object v5

    .line 360
    const/4 v6, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 362
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aF()Ljava/lang/String;

    move-result-object v6

    .line 365
    :cond_59
    new-instance v0, Lcom/google/googlenav/ui/view/android/g;

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/ui/view/android/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILaM/bj;IZ)V

    .line 369
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/view/android/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/g;->a(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/g;->e:Lcom/google/googlenav/ui/view/android/c;

    .line 374
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aI()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/g;->d()Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/g;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 376
    :cond_8f
    new-instance v1, Lcom/google/googlenav/ui/view/android/c;

    iget v3, v0, Lcom/google/googlenav/ui/view/android/g;->p:I

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/g;->d()Z

    move-result v5

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/g;->e()Z

    move-result v6

    move v2, v3

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/googlenav/ui/view/android/c;-><init>(ILaM/bj;Ljava/lang/String;ZZ)V

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/g;->e:Lcom/google/googlenav/ui/view/android/c;

    goto/16 :goto_7

    .line 342
    :cond_a8
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_18
.end method

.method private a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/g;->c:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->n:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 111
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/g;->n:Ljava/lang/String;

    .line 113
    :cond_d
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 114
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/g;->o:Ljava/lang/String;

    .line 116
    :cond_15
    return-void
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->n:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->o:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private e()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->c:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f100428

    const v4, 0x7f100022

    .line 208
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/g;->l:Z

    if-eqz v0, :cond_23

    .line 209
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/google/googlenav/ui/view/android/g;->m:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    :cond_23
    new-instance v0, Lcom/google/googlenav/ui/view/android/h;

    invoke-direct {v0}, Lcom/google/googlenav/ui/view/android/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    .line 214
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v1, 0x7f100265

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f1003f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->b:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->c:Landroid/widget/TextView;

    .line 217
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f1003fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->e:Landroid/widget/TextView;

    .line 218
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f1003fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->f:Landroid/widget/TextView;

    .line 219
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f1003fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->g:Landroid/widget/TextView;

    .line 220
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 221
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 222
    const v0, 0x7f090090

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 224
    :cond_8c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v1, 0x7f10019c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/h;->j:Landroid/view/View;

    .line 225
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/h;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->l:Landroid/widget/TextView;

    .line 227
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/h;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->n:Landroid/widget/ImageView;

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v1, 0x7f10019e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/h;->i:Landroid/view/View;

    .line 230
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/h;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->k:Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/h;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->m:Landroid/widget/ImageView;

    .line 235
    :goto_da
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    new-instance v1, Lcom/google/googlenav/ui/view/android/i;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/i;-><init>(Lcom/google/googlenav/ui/view/android/g;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/h;->h:Lcom/google/googlenav/ui/view/android/i;

    .line 237
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    return-object v0

    .line 233
    :cond_e6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->d:Lcom/google/googlenav/ui/view/android/h;

    const v0, 0x7f100323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/view/android/h;->d:Landroid/widget/TextView;

    goto :goto_da
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 269
    check-cast p2, Lcom/google/googlenav/ui/view/android/h;

    .line 271
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->f:Ljava/lang/CharSequence;

    invoke-static {v1}, Laa/b;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->i:Ljava/lang/CharSequence;

    invoke-static {v1}, Laa/b;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Laa/b;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->k:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 279
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-nez v0, :cond_46

    .line 281
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 284
    :cond_46
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->h:Lcom/google/googlenav/ui/view/android/i;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/g;->p:I

    iput v1, v0, Lcom/google/googlenav/ui/view/android/i;->a:I

    .line 285
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->h:Lcom/google/googlenav/ui/view/android/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->e:Lcom/google/googlenav/ui/view/android/c;

    iput-object v1, v0, Lcom/google/googlenav/ui/view/android/i;->b:Lcom/google/googlenav/ui/view/android/c;

    .line 286
    iget-object v0, p2, Lcom/google/googlenav/ui/view/android/h;->a:Landroid/view/View;

    iget-object v1, p2, Lcom/google/googlenav/ui/view/android/h;->h:Lcom/google/googlenav/ui/view/android/i;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/google/googlenav/ui/view/android/g;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 183
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    const v0, 0x7f040181

    .line 186
    :goto_d
    return v0

    :cond_e
    const v0, 0x7f040182

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 300
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 303
    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1c

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 313
    :cond_28
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->j:Ljava/lang/CharSequence;

    if-eqz v1, :cond_34

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 318
    :cond_34
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_40

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 323
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
