.class public abstract Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
.super Ljava/lang/Object;
.source "PhraseTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x3be80b2a4e55fd8bL


# instance fields
.field maxPhraseLen:I

.field oovCost:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen:I

    .line 29
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->oovCost:D

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    .registers 6
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    .line 110
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 111
    .local v0, classId:I
    if-ne v0, v4, :cond_c

    .line 112
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    move-result-object v1

    .line 116
    :goto_b
    return-object v1

    .line 114
    :cond_c
    sget-object v1, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown class id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 115
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 116
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    .registers 11
    .parameter "file"

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 89
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 90
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 91
    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    move-result-object v9

    .line 92
    .local v9, res:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 103
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    :goto_2a
    return-object v9

    .line 95
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v6       #buf:Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v8, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    .line 97
    .restart local v9       #res:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 98
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_2a

    .line 101
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    :catch_42
    move-exception v7

    .line 102
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v9, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public createIdentityPhrase(ID)Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    .registers 8
    .parameter "inputWord"
    .parameter "cost"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    new-array v1, v2, [I

    aput p1, v1, v3

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    return-object v0
.end method

.method public createOOVPhrase(I)Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    .registers 4
    .parameter "inputWord"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->oovCost:D

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->createIdentityPhrase(ID)Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPhrases([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation
.end method

.method public maxPhraseLen()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen:I

    return v0
.end method

.method public oovCost()D
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->oovCost:D

    return-wide v0
.end method

.method public setMaxPhraseLen(I)V
    .registers 2
    .parameter "maxPhraseLen"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen:I

    .line 47
    return-void
.end method

.method public setOovCost(D)V
    .registers 3
    .parameter "oovCost"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->oovCost:D

    .line 55
    return-void
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->writeToFile(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public writeToFile(Ljava/lang/String;Z)V
    .registers 13
    .parameter "file"
    .parameter "mmapFormat"

    .prologue
    .line 67
    if-eqz p2, :cond_4a

    .line 68
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v8, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v8, fout:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 70
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1dcd6500

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 71
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    sget-object v1, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->logger:Ljava/util/logging/Logger;

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

    .line 74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 75
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 84
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #fout:Ljava/io/RandomAccessFile;
    :goto_49
    return-void

    .line 77
    :cond_4a
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_49

    .line 81
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    :catch_5b
    move-exception v7

    .line 82
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method
