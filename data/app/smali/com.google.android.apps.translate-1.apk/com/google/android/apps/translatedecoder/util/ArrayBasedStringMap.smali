.class public Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;
.super Lcom/google/android/apps/translatedecoder/util/StringMap;
.source "ArrayBasedStringMap.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x7d98e4178f216c77L


# instance fields
.field private final keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

.field private final values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V
    .registers 3
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringMap;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 35
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringMap;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 43
    .local v5, keys1:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 44
    .local v2, j:I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, key:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aput-object v4, v5, v2

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_13

    .line 48
    .end local v4           #key:Ljava/lang/String;
    :cond_25
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 52
    .local v6, values1:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    array-length v7, v5

    if-ge v0, v7, :cond_3f

    .line 53
    aget-object v7, v5, v0

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 56
    :cond_3f
    new-instance v7, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-direct {v7, v5, v8}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 57
    new-instance v7, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-direct {v7, v6, v8}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;Z)V

    iput-object v7, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 58
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringMap;
    .registers 5
    .parameter "buf"

    .prologue
    .line 79
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->logger:Ljava/util/logging/Logger;

    const-string v3, "Read from buffer"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    move-result-object v0

    .line 81
    .local v0, keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    move-result-object v1

    .line 82
    .local v1, values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    new-instance v2, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;-><init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V

    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getPos(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, pos:I
    if-gez v0, :cond_a

    .line 64
    const/4 v1, 0x0

    .line 66
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getWord(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write to buffer, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;->values:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 76
    return-void
.end method
