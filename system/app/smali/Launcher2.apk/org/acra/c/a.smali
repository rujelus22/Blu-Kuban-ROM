.class public final Lorg/acra/c/a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/acra/c/a;->a:I

    .line 36
    iput p1, p0, Lorg/acra/c/a;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/acra/c/a;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/c/a;->a:I

    if-ne v0, v1, :cond_b

    .line 60
    invoke-virtual {p0}, Lorg/acra/c/a;->removeFirst()Ljava/lang/Object;

    .line 62
    :cond_b
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/acra/c/a;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/c/a;->a:I

    if-ne v0, v1, :cond_b

    .line 47
    invoke-virtual {p0}, Lorg/acra/c/a;->removeFirst()Ljava/lang/Object;

    .line 49
    :cond_b
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/acra/c/a;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    iget v1, p0, Lorg/acra/c/a;->a:I

    sub-int/2addr v0, v1

    .line 74
    if-lez v0, :cond_12

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/acra/c/a;->removeRange(II)V

    .line 77
    :cond_12
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/acra/c/a;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {p0}, Lorg/acra/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 130
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
