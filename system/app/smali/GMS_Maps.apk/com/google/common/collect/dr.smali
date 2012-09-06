.class Lcom/google/common/collect/dr;
.super Lcom/google/common/collect/br;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/collect/br;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a(Ljava/lang/Object;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/dr;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/dr;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
