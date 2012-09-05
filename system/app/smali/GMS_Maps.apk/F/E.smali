.class public final enum LF/E;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/E;

.field public static final enum b:LF/E;

.field public static final enum c:LF/E;

.field private static final synthetic d:[LF/E;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LF/E;

    const-string v1, "MISSED_STOP"

    invoke-direct {v0, v1, v2}, LF/E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/E;->a:LF/E;

    new-instance v0, LF/E;

    const-string v1, "WRONG_WAY"

    invoke-direct {v0, v1, v3}, LF/E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/E;->b:LF/E;

    new-instance v0, LF/E;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, LF/E;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/E;->c:LF/E;

    const/4 v0, 0x3

    new-array v0, v0, [LF/E;

    sget-object v1, LF/E;->a:LF/E;

    aput-object v1, v0, v2

    sget-object v1, LF/E;->b:LF/E;

    aput-object v1, v0, v3

    sget-object v1, LF/E;->c:LF/E;

    aput-object v1, v0, v4

    sput-object v0, LF/E;->d:[LF/E;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/E;
    .registers 2

    const-class v0, LF/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/E;

    return-object v0
.end method

.method public static values()[LF/E;
    .registers 1

    sget-object v0, LF/E;->d:[LF/E;

    invoke-virtual {v0}, [LF/E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/E;

    return-object v0
.end method
