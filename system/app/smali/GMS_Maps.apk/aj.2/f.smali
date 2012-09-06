.class public final enum Laj/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Laj/f;

.field public static final enum b:Laj/f;

.field public static final enum c:Laj/f;

.field private static final synthetic d:[Laj/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Laj/f;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2}, Laj/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj/f;->a:Laj/f;

    new-instance v0, Laj/f;

    const-string v1, "MAYBE"

    invoke-direct {v0, v1, v3}, Laj/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj/f;->b:Laj/f;

    new-instance v0, Laj/f;

    const-string v1, "YES"

    invoke-direct {v0, v1, v4}, Laj/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj/f;->c:Laj/f;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Laj/f;

    sget-object v1, Laj/f;->a:Laj/f;

    aput-object v1, v0, v2

    sget-object v1, Laj/f;->b:Laj/f;

    aput-object v1, v0, v3

    sget-object v1, Laj/f;->c:Laj/f;

    aput-object v1, v0, v4

    sput-object v0, Laj/f;->d:[Laj/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laj/f;
    .registers 2
    .parameter

    .prologue
    .line 32
    const-class v0, Laj/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laj/f;

    return-object v0
.end method

.method public static values()[Laj/f;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Laj/f;->d:[Laj/f;

    invoke-virtual {v0}, [Laj/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj/f;

    return-object v0
.end method
