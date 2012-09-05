.class public Lcom/google/googlenav/ui/bm;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/google/googlenav/ui/bh;

.field private E:Lcom/google/googlenav/ui/bh;

.field private F:Lbb/c;

.field private G:Lbb/F;

.field private H:I

.field private I:Lbd/k;

.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field public d:LaJ/B;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:[Lcom/google/googlenav/ui/bl;

.field public i:Lcom/google/googlenav/ui/o;

.field public j:Lcom/google/googlenav/ui/b;

.field public k:Z

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:I

.field private o:I

.field private p:Lcom/google/googlenav/ui/bn;

.field private q:Lcom/google/googlenav/ui/bn;

.field private r:Lcom/google/googlenav/ui/bn;

.field private s:Lcom/google/googlenav/ui/bn;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->m:Ljava/util/List;

    iput v3, p0, Lcom/google/googlenav/ui/bm;->n:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->o:I

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->p:Lcom/google/googlenav/ui/bn;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->q:Lcom/google/googlenav/ui/bn;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->r:Lcom/google/googlenav/ui/bn;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->s:Lcom/google/googlenav/ui/bn;

    iput v2, p0, Lcom/google/googlenav/ui/bm;->t:I

    iput v2, p0, Lcom/google/googlenav/ui/bm;->u:I

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->v:Ljava/lang/String;

    iput v2, p0, Lcom/google/googlenav/ui/bm;->w:I

    iput-boolean v4, p0, Lcom/google/googlenav/ui/bm;->C:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->D:Lcom/google/googlenav/ui/bh;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->E:Lcom/google/googlenav/ui/bh;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->a:Ljava/lang/Object;

    iput v4, p0, Lcom/google/googlenav/ui/bm;->H:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->x:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->z:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->y:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->A:I

    iput v3, p0, Lcom/google/googlenav/ui/bm;->B:I

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bm;->b:Z

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bm;->c:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->d:LaJ/B;

    iput v2, p0, Lcom/google/googlenav/ui/bm;->e:I

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->g:Ljava/lang/Object;

    new-array v0, v2, [Lcom/google/googlenav/ui/bl;

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->h:[Lcom/google/googlenav/ui/bl;

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->j:Lcom/google/googlenav/ui/b;

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bm;->k:Z

    iput-object v1, p0, Lcom/google/googlenav/ui/bm;->I:Lbd/k;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/bl;
    .registers 38

    new-instance v1, Lcom/google/googlenav/ui/bl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/googlenav/ui/bm;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/ui/bm;->n:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/googlenav/ui/bm;->o:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/googlenav/ui/bm;->p:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/ui/bm;->q:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/ui/bm;->r:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/ui/bm;->s:Lcom/google/googlenav/ui/bn;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/googlenav/ui/bm;->t:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/googlenav/ui/bm;->u:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/ui/bm;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/googlenav/ui/bm;->H:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/googlenav/ui/bm;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/googlenav/ui/bm;->z:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/bm;->y:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/bm;->A:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/bm;->B:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/bm;->w:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bm;->C:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->D:Lcom/google/googlenav/ui/bh;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->E:Lcom/google/googlenav/ui/bh;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->F:Lbb/c;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->G:Lbb/F;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bm;->b:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bm;->c:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->d:LaJ/B;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/ui/bm;->e:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->f:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->g:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->h:[Lcom/google/googlenav/ui/bl;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->i:Lcom/google/googlenav/ui/o;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->j:Lcom/google/googlenav/ui/b;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bm;->k:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/bm;->I:Lbd/k;

    move-object/from16 v36, v0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bl;-><init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;Lcom/google/googlenav/ui/bn;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lbb/c;Lbb/F;Ljava/lang/Object;ZZLaJ/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/o;Lcom/google/googlenav/ui/b;ZLbd/k;)V

    return-object v1
.end method

.method public a(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->n:I

    return-object p0
.end method

.method public a(LaJ/B;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->d:LaJ/B;

    return-object p0
.end method

.method public a(Lah/f;)Lcom/google/googlenav/ui/bm;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Lah/f;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->p:Lcom/google/googlenav/ui/bn;

    return-object p0
.end method

.method public a(Lbb/c;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->F:Lbb/c;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/b;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->j:Lcom/google/googlenav/ui/b;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;
    .registers 4

    if-nez p1, :cond_9

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    :goto_8
    return-object p0

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/bh;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->p:Lcom/google/googlenav/ui/bn;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->v:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/ui/bm;
    .registers 3

    if-nez p1, :cond_9

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    :goto_8
    return-object p0

    :cond_9
    invoke-static {p1}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    goto :goto_8
.end method

.method public a(Ljava/util/Vector;)Lcom/google/googlenav/ui/bm;
    .registers 3

    if-nez p1, :cond_8

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ui/bl;

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->h:[Lcom/google/googlenav/ui/bl;

    :goto_7
    return-object p0

    :cond_8
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/ui/bl;

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->h:[Lcom/google/googlenav/ui/bl;

    iget-object v0, p0, Lcom/google/googlenav/ui/bm;->h:[Lcom/google/googlenav/ui/bl;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public a(Z)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bm;->C:Z

    return-object p0
.end method

.method public a([Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;
    .registers 3

    if-nez p1, :cond_9

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    :goto_8
    return-object p0

    :cond_9
    invoke-static {p1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->l:Ljava/util/List;

    goto :goto_8
.end method

.method public b(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->o:I

    return-object p0
.end method

.method public b(Lah/f;)Lcom/google/googlenav/ui/bm;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bn;->a(Lah/f;)Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->r:Lcom/google/googlenav/ui/bn;

    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->D:Lcom/google/googlenav/ui/bh;

    return-object p0
.end method

.method public b(Lcom/google/googlenav/ui/bn;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->r:Lcom/google/googlenav/ui/bn;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/google/googlenav/ui/bm;
    .registers 3

    if-nez p1, :cond_9

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->m:Ljava/util/List;

    :goto_8
    return-object p0

    :cond_9
    invoke-static {p1}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bm;->m:Ljava/util/List;

    goto :goto_8
.end method

.method public b(Z)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bm;->c:Z

    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->t:I

    return-object p0
.end method

.method public c(Lcom/google/googlenav/ui/bh;)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bm;->E:Lcom/google/googlenav/ui/bh;

    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bm;->b:Z

    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/ui/bm;
    .registers 4

    if-ltz p1, :cond_6

    const/16 v0, 0x3f

    if-le p1, v0, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized newLayout value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput p1, p0, Lcom/google/googlenav/ui/bm;->u:I

    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/bm;->k:Z

    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->w:I

    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->x:I

    return-object p0
.end method

.method public g(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->z:I

    return-object p0
.end method

.method public h(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->y:I

    return-object p0
.end method

.method public i(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->B:I

    return-object p0
.end method

.method public j(I)Lcom/google/googlenav/ui/bm;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/bm;->H:I

    return-object p0
.end method
