.class abstract enum Lcom/google/common/base/t;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# static fields
.field public static final enum a:Lcom/google/common/base/t;

.field public static final enum b:Lcom/google/common/base/t;

.field private static final synthetic c:[Lcom/google/common/base/t;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/common/base/u;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/t;->a:Lcom/google/common/base/t;

    .line 74
    new-instance v0, Lcom/google/common/base/v;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/t;->b:Lcom/google/common/base/t;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/t;

    sget-object v1, Lcom/google/common/base/t;->a:Lcom/google/common/base/t;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/t;->b:Lcom/google/common/base/t;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/base/t;->c:[Lcom/google/common/base/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/s;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/t;
    .registers 2
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/common/base/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/t;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/t;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/common/base/t;->c:[Lcom/google/common/base/t;

    invoke-virtual {v0}, [Lcom/google/common/base/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/t;

    return-object v0
.end method
