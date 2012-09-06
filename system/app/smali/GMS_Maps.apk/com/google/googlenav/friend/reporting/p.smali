.class final enum Lcom/google/googlenav/friend/reporting/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/friend/reporting/p;

.field public static final enum b:Lcom/google/googlenav/friend/reporting/p;

.field public static final enum c:Lcom/google/googlenav/friend/reporting/p;

.field public static final enum d:Lcom/google/googlenav/friend/reporting/p;

.field public static final enum e:Lcom/google/googlenav/friend/reporting/p;

.field public static final enum f:Lcom/google/googlenav/friend/reporting/p;

.field private static final synthetic g:[Lcom/google/googlenav/friend/reporting/p;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "DO_NOT_REPORT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->a:Lcom/google/googlenav/friend/reporting/p;

    .line 35
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "FIRST_REPORT"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->b:Lcom/google/googlenav/friend/reporting/p;

    .line 38
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "USER_REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->c:Lcom/google/googlenav/friend/reporting/p;

    .line 41
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "MOVING_INTERVAL_ELAPSED"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->d:Lcom/google/googlenav/friend/reporting/p;

    .line 46
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "STATIONARY_INTERVAL_ELAPSED"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->e:Lcom/google/googlenav/friend/reporting/p;

    .line 51
    new-instance v0, Lcom/google/googlenav/friend/reporting/p;

    const-string v1, "DEBUG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->f:Lcom/google/googlenav/friend/reporting/p;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/googlenav/friend/reporting/p;

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->a:Lcom/google/googlenav/friend/reporting/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->b:Lcom/google/googlenav/friend/reporting/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->c:Lcom/google/googlenav/friend/reporting/p;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->d:Lcom/google/googlenav/friend/reporting/p;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/friend/reporting/p;->e:Lcom/google/googlenav/friend/reporting/p;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/friend/reporting/p;->f:Lcom/google/googlenav/friend/reporting/p;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/friend/reporting/p;->g:[Lcom/google/googlenav/friend/reporting/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/p;
    .registers 2
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/google/googlenav/friend/reporting/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/p;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/friend/reporting/p;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/googlenav/friend/reporting/p;->g:[Lcom/google/googlenav/friend/reporting/p;

    invoke-virtual {v0}, [Lcom/google/googlenav/friend/reporting/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/friend/reporting/p;

    return-object v0
.end method
