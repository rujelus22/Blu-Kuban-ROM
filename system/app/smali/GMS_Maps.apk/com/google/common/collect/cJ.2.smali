.class final enum Lcom/google/common/collect/cJ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cE;


# static fields
.field public static final enum a:Lcom/google/common/collect/cJ;

.field private static final synthetic b:[Lcom/google/common/collect/cJ;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/google/common/collect/cJ;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/cJ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/cJ;->a:Lcom/google/common/collect/cJ;

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/cJ;

    sget-object v1, Lcom/google/common/collect/cJ;->a:Lcom/google/common/collect/cJ;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/cJ;->b:[Lcom/google/common/collect/cJ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/cJ;
    .registers 2
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/google/common/collect/cJ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/cJ;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/cJ;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/common/collect/cJ;->b:[Lcom/google/common/collect/cJ;

    invoke-virtual {v0}, [Lcom/google/common/collect/cJ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/cJ;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method
