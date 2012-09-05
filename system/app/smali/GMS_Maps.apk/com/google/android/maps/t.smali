.class public final enum Lcom/google/android/maps/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/t;

.field public static final enum b:Lcom/google/android/maps/t;

.field public static final enum c:Lcom/google/android/maps/t;

.field public static final enum d:Lcom/google/android/maps/t;

.field private static final synthetic e:[Lcom/google/android/maps/t;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/t;

    const-string v1, "ENTRY_POINT_MAPS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    new-instance v0, Lcom/google/android/maps/t;

    const-string v1, "ENTRY_POINT_PLACES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/t;->b:Lcom/google/android/maps/t;

    new-instance v0, Lcom/google/android/maps/t;

    const-string v1, "ENTRY_POINT_LATITUDE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/t;->c:Lcom/google/android/maps/t;

    new-instance v0, Lcom/google/android/maps/t;

    const-string v1, "ENTRY_POINT_LATITUDE_SETTINGS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/maps/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/t;->d:Lcom/google/android/maps/t;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/t;

    sget-object v1, Lcom/google/android/maps/t;->a:Lcom/google/android/maps/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/t;->b:Lcom/google/android/maps/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/t;->c:Lcom/google/android/maps/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/t;->d:Lcom/google/android/maps/t;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/maps/t;->e:[Lcom/google/android/maps/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/t;
    .registers 2

    const-class v0, Lcom/google/android/maps/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/t;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/t;
    .registers 1

    sget-object v0, Lcom/google/android/maps/t;->e:[Lcom/google/android/maps/t;

    invoke-virtual {v0}, [Lcom/google/android/maps/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/t;

    return-object v0
.end method
