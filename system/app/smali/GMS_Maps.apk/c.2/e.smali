.class final enum Lc/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lc/e;

.field public static final enum b:Lc/e;

.field public static final enum c:Lc/e;

.field private static final synthetic d:[Lc/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lc/e;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/e;->a:Lc/e;

    new-instance v0, Lc/e;

    const-string v1, "REFRESHING_NLP_PARAMS"

    invoke-direct {v0, v1, v3}, Lc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/e;->b:Lc/e;

    new-instance v0, Lc/e;

    const-string v1, "REFRESHING_CACHE"

    invoke-direct {v0, v1, v4}, Lc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/e;->c:Lc/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lc/e;

    sget-object v1, Lc/e;->a:Lc/e;

    aput-object v1, v0, v2

    sget-object v1, Lc/e;->b:Lc/e;

    aput-object v1, v0, v3

    sget-object v1, Lc/e;->c:Lc/e;

    aput-object v1, v0, v4

    sput-object v0, Lc/e;->d:[Lc/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/e;
    .registers 2

    const-class v0, Lc/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/e;

    return-object v0
.end method

.method public static values()[Lc/e;
    .registers 1

    sget-object v0, Lc/e;->d:[Lc/e;

    invoke-virtual {v0}, [Lc/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e;

    return-object v0
.end method
