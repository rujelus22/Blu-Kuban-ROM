.class abstract enum Lcom/google/common/collect/aI;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/common/collect/aI;

.field public static final enum b:Lcom/google/common/collect/aI;

.field public static final enum c:Lcom/google/common/collect/aI;

.field private static final synthetic d:[Lcom/google/common/collect/aI;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    new-instance v0, Lcom/google/common/collect/aJ;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/aJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aI;->a:Lcom/google/common/collect/aI;

    .line 309
    new-instance v0, Lcom/google/common/collect/aK;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/aK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aI;->b:Lcom/google/common/collect/aI;

    .line 319
    new-instance v0, Lcom/google/common/collect/aL;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/aL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/aI;->c:Lcom/google/common/collect/aI;

    .line 293
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/aI;

    sget-object v1, Lcom/google/common/collect/aI;->a:Lcom/google/common/collect/aI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/aI;->b:Lcom/google/common/collect/aI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/aI;->c:Lcom/google/common/collect/aI;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/collect/aI;->d:[Lcom/google/common/collect/aI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/Y;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/aI;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/aI;
    .registers 2
    .parameter

    .prologue
    .line 293
    const-class v0, Lcom/google/common/collect/aI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/aI;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/aI;
    .registers 1

    .prologue
    .line 293
    sget-object v0, Lcom/google/common/collect/aI;->d:[Lcom/google/common/collect/aI;

    invoke-virtual {v0}, [Lcom/google/common/collect/aI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/aI;

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/base/q;
.end method

.method abstract a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;
.end method
