.class public Lcom/google/android/apps/googlevoice/util/MorePreconditions;
.super Ljava/lang/Object;
.source "MorePreconditions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkObject(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 15
    .parameter "object"
    .parameter "name"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_27

    move-object v9, p0

    .line 39
    check-cast v9, Ljava/lang/String;

    .line 40
    .local v9, string:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_61

    const/4 v10, 0x1

    :goto_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".length() was 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 43
    .end local v9           #string:Ljava/lang/String;
    :cond_27
    instance-of v10, p0, Ljava/lang/Iterable;

    if-eqz v10, :cond_7c

    move-object v10, p0

    .line 44
    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 45
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 46
    .local v2, i:I
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 47
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_33

    .line 40
    .end local v2           #i:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v9       #string:Ljava/lang/String;
    :cond_61
    const/4 v10, 0x0

    goto :goto_11

    .line 49
    .end local v9           #string:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_63
    if-lez v2, :cond_b2

    const/4 v10, 0x1

    :goto_66
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 52
    .end local v2           #i:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_7c
    instance-of v10, p0, Ljava/util/Enumeration;

    if-eqz v10, :cond_cd

    .line 53
    const/4 v2, 0x0

    .restart local v2       #i:I
    move-object v1, p0

    .line 54
    check-cast v1, Ljava/util/Enumeration;

    .line 55
    .local v1, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_84
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 56
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_84

    .line 49
    .end local v1           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v6       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_b2
    const/4 v10, 0x0

    goto :goto_66

    .line 58
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v1       #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_b4
    if-lez v2, :cond_11f

    const/4 v10, 0x1

    :goto_b7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 61
    .end local v1           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v2           #i:I
    :cond_cd
    instance-of v10, p0, [Ljava/lang/Object;

    if-eqz v10, :cond_123

    .line 62
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    move-object v8, p0

    check-cast v8, [Ljava/lang/Object;

    .line 63
    .local v8, objects:[Ljava/lang/Object;
    array-length v10, v8

    if-lez v10, :cond_121

    const/4 v10, 0x1

    :goto_da
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was empty"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 65
    .restart local v2       #i:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/Object;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_f5
    if-ge v4, v7, :cond_123

    aget-object v5, v0, v4

    .line 66
    .local v5, item:Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_f5

    .line 58
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #item:Ljava/lang/Object;
    .end local v7           #len$:I
    .end local v8           #objects:[Ljava/lang/Object;
    .restart local v1       #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v2       #i:I
    .restart local p0
    :cond_11f
    const/4 v10, 0x0

    goto :goto_b7

    .line 63
    .end local v1           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v2           #i:I
    .end local p0
    .restart local v8       #objects:[Ljava/lang/Object;
    :cond_121
    const/4 v10, 0x0

    goto :goto_da

    .line 69
    .end local v8           #objects:[Ljava/lang/Object;
    :cond_123
    return-void
.end method
