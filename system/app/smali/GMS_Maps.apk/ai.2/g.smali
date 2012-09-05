.class public final enum Lai/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lai/g;

.field public static final enum b:Lai/g;

.field private static final synthetic c:[Lai/g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lai/g;

    const-string v1, "AUTO_SCALE_ENABLED"

    invoke-direct {v0, v1, v2}, Lai/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/g;->a:Lai/g;

    new-instance v0, Lai/g;

    const-string v1, "AUTO_SCALE_DISABLED"

    invoke-direct {v0, v1, v3}, Lai/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lai/g;->b:Lai/g;

    const/4 v0, 0x2

    new-array v0, v0, [Lai/g;

    sget-object v1, Lai/g;->a:Lai/g;

    aput-object v1, v0, v2

    sget-object v1, Lai/g;->b:Lai/g;

    aput-object v1, v0, v3

    sput-object v0, Lai/g;->c:[Lai/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/g;
    .registers 2

    const-class v0, Lai/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lai/g;

    return-object v0
.end method

.method public static values()[Lai/g;
    .registers 1

    sget-object v0, Lai/g;->c:[Lai/g;

    invoke-virtual {v0}, [Lai/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/g;

    return-object v0
.end method
