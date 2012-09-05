.class public final enum LaK/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaK/j;

.field public static final enum b:LaK/j;

.field public static final enum c:LaK/j;

.field private static final synthetic d:[LaK/j;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaK/j;

    const-string v1, "ROUND"

    invoke-direct {v0, v1, v2}, LaK/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/j;->a:LaK/j;

    new-instance v0, LaK/j;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v3}, LaK/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/j;->b:LaK/j;

    new-instance v0, LaK/j;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v4}, LaK/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaK/j;->c:LaK/j;

    const/4 v0, 0x3

    new-array v0, v0, [LaK/j;

    sget-object v1, LaK/j;->a:LaK/j;

    aput-object v1, v0, v2

    sget-object v1, LaK/j;->b:LaK/j;

    aput-object v1, v0, v3

    sget-object v1, LaK/j;->c:LaK/j;

    aput-object v1, v0, v4

    sput-object v0, LaK/j;->d:[LaK/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaK/j;
    .registers 2

    const-class v0, LaK/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaK/j;

    return-object v0
.end method

.method public static values()[LaK/j;
    .registers 1

    sget-object v0, LaK/j;->d:[LaK/j;

    invoke-virtual {v0}, [LaK/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaK/j;

    return-object v0
.end method
