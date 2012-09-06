.class Lcom/google/common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/PeekingIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hasPeeked:Z

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    .local p1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    .line 955
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 958
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

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

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v1, :cond_b

    .line 963
    iget-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 968
    :goto_a
    return-object v0

    .line 965
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 966
    .local v0, result:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 967
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    goto :goto_a
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_f

    .line 978
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 981
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 972
    .local p0, this:Lcom/google/common/collect/Iterators$PeekingImpl;,"Lcom/google/common/collect/Iterators$PeekingImpl<TE;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/google/common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 974
    return-void

    .line 972
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
