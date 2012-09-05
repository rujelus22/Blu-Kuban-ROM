.class public final enum Li/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Li/e;

.field public static final enum b:Li/e;

.field private static final synthetic c:[Li/e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Li/e;

    const-string v1, "OS_GENERATED"

    invoke-direct {v0, v1, v2}, Li/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/e;->a:Li/e;

    new-instance v0, Li/e;

    const-string v1, "CLIENT_GENERATED"

    invoke-direct {v0, v1, v3}, Li/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/e;->b:Li/e;

    const/4 v0, 0x2

    new-array v0, v0, [Li/e;

    sget-object v1, Li/e;->a:Li/e;

    aput-object v1, v0, v2

    sget-object v1, Li/e;->b:Li/e;

    aput-object v1, v0, v3

    sput-object v0, Li/e;->c:[Li/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/e;
    .registers 2

    const-class v0, Li/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Li/e;

    return-object v0
.end method

.method public static values()[Li/e;
    .registers 1

    sget-object v0, Li/e;->c:[Li/e;

    invoke-virtual {v0}, [Li/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/e;

    return-object v0
.end method
