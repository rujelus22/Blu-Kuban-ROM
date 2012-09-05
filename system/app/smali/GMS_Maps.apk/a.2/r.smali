.class public final enum La/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/r;

.field public static final enum b:La/r;

.field public static final enum c:La/r;

.field public static final enum d:La/r;

.field public static final enum e:La/r;

.field private static final synthetic f:[La/r;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, La/r;

    const-string v1, "MEAN"

    invoke-direct {v0, v1, v2}, La/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/r;->a:La/r;

    new-instance v0, La/r;

    const-string v1, "STD_DEV"

    invoke-direct {v0, v1, v3}, La/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/r;->b:La/r;

    new-instance v0, La/r;

    const-string v1, "STD_DEV_GRAVITY"

    invoke-direct {v0, v1, v4}, La/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/r;->c:La/r;

    new-instance v0, La/r;

    const-string v1, "EARLY_MEAN"

    invoke-direct {v0, v1, v5}, La/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/r;->d:La/r;

    new-instance v0, La/r;

    const-string v1, "LATE_MEAN"

    invoke-direct {v0, v1, v6}, La/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/r;->e:La/r;

    const/4 v0, 0x5

    new-array v0, v0, [La/r;

    sget-object v1, La/r;->a:La/r;

    aput-object v1, v0, v2

    sget-object v1, La/r;->b:La/r;

    aput-object v1, v0, v3

    sget-object v1, La/r;->c:La/r;

    aput-object v1, v0, v4

    sget-object v1, La/r;->d:La/r;

    aput-object v1, v0, v5

    sget-object v1, La/r;->e:La/r;

    aput-object v1, v0, v6

    sput-object v0, La/r;->f:[La/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/r;
    .registers 2

    const-class v0, La/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/r;

    return-object v0
.end method

.method public static values()[La/r;
    .registers 1

    sget-object v0, La/r;->f:[La/r;

    invoke-virtual {v0}, [La/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/r;

    return-object v0
.end method
