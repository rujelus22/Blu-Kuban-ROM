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
    .registers 12
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
    iget-object v10, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v10}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    .line 41
    .local v6, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    iget-object v10, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mOperationStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v10}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v5

    .line 42
    .local v5, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 43
    .local v4, operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    instance-of v10, v4, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    if-eqz v10, :cond_14

    move-object v7, v4

    .line 44
    check-cast v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .line 45
    .local v7, update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    iget-object v8, v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    .line 46
    .local v8, uri:Landroid/net/Uri;
    iget-object v9, v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    .line 47
    .local v9, value:Ljava/lang/Boolean;
    iget-object v0, v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->abuseToken:Ljava/lang/String;

    .line 48
    .local v0, abuseToken:Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOne;

    .line 50
    .local v1, currentPlusOne:Lcom/google/android/plus1/PlusOne;
    if-nez v1, :cond_3e

    .line 51
    new-instance v3, Lcom/google/android/plus1/PlusOne;

    invoke-direct {v3, v8, v9, v0}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 56
    .local v3, newPlusOne:Lcom/google/android/plus1/PlusOne;
    :goto_3a
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 53
    .end local v3           #newPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_3e
    new-instance v10, Lcom/google/android/plus1/PlusOne$Builder;

    invoke-direct {v10, v1}, Lcom/google/android/plus1/PlusOne$Builder;-><init>(Lcom/google/android/plus1/PlusOne;)V

    invoke-virtual {v10, v9}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/plus1/PlusOne$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v3

    .restart local v3       #newPlusOne:Lcom/google/android/plus1/PlusOne;
    goto :goto_3a

    .line 59
    .end local v0           #abuseToken:Ljava/lang/String;
    .end local v1           #currentPlusOne:Lcom/google/android/plus1/PlusOne;
    .end local v3           #newPlusOne:Lcom/google/android/plus1/PlusOne;
    .end local v4           #operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    .end local v7           #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #value:Ljava/lang/Boolean;
    :cond_50
    return-object v6
.end method

.method public removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 70
    return-void
.end method

.method public setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 65
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
    .line 79
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setOperations(Ljava/util/List;)V

    .line 80
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
    .line 95
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V

    .line 96
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
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/PlusOneStoreWrapper;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 85
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStoreWrapper;->mStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 91
    return-void
.end method
