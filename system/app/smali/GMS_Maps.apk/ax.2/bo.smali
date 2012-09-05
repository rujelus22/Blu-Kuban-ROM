.class public Lax/bo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lam/b;

.field private q:Lax/bn;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lax/bo;->c:I

    iput v2, p0, Lax/bo;->d:I

    const v0, 0x1869f

    iput v0, p0, Lax/bo;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lax/bo;->f:J

    const/16 v0, 0xa

    iput v0, p0, Lax/bo;->g:I

    iput-boolean v2, p0, Lax/bo;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lax/bo;->n:I

    return-void
.end method

.method static synthetic a(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->a:I

    return v0
.end method

.method static synthetic b(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->b:I

    return v0
.end method

.method static synthetic c(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->c:I

    return v0
.end method

.method static synthetic d(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->d:I

    return v0
.end method

.method static synthetic e(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->e:I

    return v0
.end method

.method static synthetic f(Lax/bo;)Lax/bn;
    .registers 2

    iget-object v0, p0, Lax/bo;->q:Lax/bn;

    return-object v0
.end method

.method static synthetic g(Lax/bo;)J
    .registers 3

    iget-wide v0, p0, Lax/bo;->f:J

    return-wide v0
.end method

.method static synthetic h(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->g:I

    return v0
.end method

.method static synthetic i(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->h:Z

    return v0
.end method

.method static synthetic j(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->i:Z

    return v0
.end method

.method static synthetic k(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->j:Z

    return v0
.end method

.method static synthetic l(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->k:Z

    return v0
.end method

.method static synthetic m(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->l:Z

    return v0
.end method

.method static synthetic n(Lax/bo;)Z
    .registers 2

    iget-boolean v0, p0, Lax/bo;->m:Z

    return v0
.end method

.method static synthetic o(Lax/bo;)I
    .registers 2

    iget v0, p0, Lax/bo;->n:I

    return v0
.end method

.method static synthetic p(Lax/bo;)Lam/b;
    .registers 2

    iget-object v0, p0, Lax/bo;->p:Lam/b;

    return-object v0
.end method

.method static synthetic q(Lax/bo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lax/bo;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lax/bm;
    .registers 2

    new-instance v0, Lax/bm;

    invoke-direct {v0, p0}, Lax/bm;-><init>(Lax/bo;)V

    return-object v0
.end method

.method public a(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->a:I

    return-object p0
.end method

.method public a(Lam/b;)Lax/bo;
    .registers 2

    iput-object p1, p0, Lax/bo;->p:Lam/b;

    return-object p0
.end method

.method public a(Lax/bn;)Lax/bo;
    .registers 2

    iput-object p1, p0, Lax/bo;->q:Lax/bn;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lax/bo;
    .registers 2

    iput-object p1, p0, Lax/bo;->o:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lax/bo;
    .registers 2

    iput-boolean p1, p0, Lax/bo;->h:Z

    return-object p0
.end method

.method public b(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->b:I

    return-object p0
.end method

.method public b(Z)Lax/bo;
    .registers 2

    iput-boolean p1, p0, Lax/bo;->i:Z

    return-object p0
.end method

.method public c(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->c:I

    return-object p0
.end method

.method public c(Z)Lax/bo;
    .registers 2

    iput-boolean p1, p0, Lax/bo;->k:Z

    return-object p0
.end method

.method public d(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->d:I

    return-object p0
.end method

.method public d(Z)Lax/bo;
    .registers 2

    iput-boolean p1, p0, Lax/bo;->l:Z

    return-object p0
.end method

.method public e(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->e:I

    return-object p0
.end method

.method public e(Z)Lax/bo;
    .registers 2

    iput-boolean p1, p0, Lax/bo;->m:Z

    return-object p0
.end method

.method public f(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->g:I

    return-object p0
.end method

.method public g(I)Lax/bo;
    .registers 2

    iput p1, p0, Lax/bo;->n:I

    return-object p0
.end method
