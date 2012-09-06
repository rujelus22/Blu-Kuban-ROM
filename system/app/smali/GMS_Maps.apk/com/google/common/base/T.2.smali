.class abstract enum Lcom/google/common/base/T;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# static fields
.field public static final enum a:Lcom/google/common/base/T;

.field public static final enum b:Lcom/google/common/base/T;

.field public static final enum c:Lcom/google/common/base/T;

.field public static final enum d:Lcom/google/common/base/T;

.field private static final synthetic e:[Lcom/google/common/base/T;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    new-instance v0, Lcom/google/common/base/U;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/U;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/T;->a:Lcom/google/common/base/T;

    .line 262
    new-instance v0, Lcom/google/common/base/V;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/V;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/T;->b:Lcom/google/common/base/T;

    .line 267
    new-instance v0, Lcom/google/common/base/W;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/google/common/base/W;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/T;->c:Lcom/google/common/base/T;

    .line 272
    new-instance v0, Lcom/google/common/base/X;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, Lcom/google/common/base/X;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/T;->d:Lcom/google/common/base/T;

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/T;

    sget-object v1, Lcom/google/common/base/T;->a:Lcom/google/common/base/T;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/T;->b:Lcom/google/common/base/T;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/T;->c:Lcom/google/common/base/T;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/T;->d:Lcom/google/common/base/T;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/base/T;->e:[Lcom/google/common/base/T;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/R;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/T;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/T;
    .registers 2
    .parameter

    .prologue
    .line 256
    const-class v0, Lcom/google/common/base/T;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/T;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/T;
    .registers 1

    .prologue
    .line 256
    sget-object v0, Lcom/google/common/base/T;->e:[Lcom/google/common/base/T;

    invoke-virtual {v0}, [Lcom/google/common/base/T;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/T;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/base/Q;
    .registers 1

    .prologue
    .line 280
    return-object p0
.end method
