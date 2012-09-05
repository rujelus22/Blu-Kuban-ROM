.class public final enum Le/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Le/p;

.field public static final enum b:Le/p;

.field public static final enum c:Le/p;

.field private static final synthetic d:[Le/p;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Le/p;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Le/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/p;->a:Le/p;

    new-instance v0, Le/p;

    const-string v1, "NO_LOCATION"

    invoke-direct {v0, v1, v3}, Le/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/p;->b:Le/p;

    new-instance v0, Le/p;

    const-string v1, "CACHE_MISS"

    invoke-direct {v0, v1, v4}, Le/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/p;->c:Le/p;

    const/4 v0, 0x3

    new-array v0, v0, [Le/p;

    sget-object v1, Le/p;->a:Le/p;

    aput-object v1, v0, v2

    sget-object v1, Le/p;->b:Le/p;

    aput-object v1, v0, v3

    sget-object v1, Le/p;->c:Le/p;

    aput-object v1, v0, v4

    sput-object v0, Le/p;->d:[Le/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/p;
    .registers 2

    const-class v0, Le/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/p;

    return-object v0
.end method

.method public static values()[Le/p;
    .registers 1

    sget-object v0, Le/p;->d:[Le/p;

    invoke-virtual {v0}, [Le/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/p;

    return-object v0
.end method
