.class public final enum LF/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/l;

.field public static final enum b:LF/l;

.field public static final enum c:LF/l;

.field private static final synthetic d:[LF/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LF/l;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, LF/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/l;->a:LF/l;

    new-instance v0, LF/l;

    const-string v1, "NOT_SURE"

    invoke-direct {v0, v1, v3}, LF/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/l;->b:LF/l;

    new-instance v0, LF/l;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v4}, LF/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF/l;->c:LF/l;

    const/4 v0, 0x3

    new-array v0, v0, [LF/l;

    sget-object v1, LF/l;->a:LF/l;

    aput-object v1, v0, v2

    sget-object v1, LF/l;->b:LF/l;

    aput-object v1, v0, v3

    sget-object v1, LF/l;->c:LF/l;

    aput-object v1, v0, v4

    sput-object v0, LF/l;->d:[LF/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/l;
    .registers 2

    const-class v0, LF/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/l;

    return-object v0
.end method

.method public static values()[LF/l;
    .registers 1

    sget-object v0, LF/l;->d:[LF/l;

    invoke-virtual {v0}, [LF/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/l;

    return-object v0
.end method
