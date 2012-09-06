.class public Lcom/google/googlenav/ui/wizard/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/googlenav/ui/wizard/ac;

.field private final c:Lcom/google/googlenav/ui/wizard/aB;

.field private final d:Lcom/google/googlenav/ui/wizard/ad;

.field private e:Lcom/google/googlenav/ui/wizard/ag;

.field private final f:Lcom/google/googlenav/ui/wizard/aE;

.field private g:Z

.field private h:Lcom/google/googlenav/ui/wizard/am;

.field private i:Lcom/google/googlenav/h;

.field private j:Ljava/util/List;

.field private k:Z

.field private final l:Lcom/google/googlenav/ui/wizard/ju;

.field private m:Lcom/google/googlenav/aU;

.field private final n:Lcom/google/googlenav/ui/ap;

.field private final o:Lam/i;

.field private p:Lcom/google/googlenav/ui/wizard/aK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/ui/wizard/S;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/ap;LaM/a;ZLcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/ac;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    .line 141
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    .line 146
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->j:Ljava/util/List;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/S;->k:Z

    .line 193
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    .line 194
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/S;->n:Lcom/google/googlenav/ui/ap;

    .line 195
    iput-boolean p4, p0, Lcom/google/googlenav/ui/wizard/S;->g:Z

    .line 196
    iput-object p6, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/ac;

    .line 197
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/S;->f:Lcom/google/googlenav/ui/wizard/aE;

    .line 199
    new-instance v0, Lam/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->H()Lah/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/i;-><init>(Lah/s;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->o:Lam/i;

    .line 203
    new-instance v0, Lcom/google/googlenav/ui/wizard/U;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/U;-><init>(Lcom/google/googlenav/ui/wizard/S;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->c:Lcom/google/googlenav/ui/wizard/aB;

    .line 207
    new-instance v0, Lcom/google/googlenav/ui/wizard/ad;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/ad;-><init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->d:Lcom/google/googlenav/ui/wizard/ad;

    .line 211
    new-instance v0, Lcom/google/googlenav/ui/wizard/ag;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->I()Lcom/google/googlenav/friend/j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Lcom/google/googlenav/ui/wizard/ag;-><init>(Lcom/google/googlenav/friend/j;LaM/a;Lcom/google/googlenav/android/Y;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->d:Lcom/google/googlenav/ui/wizard/ad;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->d:Lcom/google/googlenav/ui/wizard/ad;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/ui/wizard/ak;Lcom/google/googlenav/ui/wizard/L;)V

    .line 215
    invoke-virtual {p2}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    .line 217
    new-instance v2, Lcom/google/googlenav/ui/wizard/aK;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/aK;-><init>(Lan/h;Lcom/google/googlenav/android/Y;)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->p:Lcom/google/googlenav/ui/wizard/aK;

    .line 219
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/S;)Lam/i;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->o:Lam/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/aU;)Lcom/google/googlenav/aU;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->m:Lcom/google/googlenav/aU;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 391
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 392
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 395
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->l()I

    .line 398
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->h(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/T;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/T;-><init>(Lcom/google/googlenav/ui/wizard/S;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 440
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/S;Ljava/util/List;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/S;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->l:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/h;)Z
    .registers 3
    .parameter

    .prologue
    .line 361
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/h;->f()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/h;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(Ljava/util/List;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    .line 446
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/googlenav/friend/aF;->j()Lcom/google/googlenav/friend/aF;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/aF;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/am;->b(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->p:Lcom/google/googlenav/ui/wizard/aK;

    new-instance v1, Lcom/google/googlenav/ui/wizard/af;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/af;-><init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aK;->a(Lan/y;)V

    .line 276
    return-void
.end method

.method private d()Lan/s;
    .registers 6

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->n:Lcom/google/googlenav/ui/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v0

    invoke-interface {v0}, Lan/h;->b()Lan/s;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lan/s;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2f

    .line 306
    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/aE;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->f:Lcom/google/googlenav/ui/wizard/aE;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/S;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->j:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/am;->y()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/S;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ag;->a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(I)V

    .line 354
    return-void
.end method

.method private f()V
    .registers 6

    .prologue
    const/16 v1, 0xb0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 368
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/S;->g:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 369
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    invoke-virtual {v3}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/ac;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->a()V

    .line 383
    return-void

    .line 377
    :cond_35
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    invoke-virtual {v2}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2f
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/S;->e()V

    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->b:Lcom/google/googlenav/ui/wizard/ac;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/h;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic j(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/aU;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->m:Lcom/google/googlenav/aU;

    return-object v0
.end method

.method static synthetic k(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/ap;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->n:Lcom/google/googlenav/ui/ap;

    return-object v0
.end method

.method static synthetic l(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/S;->f()V

    return-void
.end method

.method static synthetic m(Lcom/google/googlenav/ui/wizard/S;)Lan/s;
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/S;->d()Lan/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/aB;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->c:Lcom/google/googlenav/ui/wizard/aB;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 243
    if-nez p1, :cond_f

    .line 244
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ag;->a()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/S;->k:Z

    .line 246
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/S;->c()V

    .line 252
    :goto_e
    return-void

    .line 248
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ag;->a()V

    goto :goto_e
.end method

.method a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 322
    sget-boolean v0, Lcom/google/googlenav/ui/wizard/S;->a:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/h;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_10
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->i:Lcom/google/googlenav/h;

    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 325
    if-eqz p2, :cond_1f

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->n()V

    .line 330
    :goto_1e
    return-void

    .line 328
    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    const/16 v1, 0x607

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->a(I)V

    goto :goto_1e
.end method

.method public a(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    .line 228
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/S;->d()Lan/s;

    move-result-object v0

    .line 284
    if-nez v0, :cond_e

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->b(I)V

    .line 292
    :goto_d
    return-void

    .line 287
    :cond_e
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/wizard/am;->b(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ag;->a(II)V

    .line 290
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->e:Lcom/google/googlenav/ui/wizard/ag;

    invoke-virtual {v1, v0, p1}, Lcom/google/googlenav/ui/wizard/ag;->a(Lan/s;Ljava/lang/String;)V

    goto :goto_d
.end method

.method a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/S;->j:Ljava/util/List;

    .line 342
    if-eqz p1, :cond_9

    .line 343
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/am;->b(Ljava/util/List;)V

    .line 345
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/am;->m()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/am;->o()Z

    move-result v1

    if-nez v1, :cond_12

    .line 269
    :cond_11
    :goto_11
    return v0

    .line 264
    :cond_12
    iget-boolean v1, p0, Lcom/google/googlenav/ui/wizard/S;->k:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/am;->o()Z

    move-result v1

    if-nez v1, :cond_11

    .line 265
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->i()V

    .line 266
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/S;->h:Lcom/google/googlenav/ui/wizard/am;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/am;->n()V

    .line 267
    const/4 v0, 0x1

    goto :goto_11
.end method
