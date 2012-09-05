.class final enum Ld/ag;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ld/ag;

.field public static final enum b:Ld/ag;

.field private static final synthetic c:[Ld/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ld/ag;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v2}, Ld/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ag;->a:Ld/ag;

    new-instance v0, Ld/ag;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v3}, Ld/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/ag;->b:Ld/ag;

    const/4 v0, 0x2

    new-array v0, v0, [Ld/ag;

    sget-object v1, Ld/ag;->a:Ld/ag;

    aput-object v1, v0, v2

    sget-object v1, Ld/ag;->b:Ld/ag;

    aput-object v1, v0, v3

    sput-object v0, Ld/ag;->c:[Ld/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/ag;
    .registers 2

    const-class v0, Ld/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ld/ag;

    return-object v0
.end method

.method public static values()[Ld/ag;
    .registers 1

    sget-object v0, Ld/ag;->c:[Ld/ag;

    invoke-virtual {v0}, [Ld/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/ag;

    return-object v0
.end method
