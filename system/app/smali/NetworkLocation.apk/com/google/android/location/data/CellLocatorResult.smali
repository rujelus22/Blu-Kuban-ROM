.class public Lcom/google/android/location/data/CellLocatorResult;
.super Lcom/google/android/location/data/LocatorResult;
.source "CellLocatorResult.java"


# instance fields
.field public final cellCacheEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;"
        }
    .end annotation
.end field

.field public final cellStatus:Lcom/google/android/location/data/CellStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/CellStatus;Ljava/util/Map;)V
    .registers 7
    .parameter "position"
    .parameter "status"
    .parameter "reportTime"
    .parameter "cellStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position;",
            "Lcom/google/android/location/data/LocatorResult$ResultStatus;",
            "J",
            "Lcom/google/android/location/data/CellStatus;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/location/data/Position;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p6, cellCacheEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    .line 35
    iput-object p5, p0, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    .line 36
    iput-object p6, p0, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellLocatorResult;)V
    .registers 7
    .parameter "sb"
    .parameter "cellLocatorResult"

    .prologue
    .line 47
    if-nez p1, :cond_8

    .line 48
    const-string v4, "null"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_7
    return-void

    .line 51
    :cond_8
    const-string v4, "CellLocatorResult [primary="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/location/data/CellState;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellState;)V

    .line 53
    const-string v4, ", History=["

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 55
    const/4 v2, 0x1

    .line 56
    .local v2, first:Z
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/CellState;

    .line 57
    .local v0, cellState:Lcom/google/android/location/data/CellState;
    if-eqz v2, :cond_41

    .line 58
    const/4 v2, 0x0

    .line 62
    :goto_3d
    invoke-static {p0, v0}, Lcom/google/android/location/data/CellState;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellState;)V

    goto :goto_2e

    .line 60
    :cond_41
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 65
    .end local v0           #cellState:Lcom/google/android/location/data/CellState;
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_47
    const-string v4, "], Cache={"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    if-eqz v4, :cond_87

    .line 67
    const/4 v2, 0x1

    .line 68
    .restart local v2       #first:Z
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    if-nez v2, :cond_6e

    .line 70
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_6e
    const/4 v2, 0x0

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/data/Position;

    invoke-static {p0, v4}, Lcom/google/android/location/data/Position;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/Position;)V

    goto :goto_5b

    .line 78
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_87
    const-string v4, "}, "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/LocatorResult;)V

    .line 80
    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/CellLocatorResult;)V
    .registers 7
    .parameter "out"
    .parameter "cellLocatorResult"

    .prologue
    .line 84
    if-nez p1, :cond_8

    .line 85
    const-string v4, "null"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    :goto_7
    return-void

    .line 88
    :cond_8
    const-string v4, "CellLocatorResult [primary="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/location/data/CellState;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/CellState;)V

    .line 90
    const-string v4, ", History=["

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 92
    const/4 v2, 0x1

    .line 93
    .local v2, first:Z
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/CellState;

    .line 94
    .local v0, cellState:Lcom/google/android/location/data/CellState;
    if-nez v2, :cond_41

    .line 95
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    :cond_41
    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0}, Lcom/google/android/location/data/CellState;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/CellState;)V

    goto :goto_2e

    .line 101
    .end local v0           #cellState:Lcom/google/android/location/data/CellState;
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_46
    const-string v4, "], Cache={"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    if-eqz v4, :cond_86

    .line 103
    const/4 v2, 0x1

    .line 104
    .restart local v2       #first:Z
    iget-object v4, p1, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    if-nez v2, :cond_6d

    .line 106
    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    :cond_6d
    const/4 v2, 0x0

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/data/Position;

    invoke-static {p0, v4}, Lcom/google/android/location/data/Position;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/Position;)V

    goto :goto_5a

    .line 114
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/location/data/Position;>;"
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_86
    const-string v4, "}, "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/LocatorResult;)V

    .line 116
    const-string v4, "]"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellLocatorResult [primaryCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v1}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v1}, Lcom/google/android/location/data/CellStatus;->getHistory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellCacheEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/CellLocatorResult;->cellCacheEntries:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/location/data/LocatorResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
