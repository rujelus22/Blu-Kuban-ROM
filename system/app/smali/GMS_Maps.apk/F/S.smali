.class public final enum LF/S;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LF/S;

.field public static final enum b:LF/S;

.field public static final enum c:LF/S;

.field private static final synthetic e:[LF/S;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LF/S;

    const-string v1, "GPS"

    const-string v2, "gps"

    invoke-direct {v0, v1, v3, v2}, LF/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LF/S;->a:LF/S;

    new-instance v0, LF/S;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v4, v2}, LF/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LF/S;->b:LF/S;

    new-instance v0, LF/S;

    const-string v1, "TIMER"

    const-string v2, "speed_provider"

    invoke-direct {v0, v1, v5, v2}, LF/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LF/S;->c:LF/S;

    const/4 v0, 0x3

    new-array v0, v0, [LF/S;

    sget-object v1, LF/S;->a:LF/S;

    aput-object v1, v0, v3

    sget-object v1, LF/S;->b:LF/S;

    aput-object v1, v0, v4

    sget-object v1, LF/S;->c:LF/S;

    aput-object v1, v0, v5

    sput-object v0, LF/S;->e:[LF/S;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LF/S;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF/S;
    .registers 2

    const-class v0, LF/S;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LF/S;

    return-object v0
.end method

.method public static values()[LF/S;
    .registers 1

    sget-object v0, LF/S;->e:[LF/S;

    invoke-virtual {v0}, [LF/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF/S;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LF/S;->d:Ljava/lang/String;

    return-object v0
.end method
