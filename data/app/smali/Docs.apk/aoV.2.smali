.class final enum LaoV;
.super Ljava/lang/Enum;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LaoV;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LaoV;

.field private static final synthetic a:[LaoV;

.field public static final enum b:LaoV;

.field public static final enum c:LaoV;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, LaoV;

    const-string v1, "NO_JIT"

    invoke-direct {v0, v1, v2}, LaoV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaoV;->a:LaoV;

    .line 100
    new-instance v0, LaoV;

    const-string v1, "EXISTING_JIT"

    invoke-direct {v0, v1, v3}, LaoV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaoV;->b:LaoV;

    .line 102
    new-instance v0, LaoV;

    const-string v1, "NEW_OR_EXISTING_JIT"

    invoke-direct {v0, v1, v4}, LaoV;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaoV;->c:LaoV;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [LaoV;

    sget-object v1, LaoV;->a:LaoV;

    aput-object v1, v0, v2

    sget-object v1, LaoV;->b:LaoV;

    aput-object v1, v0, v3

    sget-object v1, LaoV;->c:LaoV;

    aput-object v1, v0, v4

    sput-object v0, LaoV;->a:[LaoV;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaoV;
    .registers 2
    .parameter

    .prologue
    .line 96
    const-class v0, LaoV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaoV;

    return-object v0
.end method

.method public static values()[LaoV;
    .registers 1

    .prologue
    .line 96
    sget-object v0, LaoV;->a:[LaoV;

    invoke-virtual {v0}, [LaoV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaoV;

    return-object v0
.end method
