.class public final enum LF/D;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/D;

.field public static final enum b:LF/D;

.field public static final enum c:LF/D;

.field private static final synthetic d:[LF/D;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LF/D;

    const-string v1, "LOCATION_CHANGED"

    invoke-direct {v0, v1, v2}, LF/D;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/D;->a:LF/D;

    new-instance v0, LF/D;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v3}, LF/D;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/D;->b:LF/D;

    new-instance v0, LF/D;

    const-string v1, "LOCATION_LOST"

    invoke-direct {v0, v1, v4}, LF/D;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/D;->c:LF/D;

    const/4 v0, 0x3

    new-array v0, v0, [LF/D;

    sget-object v1, LF/D;->a:LF/D;

    aput-object v1, v0, v2

    sget-object v1, LF/D;->b:LF/D;

    aput-object v1, v0, v3

    sget-object v1, LF/D;->c:LF/D;

    aput-object v1, v0, v4

    sput-object v0, LF/D;->d:[LF/D;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/D;
    .registers 2

    const-class v0, LF/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/D;

    return-object v0
.end method

.method public static values()[LF/D;
    .registers 1

    sget-object v0, LF/D;->d:[LF/D;

    invoke-virtual {v0}, [LF/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/D;

    return-object v0
.end method
