.class public Lcom/google/android/apps/plus/content/DbExplanation;
.super Lcom/google/android/apps/plus/content/DbSerializer;
.source "DbExplanation.java"


# direct methods
.method public static deserialize([B)[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 8
    .parameter "array"

    .prologue
    .line 78
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 81
    .local v4, items:S
    if-lez v4, :cond_3c

    .line 82
    new-array v2, v4, [Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    .line 84
    .local v2, explanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    const/4 v3, 0x0

    .local v3, i:S
    :goto_d
    if-ge v3, v4, :cond_3d

    .line 85
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v1

    .line 87
    .local v1, builder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbExplanation;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_1c

    .line 89
    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 92
    :cond_1c
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbExplanation;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 93
    if-eqz v5, :cond_25

    .line 94
    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 97
    :cond_25
    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbExplanation;->getShortString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    .line 98
    if-eqz v5, :cond_32

    .line 99
    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    .line 102
    :cond_32
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v6

    aput-object v6, v2, v3

    .line 84
    add-int/lit8 v6, v3, 0x1

    int-to-short v3, v6

    goto :goto_d

    .line 105
    .end local v1           #builder:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .end local v2           #explanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v3           #i:S
    .end local v5           #value:Ljava/lang/String;
    :cond_3c
    const/4 v2, 0x0

    .line 108
    .restart local v2       #explanations:[Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    :cond_3d
    return-object v2
.end method

.method public static serialize(Ljava/util/List;)[B
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, explanationList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Explanation;>;"
    const/4 v7, 0x0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 34
    const/4 v4, 0x0

    .line 67
    :goto_8
    return-object v4

    .line 37
    :cond_9
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 38
    .local v5, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v3, os:Ljava/io/DataOutputStream;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 42
    .local v2, items:I
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 43
    if-lez v2, :cond_66

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    .line 45
    .local v0, explanation:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasId()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 46
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/content/DbExplanation;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 51
    :goto_3b
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasDisplayName()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 52
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/content/DbExplanation;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 57
    :goto_48
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->hasType()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 58
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/content/DbExplanation;->putShortString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    goto :goto_22

    .line 48
    :cond_5a
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3b

    .line 54
    :cond_5e
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_48

    .line 60
    :cond_62
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_22

    .line 65
    .end local v0           #explanation:Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_66
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 66
    .local v4, result:[B
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_8
.end method
