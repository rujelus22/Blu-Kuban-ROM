.class Lcom/google/common/collect/da;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cZ;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cZ;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/cZ;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/k;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/cZ;

    invoke-static {v0}, Lcom/google/common/collect/cZ;->a(Lcom/google/common/collect/cZ;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/cZ;

    invoke-static {v1}, Lcom/google/common/collect/cZ;->b(Lcom/google/common/collect/cZ;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
