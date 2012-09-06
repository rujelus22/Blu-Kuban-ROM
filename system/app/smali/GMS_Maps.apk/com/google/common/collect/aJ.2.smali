.class final enum Lcom/google/common/collect/aJ;
.super Lcom/google/common/collect/aI;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/aI;-><init>(Ljava/lang/String;ILcom/google/common/collect/Y;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/base/q;
    .registers 2

    .prologue
    .line 305
    invoke-static {}, Lcom/google/common/base/r;->a()Lcom/google/common/base/q;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v0, Lcom/google/common/collect/aQ;

    invoke-direct {v0, p2}, Lcom/google/common/collect/aQ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
