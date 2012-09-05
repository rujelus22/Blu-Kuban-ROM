.class final enum LK/ca;
.super Ljava/lang/Enum;

# interfaces
.implements LK/bV;


# static fields
.field public static final enum a:LK/ca;

.field private static final synthetic b:[LK/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, LK/ca;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, LK/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK/ca;->a:LK/ca;

    const/4 v0, 0x1

    new-array v0, v0, [LK/ca;

    sget-object v1, LK/ca;->a:LK/ca;

    aput-object v1, v0, v2

    sput-object v0, LK/ca;->b:[LK/ca;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK/ca;
    .registers 2

    const-class v0, LK/ca;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK/ca;

    return-object v0
.end method

.method public static values()[LK/ca;
    .registers 1

    sget-object v0, LK/ca;->b:[LK/ca;

    invoke-virtual {v0}, [LK/ca;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK/ca;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
