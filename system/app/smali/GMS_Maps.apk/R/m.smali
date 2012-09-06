.class public Lr/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aa;


# instance fields
.field final a:Ln/am;

.field final b:Lr/aF;

.field final c:Z

.field final d:Lr/e;

.field final e:Z

.field final f:Z

.field final g:Z

.field h:I

.field volatile i:Z

.field private j:Lr/m;


# direct methods
.method protected constructor <init>(Ln/am;Lr/aF;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1482
    sget-object v3, Lr/e;->b:Lr/e;

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lr/m;-><init>(Ln/am;Lr/aF;Lr/e;ZZIZ)V

    .line 1485
    return-void
.end method

.method protected constructor <init>(Ln/am;Lr/aF;Lr/e;ZZIZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput-boolean v0, p0, Lr/m;->i:Z

    .line 1453
    const/4 v1, 0x0

    iput-object v1, p0, Lr/m;->j:Lr/m;

    .line 1470
    iput-object p1, p0, Lr/m;->a:Ln/am;

    .line 1471
    iput-object p2, p0, Lr/m;->b:Lr/aF;

    .line 1472
    iput-object p3, p0, Lr/m;->d:Lr/e;

    .line 1473
    sget-object v1, Lr/e;->e:Lr/e;

    invoke-virtual {p3, v1}, Lr/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lr/e;->d:Lr/e;

    invoke-virtual {p3, v1}, Lr/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    iput-boolean v0, p0, Lr/m;->c:Z

    .line 1475
    iput-boolean p4, p0, Lr/m;->e:Z

    .line 1476
    iput p6, p0, Lr/m;->h:I

    .line 1477
    iput-boolean p5, p0, Lr/m;->f:Z

    .line 1478
    iput-boolean p7, p0, Lr/m;->g:Z

    .line 1479
    return-void
.end method

.method protected constructor <init>(Ln/am;Lr/aF;ZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1496
    sget-object v3, Lr/e;->b:Lr/e;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lr/m;-><init>(Ln/am;Lr/aF;Lr/e;ZZIZ)V

    .line 1499
    return-void
.end method

.method private a(ILn/al;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1584
    iget-object v0, p0, Lr/m;->b:Lr/aF;

    iget-object v1, p0, Lr/m;->a:Ln/am;

    invoke-interface {v0, v1, p1, p2}, Lr/aF;->a(Ln/am;ILn/al;)V

    .line 1585
    return-void
.end method

.method static synthetic a(Lr/m;ILn/al;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1436
    invoke-direct {p0, p1, p2}, Lr/m;->a(ILn/al;)V

    return-void
.end method

.method static synthetic b(Lr/m;)Lr/m;
    .registers 2
    .parameter

    .prologue
    .line 1436
    iget-object v0, p0, Lr/m;->j:Lr/m;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/m;->i:Z

    .line 1504
    return-void
.end method

.method protected a(I)V
    .registers 2
    .parameter

    .prologue
    .line 1573
    iput p1, p0, Lr/m;->h:I

    .line 1574
    return-void
.end method

.method a(Lr/m;)V
    .registers 3
    .parameter

    .prologue
    .line 1579
    iget-object v0, p0, Lr/m;->j:Lr/m;

    iput-object v0, p1, Lr/m;->j:Lr/m;

    .line 1580
    iput-object p1, p0, Lr/m;->j:Lr/m;

    .line 1581
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 1507
    iget-boolean v0, p0, Lr/m;->i:Z

    return v0
.end method

.method public c()Ln/am;
    .registers 2

    .prologue
    .line 1512
    iget-object v0, p0, Lr/m;->a:Ln/am;

    return-object v0
.end method

.method protected d()Lr/e;
    .registers 2

    .prologue
    .line 1516
    iget-object v0, p0, Lr/m;->d:Lr/e;

    return-object v0
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 1520
    iget-boolean v0, p0, Lr/m;->c:Z

    return v0
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 1524
    iget-boolean v0, p0, Lr/m;->e:Z

    return v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 1528
    iget v0, p0, Lr/m;->h:I

    return v0
.end method

.method protected h()Z
    .registers 2

    .prologue
    .line 1532
    iget-boolean v0, p0, Lr/m;->f:Z

    return v0
.end method

.method protected i()Z
    .registers 2

    .prologue
    .line 1556
    :goto_0
    if-eqz p0, :cond_d

    .line 1557
    invoke-virtual {p0}, Lr/m;->e()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1558
    const/4 v0, 0x0

    .line 1561
    :goto_9
    return v0

    .line 1556
    :cond_a
    iget-object p0, p0, Lr/m;->j:Lr/m;

    goto :goto_0

    .line 1561
    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 1565
    iget-boolean v0, p0, Lr/m;->g:Z

    return v0
.end method

.method protected k()Z
    .registers 2

    .prologue
    .line 1569
    iget-object v0, p0, Lr/m;->j:Lr/m;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
