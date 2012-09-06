.class public final enum Lcom/google/googlenav/friend/aI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/friend/aI;

.field public static final enum b:Lcom/google/googlenav/friend/aI;

.field public static final enum c:Lcom/google/googlenav/friend/aI;

.field private static final synthetic e:[Lcom/google/googlenav/friend/aI;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 36
    new-instance v0, Lcom/google/googlenav/friend/aI;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/googlenav/friend/aI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    .line 39
    new-instance v0, Lcom/google/googlenav/friend/aI;

    const-string v1, "CUSTOM_TARGET"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/googlenav/friend/aI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    .line 42
    new-instance v0, Lcom/google/googlenav/friend/aI;

    const-string v1, "GAIA_ID"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/googlenav/friend/aI;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    .line 34
    new-array v0, v5, [Lcom/google/googlenav/friend/aI;

    sget-object v1, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlenav/friend/aI;->e:[Lcom/google/googlenav/friend/aI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/google/googlenav/friend/aI;->d:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/friend/aI;
    .registers 2
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/google/googlenav/friend/aI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aI;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/friend/aI;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/googlenav/friend/aI;->e:[Lcom/google/googlenav/friend/aI;

    invoke-virtual {v0}, [Lcom/google/googlenav/friend/aI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/friend/aI;

    return-object v0
.end method
