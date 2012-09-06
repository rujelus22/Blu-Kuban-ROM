.class public Lcom/google/googlenav/offers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;

.field private final b:Lat/u;

.field private final c:Lcom/google/googlenav/ui/wizard/ju;

.field private final d:LaM/am;

.field private e:Lat/B;

.field private f:Lcom/google/googlenav/aW;

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:J

.field private final j:LY/d;

.field private final k:LY/d;

.field private final l:Lat/v;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/u;Lcom/google/googlenav/ui/wizard/ju;LaM/am;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/offers/a;->g:Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/offers/a;->h:I

    .line 85
    new-instance v0, Lcom/google/googlenav/offers/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/offers/b;-><init>(Lcom/google/googlenav/offers/a;)V

    iput-object v0, p0, Lcom/google/googlenav/offers/a;->l:Lat/v;

    .line 101
    iput-object p1, p0, Lcom/google/googlenav/offers/a;->a:Lcom/google/googlenav/ui/v;

    .line 102
    iput-object p2, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->l:Lat/v;

    invoke-virtual {p2, v0}, Lat/u;->a(Lat/v;)V

    .line 104
    iput-object p3, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 105
    iput-object p4, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    .line 106
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->e()J

    move-result-wide v0

    .line 108
    mul-long/2addr v0, v0

    iput-wide v0, p0, Lcom/google/googlenav/offers/a;->i:J

    .line 111
    invoke-virtual {p3}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->C()Lcom/google/googlenav/ui/wizard/fh;

    .line 116
    new-instance v0, Lcom/google/googlenav/offers/c;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/offers/c;-><init>(Lcom/google/googlenav/offers/a;LY/c;)V

    iput-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    .line 147
    new-instance v0, Lcom/google/googlenav/offers/d;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/offers/d;-><init>(Lcom/google/googlenav/offers/a;LY/c;)V

    iput-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/offers/a;Lat/B;)Lat/B;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/offers/a;->e:Lat/B;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/offers/a;)Lat/u;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/offers/a;Lcom/google/googlenav/aW;)Lcom/google/googlenav/aW;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    return-object p1
.end method

.method private a(Lat/B;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/googlenav/offers/a;->e:Lat/B;

    .line 284
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 289
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/offers/a;->a(ZLjava/lang/String;)V

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/offers/a;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/googlenav/offers/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/offers/a;Lat/B;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/offers/a;->a(Lat/B;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/offers/a;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->e:Lat/B;

    return-object v0
.end method

.method private declared-synchronized b(I)V
    .registers 6
    .parameter

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    if-eqz v0, :cond_27

    .line 295
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 296
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->b()I

    move-result v0

    .line 298
    if-lez v0, :cond_1a

    .line 299
    iget-object v1, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, LY/d;->c(J)V

    .line 301
    :cond_1a
    if-lez p1, :cond_22

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 304
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    invoke-virtual {v0}, LY/d;->g()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 306
    :cond_27
    monitor-exit p0

    return-void

    .line 294
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/googlenav/offers/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    sget v1, Lag/c;->a:I

    if-le p0, v1, :cond_e

    .line 534
    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    .line 535
    const/16 v0, 0x329

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_e
    :goto_e
    return-object v0

    .line 537
    :cond_f
    const/16 v0, 0x328

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic d(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/aW;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/offers/a;)J
    .registers 3
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/googlenav/offers/a;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/googlenav/offers/a;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private declared-synchronized f()V
    .registers 5

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    if-eqz v0, :cond_2a

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    invoke-virtual {v0}, LY/d;->k()J

    move-result-wide v0

    .line 200
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2c

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 203
    :goto_1f
    iget-object v1, p0, Lcom/google/googlenav/offers/a;->k:LY/d;

    invoke-virtual {v1}, LY/d;->c()I

    .line 206
    const-string v1, "OFFER_CONTENT_HINT_FIRST_REFRESH_PERIOD_PREFERENCE"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_35

    .line 209
    :cond_2a
    monitor-exit p0

    return-void

    .line 200
    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->b()I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    move-result v0

    goto :goto_1f

    .line 194
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->C()Lcom/google/googlenav/ui/wizard/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fh;->e()I

    move-result v0

    .line 396
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->g()V

    .line 399
    :cond_16
    return-void
.end method

.method static synthetic g(Lcom/google/googlenav/offers/a;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/offers/a;->g()V

    return-void
.end method


# virtual methods
.method protected a(Z)Lcom/google/googlenav/aW;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x5

    .line 403
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 404
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aZ;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    invoke-virtual {v2}, Lat/u;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->c(I)Lcom/google/googlenav/bd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    invoke-virtual {v2}, Lat/u;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->d(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 414
    if-eqz p1, :cond_6e

    .line 415
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->j(Z)Lcom/google/googlenav/bd;

    .line 416
    const-string v1, "28"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 424
    :goto_58
    if-nez p1, :cond_62

    .line 425
    new-instance v1, Lcom/google/googlenav/offers/f;

    invoke-direct {v1, p0}, Lcom/google/googlenav/offers/f;-><init>(Lcom/google/googlenav/offers/a;)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    .line 458
    :cond_62
    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/google/googlenav/aW;

    iget-object v2, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    return-object v1

    .line 418
    :cond_6e
    const-string v1, "27"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    goto :goto_58
.end method

.method public a()V
    .registers 4

    .prologue
    .line 166
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/offers/a;->h:I

    .line 168
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->e()J

    move-result-wide v0

    .line 170
    mul-long/2addr v0, v0

    iput-wide v0, p0, Lcom/google/googlenav/offers/a;->i:J

    .line 171
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/d;->b()I

    move-result v0

    .line 173
    const-string v1, "OFFER_CONTENT_HINT_FIRST_REFRESH_PERIOD_PREFERENCE"

    new-instance v2, Lcom/google/googlenav/offers/e;

    invoke-direct {v2, p0}, Lcom/google/googlenav/offers/e;-><init>(Lcom/google/googlenav/offers/a;)V

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 181
    return-void
.end method

.method public a(I)V
    .registers 14
    .parameter

    .prologue
    .line 480
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v10

    .line 481
    sget v0, Lag/c;->a:I

    if-le p1, v0, :cond_40

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->a()Lcom/google/googlenav/clientparam/EnableFeatureParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/EnableFeatureParameters;->isOffersFeatureSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 484
    invoke-static {p1}, Lcom/google/googlenav/offers/a;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aA()Lab/a;

    move-result-object v0

    const v3, 0x7f1000be

    const v4, 0x7f050014

    const v5, 0x7f050015

    const/16 v6, 0xfa0

    const/4 v7, 0x0

    new-instance v8, Lcom/google/googlenav/offers/g;

    invoke-direct {v8, p0}, Lcom/google/googlenav/offers/g;-><init>(Lcom/google/googlenav/offers/a;)V

    new-instance v9, Lcom/google/googlenav/offers/h;

    invoke-direct {v9, p0, v10, v11}, Lcom/google/googlenav/offers/h;-><init>(Lcom/google/googlenav/offers/a;J)V

    const/16 v10, 0x58

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lab/a;->a(ILjava/lang/CharSequence;IIIIILcom/google/googlenav/ui/view/n;Lcom/google/googlenav/ui/view/o;I)V

    .line 525
    :cond_40
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 464
    iget-object v1, p0, Lcom/google/googlenav/offers/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_3
    iput-object p1, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    .line 466
    monitor-exit v1

    .line 467
    return-void

    .line 466
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(ZLjava/lang/String;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 315
    const-string v1, "f"

    .line 318
    if-eqz p1, :cond_b6

    .line 319
    invoke-virtual {p0, p1}, Lcom/google/googlenav/offers/a;->a(Z)Lcom/google/googlenav/aW;

    move-result-object v3

    .line 320
    invoke-static {v3}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lac/h;->c(Lac/g;)V

    .line 325
    invoke-virtual {v3}, Lcom/google/googlenav/aW;->O()Lat/B;

    move-result-object v4

    invoke-virtual {v4}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->z()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    const-string v3, "c="

    aput-object v3, v5, v11

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v10, v4, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_79
    const/16 v3, 0x58

    const-string v4, "s"

    new-array v5, v11, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ub="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    if-nez v0, :cond_10f

    move-object v0, v2

    :goto_ac
    aput-object v0, v5, v10

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 336
    :cond_b6
    iget-object v3, p0, Lcom/google/googlenav/offers/a;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_b9
    const-string v1, "t"

    .line 338
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    if-eqz v0, :cond_f8

    .line 339
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v4, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    iget-object v5, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    invoke-virtual {v4, v5}, LaM/am;->d(Lcom/google/googlenav/aW;)LaM/aI;

    move-result-object v4

    .line 346
    iget-object v5, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/wizard/ju;->c(Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/googlenav/aW;->b(Z)V

    .line 348
    iget-object v5, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    invoke-virtual {v5, v4}, LaM/am;->e(LaM/i;)V

    .line 349
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, LaM/aI;->a(B)V

    .line 353
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    .line 354
    iget-object v4, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/jB;->T()Lcom/google/googlenav/ui/wizard/fo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 366
    :goto_f3
    monitor-exit v3

    goto :goto_79

    :catchall_f5
    move-exception v0

    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_b9 .. :try_end_f7} :catchall_f5

    throw v0

    .line 359
    :cond_f8
    :try_start_f8
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/ju;->c(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/googlenav/offers/a;->a(Z)Lcom/google/googlenav/aW;

    move-result-object v4

    .line 361
    invoke-static {v4}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v5, p0, Lcom/google/googlenav/offers/a;->a:Lcom/google/googlenav/ui/v;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;IZ)V
    :try_end_10e
    .catchall {:try_start_f8 .. :try_end_10e} :catchall_f5

    goto :goto_f3

    .line 369
    :cond_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ac
.end method

.method a(Lat/B;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/google/googlenav/offers/a;->d()Z

    move-result v1

    if-nez v1, :cond_8

    .line 276
    :cond_7
    :goto_7
    return v0

    .line 270
    :cond_8
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/clientparam/d;->d()J

    move-result-wide v1

    .line 272
    iget-object v3, p0, Lcom/google/googlenav/offers/a;->e:Lat/B;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/google/googlenav/offers/a;->e:Lat/B;

    invoke-virtual {v3, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v3

    mul-long/2addr v1, v1

    cmp-long v1, v3, v1

    if-ltz v1, :cond_7

    .line 276
    :cond_1f
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 187
    :cond_9
    invoke-direct {p0}, Lcom/google/googlenav/offers/a;->f()V

    .line 188
    iget-object v1, p0, Lcom/google/googlenav/offers/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/google/googlenav/offers/a;->f:Lcom/google/googlenav/aW;

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public c()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    if-eqz v0, :cond_1a

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    invoke-virtual {v0}, LY/d;->c()I

    .line 217
    iget v0, p0, Lcom/google/googlenav/offers/a;->h:I

    if-lez v0, :cond_15

    .line 218
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    iget v1, p0, Lcom/google/googlenav/offers/a;->h:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 220
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->j:LY/d;

    invoke-virtual {v0}, LY/d;->g()V

    .line 222
    :cond_1a
    return-void
.end method

.method d()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 231
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->ag()Z

    move-result v2

    if-nez v2, :cond_d

    .line 262
    :cond_c
    :goto_c
    return v0

    .line 236
    :cond_d
    iget-object v2, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/jB;->C()Lcom/google/googlenav/ui/wizard/fh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/fh;->e()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 242
    iget-object v2, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    invoke-virtual {v2}, LaM/am;->u()LaM/bj;

    move-result-object v2

    if-nez v2, :cond_c

    .line 247
    iget-object v2, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    invoke-virtual {v2}, LaM/am;->v()LaM/O;

    move-result-object v2

    if-nez v2, :cond_c

    .line 252
    iget-object v2, p0, Lcom/google/googlenav/offers/a;->d:LaM/am;

    invoke-virtual {v2}, LaM/am;->w()LaM/bK;

    move-result-object v2

    if-nez v2, :cond_c

    .line 257
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->e()Lcom/google/googlenav/clientparam/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/d;->c()I

    move-result v2

    .line 258
    iget-object v3, p0, Lcom/google/googlenav/offers/a;->b:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    if-lt v3, v2, :cond_c

    move v0, v1

    .line 262
    goto :goto_c
.end method

.method public e()V
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ah()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 385
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->T()Lcom/google/googlenav/ui/wizard/fo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 386
    iget-object v0, p0, Lcom/google/googlenav/offers/a;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 391
    :cond_1e
    invoke-direct {p0}, Lcom/google/googlenav/offers/a;->g()V

    .line 392
    return-void
.end method
