.class final enum Lcom/google/googlenav/ui/aO;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/aO;

.field public static final enum b:Lcom/google/googlenav/ui/aO;

.field public static final enum c:Lcom/google/googlenav/ui/aO;

.field public static final enum d:Lcom/google/googlenav/ui/aO;

.field private static final synthetic e:[Lcom/google/googlenav/ui/aO;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/google/googlenav/ui/aO;

    const-string v1, "XSMALL"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aO;->a:Lcom/google/googlenav/ui/aO;

    .line 197
    new-instance v0, Lcom/google/googlenav/ui/aO;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aO;->b:Lcom/google/googlenav/ui/aO;

    .line 198
    new-instance v0, Lcom/google/googlenav/ui/aO;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aO;->c:Lcom/google/googlenav/ui/aO;

    .line 199
    new-instance v0, Lcom/google/googlenav/ui/aO;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/aO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aO;->d:Lcom/google/googlenav/ui/aO;

    .line 195
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/aO;

    sget-object v1, Lcom/google/googlenav/ui/aO;->a:Lcom/google/googlenav/ui/aO;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/aO;->b:Lcom/google/googlenav/ui/aO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/aO;->c:Lcom/google/googlenav/ui/aO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/aO;->d:Lcom/google/googlenav/ui/aO;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ui/aO;->e:[Lcom/google/googlenav/ui/aO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/aO;
    .registers 2
    .parameter

    .prologue
    .line 195
    const-class v0, Lcom/google/googlenav/ui/aO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aO;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/aO;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/googlenav/ui/aO;->e:[Lcom/google/googlenav/ui/aO;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/aO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/aO;

    return-object v0
.end method
