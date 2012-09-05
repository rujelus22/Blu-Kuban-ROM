.class public Lcom/google/android/plus1/PlusOneProtoUtils;
.super Ljava/lang/Object;
.source "PlusOneProtoUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyProtoIntoStore(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/PlusOneStore;)V
    .registers 13
    .parameter "proto"
    .parameter "store"

    .prologue
    const/4 v10, 0x6

    .line 36
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 37
    new-instance v0, Lcom/google/android/plus1/PlusOneStatus$Builder;

    invoke-direct {v0}, Lcom/google/android/plus1/PlusOneStatus$Builder;-><init>()V

    .line 38
    .local v0, builder:Lcom/google/android/plus1/PlusOneStatus$Builder;
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v6

    .line 39
    .local v6, status:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 40
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getOptedIntoPlusOne()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setOptedIntoPlusOne(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    .line 42
    :cond_21
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 43
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    .line 45
    :cond_2e
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 46
    invoke-virtual {v6}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/android/plus1/PlusOneStatus$Builder;->setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;

    .line 48
    :cond_3b
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneStatus$Builder;->build()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 51
    .end local v0           #builder:Lcom/google/android/plus1/PlusOneStatus$Builder;
    .end local v6           #status:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getOperationList()Ljava/util/List;

    move-result-object v5

    .line 53
    .local v5, protoOperations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/proto/PlusOneProtos$Operation;>;"
    :try_start_46
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 54
    .local v3, operation:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    invoke-static {v3}, Lcom/google/android/plus1/PlusOneProtoUtils;->protoToOperation(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/google/android/plus1/PlusOneStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5d} :catch_5e

    goto :goto_4a

    .line 56
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #operation:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    :catch_5e
    move-exception v1

    .line 57
    .local v1, e:Ljava/io/IOException;
    const-string v7, "PlusOneProtoUtils"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 58
    const-string v7, "PlusOneProtoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error loading operations: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    :cond_7f
    :try_start_7f
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getPlusOneList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 64
    .local v4, plusOneProto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    invoke-virtual {v4}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v4}, Lcom/google/android/plus1/PlusOneProtoUtils;->protoToPlusOne(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/PlusOne;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    :try_end_a2
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_7f .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_a2} :catch_c5

    goto :goto_87

    .line 67
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #plusOneProto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    :catch_a3
    move-exception v1

    .line 68
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v7, "PlusOneProtoUtils"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 69
    const-string v7, "PlusOneProtoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error loading +1s: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1           #e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :cond_c4
    :goto_c4
    return-void

    .line 71
    :catch_c5
    move-exception v1

    .line 72
    .local v1, e:Ljava/io/IOException;
    const-string v7, "PlusOneProtoUtils"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 73
    const-string v7, "PlusOneProtoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error loading +1s: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4
.end method

.method public static copyStoreIntoProto(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;Z)V
    .registers 11
    .parameter "store"
    .parameter "builder"
    .parameter "copyPlusOnes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p0}, Lcom/google/android/plus1/PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v5

    .line 92
    .local v5, status:Lcom/google/android/plus1/PlusOneStatus;
    if-eqz v5, :cond_2c

    .line 93
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v6

    .line 95
    .local v6, statusBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    if-eqz v7, :cond_17

    .line 96
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setOptedIntoPlusOne(Z)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 98
    :cond_17
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    if-eqz v7, :cond_20

    .line 99
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 101
    :cond_20
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    if-eqz v7, :cond_29

    .line 102
    iget-object v7, v5, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    .line 104
    :cond_29
    invoke-virtual {p1, v6}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->setAccountStatus(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    .line 107
    .end local v6           #statusBuilder:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    :cond_2c
    invoke-interface {p0}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v3

    .line 108
    .local v3, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;

    .line 109
    .local v2, operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    invoke-static {v2}, Lcom/google/android/plus1/PlusOneProtoUtils;->operationToProto(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->addOperation(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    goto :goto_34

    .line 112
    .end local v2           #operation:Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    :cond_48
    if-eqz p2, :cond_70

    .line 113
    invoke-interface {p0}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v4

    .line 114
    .local v4, plusOnes:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/plus1/PlusOne;

    invoke-static {v7}, Lcom/google/android/plus1/PlusOneProtoUtils;->plusOneToProto(Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->addPlusOne(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    goto :goto_56

    .line 119
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    .end local v4           #plusOnes:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;>;"
    :cond_70
    return-void
.end method

.method private static operationToProto(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    .registers 4
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    move-result-object v0

    .line 172
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;
    instance-of v2, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    if-eqz v2, :cond_26

    move-object v1, p0

    .line 173
    check-cast v1, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .line 174
    .local v1, update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setType(I)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 175
    iget-object v2, v1, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 176
    iget-object v2, v1, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;

    .line 180
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation$Builder;->build()Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    move-result-object v2

    return-object v2

    .line 178
    .end local v1           #update:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_26
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method

.method private static plusOneToProto(Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    .registers 7
    .parameter "plusOne"

    .prologue
    .line 139
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    .line 142
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    iget-object v4, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    if-eqz v4, :cond_21

    .line 143
    iget-object v4, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->setValue(Z)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    .line 145
    :cond_21
    iget-object v4, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    if-eqz v4, :cond_4b

    .line 146
    iget-object v4, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/plus1/PlusOnePerson;

    .line 147
    .local v1, friend:Lcom/google/android/plus1/PlusOnePerson;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/plus1/PlusOnePerson;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/plus1/PlusOnePerson;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;

    move-result-object v2

    .line 149
    .local v2, friendProto:Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    invoke-virtual {v0, v2}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->addFriend(Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    goto :goto_2b

    .line 152
    .end local v1           #friend:Lcom/google/android/plus1/PlusOnePerson;
    .end local v2           #friendProto:Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4b
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->build()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    move-result-object v4

    return-object v4
.end method

.method private static protoToOperation(Lcom/google/android/plus1/proto/PlusOneProtos$Operation;)Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
    .registers 5
    .parameter "proto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->hasType()Z

    move-result v0

    if-nez v0, :cond_e

    .line 158
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed operation proto (missing type)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 165
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 162
    :pswitch_1b
    new-instance v0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;->getAbuseToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;-><init>(Landroid/net/Uri;ZLjava/lang/String;)V

    return-object v0

    .line 160
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method private static protoToPlusOne(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Lcom/google/android/plus1/PlusOne;
    .registers 8
    .parameter "proto"

    .prologue
    .line 122
    new-instance v4, Lcom/google/android/plus1/PlusOne$Builder;

    invoke-direct {v4}, Lcom/google/android/plus1/PlusOne$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/PlusOne$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getTotalPlusOneCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/plus1/PlusOne$Builder;->setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;

    move-result-object v0

    .line 124
    .local v0, builder:Lcom/google/android/plus1/PlusOne$Builder;
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 125
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/plus1/PlusOne$Builder;->setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 127
    :cond_2a
    const/4 v1, 0x0

    .line 128
    .local v1, friends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getFriendList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    .line 129
    .local v3, person:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    if-nez v1, :cond_45

    .line 130
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 132
    :cond_45
    new-instance v4, Lcom/google/android/plus1/PlusOnePerson;

    invoke-virtual {v3}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/plus1/PlusOnePerson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 134
    .end local v3           #person:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    :cond_56
    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOne$Builder;->setPlusOneFriends(Ljava/util/Set;)Lcom/google/android/plus1/PlusOne$Builder;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOne$Builder;->build()Lcom/google/android/plus1/PlusOne;

    move-result-object v4

    return-object v4
.end method
