.class final Ljava/util/Hashtable$KeySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 902
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iput-object p1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 902
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 920
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 921
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 910
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 934
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 935
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 938
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 939
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 940
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 943
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 944
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 945
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/Hashtable$KeyIterator;

    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$KeyIterator;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 913
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v2, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v2

    .line 914
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v0

    .line 915
    .local v0, oldSize:I
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->size:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$800(Ljava/util/Hashtable;)I

    move-result v1

    if-eq v1, v0, :cond_19

    const/4 v1, 0x1

    :goto_17
    monitor-exit v2

    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 917
    .end local v0           #oldSize:I
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 924
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 925
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 929
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 930
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 907
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 953
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 954
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 955
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 959
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 960
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 948
    .local p0, this:Ljava/util/Hashtable$KeySet;,"Ljava/util/Hashtable<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/Hashtable$KeySet;->this$0:Ljava/util/Hashtable;

    monitor-enter v1

    .line 949
    :try_start_3
    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 950
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
