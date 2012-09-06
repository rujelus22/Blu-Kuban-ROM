.class public abstract enum LXD;
.super Ljava/lang/Enum;
.source "Clocks.java"

# interfaces
.implements LXC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LXD;",
        ">;",
        "LXC;"
    }
.end annotation


# static fields
.field public static final enum a:LXD;

.field private static final synthetic a:[LXD;

.field public static final enum b:LXD;

.field public static final enum c:LXD;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, LXE;

    const-string v1, "WALL"

    invoke-direct {v0, v1, v2}, LXE;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXD;->a:LXD;

    .line 29
    new-instance v0, LXF;

    const-string v1, "UPTIME"

    invoke-direct {v0, v1, v3}, LXF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXD;->b:LXD;

    .line 38
    new-instance v0, LXG;

    const-string v1, "REALTIME"

    invoke-direct {v0, v1, v4}, LXG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXD;->c:LXD;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [LXD;

    sget-object v1, LXD;->a:LXD;

    aput-object v1, v0, v2

    sget-object v1, LXD;->b:LXD;

    aput-object v1, v0, v3

    sget-object v1, LXD;->c:LXD;

    aput-object v1, v0, v4

    sput-object v0, LXD;->a:[LXD;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILXE;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, LXD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LXD;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, LXD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LXD;

    return-object v0
.end method

.method public static values()[LXD;
    .registers 1

    .prologue
    .line 14
    sget-object v0, LXD;->a:[LXD;

    invoke-virtual {v0}, [LXD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXD;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 47
    const-string v0, "Clock[type=%s, time=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, LXD;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LXD;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
