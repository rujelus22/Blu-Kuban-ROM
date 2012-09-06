.class abstract enum Lcom/google/common/collect/dv;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/common/collect/dv;

.field public static final enum b:Lcom/google/common/collect/dv;

.field public static final enum c:Lcom/google/common/collect/dv;

.field public static final enum d:Lcom/google/common/collect/dv;

.field public static final enum e:Lcom/google/common/collect/dv;

.field private static final synthetic f:[Lcom/google/common/collect/dv;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/google/common/collect/dw;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/dw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/dv;

    .line 108
    new-instance v0, Lcom/google/common/collect/dx;

    const-string v1, "FLOOR"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/dx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/dv;->b:Lcom/google/common/collect/dv;

    .line 160
    new-instance v0, Lcom/google/common/collect/dy;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/dy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/dv;->c:Lcom/google/common/collect/dv;

    .line 201
    new-instance v0, Lcom/google/common/collect/dz;

    const-string v1, "CEILING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/dz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/dv;->d:Lcom/google/common/collect/dv;

    .line 254
    new-instance v0, Lcom/google/common/collect/dA;

    const-string v1, "HIGHER"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/dA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/dv;->e:Lcom/google/common/collect/dv;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/dv;

    sget-object v1, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/dv;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/dv;->b:Lcom/google/common/collect/dv;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/dv;->c:Lcom/google/common/collect/dv;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/dv;->d:Lcom/google/common/collect/dv;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/dv;->e:Lcom/google/common/collect/dv;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/common/collect/dv;->f:[Lcom/google/common/collect/dv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/du;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/dv;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/dv;
    .registers 2
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/google/common/collect/dv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/dv;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/dv;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/common/collect/dv;->f:[Lcom/google/common/collect/dv;

    invoke-virtual {v0}, [Lcom/google/common/collect/dv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/dv;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
.end method

.method abstract a(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
.end method
