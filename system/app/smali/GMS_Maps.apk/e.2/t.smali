.class public final enum Le/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Le/t;

.field public static final enum b:Le/t;

.field private static final synthetic c:[Le/t;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Le/t;

    const-string v1, "LEVEL_SELECTOR"

    invoke-direct {v0, v1, v2}, Le/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/t;->a:Le/t;

    new-instance v0, Le/t;

    const-string v1, "LEVEL"

    invoke-direct {v0, v1, v3}, Le/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/t;->b:Le/t;

    const/4 v0, 0x2

    new-array v0, v0, [Le/t;

    sget-object v1, Le/t;->a:Le/t;

    aput-object v1, v0, v2

    sget-object v1, Le/t;->b:Le/t;

    aput-object v1, v0, v3

    sput-object v0, Le/t;->c:[Le/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/t;
    .registers 2

    const-class v0, Le/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/t;

    return-object v0
.end method

.method public static values()[Le/t;
    .registers 1

    sget-object v0, Le/t;->c:[Le/t;

    invoke-virtual {v0}, [Le/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/t;

    return-object v0
.end method
