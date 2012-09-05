.class public Lcom/google/android/plus1/PlusOneMemoryStore;
.super Lcom/google/android/plus1/BasePlusOneReader;
.source "PlusOneMemoryStore.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneStore;


# instance fields
.field private mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

.field private final mOperations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlusOnes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneReader;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object v0
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
    .line 80
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;
    .registers 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/PlusOne;

    return-object v0
.end method

.method public getPlusOnes()Ljava/util/Map;
    .registers 2
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
    .line 75
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mAccountStatus:Lcom/google/android/plus1/PlusOneStatus;

    .line 40
    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .registers 5
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
    .line 85
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    iget-object v2, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mOperations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 89
    .local v1, operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    invoke-virtual {p0, v1}, Lcom/google/android/plus1/PlusOneMemoryStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    goto :goto_9

    .line 91
    .end local v1           #operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    :cond_19
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
    .line 70
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/PlusOneMemoryStore;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 45
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 11
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOne;

    .line 51
    .local v1, currentValue:Lcom/google/android/plus1/PlusOne;
    if-nez v1, :cond_32

    .line 52
    if-eqz p2, :cond_30

    .line 53
    .local v3, totalCount:I
    :goto_d
    new-instance v5, Lcom/google/android/plus1/PlusOne$Builder;

    invoke-direct {v5}, Lcom/google/android/plus1/PlusOne$Builder;-><init>()V

    invoke-virtual {v5, p1}, Lcom/google/android/plus1/PlusOne$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/plus1/PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/google/android/plus1/PlusOne$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v2

    .line 65
    .end local v3           #totalCount:I
    .local v2, newValue:Lcom/google/android/plus1/PlusOne;
    :goto_2a
    iget-object v5, p0, Lcom/google/android/plus1/PlusOneMemoryStore;->mPlusOnes:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void

    .line 52
    .end local v2           #newValue:Lcom/google/android/plus1/PlusOne;
    :cond_30
    const/4 v3, 0x0

    goto :goto_d

    .line 56
    :cond_32
    new-instance v0, Lcom/google/android/plus1/PlusOne$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/plus1/PlusOne$Builder;-><init>(Lcom/google/android/plus1/PlusOne;)V

    .line 57
    .local v0, builder:Lcom/google/android/plus1/PlusOne$Builder;
    iget-object v5, v1, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 58
    if-eqz p2, :cond_5b

    move v4, v3

    .line 59
    .local v4, totalCountChange:I
    :goto_46
    iget v5, v1, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/google/android/plus1/PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;

    .line 61
    .end local v4           #totalCountChange:I
    :cond_4c
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 62
    invoke-virtual {v0, p3}, Lcom/google/android/plus1/PlusOne$Builder;->setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v2

    .restart local v2       #newValue:Lcom/google/android/plus1/PlusOne;
    goto :goto_2a

    .line 58
    .end local v2           #newValue:Lcom/google/android/plus1/PlusOne;
    :cond_5b
    const/4 v4, -0x1

    goto :goto_46
.end method
