.class final Lcom/google/common/flags/Flag$18;
.super Lcom/google/common/flags/Flag;
.source "Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/flags/Flag;->enumList(Ljava/lang/Class;Z[Ljava/lang/Enum;)Lcom/google/common/flags/Flag;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$autoUpperCase:Z

.field final synthetic val$enumType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/List;ZLjava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 926
    .local p1, x0:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-boolean p2, p0, Lcom/google/common/flags/Flag$18;->val$autoUpperCase:Z

    iput-object p3, p0, Lcom/google/common/flags/Flag$18;->val$enumType:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsableStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 926
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$18;->parsableStringValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsableStringValue(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 949
    .local p1, value:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v0, enumNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 951
    .local v1, enumValue:Ljava/lang/Enum;,"TT;"
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 953
    .end local v1           #enumValue:Ljava/lang/Enum;,"TT;"
    :cond_1d
    #calls: Lcom/google/common/flags/Flag;->joinToStrings(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/flags/Flag;->access$900(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
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
    .line 926
    invoke-virtual {p0, p1}, Lcom/google/common/flags/Flag$18;->parse(Ljava/lang/String;)Ljava/util/List;

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
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 929
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v4, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 931
    iget-boolean v6, p0, Lcom/google/common/flags/Flag$18;->val$autoUpperCase:Z

    if-eqz v6, :cond_19

    .line 932
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 934
    :cond_19
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_21
    if-ge v2, v3, :cond_63

    aget-object v5, v0, v2

    .line 936
    .local v5, s:Ljava/lang/String;
    :try_start_25
    iget-object v6, p0, Lcom/google/common/flags/Flag$18;->val$enumType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_32} :catch_35

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 937
    :catch_35
    move-exception v1

    .line 938
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a valid enum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/common/flags/Flag$18;->val$enumType:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " constant: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 944
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_63
    #calls: Lcom/google/common/flags/Flag;->maybeUnmodifiable(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4}, Lcom/google/common/flags/Flag;->access$800(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method
