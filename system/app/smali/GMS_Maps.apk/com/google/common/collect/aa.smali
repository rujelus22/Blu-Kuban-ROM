.class abstract enum Lcom/google/common/collect/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/common/collect/aa;

.field public static final enum b:Lcom/google/common/collect/aa;

.field public static final enum c:Lcom/google/common/collect/aa;

.field public static final enum d:Lcom/google/common/collect/aa;

.field public static final enum e:Lcom/google/common/collect/aa;

.field public static final enum f:Lcom/google/common/collect/aa;

.field public static final enum g:Lcom/google/common/collect/aa;

.field public static final enum h:Lcom/google/common/collect/aa;

.field public static final enum i:Lcom/google/common/collect/aa;

.field public static final enum j:Lcom/google/common/collect/aa;

.field public static final enum k:Lcom/google/common/collect/aa;

.field public static final enum l:Lcom/google/common/collect/aa;

.field static final m:[[Lcom/google/common/collect/aa;

.field private static final synthetic n:[Lcom/google/common/collect/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    new-instance v0, Lcom/google/common/collect/ab;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->a:Lcom/google/common/collect/aa;

    .line 355
    new-instance v0, Lcom/google/common/collect/af;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->b:Lcom/google/common/collect/aa;

    .line 369
    new-instance v0, Lcom/google/common/collect/ag;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->c:Lcom/google/common/collect/aa;

    .line 383
    new-instance v0, Lcom/google/common/collect/ah;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/ah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->d:Lcom/google/common/collect/aa;

    .line 399
    new-instance v0, Lcom/google/common/collect/ai;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, Lcom/google/common/collect/ai;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->e:Lcom/google/common/collect/aa;

    .line 406
    new-instance v0, Lcom/google/common/collect/aj;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->f:Lcom/google/common/collect/aa;

    .line 420
    new-instance v0, Lcom/google/common/collect/ak;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->g:Lcom/google/common/collect/aa;

    .line 434
    new-instance v0, Lcom/google/common/collect/al;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->h:Lcom/google/common/collect/aa;

    .line 450
    new-instance v0, Lcom/google/common/collect/am;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->i:Lcom/google/common/collect/aa;

    .line 457
    new-instance v0, Lcom/google/common/collect/ac;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->j:Lcom/google/common/collect/aa;

    .line 471
    new-instance v0, Lcom/google/common/collect/ad;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->k:Lcom/google/common/collect/aa;

    .line 485
    new-instance v0, Lcom/google/common/collect/ae;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aa;->l:Lcom/google/common/collect/aa;

    .line 347
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/common/collect/aa;

    sget-object v1, Lcom/google/common/collect/aa;->a:Lcom/google/common/collect/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/aa;->b:Lcom/google/common/collect/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/aa;->c:Lcom/google/common/collect/aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/aa;->d:Lcom/google/common/collect/aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/collect/aa;->e:Lcom/google/common/collect/aa;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/common/collect/aa;->f:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/common/collect/aa;->g:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/common/collect/aa;->h:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/common/collect/aa;->i:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/common/collect/aa;->j:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/common/collect/aa;->k:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/common/collect/aa;->l:Lcom/google/common/collect/aa;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/aa;->n:[Lcom/google/common/collect/aa;

    .line 511
    new-array v0, v6, [[Lcom/google/common/collect/aa;

    new-array v1, v7, [Lcom/google/common/collect/aa;

    sget-object v2, Lcom/google/common/collect/aa;->a:Lcom/google/common/collect/aa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/aa;->b:Lcom/google/common/collect/aa;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/aa;->c:Lcom/google/common/collect/aa;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/aa;->d:Lcom/google/common/collect/aa;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [Lcom/google/common/collect/aa;

    sget-object v2, Lcom/google/common/collect/aa;->e:Lcom/google/common/collect/aa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/aa;->f:Lcom/google/common/collect/aa;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/aa;->g:Lcom/google/common/collect/aa;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/aa;->h:Lcom/google/common/collect/aa;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/google/common/collect/aa;

    sget-object v2, Lcom/google/common/collect/aa;->i:Lcom/google/common/collect/aa;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/aa;->j:Lcom/google/common/collect/aa;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/common/collect/aa;->k:Lcom/google/common/collect/aa;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/common/collect/aa;->l:Lcom/google/common/collect/aa;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/aa;->m:[[Lcom/google/common/collect/aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/Y;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/google/common/collect/aI;ZZ)Lcom/google/common/collect/aa;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 519
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :cond_7
    or-int/2addr v0, v1

    .line 521
    sget-object v1, Lcom/google/common/collect/aa;->m:[[Lcom/google/common/collect/aa;

    invoke-virtual {p0}, Lcom/google/common/collect/aI;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_13
    move v1, v0

    .line 519
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/aa;
    .registers 2
    .parameter

    .prologue
    .line 347
    const-class v0, Lcom/google/common/collect/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/aa;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/aa;
    .registers 1

    .prologue
    .line 347
    sget-object v0, Lcom/google/common/collect/aa;->n:[Lcom/google/common/collect/aa;

    invoke-virtual {v0}, [Lcom/google/common/collect/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/aa;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/common/collect/X;Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-interface {p2}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/collect/au;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/aa;->a(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;
.end method

.method a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-interface {p1}, Lcom/google/common/collect/au;->e()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/au;->a(J)V

    .line 556
    invoke-interface {p1}, Lcom/google/common/collect/au;->g()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 557
    invoke-interface {p1}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 559
    invoke-static {p1}, Lcom/google/common/collect/X;->e(Lcom/google/common/collect/au;)V

    .line 560
    return-void
.end method

.method b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-interface {p1}, Lcom/google/common/collect/au;->i()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 568
    invoke-interface {p1}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 570
    invoke-static {p1}, Lcom/google/common/collect/X;->f(Lcom/google/common/collect/au;)V

    .line 571
    return-void
.end method
