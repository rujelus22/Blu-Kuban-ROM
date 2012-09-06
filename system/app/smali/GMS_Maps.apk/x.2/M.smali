.class public final enum Lx/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lx/m;

.field public static final enum b:Lx/m;

.field public static final enum c:Lx/m;

.field private static final synthetic d:[Lx/m;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lx/m;

    const-string v1, "EMPTY_MESH"

    invoke-direct {v0, v1, v2}, Lx/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/m;->a:Lx/m;

    new-instance v0, Lx/m;

    const-string v1, "TESSELLATE_MONOTONE"

    invoke-direct {v0, v1, v3}, Lx/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/m;->b:Lx/m;

    new-instance v0, Lx/m;

    const-string v1, "CUT_AND_TESSELLATE"

    invoke-direct {v0, v1, v4}, Lx/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx/m;->c:Lx/m;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lx/m;

    sget-object v1, Lx/m;->a:Lx/m;

    aput-object v1, v0, v2

    sget-object v1, Lx/m;->b:Lx/m;

    aput-object v1, v0, v3

    sget-object v1, Lx/m;->c:Lx/m;

    aput-object v1, v0, v4

    sput-object v0, Lx/m;->d:[Lx/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx/m;
    .registers 2
    .parameter

    .prologue
    .line 72
    const-class v0, Lx/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lx/m;

    return-object v0
.end method

.method public static values()[Lx/m;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lx/m;->d:[Lx/m;

    invoke-virtual {v0}, [Lx/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/m;

    return-object v0
.end method
