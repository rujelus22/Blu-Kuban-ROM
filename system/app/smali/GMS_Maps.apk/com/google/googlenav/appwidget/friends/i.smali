.class final enum Lcom/google/googlenav/appwidget/friends/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/appwidget/friends/i;

.field public static final enum b:Lcom/google/googlenav/appwidget/friends/i;

.field public static final enum c:Lcom/google/googlenav/appwidget/friends/i;

.field private static final synthetic d:[Lcom/google/googlenav/appwidget/friends/i;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/appwidget/friends/i;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/appwidget/friends/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    new-instance v0, Lcom/google/googlenav/appwidget/friends/i;

    const-string v1, "CACHED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/appwidget/friends/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    new-instance v0, Lcom/google/googlenav/appwidget/friends/i;

    const-string v1, "NOT_SIGNED_IN"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/appwidget/friends/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/appwidget/friends/i;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/i;->a:Lcom/google/googlenav/appwidget/friends/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/appwidget/friends/i;->b:Lcom/google/googlenav/appwidget/friends/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/appwidget/friends/i;->c:Lcom/google/googlenav/appwidget/friends/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/appwidget/friends/i;->d:[Lcom/google/googlenav/appwidget/friends/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/appwidget/friends/i;
    .registers 2

    const-class v0, Lcom/google/googlenav/appwidget/friends/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/appwidget/friends/i;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/appwidget/friends/i;
    .registers 1

    sget-object v0, Lcom/google/googlenav/appwidget/friends/i;->d:[Lcom/google/googlenav/appwidget/friends/i;

    invoke-virtual {v0}, [Lcom/google/googlenav/appwidget/friends/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/appwidget/friends/i;

    return-object v0
.end method
