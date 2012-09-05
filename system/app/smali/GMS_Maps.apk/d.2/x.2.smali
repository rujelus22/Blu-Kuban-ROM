.class public final enum Ld/x;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ld/x;

.field public static final enum b:Ld/x;

.field public static final enum c:Ld/x;

.field private static final synthetic d:[Ld/x;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ld/x;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v2}, Ld/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/x;->a:Ld/x;

    new-instance v0, Ld/x;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3}, Ld/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/x;->b:Ld/x;

    new-instance v0, Ld/x;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v4}, Ld/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/x;->c:Ld/x;

    const/4 v0, 0x3

    new-array v0, v0, [Ld/x;

    sget-object v1, Ld/x;->a:Ld/x;

    aput-object v1, v0, v2

    sget-object v1, Ld/x;->b:Ld/x;

    aput-object v1, v0, v3

    sget-object v1, Ld/x;->c:Ld/x;

    aput-object v1, v0, v4

    sput-object v0, Ld/x;->d:[Ld/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/x;
    .registers 2

    const-class v0, Ld/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ld/x;

    return-object v0
.end method

.method public static values()[Ld/x;
    .registers 1

    sget-object v0, Ld/x;->d:[Ld/x;

    invoke-virtual {v0}, [Ld/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/x;

    return-object v0
.end method
