.class final Lcom/google/common/flags/Flag$16;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->longList([J)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 805
    .local p1, x0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 805
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$16;->parsableStringValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    #calls: Lcom/google/common/flags/Flag;->joinToStrings(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {p1}, Lcom/google/common/flags/Flag;->access$900(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$16;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_45

    aget-object v5, v0, v2

    .line 811
    .local v5, s:Ljava/lang/String;
    :try_start_11
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/common/flags/Flag;->parseLongOrMax(Ljava/lang/String;)Ljava/lang/Long;
    invoke-static {v6}, Lcom/google/common/flags/Flag;->access$100(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1c} :catch_1f

    .line 809
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 812
    :catch_1f
    move-exception v1

    .line 813
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 814
    new-instance v6, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid long syntax "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 818
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #s:Ljava/lang/String;
    :cond_45
    #calls: Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4}, Lcom/google/common/flags/Flag;->access$800(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method
