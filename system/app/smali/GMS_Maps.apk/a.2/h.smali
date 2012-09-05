.class final enum La/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/h;

.field public static final enum b:La/h;

.field public static final enum c:La/h;

.field private static final synthetic d:[La/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/h;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, La/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/h;->a:La/h;

    new-instance v0, La/h;

    const-string v1, "ON_GPS"

    invoke-direct {v0, v1, v3}, La/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/h;->b:La/h;

    new-instance v0, La/h;

    const-string v1, "ON_UPLOAD"

    invoke-direct {v0, v1, v4}, La/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/h;->c:La/h;

    const/4 v0, 0x3

    new-array v0, v0, [La/h;

    sget-object v1, La/h;->a:La/h;

    aput-object v1, v0, v2

    sget-object v1, La/h;->b:La/h;

    aput-object v1, v0, v3

    sget-object v1, La/h;->c:La/h;

    aput-object v1, v0, v4

    sput-object v0, La/h;->d:[La/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/h;
    .registers 2

    const-class v0, La/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/h;

    return-object v0
.end method

.method public static values()[La/h;
    .registers 1

    sget-object v0, La/h;->d:[La/h;

    invoke-virtual {v0}, [La/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/h;

    return-object v0
.end method
