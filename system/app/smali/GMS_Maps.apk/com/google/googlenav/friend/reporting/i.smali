.class final enum Lcom/google/googlenav/friend/reporting/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum b:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum c:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum d:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum e:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum f:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum g:Lcom/google/googlenav/friend/reporting/i;

.field public static final enum h:Lcom/google/googlenav/friend/reporting/i;

.field private static final synthetic i:[Lcom/google/googlenav/friend/reporting/i;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "DO_NOT_RECORD"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->a:Lcom/google/googlenav/friend/reporting/i;

    .line 36
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "DO_NOT_RECORD_THROTTLED"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->b:Lcom/google/googlenav/friend/reporting/i;

    .line 39
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "FIRST_RECORD"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->c:Lcom/google/googlenav/friend/reporting/i;

    .line 42
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "RECORDING_ALL"

    invoke-direct {v0, v1, v6}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->d:Lcom/google/googlenav/friend/reporting/i;

    .line 45
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "USER_REQUESTED"

    invoke-direct {v0, v1, v7}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->e:Lcom/google/googlenav/friend/reporting/i;

    .line 48
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "IMPROVED_ACCURACY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->f:Lcom/google/googlenav/friend/reporting/i;

    .line 51
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "MOVING_INTERVAL_ELAPSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->g:Lcom/google/googlenav/friend/reporting/i;

    .line 54
    new-instance v0, Lcom/google/googlenav/friend/reporting/i;

    const-string v1, "STATIONARY_INTERVAL_ELAPSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/reporting/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->h:Lcom/google/googlenav/friend/reporting/i;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/googlenav/friend/reporting/i;

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->a:Lcom/google/googlenav/friend/reporting/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->b:Lcom/google/googlenav/friend/reporting/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->c:Lcom/google/googlenav/friend/reporting/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->d:Lcom/google/googlenav/friend/reporting/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlenav/friend/reporting/i;->e:Lcom/google/googlenav/friend/reporting/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->f:Lcom/google/googlenav/friend/reporting/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->g:Lcom/google/googlenav/friend/reporting/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/googlenav/friend/reporting/i;->h:Lcom/google/googlenav/friend/reporting/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/friend/reporting/i;->i:[Lcom/google/googlenav/friend/reporting/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/i;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/google/googlenav/friend/reporting/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/reporting/i;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/friend/reporting/i;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlenav/friend/reporting/i;->i:[Lcom/google/googlenav/friend/reporting/i;

    invoke-virtual {v0}, [Lcom/google/googlenav/friend/reporting/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/friend/reporting/i;

    return-object v0
.end method
