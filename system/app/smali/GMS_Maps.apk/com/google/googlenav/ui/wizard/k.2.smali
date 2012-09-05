.class public final enum Lcom/google/googlenav/ui/wizard/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/k;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/k;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/k;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/k;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/googlenav/ui/wizard/k;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/k;

    new-instance v0, Lcom/google/googlenav/ui/wizard/k;

    const-string v1, "ADD_PLACE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/k;->b:Lcom/google/googlenav/ui/wizard/k;

    new-instance v0, Lcom/google/googlenav/ui/wizard/k;

    const-string v1, "SEARCH_RESULTS"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/wizard/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/k;->c:Lcom/google/googlenav/ui/wizard/k;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/k;

    sget-object v1, Lcom/google/googlenav/ui/wizard/k;->a:Lcom/google/googlenav/ui/wizard/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/wizard/k;->b:Lcom/google/googlenav/ui/wizard/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/k;->c:Lcom/google/googlenav/ui/wizard/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/k;->d:[Lcom/google/googlenav/ui/wizard/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/k;
    .registers 2

    const-class v0, Lcom/google/googlenav/ui/wizard/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/k;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/k;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/k;->d:[Lcom/google/googlenav/ui/wizard/k;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/k;

    return-object v0
.end method
