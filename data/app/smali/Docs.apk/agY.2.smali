.class abstract enum LagY;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LagY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LagY;

.field private static final synthetic a:[LagY;

.field public static final enum b:LagY;

.field public static final enum c:LagY;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    new-instance v0, LagZ;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, LagZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagY;->a:LagY;

    .line 388
    new-instance v0, Laha;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Laha;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagY;->b:LagY;

    .line 404
    new-instance v0, Lahb;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lahb;-><init>(Ljava/lang/String;I)V

    sput-object v0, LagY;->c:LagY;

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [LagY;

    sget-object v1, LagY;->a:LagY;

    aput-object v1, v0, v2

    sget-object v1, LagY;->b:LagY;

    aput-object v1, v0, v3

    sget-object v1, LagY;->c:LagY;

    aput-object v1, v0, v4

    sput-object v0, LagY;->a:[LagY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILagv;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, LagY;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LagY;
    .registers 2
    .parameter

    .prologue
    .line 367
    const-class v0, LagY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LagY;

    return-object v0
.end method

.method public static values()[LagY;
    .registers 1

    .prologue
    .line 367
    sget-object v0, LagY;->a:[LagY;

    invoke-virtual {v0}, [LagY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LagY;

    return-object v0
.end method


# virtual methods
.method abstract a()LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(LagV;LagU;Ljava/lang/Object;I)Lahi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagV",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;TV;I)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation
.end method
