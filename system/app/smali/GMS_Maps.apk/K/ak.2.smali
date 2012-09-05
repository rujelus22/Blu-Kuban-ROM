.class final enum LK/ak;
.super Ljava/lang/Enum;

# interfaces
.implements LK/am;


# static fields
.field public static final enum a:LK/ak;

.field private static final synthetic b:[LK/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, LK/ak;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, LK/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/ak;->a:LK/ak;

    const/4 v0, 0x1

    new-array v0, v0, [LK/ak;

    sget-object v1, LK/ak;->a:LK/ak;

    aput-object v1, v0, v2

    sput-object v0, LK/ak;->b:[LK/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK/ak;
    .registers 2

    const-class v0, LK/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK/ak;

    return-object v0
.end method

.method public static values()[LK/ak;
    .registers 1

    sget-object v0, LK/ak;->b:[LK/ak;

    invoke-virtual {v0}, [LK/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/ak;

    return-object v0
.end method


# virtual methods
.method public a()LK/aK;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a(LK/aK;)V
    .registers 2

    return-void
.end method

.method public a(LK/am;)V
    .registers 2

    return-void
.end method

.method public b()LK/am;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(LK/aK;)V
    .registers 2

    return-void
.end method

.method public b(LK/am;)V
    .registers 2

    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(LK/am;)V
    .registers 2

    return-void
.end method

.method public d()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(LK/am;)V
    .registers 2

    return-void
.end method

.method public e()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()LK/am;
    .registers 1

    return-object p0
.end method

.method public g()LK/am;
    .registers 1

    return-object p0
.end method

.method public h()LK/am;
    .registers 1

    return-object p0
.end method

.method public i()LK/am;
    .registers 1

    return-object p0
.end method
