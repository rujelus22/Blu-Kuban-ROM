.class final enum Lg/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lg/d;

.field public static final enum b:Lg/d;

.field private static final synthetic c:[Lg/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lg/d;

    const-string v1, "LEAF"

    invoke-direct {v0, v1, v2}, Lg/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/d;->a:Lg/d;

    new-instance v0, Lg/d;

    const-string v1, "INNER"

    invoke-direct {v0, v1, v3}, Lg/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/d;->b:Lg/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lg/d;

    sget-object v1, Lg/d;->a:Lg/d;

    aput-object v1, v0, v2

    sget-object v1, Lg/d;->b:Lg/d;

    aput-object v1, v0, v3

    sput-object v0, Lg/d;->c:[Lg/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/d;
    .registers 2

    const-class v0, Lg/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lg/d;

    return-object v0
.end method

.method public static values()[Lg/d;
    .registers 1

    sget-object v0, Lg/d;->c:[Lg/d;

    invoke-virtual {v0}, [Lg/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/d;

    return-object v0
.end method
