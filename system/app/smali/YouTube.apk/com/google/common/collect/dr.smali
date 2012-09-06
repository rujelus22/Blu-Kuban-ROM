.class final Lcom/google/common/collect/dr;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/common/collect/dr;->d:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/dr;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/google/common/collect/dr;->a:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/dr;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 260
    iget v0, p0, Lcom/google/common/collect/dr;->a:I

    if-gtz v0, :cond_18

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/dr;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 262
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/dr;->b:Ljava/lang/Object;

    .line 263
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/dr;->a:I

    .line 265
    :cond_18
    iget v0, p0, Lcom/google/common/collect/dr;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/dr;->a:I

    .line 266
    iget-object v0, p0, Lcom/google/common/collect/dr;->b:Ljava/lang/Object;

    return-object v0
.end method
