.class public Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
.super Ljava/lang/Object;
.source "SortedStringArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x57a435591438bbdeL


# instance fields
.field private final chars:Ljava/nio/CharBuffer;

.field private final offSet:I

.field private final size:I

.field private final startPoss:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/nio/IntBuffer;Ljava/nio/CharBuffer;I)V
    .registers 5
    .parameter "size"
    .parameter "startPoss"
    .parameter "chars"
    .parameter "offSet"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    .line 93
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    .line 94
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    .line 95
    iput p4, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    .line 96
    return-void
.end method

.method public constructor <init>(I[I[CI)V
    .registers 7
    .parameter "size"
    .parameter "startPoss"
    .parameter "chars"
    .parameter "offSet"

    .prologue
    .line 79
    invoke-static {p2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p3}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>(ILjava/nio/IntBuffer;Ljava/nio/CharBuffer;I)V

    .line 80
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 4
    .parameter "words"
    .parameter "sorted"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>([Ljava/lang/String;ZI)V

    .line 49
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ZI)V
    .registers 12
    .parameter "words"
    .parameter "sorted"
    .parameter "offSet"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p2, :cond_8

    .line 54
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 56
    :cond_8
    iput p3, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    .line 59
    const/4 v4, 0x0

    .line 60
    .local v4, numChars:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v6, p1

    if-ge v0, v6, :cond_19

    .line 61
    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 64
    :cond_19
    array-length v6, p1

    iput v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    .line 65
    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    new-array v6, v6, [I

    invoke-static {v6}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    .line 66
    new-array v6, v4, [C

    invoke-static {v6}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, j:I
    const/4 v0, 0x0

    :goto_30
    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    if-ge v0, v6, :cond_54

    .line 69
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v0, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 70
    aget-object v5, p1, v0

    .line 71
    .local v5, word:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_51

    .line 72
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #j:I
    .local v2, j:I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 71
    add-int/lit8 v3, v3, 0x1

    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_3c

    .line 68
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 75
    .end local v3           #k:I
    .end local v5           #word:Ljava/lang/String;
    :cond_54
    return-void
.end method

.method private binarySearch(Ljava/lang/String;)I
    .registers 7
    .parameter "word"

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, start:I
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    .line 150
    .local v0, end:I
    const/4 v1, -0x1

    .line 151
    .local v1, middle:I
    :goto_4
    if-ge v3, v0, :cond_1e

    .line 152
    sub-int v4, v0, v3

    div-int/lit8 v4, v4, 0x2

    add-int v1, v4, v3

    .line 153
    iget v4, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getWord(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, middleWord:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1c

    .line 155
    add-int/lit8 v3, v1, 0x1

    goto :goto_4

    .line 157
    :cond_1c
    move v0, v1

    goto :goto_4

    .line 160
    .end local v2           #middleWord:Ljava/lang/String;
    :cond_1e
    iget v4, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    if-ge v3, v4, :cond_30

    iget v4, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getWord(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_30

    .line 163
    .end local v3           #start:I
    :goto_2f
    return v3

    .restart local v3       #start:I
    :cond_30
    const/4 v3, -0x1

    goto :goto_2f
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    .registers 9
    .parameter "buf"

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 186
    .local v3, size:I
    sget-object v5, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read from buffer, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 188
    .local v2, offSet:I
    sget-object v5, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Position offSet is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 190
    .local v1, len:I
    invoke-static {p0, v1}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->subBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    .line 191
    .local v4, startPoss:Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 194
    invoke-static {p0, v1}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->subBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 195
    .local v0, chars:Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    new-instance v5, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;-><init>(ILjava/nio/IntBuffer;Ljava/nio/CharBuffer;I)V

    return-object v5
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getPos(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getAllWords()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 83
    iget v2, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    new-array v1, v2, [Ljava/lang/String;

    .line 84
    .local v1, res:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget v2, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    if-ge v0, v2, :cond_15

    .line 85
    iget v2, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getWord(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 87
    :cond_15
    return-object v1
.end method

.method public getPos(Ljava/lang/String;)I
    .registers 4
    .parameter "word"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->binarySearch(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, res:I
    if-gez v0, :cond_7

    .line 128
    .end local v0           #res:I
    :goto_6
    return v0

    .restart local v0       #res:I
    :cond_7
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public getWord(I)Ljava/lang/String;
    .registers 10
    .parameter "pos"

    .prologue
    .line 102
    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    sub-int v3, p1, v6

    .line 103
    .local v3, realPos:I
    if-ltz v3, :cond_a

    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    if-lt v3, v6, :cond_c

    .line 104
    :cond_a
    const/4 v6, 0x0

    .line 117
    :goto_b
    return-object v6

    .line 107
    :cond_c
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    .line 108
    .local v5, startPos:I
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 109
    .local v0, endPos:I
    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_26

    .line 110
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 112
    :cond_26
    sub-int v2, v0, v5

    .line 113
    .local v2, len:I
    new-array v4, v2, [C

    .line 114
    .local v4, res:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v2, :cond_3a

    .line 115
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    add-int v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/nio/CharBuffer;->get(I)C

    move-result v6

    aput-char v6, v4, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 117
    :cond_3a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public maxPos()I
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 6
    .parameter "buf"

    .prologue
    .line 168
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write to buffer, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 169
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->size:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 170
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position offSet is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->offSet:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4c
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 175
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->startPoss:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 178
    :cond_60
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    const/4 v0, 0x0

    :goto_6e
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 180
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 182
    :cond_82
    return-void
.end method
