.class public Lax/bm;
.super Lat/b;

# interfaces
.implements Lcom/google/googlenav/login/j;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:I

.field private final o:Ljava/lang/String;

.field private final p:Lam/b;

.field private final q:Lax/bn;

.field private r:Z

.field private s:Lam/b;

.field private t:Lam/b;

.field private u:Ljava/util/List;

.field private v:Z

.field private w:I

.field private x:Z


# direct methods
.method protected constructor <init>(Lax/bo;)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/bm;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lax/bm;->w:I

    invoke-static {p1}, Lax/bo;->a(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->a:I

    invoke-static {p1}, Lax/bo;->b(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->b:I

    invoke-static {p1}, Lax/bo;->c(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->c:I

    invoke-static {p1}, Lax/bo;->d(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->d:I

    invoke-static {p1}, Lax/bo;->e(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->e:I

    invoke-static {p1}, Lax/bo;->f(Lax/bo;)Lax/bn;

    move-result-object v0

    iput-object v0, p0, Lax/bm;->q:Lax/bn;

    invoke-static {p1}, Lax/bo;->g(Lax/bo;)J

    move-result-wide v0

    iput-wide v0, p0, Lax/bm;->f:J

    invoke-static {p1}, Lax/bo;->h(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->g:I

    invoke-static {p1}, Lax/bo;->i(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->h:Z

    invoke-static {p1}, Lax/bo;->j(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->i:Z

    invoke-static {p1}, Lax/bo;->k(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->j:Z

    invoke-static {p1}, Lax/bo;->l(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->k:Z

    invoke-static {p1}, Lax/bo;->m(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->l:Z

    invoke-static {p1}, Lax/bo;->n(Lax/bo;)Z

    move-result v0

    iput-boolean v0, p0, Lax/bm;->m:Z

    invoke-static {p1}, Lax/bo;->o(Lax/bo;)I

    move-result v0

    iput v0, p0, Lax/bm;->n:I

    invoke-static {p1}, Lax/bo;->p(Lax/bo;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/bm;->p:Lam/b;

    invoke-static {p1}, Lax/bo;->q(Lax/bo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/bm;->o:Ljava/lang/String;

    return-void
.end method

.method private static a(Lam/b;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lam/b;->e(I)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GoogleNavUserEventProto[eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",status="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x3f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/fx;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget v2, p0, Lax/bm;->a:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lax/bm;->b:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v4, v2}, Lam/b;->h(II)V

    invoke-virtual {v1, v5, v3}, Lam/b;->h(II)V

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lax/bm;->o:Ljava/lang/String;

    if-eqz v1, :cond_2b

    const/4 v1, 0x4

    iget-object v4, p0, Lax/bm;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lam/b;->b(ILjava/lang/String;)V

    :cond_2b
    iget v1, p0, Lax/bm;->c:I

    invoke-virtual {v0, v5, v1}, Lam/b;->h(II)V

    const/4 v1, 0x3

    iget v4, p0, Lax/bm;->d:I

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    iget v1, p0, Lax/bm;->e:I

    const v4, 0x1869f

    if-eq v1, v4, :cond_49

    iget v1, p0, Lax/bm;->e:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_49

    const/16 v1, 0xe

    iget v4, p0, Lax/bm;->e:I

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    :cond_49
    const/4 v1, 0x5

    iget v4, p0, Lax/bm;->g:I

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    const/4 v1, 0x6

    iget-boolean v4, p0, Lax/bm;->h:Z

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/4 v1, 0x7

    iget-boolean v4, p0, Lax/bm;->i:Z

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/16 v1, 0x9

    iget-boolean v4, p0, Lax/bm;->j:Z

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/16 v1, 0xb

    iget-boolean v4, p0, Lax/bm;->k:Z

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/16 v1, 0xf

    iget-boolean v4, p0, Lax/bm;->l:Z

    invoke-virtual {v0, v1, v4}, Lam/b;->b(IZ)V

    const/16 v1, 0xa

    iget v4, p0, Lax/bm;->n:I

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    const/16 v1, 0x8

    invoke-static {v2, v3}, LaE/d;->a(II)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/16 v1, 0xd

    iget-boolean v2, p0, Lax/bm;->i:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    iget-object v1, p0, Lax/bm;->p:Lam/b;

    if-eqz v1, :cond_92

    const/16 v1, 0xc

    iget-object v2, p0, Lax/bm;->p:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_92
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lax/bm;->v:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/fx;->b:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    iput-object v2, p0, Lax/bm;->t:Lam/b;

    iget-object v2, p0, Lax/bm;->t:Lam/b;

    invoke-static {v2, v1, v5}, Lam/g;->c(Lam/b;II)I

    move-result v2

    iget-object v3, p0, Lax/bm;->t:Lam/b;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lam/g;->c(Lam/b;II)I

    move-result v3

    packed-switch v2, :pswitch_data_9a

    iput-boolean v0, p0, Lax/bm;->r:Z

    iget v2, p0, Lax/bm;->w:I

    if-lez v2, :cond_28

    move v0, v1

    :cond_28
    iget v2, p0, Lax/bm;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lax/bm;->w:I

    iget-boolean v2, p0, Lax/bm;->m:Z

    if-eqz v2, :cond_3f

    if-nez v0, :cond_3f

    if-lez v3, :cond_3f

    iput-boolean v1, p0, Lax/bm;->x:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/j;)V

    :cond_3f
    if-nez v0, :cond_48

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_48
    :goto_48
    return v1

    :pswitch_49
    iget-object v2, p0, Lax/bm;->t:Lam/b;

    invoke-virtual {v2, v6}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    iput-object v2, p0, Lax/bm;->s:Lam/b;

    iget-object v2, p0, Lax/bm;->t:Lam/b;

    invoke-virtual {v2, v7}, Lam/b;->l(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lax/bm;->u:Ljava/util/List;

    :goto_5e
    if-ge v0, v2, :cond_7f

    iget-object v3, p0, Lax/bm;->t:Lam/b;

    invoke-virtual {v3, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lam/g;->h(Lam/b;I)Z

    move-result v4

    if-eqz v4, :cond_77

    const/16 v4, 0x6e

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lam/b;->b(ILjava/lang/String;)V

    :cond_77
    iget-object v4, p0, Lax/bm;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_7f
    iget-object v0, p0, Lax/bm;->t:Lam/b;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/V;

    move-result-object v0

    iget-object v2, p0, Lax/bm;->t:Lam/b;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->a(Lam/b;)V

    :cond_96
    iput-boolean v1, p0, Lax/bm;->r:Z

    goto :goto_48

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_49
    .end packed-switch
.end method

.method public b()V
    .registers 7

    invoke-super {p0}, Lat/b;->b()V

    iget-object v0, p0, Lax/bm;->q:Lax/bn;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lax/bm;->r:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lax/bm;->q:Lax/bn;

    iget-object v1, p0, Lax/bm;->s:Lam/b;

    iget-object v2, p0, Lax/bm;->u:Ljava/util/List;

    iget-object v3, p0, Lax/bm;->t:Lam/b;

    iget-wide v4, p0, Lax/bm;->f:J

    invoke-interface/range {v0 .. v5}, Lax/bn;->a(Lam/b;Ljava/util/List;Lam/b;J)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-boolean v0, p0, Lax/bm;->x:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lax/bm;->w:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    :cond_22
    iget-object v0, p0, Lax/bm;->q:Lax/bn;

    iget-wide v1, p0, Lax/bm;->f:J

    invoke-interface {v0, v1, v2}, Lax/bn;->a(J)V

    goto :goto_18
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j_()V
    .registers 4

    iget-object v0, p0, Lax/bm;->q:Lax/bn;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lax/bm;->q:Lax/bn;

    iget-wide v1, p0, Lax/bm;->f:J

    invoke-interface {v0, v1, v2}, Lax/bn;->a(J)V

    :cond_b
    return-void
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/bm;->l()Lax/bp;

    move-result-object v0

    return-object v0
.end method

.method public l()Lax/bp;
    .registers 4

    new-instance v0, Lax/bp;

    invoke-direct {v0}, Lax/bp;-><init>()V

    iget-boolean v1, p0, Lax/bm;->r:Z

    iput-boolean v1, v0, Lax/bp;->a:Z

    iget-object v1, p0, Lax/bm;->s:Lam/b;

    iput-object v1, v0, Lax/bp;->b:Lam/b;

    iget-object v1, p0, Lax/bm;->u:Ljava/util/List;

    iput-object v1, v0, Lax/bp;->c:Ljava/util/List;

    iget-object v1, p0, Lax/bm;->t:Lam/b;

    iput-object v1, v0, Lax/bp;->d:Lam/b;

    iget-wide v1, p0, Lax/bm;->f:J

    iput-wide v1, v0, Lax/bp;->e:J

    return-object v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, Lax/bm;->v:Z

    return v0
.end method

.method public o()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/login/g;->b(Lcom/google/googlenav/login/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lax/bm;->t:Lam/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/bm;->r:Z

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public p()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/login/g;->b(Lcom/google/googlenav/login/j;)V

    invoke-virtual {p0}, Lax/bm;->j_()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapToPlaceRequest[selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->a:I

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->b:I

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",span="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->c:I

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->d:I

    invoke-static {v1}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accuracyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gaiaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lax/bm;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxNumResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldReverseGeoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lax/bm;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isCheckinMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lax/bm;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldRequestHotpotStatistics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lax/bm;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shouldBePersonalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lax/bm;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lax/bm;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lax/bm;->p:Lam/b;

    invoke-static {v1}, Lax/bm;->a(Lam/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lax/bm;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
