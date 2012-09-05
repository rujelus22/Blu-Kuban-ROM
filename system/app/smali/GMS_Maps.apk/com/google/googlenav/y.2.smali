.class public final enum Lcom/google/googlenav/y;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/y;

.field public static final enum b:Lcom/google/googlenav/y;

.field private static final synthetic c:[Lcom/google/googlenav/y;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/y;

    const-string v1, "ORIENTATION_PROVIDER_ACTIVITY_RESUME"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/y;->a:Lcom/google/googlenav/y;

    new-instance v0, Lcom/google/googlenav/y;

    const-string v1, "START_MOTION_RECOGNIZER"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/y;->b:Lcom/google/googlenav/y;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/y;

    sget-object v1, Lcom/google/googlenav/y;->a:Lcom/google/googlenav/y;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/y;->b:Lcom/google/googlenav/y;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/y;->c:[Lcom/google/googlenav/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/y;
    .registers 2

    const-class v0, Lcom/google/googlenav/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/y;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/y;
    .registers 1

    sget-object v0, Lcom/google/googlenav/y;->c:[Lcom/google/googlenav/y;

    invoke-virtual {v0}, [Lcom/google/googlenav/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/y;

    return-object v0
.end method
