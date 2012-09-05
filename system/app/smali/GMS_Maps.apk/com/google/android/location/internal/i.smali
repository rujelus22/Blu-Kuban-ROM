.class public final enum Lcom/google/android/location/internal/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/location/internal/i;

.field public static final enum b:Lcom/google/android/location/internal/i;

.field public static final enum c:Lcom/google/android/location/internal/i;

.field private static final synthetic e:[Lcom/google/android/location/internal/i;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/location/internal/i;

    const-string v1, "ANDROID"

    const-string v2, "com.google.android.location"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/location/internal/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/i;->a:Lcom/google/android/location/internal/i;

    new-instance v0, Lcom/google/android/location/internal/i;

    const-string v1, "GMM"

    const-string v2, "com.google.android.apps.maps"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/location/internal/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    new-instance v0, Lcom/google/android/location/internal/i;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/location/internal/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/i;->c:Lcom/google/android/location/internal/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/internal/i;

    sget-object v1, Lcom/google/android/location/internal/i;->a:Lcom/google/android/location/internal/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/internal/i;->c:Lcom/google/android/location/internal/i;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/internal/i;->e:[Lcom/google/android/location/internal/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/location/internal/i;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/internal/i;
    .registers 2

    const-class v0, Lcom/google/android/location/internal/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/i;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/internal/i;
    .registers 1

    sget-object v0, Lcom/google/android/location/internal/i;->e:[Lcom/google/android/location/internal/i;

    invoke-virtual {v0}, [Lcom/google/android/location/internal/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/internal/i;

    return-object v0
.end method
