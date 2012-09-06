.class final Lcom/google/common/collect/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/bs;

.field private final b:Lcom/google/common/collect/bl;

.field private final c:Lcom/google/common/collect/by;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/bs;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bl;

    iput-object v0, p0, Lcom/google/common/collect/bv;->b:Lcom/google/common/collect/bl;

    .line 50
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/by;

    iput-object v0, p0, Lcom/google/common/collect/bv;->c:Lcom/google/common/collect/by;

    .line 51
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bs;

    iput-object v0, p0, Lcom/google/common/collect/bv;->a:Lcom/google/common/collect/bs;

    .line 52
    return-void
.end method

.method public static a(Lcom/google/common/collect/bs;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;)Lcom/google/common/collect/bv;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/google/common/collect/bv;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/bv;-><init>(Lcom/google/common/collect/bs;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/bs;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/bv;->a:Lcom/google/common/collect/bs;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/bl;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/bv;->b:Lcom/google/common/collect/bl;

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/by;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/bv;->c:Lcom/google/common/collect/by;

    return-object v0
.end method
