.class public Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;
.super Lcom/google/android/apps/translatedecoder/util/StringSet;
.source "ArrayBasedStringSet.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x1b7b1d7fc2ccb2a2L


# instance fields
.field private final keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V
    .registers 2
    .parameter "keys"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringSet;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringSet;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 31
    .local v4, keys1:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 32
    .local v1, j:I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    aput-object v3, v4, v1

    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_e

    .line 35
    .end local v3           #key:Ljava/lang/String;
    :cond_20
    new-instance v5, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;Z)V

    iput-object v5, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 36
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringSet;
    .registers 4
    .parameter "buf"

    .prologue
    .line 51
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->logger:Ljava/util/logging/Logger;

    const-string v2, "Read from buffer"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    move-result-object v0

    .line 53
    .local v0, keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;

    invoke-direct {v1, v0}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;-><init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V

    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write to buffer, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->keys:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 48
    return-void
.end method
