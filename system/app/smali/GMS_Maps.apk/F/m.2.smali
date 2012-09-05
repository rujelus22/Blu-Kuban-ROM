.class public final enum LF/m;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/m;

.field public static final enum b:LF/m;

.field public static final enum c:LF/m;

.field public static final enum d:LF/m;

.field private static final synthetic e:[LF/m;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LF/m;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, LF/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/m;->a:LF/m;

    new-instance v0, LF/m;

    const-string v1, "ALMOST_INVALID"

    invoke-direct {v0, v1, v3}, LF/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/m;->b:LF/m;

    new-instance v0, LF/m;

    const-string v1, "COULD_BE_VALID"

    invoke-direct {v0, v1, v4}, LF/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/m;->c:LF/m;

    new-instance v0, LF/m;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v5}, LF/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/m;->d:LF/m;

    const/4 v0, 0x4

    new-array v0, v0, [LF/m;

    sget-object v1, LF/m;->a:LF/m;

    aput-object v1, v0, v2

    sget-object v1, LF/m;->b:LF/m;

    aput-object v1, v0, v3

    sget-object v1, LF/m;->c:LF/m;

    aput-object v1, v0, v4

    sget-object v1, LF/m;->d:LF/m;

    aput-object v1, v0, v5

    sput-object v0, LF/m;->e:[LF/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/m;
    .registers 2

    const-class v0, LF/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/m;

    return-object v0
.end method

.method public static values()[LF/m;
    .registers 1

    sget-object v0, LF/m;->e:[LF/m;

    invoke-virtual {v0}, [LF/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/m;

    return-object v0
.end method
