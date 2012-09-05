.class public final enum LaD/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaD/h;

.field public static final enum b:LaD/h;

.field public static final enum c:LaD/h;

.field private static final synthetic d:[LaD/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaD/h;

    const-string v1, "LAST_WEEK"

    invoke-direct {v0, v1, v2}, LaD/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaD/h;->a:LaD/h;

    new-instance v0, LaD/h;

    const-string v1, "THIS_WEEK"

    invoke-direct {v0, v1, v3}, LaD/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaD/h;->b:LaD/h;

    new-instance v0, LaD/h;

    const-string v1, "ALL_TIME"

    invoke-direct {v0, v1, v4}, LaD/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaD/h;->c:LaD/h;

    const/4 v0, 0x3

    new-array v0, v0, [LaD/h;

    sget-object v1, LaD/h;->a:LaD/h;

    aput-object v1, v0, v2

    sget-object v1, LaD/h;->b:LaD/h;

    aput-object v1, v0, v3

    sget-object v1, LaD/h;->c:LaD/h;

    aput-object v1, v0, v4

    sput-object v0, LaD/h;->d:[LaD/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaD/h;
    .registers 2

    const-class v0, LaD/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaD/h;

    return-object v0
.end method

.method public static values()[LaD/h;
    .registers 1

    sget-object v0, LaD/h;->d:[LaD/h;

    invoke-virtual {v0}, [LaD/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaD/h;

    return-object v0
.end method
