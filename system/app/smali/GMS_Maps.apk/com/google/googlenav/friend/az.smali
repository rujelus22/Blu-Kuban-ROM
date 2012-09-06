.class public Lcom/google/googlenav/friend/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lat/B;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

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

.field private q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private r:Lcom/google/googlenav/friend/aA;

.field private s:Lcom/google/googlenav/android/Y;

.field private t:Lcom/google/googlenav/friend/as;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/high16 v0, -0x4080

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput v0, p0, Lcom/google/googlenav/friend/az;->k:F

    .line 292
    iput v0, p0, Lcom/google/googlenav/friend/az;->l:F

    .line 293
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/googlenav/friend/az;->m:D

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/friend/az;->n:I

    .line 295
    iput-object v2, p0, Lcom/google/googlenav/friend/az;->o:Ljava/lang/Boolean;

    .line 296
    iput-object v2, p0, Lcom/google/googlenav/friend/az;->p:Ljava/lang/Boolean;

    .line 304
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/az;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->a:Lat/B;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/az;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/friend/az;)I
    .registers 2
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlenav/friend/az;->d:I

    return v0
.end method

.method static synthetic d(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/friend/az;)Z
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/googlenav/friend/az;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/google/googlenav/friend/az;)J
    .registers 3
    .parameter

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/googlenav/friend/az;->g:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/googlenav/friend/az;)I
    .registers 2
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlenav/friend/az;->h:I

    return v0
.end method

.method static synthetic h(Lcom/google/googlenav/friend/az;)Z
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/googlenav/friend/az;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/friend/as;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->t:Lcom/google/googlenav/friend/as;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->s:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/friend/aA;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->r:Lcom/google/googlenav/friend/aA;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/friend/az;)Z
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/googlenav/friend/az;->i:Z

    return v0
.end method

.method static synthetic m(Lcom/google/googlenav/friend/az;)J
    .registers 3
    .parameter

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/googlenav/friend/az;->j:J

    return-wide v0
.end method

.method static synthetic n(Lcom/google/googlenav/friend/az;)I
    .registers 2
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlenav/friend/az;->n:I

    return v0
.end method

.method static synthetic o(Lcom/google/googlenav/friend/az;)F
    .registers 2
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlenav/friend/az;->k:F

    return v0
.end method

.method static synthetic p(Lcom/google/googlenav/friend/az;)F
    .registers 2
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/googlenav/friend/az;->l:F

    return v0
.end method

.method static synthetic q(Lcom/google/googlenav/friend/az;)D
    .registers 3
    .parameter

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/googlenav/friend/az;->m:D

    return-wide v0
.end method

.method static synthetic r(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->q:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method static synthetic s(Lcom/google/googlenav/friend/az;)Ljava/lang/Boolean;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic t(Lcom/google/googlenav/friend/az;)Ljava/lang/Boolean;
    .registers 2
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/az;->p:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/ay;
    .registers 2

    .prologue
    .line 307
    new-instance v0, Lcom/google/googlenav/friend/ay;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/ay;-><init>(Lcom/google/googlenav/friend/az;)V

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 326
    iput p1, p0, Lcom/google/googlenav/friend/az;->d:I

    .line 327
    return-object p0
.end method

.method public a(J)Lcom/google/googlenav/friend/az;
    .registers 3
    .parameter

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/google/googlenav/friend/az;->g:J

    .line 342
    return-object p0
.end method

.method public a(Lat/B;)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/googlenav/friend/az;->a:Lat/B;

    .line 312
    return-object p0
.end method

.method public a(Lcom/google/googlenav/android/Y;)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/googlenav/friend/az;->s:Lcom/google/googlenav/android/Y;

    .line 392
    return-object p0
.end method

.method public a(Lcom/google/googlenav/friend/aA;)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/googlenav/friend/az;->r:Lcom/google/googlenav/friend/aA;

    .line 387
    return-object p0
.end method

.method public a(Lcom/google/googlenav/friend/as;)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/googlenav/friend/az;->t:Lcom/google/googlenav/friend/as;

    .line 397
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/googlenav/friend/az;->c:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/google/googlenav/friend/az;->e:Z

    .line 332
    return-object p0
.end method

.method public b(I)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 346
    iput p1, p0, Lcom/google/googlenav/friend/az;->h:I

    .line 347
    return-object p0
.end method

.method public b(J)Lcom/google/googlenav/friend/az;
    .registers 3
    .parameter

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/google/googlenav/friend/az;->j:J

    .line 357
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/google/googlenav/friend/az;->f:Z

    .line 337
    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 376
    iput p1, p0, Lcom/google/googlenav/friend/az;->n:I

    .line 377
    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/friend/az;
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/google/googlenav/friend/az;->i:Z

    .line 352
    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/friend/az;
    .registers 3
    .parameter

    .prologue
    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/az;->o:Ljava/lang/Boolean;

    .line 402
    return-object p0
.end method
