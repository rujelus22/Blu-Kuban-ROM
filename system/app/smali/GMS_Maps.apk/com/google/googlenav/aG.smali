.class public final enum Lcom/google/googlenav/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ag;

.field public static final enum b:Lcom/google/googlenav/ag;

.field public static final enum c:Lcom/google/googlenav/ag;

.field private static final synthetic e:[Lcom/google/googlenav/ag;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/google/googlenav/ag;

    const-string v1, "NONE"

    const-string v2, "n"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    .line 14
    new-instance v0, Lcom/google/googlenav/ag;

    const-string v1, "TEMPORARY"

    const-string v2, "t"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ag;->b:Lcom/google/googlenav/ag;

    .line 16
    new-instance v0, Lcom/google/googlenav/ag;

    const-string v1, "DETAIL"

    const-string v2, "d"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/googlenav/ag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ag;->c:Lcom/google/googlenav/ag;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ag;

    sget-object v1, Lcom/google/googlenav/ag;->a:Lcom/google/googlenav/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ag;->b:Lcom/google/googlenav/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ag;->c:Lcom/google/googlenav/ag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ag;->e:[Lcom/google/googlenav/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/google/googlenav/ag;->d:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ag;
    .registers 2
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/google/googlenav/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ag;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ag;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/googlenav/ag;->e:[Lcom/google/googlenav/ag;

    invoke-virtual {v0}, [Lcom/google/googlenav/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ag;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ag;->d:Ljava/lang/String;

    return-object v0
.end method
