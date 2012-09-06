.class final Lcom/google/common/collect/ds;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/lang/Object;

.field private transient b:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ds;->b:Ljava/lang/Integer;

    .line 51
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/dE;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/bZ;->a(Ljava/lang/Object;)Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 92
    if-ne p1, p0, :cond_5

    .line 99
    :cond_4
    :goto_4
    return v0

    .line 95
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_23

    .line 96
    check-cast p1, Ljava/util/Set;

    .line 97
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_21

    iget-object v2, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 99
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/ds;->b:Ljava/lang/Integer;

    .line 104
    if-nez v0, :cond_15

    .line 105
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ds;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    :goto_14
    return v0

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_14
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/ds;->b()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 80
    array-length v0, p1

    if-nez v0, :cond_e

    .line 81
    invoke-static {p1, v1}, Lcom/google/common/collect/cU;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 87
    :cond_8
    :goto_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 88
    return-object p1

    .line 82
    :cond_e
    array-length v0, p1

    if-le v0, v1, :cond_8

    .line 83
    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/ds;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
