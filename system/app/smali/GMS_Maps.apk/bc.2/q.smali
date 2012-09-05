.class public final enum Lbc/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbc/q;

.field public static final enum b:Lbc/q;

.field public static final enum c:Lbc/q;

.field public static final enum d:Lbc/q;

.field public static final enum e:Lbc/q;

.field private static final synthetic f:[Lbc/q;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbc/q;

    const-string v1, "FIRST_WALK"

    invoke-direct {v0, v1, v2}, Lbc/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbc/q;->a:Lbc/q;

    new-instance v0, Lbc/q;

    const-string v1, "BOARD"

    invoke-direct {v0, v1, v3}, Lbc/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbc/q;->b:Lbc/q;

    new-instance v0, Lbc/q;

    const-string v1, "STAY"

    invoke-direct {v0, v1, v4}, Lbc/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbc/q;->c:Lbc/q;

    new-instance v0, Lbc/q;

    const-string v1, "GET_OFF"

    invoke-direct {v0, v1, v5}, Lbc/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbc/q;->d:Lbc/q;

    new-instance v0, Lbc/q;

    const-string v1, "DESTINATION"

    invoke-direct {v0, v1, v6}, Lbc/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbc/q;->e:Lbc/q;

    const/4 v0, 0x5

    new-array v0, v0, [Lbc/q;

    sget-object v1, Lbc/q;->a:Lbc/q;

    aput-object v1, v0, v2

    sget-object v1, Lbc/q;->b:Lbc/q;

    aput-object v1, v0, v3

    sget-object v1, Lbc/q;->c:Lbc/q;

    aput-object v1, v0, v4

    sget-object v1, Lbc/q;->d:Lbc/q;

    aput-object v1, v0, v5

    sget-object v1, Lbc/q;->e:Lbc/q;

    aput-object v1, v0, v6

    sput-object v0, Lbc/q;->f:[Lbc/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbc/q;
    .registers 2

    const-class v0, Lbc/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbc/q;

    return-object v0
.end method

.method public static values()[Lbc/q;
    .registers 1

    sget-object v0, Lbc/q;->f:[Lbc/q;

    invoke-virtual {v0}, [Lbc/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbc/q;

    return-object v0
.end method
