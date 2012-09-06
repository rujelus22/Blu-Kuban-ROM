.class public abstract Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
.super Ljava/lang/Object;
.source "TrieNodeList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x620b2cf353b87cf6L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .registers 5
    .parameter "buf"

    .prologue
    .line 50
    sget-object v1, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read from buffer, postion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 52
    .local v0, classId:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 53
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;

    move-result-object v1

    return-object v1

    .line 55
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown class id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
.end method

.method public abstract clear()V
.end method

.method public abstract fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
.end method

.method public abstract size()I
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method
