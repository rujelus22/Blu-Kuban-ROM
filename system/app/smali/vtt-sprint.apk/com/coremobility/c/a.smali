.class public final Lcom/coremobility/c/a;
.super Lcom/coremobility/j/l;


# static fields
.field protected static c:I


# instance fields
.field protected a:Lcom/coremobility/integration/file/a;

.field protected b:I

.field protected d:Lcom/coremobility/c/al;

.field protected e:Lcom/coremobility/c/am;

.field protected f:Lcom/coremobility/integration/h;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/coremobility/c/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/j/l;-><init>()V

    new-instance v0, Lcom/coremobility/integration/h;

    invoke-direct {v0}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v0, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    iput-object v1, p0, Lcom/coremobility/c/a;->a:Lcom/coremobility/integration/file/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/c/a;->b:I

    iput-object v1, p0, Lcom/coremobility/c/a;->d:Lcom/coremobility/c/al;

    new-instance v0, Lcom/coremobility/c/al;

    invoke-direct {v0}, Lcom/coremobility/c/al;-><init>()V

    new-instance v1, Lcom/coremobility/c/am;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/coremobility/c/am;-><init>(Lcom/coremobility/c/al;)V

    iput-object v1, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/c/a;->o:[B

    iget-object v0, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_f
    return-void
.end method

.method private c()V
    .registers 7

    const/4 v0, 0x1

    const/16 v5, 0x1a

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/c/a;->b:I

    sget v3, Lcom/coremobility/c/a;->c:I

    if-ne v2, v3, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v2, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v2, :cond_2e

    const-string v2, "CM+DMD sk %s entry"

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/coremobility/c/a;->m:Z

    if-eqz v0, :cond_2b

    const-string v0, "del"

    :goto_19
    aput-object v0, v3, v1

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_1f
    :goto_1f
    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/coremobility/c/a;->d:Lcom/coremobility/c/al;

    iget-object v1, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-object v2, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/c/al;->a(Lcom/coremobility/c/am;Lcom/coremobility/integration/h;)Z

    goto :goto_a

    :cond_2b
    const-string v0, "bad"

    goto :goto_19

    :cond_2e
    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->f:I

    invoke-static {v2}, Lcom/coremobility/c/an;->e(I)Z

    move-result v2

    if-nez v2, :cond_3a

    move v0, v1

    goto :goto_1f

    :cond_3a
    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-object v2, v2, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    if-nez v2, :cond_49

    const-string v0, "CM+DMD no name"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1f

    :cond_49
    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->g:I

    if-nez v2, :cond_77

    iget-boolean v2, p0, Lcom/coremobility/c/a;->l:Z

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->d:I

    if-nez v2, :cond_60

    const-string v2, "CM+DMD 0 rev"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    iget-boolean v2, p0, Lcom/coremobility/c/a;->j:Z

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-short v2, v2, Lcom/coremobility/c/am;->b:S

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/coremobility/c/a;->i:Z

    if-nez v2, :cond_1f

    :cond_6e
    const-string v0, "CM+DMD il b info"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1f

    :cond_77
    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->g:I

    if-eq v2, v0, :cond_8b

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->g:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8b

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->g:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b6

    :cond_8b
    iget-boolean v2, p0, Lcom/coremobility/c/a;->l:Z

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lcom/coremobility/c/a;->j:Z

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lcom/coremobility/c/a;->i:Z

    if-eqz v2, :cond_1f

    :cond_97
    const-string v2, "CM+DMD xtra %d info"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v4, v4, Lcom/coremobility/c/am;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput v1, v2, Lcom/coremobility/c/am;->d:I

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput-short v1, v2, Lcom/coremobility/c/am;->b:S

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput v1, v2, Lcom/coremobility/c/am;->c:I

    goto/16 :goto_1f

    :cond_b6
    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v2, v2, Lcom/coremobility/c/am;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e4

    iget-boolean v2, p0, Lcom/coremobility/c/a;->l:Z

    if-nez v2, :cond_cb

    const-string v0, "CM+DMD il srev info"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_1f

    :cond_cb
    iget-boolean v2, p0, Lcom/coremobility/c/a;->j:Z

    if-nez v2, :cond_d3

    iget-boolean v2, p0, Lcom/coremobility/c/a;->i:Z

    if-eqz v2, :cond_1f

    :cond_d3
    const-string v2, "CM+DMD xtra srev info"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput-short v1, v2, Lcom/coremobility/c/am;->b:S

    iget-object v2, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput v1, v2, Lcom/coremobility/c/am;->c:I

    goto/16 :goto_1f

    :cond_e4
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v1

    goto/16 :goto_1f

    :cond_ea
    iget-boolean v0, p0, Lcom/coremobility/c/a;->m:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    iget-object v1, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-short v1, v1, Lcom/coremobility/c/am;->a:S

    invoke-static {v0, v1}, Lcom/coremobility/c/al;->a(Lcom/coremobility/integration/h;S)V

    goto/16 :goto_a
.end method

.method private d()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput-short v1, v0, Lcom/coremobility/c/am;->b:S

    iput-short v1, v0, Lcom/coremobility/c/am;->a:S

    iput v1, v0, Lcom/coremobility/c/am;->g:I

    iput v1, v0, Lcom/coremobility/c/am;->f:I

    iput v1, v0, Lcom/coremobility/c/am;->d:I

    iput v1, v0, Lcom/coremobility/c/am;->c:I

    iput-byte v1, v0, Lcom/coremobility/c/am;->i:B

    iput-byte v1, v0, Lcom/coremobility/c/am;->h:B

    iput-boolean v1, p0, Lcom/coremobility/c/a;->g:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->h:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->i:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->j:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->k:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->l:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->m:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/c/a;->a:Lcom/coremobility/integration/file/a;

    invoke-direct {p0}, Lcom/coremobility/c/a;->d()V

    return-void
.end method

.method public final a(Lcom/coremobility/c/al;)V
    .registers 12

    const/16 v9, 0xf

    const/4 v8, -0x1

    const/16 v7, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_21

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput-object p1, p0, Lcom/coremobility/c/a;->d:Lcom/coremobility/c/al;

    iget-object v0, p0, Lcom/coremobility/c/a;->d:Lcom/coremobility/c/al;

    invoke-virtual {v0}, Lcom/coremobility/c/al;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    invoke-static {v0, v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_20
    return-void

    :cond_21
    move v0, v2

    goto :goto_a

    :cond_23
    new-instance v0, Lcom/coremobility/integration/r;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v3, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    invoke-static {v3, v0}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v3

    if-nez v3, :cond_34

    iget v3, v0, Lcom/coremobility/integration/r;->a:I

    if-nez v3, :cond_3b

    :cond_34
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/c/a;->b()V

    goto :goto_20

    :cond_3b
    iget-object v3, p0, Lcom/coremobility/c/a;->d:Lcom/coremobility/c/al;

    iget v4, v0, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v3, v4}, Lcom/coremobility/c/al;->e(I)V

    iget v3, v0, Lcom/coremobility/integration/r;->a:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/coremobility/c/a;->o:[B

    iget-object v3, p0, Lcom/coremobility/c/a;->f:Lcom/coremobility/integration/h;

    iget-object v4, p0, Lcom/coremobility/c/a;->o:[B

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/file/a;->c(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v3

    if-eqz v3, :cond_59

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0}, Lcom/coremobility/c/a;->b()V

    goto :goto_20

    :cond_59
    iget v0, v0, Lcom/coremobility/integration/r;->a:I

    iput v0, p0, Lcom/coremobility/c/a;->p:I

    iput v2, p0, Lcom/coremobility/c/a;->q:I

    iput v1, p0, Lcom/coremobility/c/a;->r:I

    :cond_61
    :goto_61
    iget v0, p0, Lcom/coremobility/c/a;->q:I

    iget v3, p0, Lcom/coremobility/c/a;->p:I

    if-ge v0, v3, :cond_2fb

    iput v2, p0, Lcom/coremobility/c/a;->r:I

    iget v0, p0, Lcom/coremobility/c/a;->q:I

    iput v0, p0, Lcom/coremobility/c/a;->b:I

    iget-object v0, p0, Lcom/coremobility/c/a;->o:[B

    iget v3, p0, Lcom/coremobility/c/a;->q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/coremobility/c/a;->q:I

    aget-byte v0, v0, v3

    sparse-switch v0, :sswitch_data_304

    const-string v0, "CM+DMD unk field 0x%x"

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/coremobility/c/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto :goto_61

    :sswitch_8d
    invoke-direct {p0}, Lcom/coremobility/c/a;->c()V

    new-instance v0, Lcom/coremobility/c/al;

    invoke-direct {v0}, Lcom/coremobility/c/al;-><init>()V

    new-instance v3, Lcom/coremobility/c/am;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/coremobility/c/am;-><init>(Lcom/coremobility/c/al;)V

    iput-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    invoke-direct {p0}, Lcom/coremobility/c/a;->d()V

    iget v0, p0, Lcom/coremobility/c/a;->b:I

    sget v3, Lcom/coremobility/c/a;->c:I

    if-lt v0, v3, :cond_d4

    move v0, v1

    :goto_a9
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/c/a;->b:I

    sget v3, Lcom/coremobility/c/a;->c:I

    sub-int/2addr v0, v3

    const v3, 0xffff

    if-le v0, v3, :cond_d6

    const-string v0, "CM+DMD toc too big"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/c/a;->p:I

    iput v0, p0, Lcom/coremobility/c/a;->q:I

    :goto_c1
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-nez v0, :cond_dc

    move v0, v1

    :goto_c6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/c/a;->v()B

    move-result v0

    if-ne v0, v8, :cond_de

    iput-boolean v1, p0, Lcom/coremobility/c/a;->m:Z

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    goto :goto_61

    :cond_d4
    move v0, v2

    goto :goto_a9

    :cond_d6
    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    int-to-short v0, v0

    iput-short v0, v3, Lcom/coremobility/c/am;->a:S

    goto :goto_c1

    :cond_dc
    move v0, v2

    goto :goto_c6

    :cond_de
    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    and-int/lit8 v0, v0, 0x7f

    iput v0, v3, Lcom/coremobility/c/am;->g:I

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->g:I

    if-ltz v0, :cond_fb

    const/4 v3, 0x5

    if-ge v0, v3, :cond_fb

    move v0, v1

    :goto_ee
    if-nez v0, :cond_61

    const-string v0, "CM+DMD il cmd"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    goto/16 :goto_61

    :cond_fb
    move v0, v2

    goto :goto_ee

    :sswitch_fd
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_106

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_106
    iget-boolean v0, p0, Lcom/coremobility/c/a;->g:Z

    if-eqz v0, :cond_111

    const-string v0, "CM+DMD dup com-fl"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_111
    invoke-virtual {p0}, Lcom/coremobility/c/a;->w()I

    move-result v0

    if-le v0, v9, :cond_124

    const-string v3, "CM+DMD com-fl %x too big"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_124
    iput-boolean v1, p0, Lcom/coremobility/c/a;->g:Z

    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-byte v4, v3, Lcom/coremobility/c/am;->h:B

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    or-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, v3, Lcom/coremobility/c/am;->h:B

    goto/16 :goto_61

    :sswitch_136
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_13f

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_13f
    iget-boolean v0, p0, Lcom/coremobility/c/a;->h:Z

    if-eqz v0, :cond_14a

    const-string v0, "CM+DMD dup com-inf"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14a
    invoke-virtual {p0}, Lcom/coremobility/c/a;->w()I

    move-result v0

    if-le v0, v9, :cond_15d

    const-string v3, "CM+DMD com-inf %d too big"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15d
    iput-boolean v1, p0, Lcom/coremobility/c/a;->h:Z

    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget-byte v4, v3, Lcom/coremobility/c/am;->h:B

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    or-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, v3, Lcom/coremobility/c/am;->h:B

    goto/16 :goto_61

    :sswitch_16d
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_176

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_176
    iget v0, p0, Lcom/coremobility/c/a;->q:I

    :goto_178
    iget v3, p0, Lcom/coremobility/c/a;->q:I

    iget v4, p0, Lcom/coremobility/c/a;->p:I

    if-ge v3, v4, :cond_197

    iget-object v3, p0, Lcom/coremobility/c/a;->o:[B

    iget v4, p0, Lcom/coremobility/c/a;->q:I

    aget-byte v3, v3, v4

    if-eqz v3, :cond_197

    iget-object v3, p0, Lcom/coremobility/c/a;->o:[B

    iget v4, p0, Lcom/coremobility/c/a;->q:I

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_197

    iget v3, p0, Lcom/coremobility/c/a;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/coremobility/c/a;->q:I

    goto :goto_178

    :cond_197
    iget v3, p0, Lcom/coremobility/c/a;->q:I

    iget v4, p0, Lcom/coremobility/c/a;->p:I

    if-lt v3, v4, :cond_1a6

    const-string v0, "CM+DMD inc uri"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_1a6
    iget-object v3, p0, Lcom/coremobility/c/a;->o:[B

    iget v4, p0, Lcom/coremobility/c/a;->q:I

    aget-byte v3, v3, v4

    if-nez v3, :cond_1c2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/c/a;->o:[B

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BI)V

    const-string v0, "CM+DMD bad uri: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    goto/16 :goto_61

    :cond_1c2
    iget v3, p0, Lcom/coremobility/c/a;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/coremobility/c/a;->q:I

    sub-int/2addr v3, v0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/coremobility/c/a;->o:[B

    invoke-direct {v4, v5, v0, v3}, Ljava/lang/String;-><init>([BII)V

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput v8, v0, Lcom/coremobility/c/am;->f:I

    move v0, v2

    :goto_1d5
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1e6

    sget-object v3, Lcom/coremobility/c/an;->p:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput v0, v3, Lcom/coremobility/c/am;->f:I

    :cond_1e6
    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iget v0, v0, Lcom/coremobility/c/am;->f:I

    if-ne v0, v8, :cond_1ff

    const-string v0, "CM+DMD unk ns: %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    invoke-virtual {p0}, Lcom/coremobility/c/a;->C()V

    goto/16 :goto_61

    :cond_1fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d5

    :cond_1ff
    invoke-virtual {p0}, Lcom/coremobility/c/a;->A()I

    move-result v0

    iget v3, p0, Lcom/coremobility/c/a;->r:I

    if-ne v3, v1, :cond_219

    const-string v0, "CM+DMD name missing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    goto/16 :goto_61

    :cond_219
    if-nez v0, :cond_226

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, v0, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    goto/16 :goto_61

    :cond_226
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/c/a;->o:[B

    iget v5, p0, Lcom/coremobility/c/a;->q:I

    add-int/lit8 v6, v0, -0x1

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    const/16 v4, 0x10

    if-le v0, v4, :cond_247

    const-string v4, "CM+DMD bad name: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    iget v3, p0, Lcom/coremobility/c/a;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/coremobility/c/a;->q:I

    goto/16 :goto_61

    :cond_247
    iget-object v4, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    iput-object v3, v4, Lcom/coremobility/c/am;->e:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/c/a;->q:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/coremobility/c/a;->q:I

    goto/16 :goto_61

    :sswitch_252
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_25b

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_25b
    iget-boolean v0, p0, Lcom/coremobility/c/a;->l:Z

    if-eqz v0, :cond_266

    const-string v0, "CM+DMD dup rev"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_266
    iput-boolean v1, p0, Lcom/coremobility/c/a;->l:Z

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    invoke-virtual {p0}, Lcom/coremobility/c/a;->x()I

    move-result v3

    iput v3, v0, Lcom/coremobility/c/am;->d:I

    goto/16 :goto_61

    :sswitch_272
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_27b

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_27b
    iget-boolean v0, p0, Lcom/coremobility/c/a;->i:Z

    if-eqz v0, :cond_286

    const-string v0, "CM+DMD dup offset"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_286
    iput-boolean v1, p0, Lcom/coremobility/c/a;->i:Z

    iget-object v0, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    invoke-virtual {p0}, Lcom/coremobility/c/a;->w()I

    move-result v3

    iput v3, v0, Lcom/coremobility/c/am;->c:I

    goto/16 :goto_61

    :sswitch_292
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_29b

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_29b
    iget-boolean v0, p0, Lcom/coremobility/c/a;->j:Z

    if-eqz v0, :cond_2a6

    const-string v0, "CM+DMD dup dsz"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2a6
    invoke-virtual {p0}, Lcom/coremobility/c/a;->w()I

    move-result v0

    const v3, 0xffff

    if-le v0, v3, :cond_2ba

    const-string v0, "CM+DMD dsz too big"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    goto/16 :goto_61

    :cond_2ba
    iput-boolean v1, p0, Lcom/coremobility/c/a;->j:Z

    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    int-to-short v0, v0

    iput-short v0, v3, Lcom/coremobility/c/am;->b:S

    goto/16 :goto_61

    :sswitch_2c3
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :sswitch_2cb
    iget-boolean v0, p0, Lcom/coremobility/c/a;->n:Z

    if-eqz v0, :cond_2d4

    invoke-virtual {p0}, Lcom/coremobility/c/a;->D()V

    goto/16 :goto_61

    :cond_2d4
    iget-boolean v0, p0, Lcom/coremobility/c/a;->k:Z

    if-eqz v0, :cond_2df

    const-string v0, "CM+DMD dup info"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2df
    invoke-virtual {p0}, Lcom/coremobility/c/a;->w()I

    move-result v0

    const/16 v3, 0xff

    if-le v0, v3, :cond_2f2

    const-string v0, "CM+DMD info too big"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/coremobility/c/a;->n:Z

    goto/16 :goto_61

    :cond_2f2
    iput-boolean v1, p0, Lcom/coremobility/c/a;->k:Z

    iget-object v3, p0, Lcom/coremobility/c/a;->e:Lcom/coremobility/c/am;

    int-to-byte v0, v0

    iput-byte v0, v3, Lcom/coremobility/c/am;->i:B

    goto/16 :goto_61

    :cond_2fb
    invoke-direct {p0}, Lcom/coremobility/c/a;->c()V

    invoke-direct {p0}, Lcom/coremobility/c/a;->b()V

    goto/16 :goto_20

    nop

    :sswitch_data_304
    .sparse-switch
        -0x80 -> :sswitch_8d
        -0x7f -> :sswitch_16d
        -0x7e -> :sswitch_252
        -0x7d -> :sswitch_292
        -0x7c -> :sswitch_272
        -0x7b -> :sswitch_2c3
        -0x79 -> :sswitch_2cb
        -0x60 -> :sswitch_fd
        -0x5f -> :sswitch_136
    .end sparse-switch
.end method

.method public final a([BI)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/coremobility/j/l;->a([BI)Z

    move-result v0

    return v0
.end method
