.class abstract enum LK/S;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LK/S;

.field public static final enum b:LK/S;

.field public static final enum c:LK/S;

.field public static final enum d:LK/S;

.field public static final enum e:LK/S;

.field public static final enum f:LK/S;

.field public static final enum g:LK/S;

.field public static final enum h:LK/S;

.field public static final enum i:LK/S;

.field public static final enum j:LK/S;

.field public static final enum k:LK/S;

.field public static final enum l:LK/S;

.field static final m:[[LK/S;

.field private static final synthetic n:[LK/S;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LK/T;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, LK/T;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->a:LK/S;

    new-instance v0, LK/X;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, LK/X;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->b:LK/S;

    new-instance v0, LK/Y;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, LK/Y;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->c:LK/S;

    new-instance v0, LK/Z;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, LK/Z;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->d:LK/S;

    new-instance v0, LK/aa;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v7}, LK/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->e:LK/S;

    new-instance v0, LK/ab;

    const-string v1, "SOFT_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LK/ab;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->f:LK/S;

    new-instance v0, LK/ac;

    const-string v1, "SOFT_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LK/ac;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->g:LK/S;

    new-instance v0, LK/ad;

    const-string v1, "SOFT_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LK/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->h:LK/S;

    new-instance v0, LK/ae;

    const-string v1, "WEAK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LK/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->i:LK/S;

    new-instance v0, LK/U;

    const-string v1, "WEAK_EXPIRABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LK/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->j:LK/S;

    new-instance v0, LK/V;

    const-string v1, "WEAK_EVICTABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LK/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->k:LK/S;

    new-instance v0, LK/W;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LK/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/S;->l:LK/S;

    const/16 v0, 0xc

    new-array v0, v0, [LK/S;

    sget-object v1, LK/S;->a:LK/S;

    aput-object v1, v0, v3

    sget-object v1, LK/S;->b:LK/S;

    aput-object v1, v0, v4

    sget-object v1, LK/S;->c:LK/S;

    aput-object v1, v0, v5

    sget-object v1, LK/S;->d:LK/S;

    aput-object v1, v0, v6

    sget-object v1, LK/S;->e:LK/S;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LK/S;->f:LK/S;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LK/S;->g:LK/S;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LK/S;->h:LK/S;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LK/S;->i:LK/S;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LK/S;->j:LK/S;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LK/S;->k:LK/S;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LK/S;->l:LK/S;

    aput-object v2, v0, v1

    sput-object v0, LK/S;->n:[LK/S;

    new-array v0, v6, [[LK/S;

    new-array v1, v7, [LK/S;

    sget-object v2, LK/S;->a:LK/S;

    aput-object v2, v1, v3

    sget-object v2, LK/S;->b:LK/S;

    aput-object v2, v1, v4

    sget-object v2, LK/S;->c:LK/S;

    aput-object v2, v1, v5

    sget-object v2, LK/S;->d:LK/S;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [LK/S;

    sget-object v2, LK/S;->e:LK/S;

    aput-object v2, v1, v3

    sget-object v2, LK/S;->f:LK/S;

    aput-object v2, v1, v4

    sget-object v2, LK/S;->g:LK/S;

    aput-object v2, v1, v5

    sget-object v2, LK/S;->h:LK/S;

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [LK/S;

    sget-object v2, LK/S;->i:LK/S;

    aput-object v2, v1, v3

    sget-object v2, LK/S;->j:LK/S;

    aput-object v2, v1, v4

    sget-object v2, LK/S;->k:LK/S;

    aput-object v2, v1, v5

    sget-object v2, LK/S;->l:LK/S;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, LK/S;->m:[[LK/S;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILK/Q;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LK/S;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(LK/aA;ZZ)LK/S;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_4
    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :cond_7
    or-int/2addr v0, v1

    sget-object v1, LK/S;->m:[[LK/S;

    invoke-virtual {p0}, LK/aA;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_13
    move v1, v0

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)LK/S;
    .registers 2

    const-class v0, LK/S;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK/S;

    return-object v0
.end method

.method public static values()[LK/S;
    .registers 1

    sget-object v0, LK/S;->n:[LK/S;

    invoke-virtual {v0}, [LK/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/S;

    return-object v0
.end method


# virtual methods
.method a(LK/P;LK/am;LK/am;)LK/am;
    .registers 6

    invoke-interface {p2}, LK/am;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, LK/am;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, LK/S;->a(LK/P;Ljava/lang/Object;ILK/am;)LK/am;

    move-result-object v0

    return-object v0
.end method

.method abstract a(LK/P;Ljava/lang/Object;ILK/am;)LK/am;
.end method

.method a(LK/am;LK/am;)V
    .registers 5

    invoke-interface {p1}, LK/am;->e()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, LK/am;->a(J)V

    invoke-interface {p1}, LK/am;->g()LK/am;

    move-result-object v0

    invoke-static {v0, p2}, LK/P;->b(LK/am;LK/am;)V

    invoke-interface {p1}, LK/am;->f()LK/am;

    move-result-object v0

    invoke-static {p2, v0}, LK/P;->b(LK/am;LK/am;)V

    invoke-static {p1}, LK/P;->e(LK/am;)V

    return-void
.end method

.method b(LK/am;LK/am;)V
    .registers 4

    invoke-interface {p1}, LK/am;->i()LK/am;

    move-result-object v0

    invoke-static {v0, p2}, LK/P;->c(LK/am;LK/am;)V

    invoke-interface {p1}, LK/am;->h()LK/am;

    move-result-object v0

    invoke-static {p2, v0}, LK/P;->c(LK/am;LK/am;)V

    invoke-static {p1}, LK/P;->f(LK/am;)V

    return-void
.end method
