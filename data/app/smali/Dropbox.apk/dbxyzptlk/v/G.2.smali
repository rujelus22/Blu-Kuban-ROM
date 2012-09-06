.class abstract enum Ldbxyzptlk/v/G;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Ldbxyzptlk/v/G;

.field public static final enum b:Ldbxyzptlk/v/G;

.field public static final enum c:Ldbxyzptlk/v/G;

.field private static final synthetic d:[Ldbxyzptlk/v/G;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Ldbxyzptlk/v/H;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/v/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/v/G;->a:Ldbxyzptlk/v/G;

    .line 364
    new-instance v0, Ldbxyzptlk/v/I;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Ldbxyzptlk/v/I;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/v/G;->b:Ldbxyzptlk/v/G;

    .line 396
    new-instance v0, Ldbxyzptlk/v/J;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Ldbxyzptlk/v/J;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/v/G;->c:Ldbxyzptlk/v/G;

    .line 331
    const/4 v0, 0x3

    new-array v0, v0, [Ldbxyzptlk/v/G;

    sget-object v1, Ldbxyzptlk/v/G;->a:Ldbxyzptlk/v/G;

    aput-object v1, v0, v2

    sget-object v1, Ldbxyzptlk/v/G;->b:Ldbxyzptlk/v/G;

    aput-object v1, v0, v3

    sget-object v1, Ldbxyzptlk/v/G;->c:Ldbxyzptlk/v/G;

    aput-object v1, v0, v4

    sput-object v0, Ldbxyzptlk/v/G;->d:[Ldbxyzptlk/v/G;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILdbxyzptlk/v/u;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/v/G;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldbxyzptlk/v/G;
    .registers 2
    .parameter

    .prologue
    .line 331
    const-class v0, Ldbxyzptlk/v/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/v/G;

    return-object v0
.end method

.method public static values()[Ldbxyzptlk/v/G;
    .registers 1

    .prologue
    .line 331
    sget-object v0, Ldbxyzptlk/v/G;->d:[Ldbxyzptlk/v/G;

    invoke-virtual {v0}, [Ldbxyzptlk/v/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldbxyzptlk/v/G;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
.end method

.method abstract a(Ldbxyzptlk/v/z;Ljava/lang/Object;)Ldbxyzptlk/v/M;
.end method

.method abstract a(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
