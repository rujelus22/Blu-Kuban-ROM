.class final enum LamZ;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LamZ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LamZ;

.field private static final synthetic a:[LamZ;

.field public static final enum b:LamZ;

.field public static final enum c:LamZ;

.field public static final enum d:LamZ;

.field public static final enum e:LamZ;

.field public static final enum f:LamZ;

.field public static final enum g:LamZ;

.field public static final enum h:LamZ;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, LamZ;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->a:LamZ;

    .line 37
    new-instance v0, LamZ;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->b:LamZ;

    .line 43
    new-instance v0, LamZ;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->c:LamZ;

    .line 49
    new-instance v0, LamZ;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->d:LamZ;

    .line 55
    new-instance v0, LamZ;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->e:LamZ;

    .line 60
    new-instance v0, LamZ;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->f:LamZ;

    .line 65
    new-instance v0, LamZ;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->g:LamZ;

    .line 70
    new-instance v0, LamZ;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LamZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LamZ;->h:LamZ;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [LamZ;

    sget-object v1, LamZ;->a:LamZ;

    aput-object v1, v0, v3

    sget-object v1, LamZ;->b:LamZ;

    aput-object v1, v0, v4

    sget-object v1, LamZ;->c:LamZ;

    aput-object v1, v0, v5

    sget-object v1, LamZ;->d:LamZ;

    aput-object v1, v0, v6

    sget-object v1, LamZ;->e:LamZ;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LamZ;->f:LamZ;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LamZ;->g:LamZ;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LamZ;->h:LamZ;

    aput-object v2, v0, v1

    sput-object v0, LamZ;->a:[LamZ;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LamZ;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, LamZ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LamZ;

    return-object v0
.end method

.method public static values()[LamZ;
    .registers 1

    .prologue
    .line 25
    sget-object v0, LamZ;->a:[LamZ;

    invoke-virtual {v0}, [LamZ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LamZ;

    return-object v0
.end method
