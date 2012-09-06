.class public abstract Lcom/google/android/apps/translatedecoder/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_MMAP_SIZE:I = 0x5f5e100

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x3048b8bc313e1225L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .registers 5
    .parameter "buf"

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 86
    .local v0, classId:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 87
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v1

    .line 89
    :goto_b
    return-object v1

    .line 88
    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 89
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/PTSymbolWrapper;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v1

    goto :goto_b

    .line 91
    :cond_14
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

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .registers 11
    .parameter "file"

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 64
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 65
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 66
    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v9

    .line 67
    .local v9, res:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 78
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :goto_2a
    return-object v9

    .line 70
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v6       #buf:Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v8, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    .line 72
    .restart local v9       #res:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_2a

    .line 76
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :catch_42
    move-exception v7

    .line 77
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v9, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public abstract addWord(Ljava/lang/String;)I
.end method

.method public final addWords(Ljava/lang/String;)[I
    .registers 4
    .parameter "sentence"

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWords([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public final addWords([Ljava/lang/String;)[I
    .registers 5
    .parameter "words"

    .prologue
    .line 112
    array-length v2, p1

    new-array v1, v2, [I

    .line 113
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 114
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 116
    :cond_12
    return-object v1
.end method

.method public abstract allWords()[Ljava/lang/String;
.end method

.method public abstract getId(Ljava/lang/String;)I
.end method

.method public final getIds(Ljava/lang/String;)[I
    .registers 7
    .parameter "sentence"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, words:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 143
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 144
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getId(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 146
    :cond_1c
    return-object v1
.end method

.method public abstract getWord(I)Ljava/lang/String;
.end method

.method public final getWords(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2a

    .line 173
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 176
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getWords([I)Ljava/lang/String;
    .registers 5
    .parameter "ids"

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_1f

    .line 161
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1c

    .line 163
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 166
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract hasWord(Ljava/lang/String;)Z
.end method

.method public abstract maximumId()I
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToFile(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public writeToFile(Ljava/lang/String;Z)V
    .registers 13
    .parameter "file"
    .parameter "mmapFormat"

    .prologue
    .line 39
    if-eqz p2, :cond_4a

    .line 40
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v8, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v8, fout:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 42
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x5f5e100

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 43
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 45
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final buffer size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 47
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #fout:Ljava/io/RandomAccessFile;
    :goto_49
    return-void

    .line 49
    :cond_4a
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_49

    .line 53
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    :catch_5b
    move-exception v7

    .line 54
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method
