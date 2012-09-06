.class public final enum Ldbxyzptlk/e/m;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Ldbxyzptlk/e/m;

.field public static final enum b:Ldbxyzptlk/e/m;

.field public static final enum c:Ldbxyzptlk/e/m;

.field private static final synthetic d:[Ldbxyzptlk/e/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Ldbxyzptlk/e/m;

    const-string v1, "FOLDER_EXISTS"

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/e/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/e/m;->a:Ldbxyzptlk/e/m;

    .line 14
    new-instance v0, Ldbxyzptlk/e/m;

    const-string v1, "NETWORK_DOWN"

    invoke-direct {v0, v1, v3}, Ldbxyzptlk/e/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/e/m;->b:Ldbxyzptlk/e/m;

    .line 15
    new-instance v0, Ldbxyzptlk/e/m;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Ldbxyzptlk/e/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldbxyzptlk/e/m;->c:Ldbxyzptlk/e/m;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Ldbxyzptlk/e/m;

    sget-object v1, Ldbxyzptlk/e/m;->a:Ldbxyzptlk/e/m;

    aput-object v1, v0, v2

    sget-object v1, Ldbxyzptlk/e/m;->b:Ldbxyzptlk/e/m;

    aput-object v1, v0, v3

    sget-object v1, Ldbxyzptlk/e/m;->c:Ldbxyzptlk/e/m;

    aput-object v1, v0, v4

    sput-object v0, Ldbxyzptlk/e/m;->d:[Ldbxyzptlk/e/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldbxyzptlk/e/m;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, Ldbxyzptlk/e/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/e/m;

    return-object v0
.end method

.method public static values()[Ldbxyzptlk/e/m;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Ldbxyzptlk/e/m;->d:[Ldbxyzptlk/e/m;

    invoke-virtual {v0}, [Ldbxyzptlk/e/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldbxyzptlk/e/m;

    return-object v0
.end method
