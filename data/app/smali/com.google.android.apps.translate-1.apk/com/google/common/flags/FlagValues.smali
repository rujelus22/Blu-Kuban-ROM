.class public final Lcom/google/common/flags/FlagValues;
.super Ljava/lang/Object;
.source "FlagValues.java"


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    .line 21
    return-void
.end method


# virtual methods
.method public addFlag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getAllFlagsAsString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/common/flags/FlagValues;->getAllFlagsAsStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, flags:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_1f

    .line 74
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1c

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 79
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAllFlagsAsStringArray()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 54
    iget-object v5, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 55
    .local v2, flags:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, i:I
    iget-object v5, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, flagName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, flagValue:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v5, ""

    :goto_40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_13

    .line 58
    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_40

    .line 61
    .end local v0           #flagName:Ljava/lang/String;
    .end local v1           #flagValue:Ljava/lang/String;
    :cond_61
    return-object v2
.end method

.method public getFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "flag"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/flags/FlagValues;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
