.class final enum Lz/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lz/f;

.field public static final enum b:Lz/f;

.field public static final enum c:Lz/f;

.field private static final synthetic d:[Lz/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lz/f;

    const-string v1, "PERSPECTIVE"

    invoke-direct {v0, v1, v2}, Lz/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz/f;->a:Lz/f;

    new-instance v0, Lz/f;

    const-string v1, "ORTHOGRAPHIC"

    invoke-direct {v0, v1, v3}, Lz/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz/f;->b:Lz/f;

    new-instance v0, Lz/f;

    const-string v1, "USER_SET"

    invoke-direct {v0, v1, v4}, Lz/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz/f;->c:Lz/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lz/f;

    sget-object v1, Lz/f;->a:Lz/f;

    aput-object v1, v0, v2

    sget-object v1, Lz/f;->b:Lz/f;

    aput-object v1, v0, v3

    sget-object v1, Lz/f;->c:Lz/f;

    aput-object v1, v0, v4

    sput-object v0, Lz/f;->d:[Lz/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz/f;
    .registers 2
    .parameter

    .prologue
    .line 105
    const-class v0, Lz/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lz/f;

    return-object v0
.end method

.method public static values()[Lz/f;
    .registers 1

    .prologue
    .line 105
    sget-object v0, Lz/f;->d:[Lz/f;

    invoke-virtual {v0}, [Lz/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/f;

    return-object v0
.end method
