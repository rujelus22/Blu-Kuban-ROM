.class abstract enum LK/aA;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LK/aA;

.field public static final enum b:LK/aA;

.field public static final enum c:LK/aA;

.field private static final synthetic d:[LK/aA;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LK/aB;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, LK/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/aA;->a:LK/aA;

    new-instance v0, LK/aC;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, LK/aC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/aA;->b:LK/aA;

    new-instance v0, LK/aD;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, LK/aD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/aA;->c:LK/aA;

    const/4 v0, 0x3

    new-array v0, v0, [LK/aA;

    sget-object v1, LK/aA;->a:LK/aA;

    aput-object v1, v0, v2

    sget-object v1, LK/aA;->b:LK/aA;

    aput-object v1, v0, v3

    sget-object v1, LK/aA;->c:LK/aA;

    aput-object v1, v0, v4

    sput-object v0, LK/aA;->d:[LK/aA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILK/Q;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LK/aA;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK/aA;
    .registers 2

    const-class v0, LK/aA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK/aA;

    return-object v0
.end method

.method public static values()[LK/aA;
    .registers 1

    sget-object v0, LK/aA;->d:[LK/aA;

    invoke-virtual {v0}, [LK/aA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/aA;

    return-object v0
.end method


# virtual methods
.method abstract a(LK/am;Ljava/lang/Object;)LK/aK;
.end method

.method abstract a()Lcom/google/common/base/b;
.end method
