.class public final enum Le/G;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Le/G;

.field public static final enum b:Le/G;

.field public static final enum c:Le/G;

.field private static final synthetic d:[Le/G;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Le/G;

    const-string v1, "STATIONARY"

    invoke-direct {v0, v1, v2}, Le/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/G;->a:Le/G;

    new-instance v0, Le/G;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v3}, Le/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/G;->b:Le/G;

    new-instance v0, Le/G;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Le/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/G;->c:Le/G;

    const/4 v0, 0x3

    new-array v0, v0, [Le/G;

    sget-object v1, Le/G;->a:Le/G;

    aput-object v1, v0, v2

    sget-object v1, Le/G;->b:Le/G;

    aput-object v1, v0, v3

    sget-object v1, Le/G;->c:Le/G;

    aput-object v1, v0, v4

    sput-object v0, Le/G;->d:[Le/G;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/G;
    .registers 2

    const-class v0, Le/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/G;

    return-object v0
.end method

.method public static values()[Le/G;
    .registers 1

    sget-object v0, Le/G;->d:[Le/G;

    invoke-virtual {v0}, [Le/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/G;

    return-object v0
.end method
