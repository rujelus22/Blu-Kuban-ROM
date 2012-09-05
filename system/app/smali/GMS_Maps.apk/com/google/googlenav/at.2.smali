.class public final enum Lcom/google/googlenav/at;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/at;

.field public static final enum b:Lcom/google/googlenav/at;

.field public static final enum c:Lcom/google/googlenav/at;

.field private static final synthetic d:[Lcom/google/googlenav/at;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/at;

    const-string v1, "NEED_TO_FETCH"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/at;

    new-instance v0, Lcom/google/googlenav/at;

    const-string v1, "FETCHING"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/at;->b:Lcom/google/googlenav/at;

    new-instance v0, Lcom/google/googlenav/at;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/at;

    sget-object v1, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/at;->b:Lcom/google/googlenav/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/at;->c:Lcom/google/googlenav/at;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/at;->d:[Lcom/google/googlenav/at;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/at;
    .registers 2

    const-class v0, Lcom/google/googlenav/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/at;
    .registers 1

    sget-object v0, Lcom/google/googlenav/at;->d:[Lcom/google/googlenav/at;

    invoke-virtual {v0}, [Lcom/google/googlenav/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/at;

    return-object v0
.end method
