.class final enum Lcom/google/android/location/os/real/F;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/location/os/real/F;

.field public static final enum b:Lcom/google/android/location/os/real/F;

.field public static final enum c:Lcom/google/android/location/os/real/F;

.field public static final enum d:Lcom/google/android/location/os/real/F;

.field private static final synthetic e:[Lcom/google/android/location/os/real/F;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/location/os/real/F;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/os/real/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/F;->a:Lcom/google/android/location/os/real/F;

    new-instance v0, Lcom/google/android/location/os/real/F;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/os/real/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    new-instance v0, Lcom/google/android/location/os/real/F;

    const-string v1, "MODEL_QUERY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/os/real/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/F;->c:Lcom/google/android/location/os/real/F;

    new-instance v0, Lcom/google/android/location/os/real/F;

    const-string v1, "DEVICE_LOCATION_QUERY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/os/real/F;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/real/F;->d:Lcom/google/android/location/os/real/F;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/os/real/F;

    sget-object v1, Lcom/google/android/location/os/real/F;->a:Lcom/google/android/location/os/real/F;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/os/real/F;->b:Lcom/google/android/location/os/real/F;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/os/real/F;->c:Lcom/google/android/location/os/real/F;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/os/real/F;->d:Lcom/google/android/location/os/real/F;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/os/real/F;->e:[Lcom/google/android/location/os/real/F;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/real/F;
    .registers 2

    const-class v0, Lcom/google/android/location/os/real/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/F;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/real/F;
    .registers 1

    sget-object v0, Lcom/google/android/location/os/real/F;->e:[Lcom/google/android/location/os/real/F;

    invoke-virtual {v0}, [Lcom/google/android/location/os/real/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/real/F;

    return-object v0
.end method
