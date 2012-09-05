.class public final enum Le/J;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Le/J;

.field public static final enum b:Le/J;

.field public static final enum c:Le/J;

.field public static final enum d:Le/J;

.field private static final synthetic e:[Le/J;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Le/J;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Le/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/J;->a:Le/J;

    new-instance v0, Le/J;

    const-string v1, "LOW_CONFIDENCE"

    invoke-direct {v0, v1, v3}, Le/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/J;->b:Le/J;

    new-instance v0, Le/J;

    const-string v1, "MEDIUM_CONFIDENCE"

    invoke-direct {v0, v1, v4}, Le/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/J;->c:Le/J;

    new-instance v0, Le/J;

    const-string v1, "HIGH_CONFIDENCE"

    invoke-direct {v0, v1, v5}, Le/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/J;->d:Le/J;

    const/4 v0, 0x4

    new-array v0, v0, [Le/J;

    sget-object v1, Le/J;->a:Le/J;

    aput-object v1, v0, v2

    sget-object v1, Le/J;->b:Le/J;

    aput-object v1, v0, v3

    sget-object v1, Le/J;->c:Le/J;

    aput-object v1, v0, v4

    sget-object v1, Le/J;->d:Le/J;

    aput-object v1, v0, v5

    sput-object v0, Le/J;->e:[Le/J;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Le/J;
    .registers 1

    sget-object v0, Le/J;->d:Le/J;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Le/J;
    .registers 2

    const-class v0, Le/J;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/J;

    return-object v0
.end method

.method public static values()[Le/J;
    .registers 1

    sget-object v0, Le/J;->e:[Le/J;

    invoke-virtual {v0}, [Le/J;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/J;

    return-object v0
.end method
