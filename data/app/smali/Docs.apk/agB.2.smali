.class abstract enum LagB;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LagB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LagB;

.field static final a:[LagB;

.field public static final enum b:LagB;

.field private static final synthetic b:[LagB;

.field public static final enum c:LagB;

.field public static final enum d:LagB;

.field public static final enum e:LagB;

.field public static final enum f:LagB;

.field public static final enum g:LagB;

.field public static final enum h:LagB;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    new-instance v0, LagC;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, LagC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->a:LagB;

    .line 445
    new-instance v0, LagD;

    const-string v1, "STRONG_ACCESS"

    invoke-direct {v0, v1, v4}, LagD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->b:LagB;

    .line 460
    new-instance v0, LagE;

    const-string v1, "STRONG_WRITE"

    invoke-direct {v0, v1, v5}, LagE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->c:LagB;

    .line 475
    new-instance v0, LagF;

    const-string v1, "STRONG_ACCESS_WRITE"

    invoke-direct {v0, v1, v6}, LagF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->d:LagB;

    .line 492
    new-instance v0, LagG;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v7}, LagG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->e:LagB;

    .line 499
    new-instance v0, LagH;

    const-string v1, "WEAK_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LagH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->f:LagB;

    .line 514
    new-instance v0, LagI;

    const-string v1, "WEAK_WRITE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LagI;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->g:LagB;

    .line 529
    new-instance v0, LagJ;

    const-string v1, "WEAK_ACCESS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LagJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagB;->h:LagB;

    .line 437
    const/16 v0, 0x8

    new-array v0, v0, [LagB;

    sget-object v1, LagB;->a:LagB;

    aput-object v1, v0, v3

    sget-object v1, LagB;->b:LagB;

    aput-object v1, v0, v4

    sget-object v1, LagB;->c:LagB;

    aput-object v1, v0, v5

    sget-object v1, LagB;->d:LagB;

    aput-object v1, v0, v6

    sget-object v1, LagB;->e:LagB;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LagB;->f:LagB;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LagB;->g:LagB;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LagB;->h:LagB;

    aput-object v2, v0, v1

    sput-object v0, LagB;->b:[LagB;

    .line 556
    const/16 v0, 0x8

    new-array v0, v0, [LagB;

    sget-object v1, LagB;->a:LagB;

    aput-object v1, v0, v3

    sget-object v1, LagB;->b:LagB;

    aput-object v1, v0, v4

    sget-object v1, LagB;->c:LagB;

    aput-object v1, v0, v5

    sget-object v1, LagB;->d:LagB;

    aput-object v1, v0, v6

    sget-object v1, LagB;->e:LagB;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LagB;->f:LagB;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LagB;->g:LagB;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LagB;->h:LagB;

    aput-object v2, v0, v1

    sput-object v0, LagB;->a:[LagB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILagv;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, LagB;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(LagY;ZZ)LagB;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 563
    sget-object v1, LagY;->c:LagY;

    if-ne p0, v1, :cond_14

    const/4 v1, 0x4

    move v2, v1

    :goto_7
    if-eqz p1, :cond_16

    const/4 v1, 0x1

    :goto_a
    or-int/2addr v1, v2

    if-eqz p2, :cond_e

    const/4 v0, 0x2

    :cond_e
    or-int/2addr v0, v1

    .line 566
    sget-object v1, LagB;->a:[LagB;

    aget-object v0, v1, v0

    return-object v0

    :cond_14
    move v2, v0

    .line 563
    goto :goto_7

    :cond_16
    move v1, v0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)LagB;
    .registers 2
    .parameter

    .prologue
    .line 437
    const-class v0, LagB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LagB;

    return-object v0
.end method

.method public static values()[LagB;
    .registers 1

    .prologue
    .line 437
    sget-object v0, LagB;->b:[LagB;

    invoke-virtual {v0}, [LagB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LagB;

    return-object v0
.end method


# virtual methods
.method a(LagV;LagU;LagU;)LagU;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagV",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 589
    invoke-interface {p2}, LagU;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, LagU;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, LagB;->a(LagV;Ljava/lang/Object;ILagU;)LagU;

    move-result-object v0

    return-object v0
.end method

.method abstract a(LagV;Ljava/lang/Object;ILagU;)LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagV",
            "<TK;TV;>;TK;I",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(LagU;LagU;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    invoke-interface {p1}, LagU;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, LagU;->a(J)V

    .line 598
    invoke-interface {p1}, LagU;->c()LagU;

    move-result-object v0

    invoke-static {v0, p2}, Lagu;->a(LagU;LagU;)V

    .line 599
    invoke-interface {p1}, LagU;->b()LagU;

    move-result-object v0

    invoke-static {p2, v0}, Lagu;->a(LagU;LagU;)V

    .line 601
    invoke-static {p1}, Lagu;->b(LagU;)V

    .line 602
    return-void
.end method

.method b(LagU;LagU;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    invoke-interface {p1}, LagU;->b()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, LagU;->b(J)V

    .line 610
    invoke-interface {p1}, LagU;->e()LagU;

    move-result-object v0

    invoke-static {v0, p2}, Lagu;->b(LagU;LagU;)V

    .line 611
    invoke-interface {p1}, LagU;->d()LagU;

    move-result-object v0

    invoke-static {p2, v0}, Lagu;->b(LagU;LagU;)V

    .line 613
    invoke-static {p1}, Lagu;->c(LagU;)V

    .line 614
    return-void
.end method
