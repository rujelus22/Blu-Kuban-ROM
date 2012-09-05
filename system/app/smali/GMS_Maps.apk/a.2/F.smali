.class final enum La/F;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/F;

.field public static final enum b:La/F;

.field public static final enum c:La/F;

.field private static final synthetic d:[La/F;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/F;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, La/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/F;->a:La/F;

    new-instance v0, La/F;

    const-string v1, "WIFI_WAIT"

    invoke-direct {v0, v1, v3}, La/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/F;->b:La/F;

    new-instance v0, La/F;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, La/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/F;->c:La/F;

    const/4 v0, 0x3

    new-array v0, v0, [La/F;

    sget-object v1, La/F;->a:La/F;

    aput-object v1, v0, v2

    sget-object v1, La/F;->b:La/F;

    aput-object v1, v0, v3

    sget-object v1, La/F;->c:La/F;

    aput-object v1, v0, v4

    sput-object v0, La/F;->d:[La/F;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/F;
    .registers 2

    const-class v0, La/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/F;

    return-object v0
.end method

.method public static values()[La/F;
    .registers 1

    sget-object v0, La/F;->d:[La/F;

    invoke-virtual {v0}, [La/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/F;

    return-object v0
.end method
