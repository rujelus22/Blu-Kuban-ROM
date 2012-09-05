.class public final enum Lcom/google/googlenav/prefetch/android/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/prefetch/android/d;

.field public static final enum b:Lcom/google/googlenav/prefetch/android/d;

.field private static final synthetic c:[Lcom/google/googlenav/prefetch/android/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/prefetch/android/d;

    const-string v1, "USER_INITIATED"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/prefetch/android/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/d;->a:Lcom/google/googlenav/prefetch/android/d;

    new-instance v0, Lcom/google/googlenav/prefetch/android/d;

    const-string v1, "NO_NETWORK_CONNECTION_IN_A_LONG_TIME"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/prefetch/android/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/d;->b:Lcom/google/googlenav/prefetch/android/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/prefetch/android/d;

    sget-object v1, Lcom/google/googlenav/prefetch/android/d;->a:Lcom/google/googlenav/prefetch/android/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/prefetch/android/d;->b:Lcom/google/googlenav/prefetch/android/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/prefetch/android/d;->c:[Lcom/google/googlenav/prefetch/android/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/prefetch/android/d;
    .registers 2

    const-class v0, Lcom/google/googlenav/prefetch/android/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/d;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/prefetch/android/d;
    .registers 1

    sget-object v0, Lcom/google/googlenav/prefetch/android/d;->c:[Lcom/google/googlenav/prefetch/android/d;

    invoke-virtual {v0}, [Lcom/google/googlenav/prefetch/android/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/d;

    return-object v0
.end method
