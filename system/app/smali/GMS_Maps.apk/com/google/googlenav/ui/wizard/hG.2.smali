.class public Lcom/google/googlenav/ui/wizard/hg;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field protected a:I

.field private b:Lcom/google/googlenav/ai;

.field private c:Lcom/google/googlenav/J;

.field private i:LaM/am;

.field private j:Z

.field private k:Lcom/google/googlenav/ui/bw;

.field private l:Lah/s;

.field private m:Ljava/lang/String;

.field private n:LaM/bj;

.field private o:Lcom/google/googlenav/ui/wizard/ha;

.field private p:Lcom/google/googlenav/ui/wizard/hf;

.field private q:Las/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hg;->a:I

    .line 103
    new-instance v0, Lcom/google/googlenav/ui/wizard/hh;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hh;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->p:Lcom/google/googlenav/ui/wizard/hf;

    .line 551
    new-instance v0, Lcom/google/googlenav/ui/wizard/hn;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hn;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->q:Las/h;

    .line 120
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    .line 121
    invoke-interface {p2}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->l:Lah/s;

    .line 122
    new-instance v0, Lcom/google/googlenav/ui/bw;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->l:Lah/s;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->k:Lcom/google/googlenav/ui/bw;

    .line 124
    return-void
.end method

.method private A()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 425
    instance-of v1, v0, LaM/m;

    if-eqz v1, :cond_10

    .line 426
    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->bo()V

    .line 430
    :goto_f
    return-void

    .line 428
    :cond_10
    invoke-virtual {v0}, LaM/i;->J()V

    goto :goto_f
.end method

.method private B()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 491
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bI()[I

    move-result-object v0

    .line 492
    aget v1, v0, v8

    aget v2, v0, v9

    add-int/2addr v1, v2

    .line 493
    const/16 v2, 0x55

    const-string v3, "d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v6}, Lcom/google/googlenav/ai;->bD()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v6}, Lcom/google/googlenav/ai;->bH()[Lcom/google/googlenav/ak;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "l="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v0, v0, v9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v5}, Lcom/google/googlenav/ai;->bE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/hg;)LaF/c;
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->y()LaF/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/hg;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->z()V

    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->A()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/hg;)Las/h;
    .registers 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->q:Las/h;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->i()V

    return-void
.end method

.method private i()V
    .registers 10

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ha;->a()V

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_2f

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    .line 213
    new-instance v1, LaF/c;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    new-instance v3, Lcom/google/googlenav/ui/bw;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    invoke-direct {v1, p0, v2, v3, v0}, LaF/c;-><init>(Lcom/google/googlenav/ui/wizard/hg;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/wizard/ha;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 217
    :cond_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, LaF/c;

    new-instance v2, Lcom/google/googlenav/ui/bw;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    invoke-virtual {v0, v2}, LaF/c;->a(Lcom/google/googlenav/ui/bw;)V

    .line 222
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 226
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->F()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bh()Lcom/google/googlenav/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->d()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 230
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 233
    array-length v0, v0

    if-lez v0, :cond_a4

    .line 236
    new-instance v0, Lcom/google/googlenav/cw;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    new-instance v4, Lcom/google/googlenav/ui/wizard/hv;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hg;->k:Lcom/google/googlenav/ui/bw;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->y()LaF/c;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/googlenav/ui/wizard/hv;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/bw;LaF/c;Lcom/google/googlenav/J;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/cw;-><init>(IJLcom/google/googlenav/cx;)V

    .line 240
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 245
    :cond_a4
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ax;->a(Z)V

    .line 246
    return-void
.end method

.method private y()LaF/c;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, LaF/c;

    return-object v0
.end method

.method private z()V
    .registers 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_21

    .line 380
    iget v1, p0, Lcom/google/googlenav/ui/wizard/hg;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 381
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/ui/wizard/hg;->a:I

    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->a(I)V

    .line 382
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LaM/i;->a(B)V

    .line 384
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->f(Z)V

    .line 385
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->A()V

    .line 387
    :cond_21
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    .line 191
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/hg;->j:Z

    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    .line 193
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/hg;->j:Z

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hg;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 526
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 527
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->h()V

    .line 528
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hg;->g:I

    .line 534
    :goto_d
    return v0

    .line 530
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_14

    .line 532
    const/4 v0, 0x4

    goto :goto_d

    .line 534
    :cond_14
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hg;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_6

    .line 541
    const/4 v0, 0x4

    .line 543
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/wizard/hg;->g:I

    goto :goto_5
.end method

.method public a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    .line 139
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    .line 140
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/hg;->j:Z

    .line 141
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hg;->m:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/google/googlenav/ui/wizard/ha;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->p:Lcom/google/googlenav/ui/wizard/hf;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/googlenav/ui/wizard/ha;-><init>(Lcom/google/googlenav/ui/wizard/hf;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    .line 145
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->j()V

    .line 146
    return-void
.end method

.method protected a(Lcom/google/googlenav/ai;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 434
    if-nez p1, :cond_5

    .line 463
    :cond_4
    :goto_4
    return-void

    .line 440
    :cond_5
    if-eqz p2, :cond_31

    new-instance v0, Lcom/google/googlenav/ui/wizard/ht;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/ht;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/J;)V

    .line 446
    :goto_e
    new-instance v1, Lcom/google/googlenav/bG;

    const-string v2, "lo-gmm"

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/google/googlenav/bG;-><init>(Lcom/google/googlenav/ai;Ljava/lang/String;ZLcom/google/googlenav/bH;)V

    .line 452
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 455
    if-nez p2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v0, 0x42e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v5, v8}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    goto :goto_4

    .line 440
    :cond_31
    new-instance v0, Lcom/google/googlenav/ui/wizard/hs;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->g()Lcom/google/googlenav/ui/wizard/hw;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/hs;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/J;LaM/am;Lcom/google/googlenav/ui/wizard/hp;Lcom/google/googlenav/ui/wizard/hw;)V

    goto :goto_e
.end method

.method public a(Lcom/google/googlenav/ay;)V
    .registers 10
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x3ff

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3fe

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x61d

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x31b

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/google/googlenav/ui/wizard/hj;

    invoke-direct {v7, p0, p1}, Lcom/google/googlenav/ui/wizard/hj;-><init>(Lcom/google/googlenav/ui/wizard/hg;Lcom/google/googlenav/ay;)V

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/bn;)V

    .line 315
    return-void
.end method

.method public a(Lcom/google/googlenav/cy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_19

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/cy;)V

    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ai;->n(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ai;->m(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ai;->a(Ljava/lang/Integer;)V

    .line 404
    :cond_19
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->A()V

    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_25

    .line 406
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 409
    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    if-nez v0, :cond_33

    .line 412
    const/16 v0, 0x408

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 418
    :goto_32
    return-void

    .line 417
    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/hg;->a(Lcom/google/googlenav/ai;Z)V

    goto :goto_32
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 354
    sparse-switch p1, :sswitch_data_1a

    .line 365
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 358
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    goto :goto_5

    .line 361
    :sswitch_a
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->n:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/googlenav/F;->a(I)V

    .line 362
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->n:LaM/bj;

    invoke-virtual {v1, p1, p2, p3}, LaM/bj;->a(IILjava/lang/Object;)Z

    goto :goto_5

    .line 354
    nop

    :sswitch_data_1a
    .sparse-switch
        0xe -> :sswitch_6
        0x6a4 -> :sswitch_a
    .end sparse-switch
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 154
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bj;->v()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 158
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->q:Las/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->a(Las/h;)V

    .line 160
    sget-object v1, Lcom/google/googlenav/bo;->a:Lcom/google/googlenav/bo;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bo;)V

    .line 165
    :goto_1b
    return-void

    .line 163
    :cond_1c
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->i()V

    goto :goto_1b
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 171
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hg;->a:I

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->n:LaM/bj;

    if-eqz v0, :cond_14

    .line 174
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->n:LaM/bj;

    invoke-virtual {v0, v1}, LaM/am;->g(LaM/i;)V

    .line 176
    :cond_14
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->n:LaM/bj;

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    if-eqz v0, :cond_21

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ha;->c()V

    .line 179
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/hg;->o:Lcom/google/googlenav/ui/wizard/ha;

    .line 181
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hg;->j:Z

    .line 184
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->q:Las/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->b(Las/h;)V

    .line 185
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/googlenav/ui/wizard/hi;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hi;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILcom/google/googlenav/ui/wizard/cb;)V

    .line 280
    return-void
.end method

.method public f()V
    .registers 10

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->B()V

    .line 320
    new-instance v2, Lcom/google/googlenav/ui/wizard/hp;

    new-instance v0, Lcom/google/googlenav/ui/wizard/hk;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hk;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/wizard/hp;-><init>(Ljava/lang/Runnable;)V

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    const/16 v1, 0x1c2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 329
    new-instance v3, Lcom/google/googlenav/ui/wizard/hq;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hg;->c:Lcom/google/googlenav/J;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hg;->i:LaM/am;

    iget-object v6, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    new-instance v8, Lcom/google/googlenav/ui/wizard/hl;

    invoke-direct {v8, p0}, Lcom/google/googlenav/ui/wizard/hl;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/googlenav/ui/wizard/hq;-><init>(Lcom/google/googlenav/J;LaM/am;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/wizard/hp;Lcom/google/googlenav/ui/wizard/hw;)V

    .line 343
    new-instance v0, LaF/a;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bG()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, v3}, LaF/a;-><init>(JLcom/google/googlenav/common/io/protocol/ProtoBuf;LaF/b;)V

    .line 346
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->a()V

    .line 350
    return-void
.end method

.method g()Lcom/google/googlenav/ui/wizard/hw;
    .registers 2

    .prologue
    .line 468
    new-instance v0, Lcom/google/googlenav/ui/wizard/hm;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hm;-><init>(Lcom/google/googlenav/ui/wizard/hg;)V

    .line 485
    return-object v0
.end method

.method public h()V
    .registers 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_f

    .line 509
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hg;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->bJ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->m(I)V

    .line 512
    :cond_f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hg;->j:Z

    if-eqz v0, :cond_1e

    .line 513
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 514
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/hg;->g:I

    .line 522
    :goto_1d
    return-void

    .line 520
    :cond_1e
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hg;->z()V

    .line 521
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    goto :goto_1d
.end method
