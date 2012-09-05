.class public Lcom/google/googlenav/bc;
.super Ljava/lang/Object;


# instance fields
.field private A:Lam/b;

.field private B:Ljava/util/Set;

.field private C:I

.field private D:LaQ/I;

.field private E:Z

.field private F:LaJ/H;

.field private G:Z

.field private H:Z

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:LaJ/H;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/googlenav/aW;

.field private i:Lcom/google/googlenav/aX;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:LaJ/M;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:LaJ/B;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:[Lam/b;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    iput v4, p0, Lcom/google/googlenav/bc;->b:I

    iput v1, p0, Lcom/google/googlenav/bc;->c:I

    iput v3, p0, Lcom/google/googlenav/bc;->d:I

    iput v3, p0, Lcom/google/googlenav/bc;->e:I

    iput-object v2, p0, Lcom/google/googlenav/bc;->f:LaJ/H;

    const-string v0, "100"

    iput-object v0, p0, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aW;

    iput-object v2, p0, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aX;

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/googlenav/bc;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/bc;->l:LaJ/M;

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->n:Z

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->o:Z

    iput-object v2, p0, Lcom/google/googlenav/bc;->p:LaJ/B;

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->q:Z

    iput v1, p0, Lcom/google/googlenav/bc;->r:I

    iput v4, p0, Lcom/google/googlenav/bc;->s:I

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->t:Z

    iput-object v2, p0, Lcom/google/googlenav/bc;->u:[Lam/b;

    iput-object v2, p0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->x:Z

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->y:Z

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->z:Z

    iput-object v2, p0, Lcom/google/googlenav/bc;->A:Lam/b;

    iput-object v2, p0, Lcom/google/googlenav/bc;->B:Ljava/util/Set;

    iput v1, p0, Lcom/google/googlenav/bc;->C:I

    iput-object v2, p0, Lcom/google/googlenav/bc;->D:LaQ/I;

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->E:Z

    iput-object v2, p0, Lcom/google/googlenav/bc;->F:LaJ/H;

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->G:Z

    iput-boolean v1, p0, Lcom/google/googlenav/bc;->H:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/googlenav/bb;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    iget v0, p1, Lcom/google/googlenav/bb;->b:I

    iput v0, p0, Lcom/google/googlenav/bc;->b:I

    iget v0, p1, Lcom/google/googlenav/bb;->c:I

    iput v0, p0, Lcom/google/googlenav/bc;->c:I

    iget v0, p1, Lcom/google/googlenav/bb;->d:I

    iput v0, p0, Lcom/google/googlenav/bc;->d:I

    iget v0, p1, Lcom/google/googlenav/bb;->e:I

    iput v0, p0, Lcom/google/googlenav/bc;->e:I

    iget-object v0, p1, Lcom/google/googlenav/bb;->f:LaJ/H;

    iput-object v0, p0, Lcom/google/googlenav/bc;->f:LaJ/H;

    iget-object v0, p1, Lcom/google/googlenav/bb;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bb;->h:Lcom/google/googlenav/aW;

    iput-object v0, p0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aW;

    iget-object v0, p1, Lcom/google/googlenav/bb;->i:Lcom/google/googlenav/aX;

    iput-object v0, p0, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aX;

    iget v0, p1, Lcom/google/googlenav/bb;->j:I

    iput v0, p0, Lcom/google/googlenav/bc;->j:I

    iget-object v0, p1, Lcom/google/googlenav/bb;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bb;->l:LaJ/M;

    iput-object v0, p0, Lcom/google/googlenav/bc;->l:LaJ/M;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->m:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->n:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->o:Z

    iget-object v0, p1, Lcom/google/googlenav/bb;->p:LaJ/B;

    iput-object v0, p0, Lcom/google/googlenav/bc;->p:LaJ/B;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->q:Z

    iget v0, p1, Lcom/google/googlenav/bb;->r:I

    iput v0, p0, Lcom/google/googlenav/bc;->r:I

    iget v0, p1, Lcom/google/googlenav/bb;->s:I

    iput v0, p0, Lcom/google/googlenav/bc;->s:I

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->t:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->t:Z

    iget-object v0, p1, Lcom/google/googlenav/bb;->u:[Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/bc;->u:[Lam/b;

    iget-object v0, p1, Lcom/google/googlenav/bb;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/googlenav/bb;->w:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->z:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->x:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->y:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->y:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->A:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->z:Z

    iget-object v0, p1, Lcom/google/googlenav/bb;->B:Lam/b;

    iput-object v0, p0, Lcom/google/googlenav/bc;->A:Lam/b;

    iget-object v0, p1, Lcom/google/googlenav/bb;->x:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/googlenav/bc;->B:Ljava/util/Set;

    iget v0, p1, Lcom/google/googlenav/bb;->C:I

    iput v0, p0, Lcom/google/googlenav/bc;->C:I

    iget-object v0, p1, Lcom/google/googlenav/bb;->D:LaQ/I;

    iput-object v0, p0, Lcom/google/googlenav/bc;->D:LaQ/I;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->E:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->E:Z

    iget-object v0, p1, Lcom/google/googlenav/bb;->F:LaJ/H;

    iput-object v0, p0, Lcom/google/googlenav/bc;->F:LaJ/H;

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->G:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->G:Z

    iget-boolean v0, p1, Lcom/google/googlenav/bb;->H:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->H:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/bb;
    .registers 37

    new-instance v1, Lcom/google/googlenav/bb;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/bc;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/bc;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/googlenav/bc;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/googlenav/bc;->e:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/bc;->f:LaJ/H;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aW;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aX;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/googlenav/bc;->j:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/bc;->l:LaJ/M;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/googlenav/bc;->m:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/googlenav/bc;->n:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->o:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->p:LaJ/B;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->q:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bc;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bc;->s:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->t:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->u:[Lam/b;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->x:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->y:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->z:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->A:Lam/b;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->B:Ljava/util/Set;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bc;->C:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->D:LaQ/I;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->E:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bc;->F:LaJ/H;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->G:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->H:Z

    move/from16 v35, v0

    invoke-direct/range {v1 .. v35}, Lcom/google/googlenav/bb;-><init>(Ljava/lang/String;IIIILaJ/H;Ljava/lang/String;Lcom/google/googlenav/aW;Lcom/google/googlenav/aX;ILjava/lang/String;LaJ/M;ZZZLaJ/B;ZIIZ[Lam/b;Ljava/lang/String;Ljava/util/Map;ZZZLam/b;Ljava/util/Set;ILaQ/I;ZLaJ/H;ZZ)V

    return-object v1
.end method

.method public a(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->b:I

    return-object p0
.end method

.method public a(LaJ/B;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->p:LaJ/B;

    return-object p0
.end method

.method public a(LaJ/H;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->f:LaJ/H;

    return-object p0
.end method

.method public a(LaJ/M;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->l:LaJ/M;

    return-object p0
.end method

.method public a(LaQ/I;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->D:LaQ/I;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/aW;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aW;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aX;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->B:Ljava/util/Set;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->m:Z

    return-object p0
.end method

.method public a([Lam/b;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->u:[Lam/b;

    return-object p0
.end method

.method public b(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->c:I

    return-object p0
.end method

.method public b(LaJ/H;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->F:LaJ/H;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->n:Z

    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->d:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->o:Z

    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->e:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->q:Z

    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->j:I

    return-object p0
.end method

.method public e(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->t:Z

    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->s:I

    return-object p0
.end method

.method public f(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->y:Z

    return-object p0
.end method

.method public g(I)Lcom/google/googlenav/bc;
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bc;->C:I

    return-object p0
.end method

.method public g(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->x:Z

    return-object p0
.end method

.method public h(Z)Lcom/google/googlenav/bc;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->z:Z

    return-object p0
.end method

.method public i(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->G:Z

    return-object p0
.end method

.method public j(Z)Lcom/google/googlenav/bc;
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/bc;->H:Z

    return-object p0
.end method
