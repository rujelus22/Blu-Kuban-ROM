.class public abstract Lcom/google/common/collect/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/cL;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient b:Lcom/google/common/collect/bx;

.field final transient c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/bx;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    .line 308
    iput p2, p0, Lcom/google/common/collect/bz;->c:I

    .line 309
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/br;
.end method

.method a()Z
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->d()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;)Lcom/google/common/collect/br;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/util/Map;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/collect/bz;->c()Lcom/google/common/collect/bx;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/bx;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 422
    iget v0, p0, Lcom/google/common/collect/bz;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 431
    instance-of v0, p1, Lcom/google/common/collect/cL;

    if-eqz v0, :cond_11

    .line 432
    check-cast p1, Lcom/google/common/collect/cL;

    .line 433
    iget-object v0, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    invoke-interface {p1}, Lcom/google/common/collect/cL;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bx;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 435
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/common/collect/bz;->b:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
