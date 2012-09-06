.class public Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
.super Ljava/lang/Object;
.source "ImplicitTrie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x500229211a862ae5L


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;",
            ">;"
        }
    .end annotation
.end field

.field private final order:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 5
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->order:I

    .line 41
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->nodes:Ljava/util/List;

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_15

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "order is not correct!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_15
    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    .registers 7
    .parameter "buf"

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 164
    .local v2, order:I
    sget-object v3, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read from buffer, order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v2, :cond_2e

    .line 167
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 169
    :cond_2e
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-direct {v3, v2, v1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;-><init>(ILjava/util/List;)V

    return-object v3
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    .registers 7
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, in:Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_b} :catch_17

    .line 140
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_11} :catch_2d

    .line 146
    .local v3, res:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    if-eqz v2, :cond_16

    .line 147
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_16
    return-object v3

    .line 142
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .end local v3           #res:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :catch_17
    move-exception v0

    .line 143
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 144
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Class ImplicitTrie is not found!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_23

    .line 146
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catchall_23
    move-exception v4

    :goto_24
    if-eqz v1, :cond_29

    .line 147
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_29
    throw v4

    .line 146
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catchall_2a
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_24

    .line 142
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_2d
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_18
.end method


# virtual methods
.method public lookup(Ljava/util/List;)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/apps/translatedecoder/succinct/TrieNode;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 102
    .local v1, words2:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 105
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->lookup([I)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    move-result-object v2

    return-object v2
.end method

.method public lookup([I)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    .registers 12
    .parameter "words"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 55
    if-eqz p1, :cond_9

    array-length v6, p1

    iget v8, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->order:I

    if-le v6, v8, :cond_12

    .line 56
    :cond_9
    sget-object v6, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->logger:Ljava/util/logging/Logger;

    const-string v8, "words is null or too long!"

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v5, v7

    .line 89
    :cond_11
    :goto_11
    return-object v5

    .line 60
    :cond_12
    new-instance v5, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-direct {v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>()V

    .line 61
    .local v5, tNode:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    const/4 v0, 0x0

    .line 62
    .local v0, beginOffset:I
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->nodes:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    invoke-virtual {v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->size()I

    move-result v1

    .line 64
    .local v1, endOffSet:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    array-length v6, p1

    if-ge v2, v6, :cond_39

    .line 65
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->nodes:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    .line 66
    .local v3, list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    aget v6, p1, v2

    invoke-static {v3, v0, v1, v6, v9}, Lcom/google/android/apps/translatedecoder/succinct/BinarySearch;->search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;IIIZ)I

    move-result v4

    .line 67
    .local v4, pos:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_3e

    .line 86
    .end local v3           #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .end local v4           #pos:I
    :cond_39
    array-length v6, p1

    if-ge v2, v6, :cond_11

    move-object v5, v7

    .line 89
    goto :goto_11

    .line 70
    .restart local v3       #list:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .restart local v4       #pos:I
    :cond_3e
    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 71
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_60

    .line 72
    invoke-virtual {v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getOffset()I

    move-result v0

    .line 74
    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_63

    .line 75
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->nodes:Ljava/util/List;

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    invoke-virtual {v6}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->size()I

    move-result v1

    .line 64
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 76
    :cond_63
    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_75

    .line 78
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 79
    invoke-virtual {v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getOffset()I

    move-result v1

    goto :goto_60

    .line 81
    :cond_75
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Returned pos must be wrong!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public order()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->order:I

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 7
    .parameter "buf"

    .prologue
    .line 154
    sget-object v2, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write to buffer, order="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->order:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 155
    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->order:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    .line 157
    .local v1, nodeList:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_25

    .line 159
    .end local v1           #nodeList:Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    :cond_35
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, out:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 123
    .end local v0           #out:Ljava/io/ObjectOutputStream;
    .local v1, out:Ljava/io/ObjectOutputStream;
    :try_start_b
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1b

    .line 125
    if-eqz v1, :cond_13

    .line 126
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 129
    :cond_13
    return-void

    .line 125
    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #out:Ljava/io/ObjectOutputStream;
    :catchall_14
    move-exception v2

    :goto_15
    if-eqz v0, :cond_1a

    .line 126
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1a
    throw v2

    .line 125
    .end local v0           #out:Ljava/io/ObjectOutputStream;
    .restart local v1       #out:Ljava/io/ObjectOutputStream;
    :catchall_1b
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/ObjectOutputStream;
    .restart local v0       #out:Ljava/io/ObjectOutputStream;
    goto :goto_15
.end method
