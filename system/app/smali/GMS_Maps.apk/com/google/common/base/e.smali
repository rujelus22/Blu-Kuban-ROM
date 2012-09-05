.class abstract enum Lcom/google/common/base/e;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/common/base/b;


# static fields
.field public static final enum a:Lcom/google/common/base/e;

.field public static final enum b:Lcom/google/common/base/e;

.field private static final synthetic c:[Lcom/google/common/base/e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/base/f;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/e;->a:Lcom/google/common/base/e;

    new-instance v0, Lcom/google/common/base/g;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/e;->b:Lcom/google/common/base/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/e;

    sget-object v1, Lcom/google/common/base/e;->a:Lcom/google/common/base/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/e;->b:Lcom/google/common/base/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/base/e;->c:[Lcom/google/common/base/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/d;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/e;
    .registers 2

    const-class v0, Lcom/google/common/base/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/e;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/e;
    .registers 1

    sget-object v0, Lcom/google/common/base/e;->c:[Lcom/google/common/base/e;

    invoke-virtual {v0}, [Lcom/google/common/base/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/e;

    return-object v0
.end method
