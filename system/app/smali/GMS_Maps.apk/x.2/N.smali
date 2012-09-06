.class public final enum Lx/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lx/n;

.field public static final enum b:Lx/n;

.field public static final enum c:Lx/n;

.field public static final enum d:Lx/n;

.field private static final synthetic e:[Lx/n;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lx/n;

    const-string v1, "CCW_OUTLINE"

    invoke-direct {v0, v1, v2}, Lx/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/n;->a:Lx/n;

    .line 35
    new-instance v0, Lx/n;

    const-string v1, "CW_HOLES"

    invoke-direct {v0, v1, v3}, Lx/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/n;->b:Lx/n;

    .line 36
    new-instance v0, Lx/n;

    const-string v1, "NON_SELF_INTERSECTING"

    invoke-direct {v0, v1, v4}, Lx/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/n;->c:Lx/n;

    .line 37
    new-instance v0, Lx/n;

    const-string v1, "NO_LINES_STICKING_OUT"

    invoke-direct {v0, v1, v5}, Lx/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/n;->d:Lx/n;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lx/n;

    sget-object v1, Lx/n;->a:Lx/n;

    aput-object v1, v0, v2

    sget-object v1, Lx/n;->b:Lx/n;

    aput-object v1, v0, v3

    sget-object v1, Lx/n;->c:Lx/n;

    aput-object v1, v0, v4

    sget-object v1, Lx/n;->d:Lx/n;

    aput-object v1, v0, v5

    sput-object v0, Lx/n;->e:[Lx/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx/n;
    .registers 2
    .parameter

    .prologue
    .line 33
    const-class v0, Lx/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lx/n;

    return-object v0
.end method

.method public static values()[Lx/n;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lx/n;->e:[Lx/n;

    invoke-virtual {v0}, [Lx/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/n;

    return-object v0
.end method
