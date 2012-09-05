.class final enum Lb/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/d;

.field public static final enum b:Lb/d;

.field public static final enum c:Lb/d;

.field public static final enum d:Lb/d;

.field public static final enum e:Lb/d;

.field public static final enum f:Lb/d;

.field public static final enum g:Lb/d;

.field public static final enum h:Lb/d;

.field private static final synthetic i:[Lb/d;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lb/d;

    const-string v1, "SCAN_OVERLAP_RATIO_0_2"

    invoke-direct {v0, v1, v3}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->a:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "SCAN_OVERLAP_COUNT_0_2"

    invoke-direct {v0, v1, v4}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->b:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "SCAN_OVERLAP_MIN_RADIUS_0_2"

    invoke-direct {v0, v1, v5}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->c:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "SCAN_OVERLAP_RATIO_1_2"

    invoke-direct {v0, v1, v6}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->d:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "WIFI_LOC_DISTANCE_0_1"

    invoke-direct {v0, v1, v7}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->e:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "WIFI_LOC_DISTANCE_0_2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->f:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "WIFI_LOC_DISTANCE_1_2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->g:Lb/d;

    new-instance v0, Lb/d;

    const-string v1, "CELL_LOC_DISTANCE_0_2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d;->h:Lb/d;

    const/16 v0, 0x8

    new-array v0, v0, [Lb/d;

    sget-object v1, Lb/d;->a:Lb/d;

    aput-object v1, v0, v3

    sget-object v1, Lb/d;->b:Lb/d;

    aput-object v1, v0, v4

    sget-object v1, Lb/d;->c:Lb/d;

    aput-object v1, v0, v5

    sget-object v1, Lb/d;->d:Lb/d;

    aput-object v1, v0, v6

    sget-object v1, Lb/d;->e:Lb/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/d;->f:Lb/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/d;->g:Lb/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/d;->h:Lb/d;

    aput-object v2, v0, v1

    sput-object v0, Lb/d;->i:[Lb/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/d;
    .registers 2

    const-class v0, Lb/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/d;

    return-object v0
.end method

.method public static values()[Lb/d;
    .registers 1

    sget-object v0, Lb/d;->i:[Lb/d;

    invoke-virtual {v0}, [Lb/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/d;

    return-object v0
.end method
