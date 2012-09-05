.class public final enum Lbb/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbb/h;

.field public static final enum b:Lbb/h;

.field public static final enum c:Lbb/h;

.field public static final enum d:Lbb/h;

.field public static final enum e:Lbb/h;

.field private static final synthetic f:[Lbb/h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lbb/h;

    const-string v1, "LIST_ITEMS"

    invoke-direct {v0, v1, v2}, Lbb/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/h;->a:Lbb/h;

    new-instance v0, Lbb/h;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v3}, Lbb/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/h;->b:Lbb/h;

    new-instance v0, Lbb/h;

    const-string v1, "LIST_HEADER"

    invoke-direct {v0, v1, v4}, Lbb/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/h;->c:Lbb/h;

    new-instance v0, Lbb/h;

    const-string v1, "HEADER_BUTTONS"

    invoke-direct {v0, v1, v5}, Lbb/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/h;->d:Lbb/h;

    new-instance v0, Lbb/h;

    const-string v1, "BUTTONS"

    invoke-direct {v0, v1, v6}, Lbb/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/h;->e:Lbb/h;

    const/4 v0, 0x5

    new-array v0, v0, [Lbb/h;

    sget-object v1, Lbb/h;->a:Lbb/h;

    aput-object v1, v0, v2

    sget-object v1, Lbb/h;->b:Lbb/h;

    aput-object v1, v0, v3

    sget-object v1, Lbb/h;->c:Lbb/h;

    aput-object v1, v0, v4

    sget-object v1, Lbb/h;->d:Lbb/h;

    aput-object v1, v0, v5

    sget-object v1, Lbb/h;->e:Lbb/h;

    aput-object v1, v0, v6

    sput-object v0, Lbb/h;->f:[Lbb/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbb/h;
    .registers 2

    const-class v0, Lbb/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbb/h;

    return-object v0
.end method

.method public static values()[Lbb/h;
    .registers 1

    sget-object v0, Lbb/h;->f:[Lbb/h;

    invoke-virtual {v0}, [Lbb/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbb/h;

    return-object v0
.end method
