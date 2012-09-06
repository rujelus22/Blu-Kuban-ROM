.class final enum Lcom/google/common/collect/aL;
.super Lcom/google/common/collect/aI;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/aI;-><init>(Ljava/lang/String;ILcom/google/common/collect/Y;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/base/q;
    .registers 2

    .prologue
    .line 325
    invoke-static {}, Lcom/google/common/base/r;->b()Lcom/google/common/base/q;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 322
    new-instance v0, Lcom/google/common/collect/aY;

    invoke-direct {v0, p2, p1}, Lcom/google/common/collect/aY;-><init>(Ljava/lang/Object;Lcom/google/common/collect/au;)V

    return-object v0
.end method
