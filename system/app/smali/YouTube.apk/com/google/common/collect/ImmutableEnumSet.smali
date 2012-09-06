.class final Lcom/google/common/collect/ImmutableEnumSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field private final transient delegate:Ljava/util/EnumSet;

.field private transient hashCode:I


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    .line 46
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 82
    if-eq p1, p0, :cond_a

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->hashCode:I

    .line 89
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->hashCode:I

    :cond_c
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 98
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method
