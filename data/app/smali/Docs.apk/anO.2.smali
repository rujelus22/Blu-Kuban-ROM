.class public final enum LanO;
.super Ljava/lang/Enum;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LanO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LanO;

.field private static final synthetic a:[LanO;

.field public static final enum b:LanO;

.field public static final enum c:LanO;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, LanO;

    const-string v1, "TOOL"

    invoke-direct {v0, v1, v2}, LanO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LanO;->a:LanO;

    .line 38
    new-instance v0, LanO;

    const-string v1, "DEVELOPMENT"

    invoke-direct {v0, v1, v3}, LanO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LanO;->b:LanO;

    .line 43
    new-instance v0, LanO;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v4}, LanO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LanO;->c:LanO;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [LanO;

    sget-object v1, LanO;->a:LanO;

    aput-object v1, v0, v2

    sget-object v1, LanO;->b:LanO;

    aput-object v1, v0, v3

    sget-object v1, LanO;->c:LanO;

    aput-object v1, v0, v4

    sput-object v0, LanO;->a:[LanO;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LanO;
    .registers 2
    .parameter

    .prologue
    .line 24
    const-class v0, LanO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LanO;

    return-object v0
.end method

.method public static values()[LanO;
    .registers 1

    .prologue
    .line 24
    sget-object v0, LanO;->a:[LanO;

    invoke-virtual {v0}, [LanO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LanO;

    return-object v0
.end method
