.class public final enum Lcom/google/googlenav/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/i;

.field public static final enum b:Lcom/google/googlenav/i;

.field public static final enum c:Lcom/google/googlenav/i;

.field private static final synthetic d:[Lcom/google/googlenav/i;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/i;

    const-string v1, "RATED"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    new-instance v0, Lcom/google/googlenav/i;

    const-string v1, "NOT_RATED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    new-instance v0, Lcom/google/googlenav/i;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/i;->c:Lcom/google/googlenav/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/i;

    sget-object v1, Lcom/google/googlenav/i;->a:Lcom/google/googlenav/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/i;->b:Lcom/google/googlenav/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/i;->c:Lcom/google/googlenav/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/i;->d:[Lcom/google/googlenav/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/i;
    .registers 2

    const-class v0, Lcom/google/googlenav/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/i;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/i;
    .registers 1

    sget-object v0, Lcom/google/googlenav/i;->d:[Lcom/google/googlenav/i;

    invoke-virtual {v0}, [Lcom/google/googlenav/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/i;

    return-object v0
.end method
