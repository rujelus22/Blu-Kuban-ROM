.class Lcom/google/common/flags/Flags$FlagInfoImpl;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/google/common/flags/FlagInfo;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlagInfoImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/flags/FlagInfo;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/flags/Flags$FlagInfoImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final desc:Lcom/google/common/flags/FlagDescription;

.field final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/flags/FlagDescription;)V
    .registers 3
    .parameter
    .parameter "desc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/flags/FlagDescription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1676
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1677
    iput-object p1, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->names:Ljava/util/List;

    .line 1678
    iput-object p2, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    .line 1679
    return-void
.end method


# virtual methods
.method public accessed()Z
    .registers 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/common/flags/Flag;->accessed:Z

    return v0
.end method

.method public compareTo(Lcom/google/common/flags/Flags$FlagInfoImpl;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    iget-object v1, p1, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0, v1}, Lcom/google/common/flags/FlagDescription;->compareTo(Lcom/google/common/flags/FlagDescription;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 1671
    check-cast p1, Lcom/google/common/flags/Flags$FlagInfoImpl;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flags$FlagInfoImpl;->compareTo(Lcom/google/common/flags/Flags$FlagInfoImpl;)I

    move-result v0

    return v0
.end method

.method public containerClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/flags/Flag;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public doc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getDoc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "that"

    .prologue
    .line 1723
    if-ne p0, p1, :cond_4

    .line 1724
    const/4 v1, 0x1

    .line 1729
    :goto_3
    return v1

    .line 1725
    :cond_4
    instance-of v1, p1, Lcom/google/common/flags/Flags$FlagInfoImpl;

    if-nez v1, :cond_a

    .line 1726
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 1728
    check-cast v0, Lcom/google/common/flags/Flags$FlagInfoImpl;

    .line 1729
    .local v0, otherFlag:Lcom/google/common/flags/Flags$FlagInfoImpl;
    iget-object v1, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    iget-object v2, v0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v1, v2}, Lcom/google/common/flags/FlagDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->hashCode()I

    move-result v0

    return v0
.end method

.method public names()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->names:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/flags/Flag;->parsableStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FlagInfo names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->names:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/flags/Flags$FlagInfoImpl;->desc:Lcom/google/common/flags/FlagDescription;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->flag(Lcom/google/common/flags/FlagDescription;)Lcom/google/common/flags/Flag;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/flags/Flag;->value:Ljava/lang/Object;

    return-object v0
.end method
