.class final enum Lcom/google/googlenav/ui/ba;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/ba;

.field public static final enum b:Lcom/google/googlenav/ui/ba;

.field public static final enum c:Lcom/google/googlenav/ui/ba;

.field public static final enum d:Lcom/google/googlenav/ui/ba;

.field private static final synthetic e:[Lcom/google/googlenav/ui/ba;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/ba;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/ba;->a:Lcom/google/googlenav/ui/ba;

    new-instance v0, Lcom/google/googlenav/ui/ba;

    const-string v1, "GHOSTED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/ba;

    new-instance v0, Lcom/google/googlenav/ui/ba;

    const-string v1, "LOW_DPI_VM"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/ba;->c:Lcom/google/googlenav/ui/ba;

    new-instance v0, Lcom/google/googlenav/ui/ba;

    const-string v1, "GHOSTED_LOW_DPI_VM"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/ba;->d:Lcom/google/googlenav/ui/ba;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/ba;

    sget-object v1, Lcom/google/googlenav/ui/ba;->a:Lcom/google/googlenav/ui/ba;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/ba;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/ba;->c:Lcom/google/googlenav/ui/ba;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/ba;->d:Lcom/google/googlenav/ui/ba;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ui/ba;->e:[Lcom/google/googlenav/ui/ba;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(ZZ)Lcom/google/googlenav/ui/ba;
    .registers 3

    if-eqz p0, :cond_a

    if-eqz p1, :cond_7

    sget-object v0, Lcom/google/googlenav/ui/ba;->d:Lcom/google/googlenav/ui/ba;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/ba;

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_f

    sget-object v0, Lcom/google/googlenav/ui/ba;->c:Lcom/google/googlenav/ui/ba;

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/google/googlenav/ui/ba;->a:Lcom/google/googlenav/ui/ba;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/ba;
    .registers 2

    const-class v0, Lcom/google/googlenav/ui/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ba;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/ba;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/ba;->e:[Lcom/google/googlenav/ui/ba;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/ba;

    return-object v0
.end method
