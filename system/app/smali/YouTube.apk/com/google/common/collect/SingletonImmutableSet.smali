.class final Lcom/google/common/collect/SingletonImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field private transient cachedHashCode:I

.field final transient element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 53
    iput p2, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 54
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    if-ne p1, p0, :cond_5

    .line 101
    :cond_4
    :goto_4
    return v0

    .line 97
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_23

    .line 98
    check-cast p1, Ljava/util/Set;

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v0, :cond_21

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

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

    .line 101
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 107
    if-nez v0, :cond_c

    .line 108
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 110
    :cond_c
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method final isHashCodeFast()Z
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->cachedHashCode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ee;->a(Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 82
    array-length v0, p1

    if-nez v0, :cond_e

    .line 83
    invoke-static {p1, v1}, Lcom/google/common/collect/jd;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 89
    :cond_8
    :goto_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 90
    return-object p1

    .line 84
    :cond_e
    array-length v0, p1

    if-le v0, v1, :cond_8

    .line 85
    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
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
