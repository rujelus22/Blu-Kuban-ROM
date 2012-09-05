.class public Lax/aG;
.super Ljava/lang/Object;


# instance fields
.field private a:LaJ/B;

.field private b:Lam/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:J

.field private h:I

.field private i:Z

.field private j:J

.field private k:F

.field private l:F

.field private m:D

.field private n:I

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Lam/b;

.field private r:Lax/aH;

.field private s:Lcom/google/googlenav/android/ac;

.field private t:Lax/aE;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/high16 v0, -0x4080

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lax/aG;->k:F

    iput v0, p0, Lax/aG;->l:F

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lax/aG;->m:D

    const/4 v0, -0x1

    iput v0, p0, Lax/aG;->n:I

    iput-object v2, p0, Lax/aG;->o:Ljava/lang/Boolean;

    iput-object v2, p0, Lax/aG;->p:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lax/aG;)LaJ/B;
    .registers 2

    iget-object v0, p0, Lax/aG;->a:LaJ/B;

    return-object v0
.end method

.method static synthetic b(Lax/aG;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lax/aG;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lax/aG;)I
    .registers 2

    iget v0, p0, Lax/aG;->d:I

    return v0
.end method

.method static synthetic d(Lax/aG;)Lam/b;
    .registers 2

    iget-object v0, p0, Lax/aG;->b:Lam/b;

    return-object v0
.end method

.method static synthetic e(Lax/aG;)Z
    .registers 2

    iget-boolean v0, p0, Lax/aG;->e:Z

    return v0
.end method

.method static synthetic f(Lax/aG;)J
    .registers 3

    iget-wide v0, p0, Lax/aG;->g:J

    return-wide v0
.end method

.method static synthetic g(Lax/aG;)I
    .registers 2

    iget v0, p0, Lax/aG;->h:I

    return v0
.end method

.method static synthetic h(Lax/aG;)Z
    .registers 2

    iget-boolean v0, p0, Lax/aG;->f:Z

    return v0
.end method

.method static synthetic i(Lax/aG;)Lax/aE;
    .registers 2

    iget-object v0, p0, Lax/aG;->t:Lax/aE;

    return-object v0
.end method

.method static synthetic j(Lax/aG;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lax/aG;->s:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic k(Lax/aG;)Lax/aH;
    .registers 2

    iget-object v0, p0, Lax/aG;->r:Lax/aH;

    return-object v0
.end method

.method static synthetic l(Lax/aG;)Z
    .registers 2

    iget-boolean v0, p0, Lax/aG;->i:Z

    return v0
.end method

.method static synthetic m(Lax/aG;)J
    .registers 3

    iget-wide v0, p0, Lax/aG;->j:J

    return-wide v0
.end method

.method static synthetic n(Lax/aG;)I
    .registers 2

    iget v0, p0, Lax/aG;->n:I

    return v0
.end method

.method static synthetic o(Lax/aG;)F
    .registers 2

    iget v0, p0, Lax/aG;->k:F

    return v0
.end method

.method static synthetic p(Lax/aG;)F
    .registers 2

    iget v0, p0, Lax/aG;->l:F

    return v0
.end method

.method static synthetic q(Lax/aG;)D
    .registers 3

    iget-wide v0, p0, Lax/aG;->m:D

    return-wide v0
.end method

.method static synthetic r(Lax/aG;)Lam/b;
    .registers 2

    iget-object v0, p0, Lax/aG;->q:Lam/b;

    return-object v0
.end method

.method static synthetic s(Lax/aG;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lax/aG;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic t(Lax/aG;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lax/aG;->p:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lax/aF;
    .registers 2

    new-instance v0, Lax/aF;

    invoke-direct {v0, p0}, Lax/aF;-><init>(Lax/aG;)V

    return-object v0
.end method

.method public a(I)Lax/aG;
    .registers 2

    iput p1, p0, Lax/aG;->d:I

    return-object p0
.end method

.method public a(J)Lax/aG;
    .registers 3

    iput-wide p1, p0, Lax/aG;->g:J

    return-object p0
.end method

.method public a(LaJ/B;)Lax/aG;
    .registers 2

    iput-object p1, p0, Lax/aG;->a:LaJ/B;

    return-object p0
.end method

.method public a(Lax/aE;)Lax/aG;
    .registers 2

    iput-object p1, p0, Lax/aG;->t:Lax/aE;

    return-object p0
.end method

.method public a(Lax/aH;)Lax/aG;
    .registers 2

    iput-object p1, p0, Lax/aG;->r:Lax/aH;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/android/ac;)Lax/aG;
    .registers 2

    iput-object p1, p0, Lax/aG;->s:Lcom/google/googlenav/android/ac;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lax/aG;
    .registers 2

    iput-object p1, p0, Lax/aG;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lax/aG;
    .registers 2

    iput-boolean p1, p0, Lax/aG;->e:Z

    return-object p0
.end method

.method public b(I)Lax/aG;
    .registers 2

    iput p1, p0, Lax/aG;->h:I

    return-object p0
.end method

.method public b(J)Lax/aG;
    .registers 3

    iput-wide p1, p0, Lax/aG;->j:J

    return-object p0
.end method

.method public b(Z)Lax/aG;
    .registers 2

    iput-boolean p1, p0, Lax/aG;->f:Z

    return-object p0
.end method

.method public c(I)Lax/aG;
    .registers 2

    iput p1, p0, Lax/aG;->n:I

    return-object p0
.end method

.method public c(Z)Lax/aG;
    .registers 2

    iput-boolean p1, p0, Lax/aG;->i:Z

    return-object p0
.end method

.method public d(Z)Lax/aG;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/aG;->o:Ljava/lang/Boolean;

    return-object p0
.end method
