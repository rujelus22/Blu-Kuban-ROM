.class public Lcom/google/android/plus1/PlusOneStoreWrapper;
.super Lcom/google/android/plus1/PlusOneReaderWrapper;
.source "PlusOneStoreWrapper.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneStore;


# instance fields
.field protected final mStore:Lcom/google/android/plus1/PlusOneStore;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/PlusOneStore;)V
    .registers 3
    .parameter "store"
    .parameter "operationStore"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/plus1/PlusOneReaderWrapper;-><init>(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)V

    .line 25
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    .line 26
    return-void
.end method


# virtual methods
.method public addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 31
    return-void
.end method

.method public getOperations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOnes()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v9, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v9}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v5

    .line 41
    .local v5, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    iget-object v9, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mOperationStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v9}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v4

    .line 42
    .local v4, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 43
    .local v3, operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    instance-of v9, v3, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    if-eqz v9, :cond_14

    move-object v6, v3

    .line 44
    check-cast v6, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .line 45
    .local v6, update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    iget-object v7, v6, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    .line 46
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, v6, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    .line 47
    .local v8, value:Ljava/lang/Boolean;
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/PlusOne;

    .line 49
    .local v0, currentPlusOne:Lcom/google/android/plus1/PlusOne;
    if-nez v0, :cond_3c

    .line 50
    new-instance v2, Lcom/google/android/plus1/PlusOne;

    invoke-direct {v2, v7, v8}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;)V

    .line 54
    .local v2, newPlusOne:Lcom/google/android/plus1/PlusOne;
    :goto_38
    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 52
    .end local v2           #newPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_3c
    new-instance v9, Lcom/google/android/plus1/PlusOne$Builder;

    invoke-direct {v9, v0}, Lcom/google/android/plus1/PlusOne$Builder;-><init>(Lcom/google/android/plus1/PlusOne;)V

    invoke-virtual {v9, v8}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v2

    .restart local v2       #newPlusOne:Lcom/google/android/plus1/PlusOne;
    goto :goto_38

    .line 57
    .end local v0           #currentPlusOne:Lcom/google/android/plus1/PlusOne;
    .end local v2           #newPlusOne:Lcom/google/android/plus1/PlusOne;
    .end local v3           #operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    .end local v6           #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #value:Ljava/lang/Boolean;
    :cond_4a
    return-object v5
.end method

.method public removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 68
    return-void
.end method

.method public setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 63
    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setOperations(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    .registers 4
    .parameter "uri"
    .parameter "plusOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V

    .line 88
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Z)V

    .line 83
    return-void
.end method
