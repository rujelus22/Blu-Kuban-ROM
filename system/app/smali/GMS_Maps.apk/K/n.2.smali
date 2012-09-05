.class final enum LK/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LK/n;

.field public static final enum b:LK/n;

.field public static final enum c:LK/n;

.field public static final enum d:LK/n;

.field private static final synthetic e:[LK/n;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LK/n;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, LK/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/n;->a:LK/n;

    new-instance v0, LK/n;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, LK/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/n;->b:LK/n;

    new-instance v0, LK/n;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, LK/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/n;->c:LK/n;

    new-instance v0, LK/n;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, LK/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/n;->d:LK/n;

    const/4 v0, 0x4

    new-array v0, v0, [LK/n;

    sget-object v1, LK/n;->a:LK/n;

    aput-object v1, v0, v2

    sget-object v1, LK/n;->b:LK/n;

    aput-object v1, v0, v3

    sget-object v1, LK/n;->c:LK/n;

    aput-object v1, v0, v4

    sget-object v1, LK/n;->d:LK/n;

    aput-object v1, v0, v5

    sput-object v0, LK/n;->e:[LK/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK/n;
    .registers 2

    const-class v0, LK/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK/n;

    return-object v0
.end method

.method public static values()[LK/n;
    .registers 1

    sget-object v0, LK/n;->e:[LK/n;

    invoke-virtual {v0}, [LK/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/n;

    return-object v0
.end method
