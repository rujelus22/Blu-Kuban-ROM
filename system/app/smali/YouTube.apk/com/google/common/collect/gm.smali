.class Lcom/google/common/collect/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field final c:Lcom/google/common/collect/gg;

.field volatile d:Lcom/google/common/collect/gs;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gm;->d:Lcom/google/common/collect/gs;

    .line 970
    iput-object p1, p0, Lcom/google/common/collect/gm;->a:Ljava/lang/Object;

    .line 971
    iput p2, p0, Lcom/google/common/collect/gm;->b:I

    .line 972
    iput-object p3, p0, Lcom/google/common/collect/gm;->c:Lcom/google/common/collect/gg;

    .line 973
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 2

    .prologue
    .line 984
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/common/collect/gm;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/collect/gm;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/google/common/collect/gm;->c:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 994
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/gs;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/common/collect/gm;->d:Lcom/google/common/collect/gs;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 989
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 999
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/gs;)V
    .registers 3
    .parameter

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/common/collect/gm;->d:Lcom/google/common/collect/gs;

    .line 1048
    iput-object p1, p0, Lcom/google/common/collect/gm;->d:Lcom/google/common/collect/gs;

    .line 1049
    invoke-interface {v0, p1}, Lcom/google/common/collect/gs;->a(Lcom/google/common/collect/gs;)V

    .line 1050
    return-void
.end method
