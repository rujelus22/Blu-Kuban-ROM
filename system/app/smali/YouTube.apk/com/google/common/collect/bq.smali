.class final Lcom/google/common/collect/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cc;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/bw;)Lcom/google/common/collect/cb;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/common/collect/bp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/google/common/collect/bp;-><init>(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bp;B)V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/common/collect/cb;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/cb;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/google/common/collect/bp;

    invoke-static {p1, p2}, Lcom/google/common/collect/bp;->a(Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;

    move-result-object v0

    return-object v0
.end method
