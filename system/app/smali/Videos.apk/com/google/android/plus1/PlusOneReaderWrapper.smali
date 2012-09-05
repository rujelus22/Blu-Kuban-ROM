.class public Lcom/google/android/plus1/PlusOneReaderWrapper;
.super Lcom/google/android/plus1/BasePlusOneReader;
.source "PlusOneReaderWrapper.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneReader;


# instance fields
.field protected final mOperationStore:Lcom/google/android/plus1/PlusOneStore;

.field protected final mReader:Lcom/google/android/plus1/PlusOneReader;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/PlusOneReader;Lcom/google/android/plus1/PlusOneStore;)V
    .registers 3
    .parameter "reader"
    .parameter "store"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneReader;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneReaderWrapper;->mReader:Lcom/google/android/plus1/PlusOneReader;

    .line 30
    iput-object p2, p0, Lcom/google/android/plus1/PlusOneReaderWrapper;->mOperationStore:Lcom/google/android/plus1/PlusOneStore;

    .line 31
    return-void
.end method


# virtual methods
.method public getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneReaderWrapper;->mReader:Lcom/google/android/plus1/PlusOneReader;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneReader;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;
    .registers 13
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v8, p0, Lcom/google/android/plus1/PlusOneReaderWrapper;->mReader:Lcom/google/android/plus1/PlusOneReader;

    invoke-interface {v8, p1}, Lcom/google/android/plus1/PlusOneReader;->getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;

    move-result-object v6

    .line 36
    .local v6, result:Lcom/google/android/plus1/PlusOne;
    const/4 v0, 0x0

    .line 37
    .local v0, builder:Lcom/google/android/plus1/PlusOne$Builder;
    if-nez v6, :cond_8e

    const/4 v2, 0x0

    .line 38
    .local v2, currentPlusOneValue:Ljava/lang/Boolean;
    :goto_a
    iget-object v8, p0, Lcom/google/android/plus1/PlusOneReaderWrapper;->mOperationStore:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v8}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v5

    .line 39
    .local v5, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 40
    .local v4, operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    instance-of v8, v4, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    if-eqz v8, :cond_14

    move-object v7, v4

    .line 41
    check-cast v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .line 42
    .local v7, update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    iget-object v8, v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    invoke-virtual {v8, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    if-eqz v2, :cond_39

    iget-object v8, v7, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v8, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 45
    :cond_39
    check-cast v4, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .end local v4           #operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    iget-object v2, v4, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    .line 46
    const-string v8, "PlusOneReaderWrapper"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 47
    const-string v8, "PlusOneReaderWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Applying operation +1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_6c
    if-nez v0, :cond_78

    .line 51
    if-nez v6, :cond_92

    .line 52
    new-instance v0, Lcom/google/android/plus1/PlusOne$Builder;

    .end local v0           #builder:Lcom/google/android/plus1/PlusOne$Builder;
    invoke-direct {v0}, Lcom/google/android/plus1/PlusOne$Builder;-><init>()V

    .line 53
    .restart local v0       #builder:Lcom/google/android/plus1/PlusOne$Builder;
    invoke-virtual {v0, p1}, Lcom/google/android/plus1/PlusOne$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 58
    :cond_78
    :goto_78
    invoke-virtual {v0, v2}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_98

    const/4 v1, 0x1

    .line 60
    .local v1, change:I
    :goto_82
    const/4 v8, 0x0

    iget v9, v0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0, v8}, Lcom/google/android/plus1/PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;

    goto :goto_14

    .line 37
    .end local v1           #change:I
    .end local v2           #currentPlusOneValue:Ljava/lang/Boolean;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    .end local v7           #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_8e
    iget-object v2, v6, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 55
    .restart local v2       #currentPlusOneValue:Ljava/lang/Boolean;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    .restart local v7       #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_92
    new-instance v0, Lcom/google/android/plus1/PlusOne$Builder;

    .end local v0           #builder:Lcom/google/android/plus1/PlusOne$Builder;
    invoke-direct {v0, v6}, Lcom/google/android/plus1/PlusOne$Builder;-><init>(Lcom/google/android/plus1/PlusOne;)V

    .restart local v0       #builder:Lcom/google/android/plus1/PlusOne$Builder;
    goto :goto_78

    .line 59
    :cond_98
    const/4 v1, -0x1

    goto :goto_82

    .line 64
    .end local v7           #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_9a
    if-eqz v0, :cond_a0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v6

    .line 67
    .end local v6           #result:Lcom/google/android/plus1/PlusOne;
    :cond_a0
    return-object v6
.end method
