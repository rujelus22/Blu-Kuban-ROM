.class public final enum LH/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LH/n;

.field public static final enum b:LH/n;

.field public static final enum c:LH/n;

.field private static final synthetic d:[LH/n;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LH/n;

    const-string v1, "NAVIGATION_LOCATION_KNOWN"

    invoke-direct {v0, v1, v2}, LH/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH/n;->a:LH/n;

    new-instance v0, LH/n;

    const-string v1, "NAVIGATION_LOCATION_LOST"

    invoke-direct {v0, v1, v3}, LH/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH/n;->b:LH/n;

    new-instance v0, LH/n;

    const-string v1, "NAVIGATION_OFF_ROUTE"

    invoke-direct {v0, v1, v4}, LH/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH/n;->c:LH/n;

    const/4 v0, 0x3

    new-array v0, v0, [LH/n;

    sget-object v1, LH/n;->a:LH/n;

    aput-object v1, v0, v2

    sget-object v1, LH/n;->b:LH/n;

    aput-object v1, v0, v3

    sget-object v1, LH/n;->c:LH/n;

    aput-object v1, v0, v4

    sput-object v0, LH/n;->d:[LH/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH/n;
    .registers 2

    const-class v0, LH/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LH/n;

    return-object v0
.end method

.method public static values()[LH/n;
    .registers 1

    sget-object v0, LH/n;->d:[LH/n;

    invoke-virtual {v0}, [LH/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH/n;

    return-object v0
.end method
