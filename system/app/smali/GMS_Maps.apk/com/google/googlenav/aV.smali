.class public final enum Lcom/google/googlenav/av;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/av;

.field public static final enum b:Lcom/google/googlenav/av;

.field public static final enum c:Lcom/google/googlenav/av;

.field private static final synthetic d:[Lcom/google/googlenav/av;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    new-instance v0, Lcom/google/googlenav/av;

    const-string v1, "NEED_TO_FETCH"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/av;->a:Lcom/google/googlenav/av;

    .line 323
    new-instance v0, Lcom/google/googlenav/av;

    const-string v1, "FETCHING"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/av;->b:Lcom/google/googlenav/av;

    .line 324
    new-instance v0, Lcom/google/googlenav/av;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/av;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    .line 321
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/av;

    sget-object v1, Lcom/google/googlenav/av;->a:Lcom/google/googlenav/av;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/av;->b:Lcom/google/googlenav/av;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/av;->c:Lcom/google/googlenav/av;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/av;->d:[Lcom/google/googlenav/av;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/av;
    .registers 2
    .parameter

    .prologue
    .line 321
    const-class v0, Lcom/google/googlenav/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/av;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/av;
    .registers 1

    .prologue
    .line 321
    sget-object v0, Lcom/google/googlenav/av;->d:[Lcom/google/googlenav/av;

    invoke-virtual {v0}, [Lcom/google/googlenav/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/av;

    return-object v0
.end method
