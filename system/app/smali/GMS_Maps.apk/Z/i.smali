.class public final enum Lz/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lz/i;

.field public static final enum b:Lz/i;

.field public static final enum c:Lz/i;

.field public static final enum d:Lz/i;

.field private static final synthetic g:[Lz/i;


# instance fields
.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lz/i;

    const-string v1, "NOT_LIVE"

    invoke-direct {v0, v1, v2, v2, v2}, Lz/i;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lz/i;->a:Lz/i;

    .line 24
    new-instance v0, Lz/i;

    const-string v1, "NOT_LIVE_WITH_NEW_CONTEXT"

    invoke-direct {v0, v1, v3, v2, v3}, Lz/i;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lz/i;->b:Lz/i;

    .line 25
    new-instance v0, Lz/i;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v4, v3, v2}, Lz/i;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lz/i;->c:Lz/i;

    .line 26
    new-instance v0, Lz/i;

    const-string v1, "LIVE_WITH_NEW_CONTEXT"

    invoke-direct {v0, v1, v5, v3, v3}, Lz/i;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lz/i;->d:Lz/i;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lz/i;

    sget-object v1, Lz/i;->a:Lz/i;

    aput-object v1, v0, v2

    sget-object v1, Lz/i;->b:Lz/i;

    aput-object v1, v0, v3

    sget-object v1, Lz/i;->c:Lz/i;

    aput-object v1, v0, v4

    sget-object v1, Lz/i;->d:Lz/i;

    aput-object v1, v0, v5

    sput-object v0, Lz/i;->g:[Lz/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-boolean p3, p0, Lz/i;->e:Z

    .line 33
    iput-boolean p4, p0, Lz/i;->f:Z

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz/i;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, Lz/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lz/i;

    return-object v0
.end method

.method public static values()[Lz/i;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lz/i;->g:[Lz/i;

    invoke-virtual {v0}, [Lz/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz/i;

    return-object v0
.end method
