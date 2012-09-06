.class public final enum Lx/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lx/q;

.field public static final enum b:Lx/q;

.field public static final enum c:Lx/q;

.field public static final enum d:Lx/q;

.field public static final enum e:Lx/q;

.field private static final synthetic f:[Lx/q;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lx/q;

    const-string v1, "NO_VERIFICATION"

    invoke-direct {v0, v1, v2}, Lx/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/q;->a:Lx/q;

    .line 41
    new-instance v0, Lx/q;

    const-string v1, "NO_VERIFICATION_WITH_REASON"

    invoke-direct {v0, v1, v3}, Lx/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/q;->b:Lx/q;

    .line 42
    new-instance v0, Lx/q;

    const-string v1, "AREA_VERIFICATION"

    invoke-direct {v0, v1, v4}, Lx/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/q;->c:Lx/q;

    .line 43
    new-instance v0, Lx/q;

    const-string v1, "AREA_VERIFICATION_WITH_REASON"

    invoke-direct {v0, v1, v5}, Lx/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/q;->d:Lx/q;

    .line 44
    new-instance v0, Lx/q;

    const-string v1, "COMPLETE_VERIFICATION"

    invoke-direct {v0, v1, v6}, Lx/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/q;->e:Lx/q;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lx/q;

    sget-object v1, Lx/q;->a:Lx/q;

    aput-object v1, v0, v2

    sget-object v1, Lx/q;->b:Lx/q;

    aput-object v1, v0, v3

    sget-object v1, Lx/q;->c:Lx/q;

    aput-object v1, v0, v4

    sget-object v1, Lx/q;->d:Lx/q;

    aput-object v1, v0, v5

    sget-object v1, Lx/q;->e:Lx/q;

    aput-object v1, v0, v6

    sput-object v0, Lx/q;->f:[Lx/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx/q;
    .registers 2
    .parameter

    .prologue
    .line 39
    const-class v0, Lx/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lx/q;

    return-object v0
.end method

.method public static values()[Lx/q;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lx/q;->f:[Lx/q;

    invoke-virtual {v0}, [Lx/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/q;

    return-object v0
.end method
