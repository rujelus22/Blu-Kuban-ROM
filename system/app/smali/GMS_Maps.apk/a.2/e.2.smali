.class public final enum La/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:La/e;

.field public static final enum b:La/e;

.field public static final enum c:La/e;

.field public static final enum d:La/e;

.field public static final enum e:La/e;

.field public static final enum f:La/e;

.field public static final enum g:La/e;

.field public static final enum h:La/e;

.field private static final synthetic i:[La/e;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, La/e;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->a:La/e;

    new-instance v0, La/e;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->b:La/e;

    new-instance v0, La/e;

    const-string v1, "GPS_WAIT"

    invoke-direct {v0, v1, v5}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->c:La/e;

    new-instance v0, La/e;

    const-string v1, "SCAN_WAIT"

    invoke-direct {v0, v1, v6}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->d:La/e;

    new-instance v0, La/e;

    const-string v1, "POST_SCAN_GPS_WAIT"

    invoke-direct {v0, v1, v7}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->e:La/e;

    new-instance v0, La/e;

    const-string v1, "UPLOAD_WAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->f:La/e;

    new-instance v0, La/e;

    const-string v1, "CALIBRATION_WAIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->g:La/e;

    new-instance v0, La/e;

    const-string v1, "SENSOR_COLLECTION_WAIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, La/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e;->h:La/e;

    const/16 v0, 0x8

    new-array v0, v0, [La/e;

    sget-object v1, La/e;->a:La/e;

    aput-object v1, v0, v3

    sget-object v1, La/e;->b:La/e;

    aput-object v1, v0, v4

    sget-object v1, La/e;->c:La/e;

    aput-object v1, v0, v5

    sget-object v1, La/e;->d:La/e;

    aput-object v1, v0, v6

    sget-object v1, La/e;->e:La/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/e;->f:La/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/e;->g:La/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/e;->h:La/e;

    aput-object v2, v0, v1

    sput-object v0, La/e;->i:[La/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/e;
    .registers 2

    const-class v0, La/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/e;

    return-object v0
.end method

.method public static values()[La/e;
    .registers 1

    sget-object v0, La/e;->i:[La/e;

    invoke-virtual {v0}, [La/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/e;

    return-object v0
.end method
