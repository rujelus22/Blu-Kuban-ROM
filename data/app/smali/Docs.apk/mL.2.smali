.class final enum LmL;
.super Ljava/lang/Enum;
.source "DiscussionSessionApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LmL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LmL;

.field private static final synthetic a:[LmL;

.field public static final enum b:LmL;

.field public static final enum c:LmL;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, LmL;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, LmL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LmL;->a:LmL;

    .line 121
    new-instance v0, LmL;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v3}, LmL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LmL;->b:LmL;

    .line 122
    new-instance v0, LmL;

    const-string v1, "INVALIDATE_REFRESH"

    invoke-direct {v0, v1, v4}, LmL;-><init>(Ljava/lang/String;I)V

    sput-object v0, LmL;->c:LmL;

    .line 119
    const/4 v0, 0x3

    new-array v0, v0, [LmL;

    sget-object v1, LmL;->a:LmL;

    aput-object v1, v0, v2

    sget-object v1, LmL;->b:LmL;

    aput-object v1, v0, v3

    sget-object v1, LmL;->c:LmL;

    aput-object v1, v0, v4

    sput-object v0, LmL;->a:[LmL;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LmL;
    .registers 2
    .parameter

    .prologue
    .line 119
    const-class v0, LmL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LmL;

    return-object v0
.end method

.method public static values()[LmL;
    .registers 1

    .prologue
    .line 119
    sget-object v0, LmL;->a:[LmL;

    invoke-virtual {v0}, [LmL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LmL;

    return-object v0
.end method
