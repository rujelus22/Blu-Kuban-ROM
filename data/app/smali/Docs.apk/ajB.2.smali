.class abstract enum LajB;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LajB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LajB;

.field private static final synthetic a:[LajB;

.field static final a:[[LajB;

.field public static final enum b:LajB;

.field public static final enum c:LajB;

.field public static final enum d:LajB;

.field public static final enum e:LajB;

.field public static final enum f:LajB;

.field public static final enum g:LajB;

.field public static final enum h:LajB;

.field public static final enum i:LajB;

.field public static final enum j:LajB;

.field public static final enum k:LajB;

.field public static final enum l:LajB;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    new-instance v0, LajC;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, LajC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->a:LajB;

    .line 360
    new-instance v0, LajG;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, LajG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->b:LajB;

    .line 375
    new-instance v0, LajH;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, LajH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->c:LajB;

    .line 390
    new-instance v0, LajI;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, LajI;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->d:LajB;

    .line 407
    new-instance v0, LajJ;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, LajJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->e:LajB;

    .line 414
    new-instance v0, LajK;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LajK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->f:LajB;

    .line 429
    new-instance v0, LajL;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LajL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->g:LajB;

    .line 444
    new-instance v0, LajM;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LajM;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->h:LajB;

    .line 461
    new-instance v0, LajN;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LajN;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->i:LajB;

    .line 468
    new-instance v0, LajD;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LajD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->j:LajB;

    .line 483
    new-instance v0, LajE;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LajE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->k:LajB;

    .line 498
    new-instance v0, LajF;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LajF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LajB;->l:LajB;

    .line 352
    const/16 v0, 0xc

    new-array v0, v0, [LajB;

    sget-object v1, LajB;->a:LajB;

    aput-object v1, v0, v3

    sget-object v1, LajB;->b:LajB;

    aput-object v1, v0, v4

    sget-object v1, LajB;->c:LajB;

    aput-object v1, v0, v5

    sget-object v1, LajB;->d:LajB;

    aput-object v1, v0, v6

    sget-object v1, LajB;->e:LajB;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LajB;->f:LajB;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LajB;->g:LajB;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LajB;->h:LajB;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LajB;->i:LajB;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LajB;->j:LajB;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LajB;->k:LajB;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LajB;->l:LajB;

    aput-object v2, v0, v1

    sput-object v0, LajB;->a:[LajB;

    .line 525
    new-array v0, v6, [[LajB;

    new-array v1, v7, [LajB;

    sget-object v2, LajB;->a:LajB;

    aput-object v2, v1, v3

    sget-object v2, LajB;->b:LajB;

    aput-object v2, v1, v4

    sget-object v2, LajB;->c:LajB;

    aput-object v2, v1, v5

    sget-object v2, LajB;->d:LajB;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [LajB;

    sget-object v2, LajB;->e:LajB;

    aput-object v2, v1, v3

    sget-object v2, LajB;->f:LajB;

    aput-object v2, v1, v4

    sget-object v2, LajB;->g:LajB;

    aput-object v2, v1, v5

    sget-object v2, LajB;->h:LajB;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [LajB;

    sget-object v2, LajB;->i:LajB;

    aput-object v2, v1, v3

    sget-object v2, LajB;->j:LajB;

    aput-object v2, v1, v4

    sget-object v2, LajB;->k:LajB;

    aput-object v2, v1, v5

    sget-object v2, LajB;->l:LajB;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, LajB;->a:[[LajB;

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
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILajy;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, LajB;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lakh;ZZ)LajB;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 533
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :cond_7
    or-int/2addr v0, v1

    .line 534
    sget-object v1, LajB;->a:[[LajB;

    invoke-virtual {p0}, Lakh;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_13
    move v1, v0

    .line 533
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)LajB;
    .registers 2
    .parameter

    .prologue
    .line 352
    const-class v0, LajB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LajB;

    return-object v0
.end method

.method public static values()[LajB;
    .registers 1

    .prologue
    .line 352
    sget-object v0, LajB;->a:[LajB;

    invoke-virtual {v0}, [LajB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LajB;

    return-object v0
.end method


# virtual methods
.method a(Lakb;Laka;Laka;)Laka;
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
            "Lakb",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    invoke-interface {p2}, Laka;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Laka;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, LajB;->a(Lakb;Ljava/lang/Object;ILaka;)Laka;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lakb;Ljava/lang/Object;ILaka;)Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lakb",
            "<TK;TV;>;TK;I",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Laka;Laka;)V
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
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 564
    invoke-interface {p1}, Laka;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Laka;->a(J)V

    .line 566
    invoke-interface {p1}, Laka;->c()Laka;

    move-result-object v0

    invoke-static {v0, p2}, Lajx;->a(Laka;Laka;)V

    .line 567
    invoke-interface {p1}, Laka;->b()Laka;

    move-result-object v0

    invoke-static {p2, v0}, Lajx;->a(Laka;Laka;)V

    .line 569
    invoke-static {p1}, Lajx;->b(Laka;)V

    .line 570
    return-void
.end method

.method b(Laka;Laka;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 576
    invoke-interface {p1}, Laka;->e()Laka;

    move-result-object v0

    invoke-static {v0, p2}, Lajx;->b(Laka;Laka;)V

    .line 577
    invoke-interface {p1}, Laka;->d()Laka;

    move-result-object v0

    invoke-static {p2, v0}, Lajx;->b(Laka;Laka;)V

    .line 579
    invoke-static {p1}, Lajx;->c(Laka;)V

    .line 580
    return-void
.end method
