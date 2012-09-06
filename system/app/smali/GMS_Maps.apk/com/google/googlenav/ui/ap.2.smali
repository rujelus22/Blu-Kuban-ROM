.class final enum Lcom/google/googlenav/ui/aP;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/aP;

.field public static final enum b:Lcom/google/googlenav/ui/aP;

.field public static final enum c:Lcom/google/googlenav/ui/aP;

.field public static final enum d:Lcom/google/googlenav/ui/aP;

.field private static final synthetic e:[Lcom/google/googlenav/ui/aP;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/google/googlenav/ui/aP;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aP;

    .line 88
    new-instance v0, Lcom/google/googlenav/ui/aP;

    const-string v1, "GHOSTED"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aP;->b:Lcom/google/googlenav/ui/aP;

    .line 96
    new-instance v0, Lcom/google/googlenav/ui/aP;

    const-string v1, "LOW_DPI_VM"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aP;->c:Lcom/google/googlenav/ui/aP;

    .line 101
    new-instance v0, Lcom/google/googlenav/ui/aP;

    const-string v1, "GHOSTED_LOW_DPI_VM"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/aP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/aP;->d:Lcom/google/googlenav/ui/aP;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/aP;

    sget-object v1, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/aP;->b:Lcom/google/googlenav/ui/aP;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/aP;->c:Lcom/google/googlenav/ui/aP;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/aP;->d:Lcom/google/googlenav/ui/aP;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ui/aP;->e:[Lcom/google/googlenav/ui/aP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(ZZ)Lcom/google/googlenav/ui/aP;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    if-eqz p0, :cond_a

    .line 105
    if-eqz p1, :cond_7

    .line 106
    sget-object v0, Lcom/google/googlenav/ui/aP;->d:Lcom/google/googlenav/ui/aP;

    .line 114
    :goto_6
    return-object v0

    .line 108
    :cond_7
    sget-object v0, Lcom/google/googlenav/ui/aP;->b:Lcom/google/googlenav/ui/aP;

    goto :goto_6

    .line 111
    :cond_a
    if-eqz p1, :cond_f

    .line 112
    sget-object v0, Lcom/google/googlenav/ui/aP;->c:Lcom/google/googlenav/ui/aP;

    goto :goto_6

    .line 114
    :cond_f
    sget-object v0, Lcom/google/googlenav/ui/aP;->a:Lcom/google/googlenav/ui/aP;

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/aP;
    .registers 2
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/google/googlenav/ui/aP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aP;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/aP;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/googlenav/ui/aP;->e:[Lcom/google/googlenav/ui/aP;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/aP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/aP;

    return-object v0
.end method
