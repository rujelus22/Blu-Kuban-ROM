.class public abstract Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
.super Ljava/lang/Object;
.source "LanguageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x4a8ca095fe1d3c77L


# instance fields
.field lmOrder:I

.field transient maxNumCachedNgrams:I

.field noBackoff:Z

.field oovCost:D

.field transient simulateProdlm:Z

.field transient unkId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->simulateProdlm:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->unkId:I

    .line 39
    iput v1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->maxNumCachedNgrams:I

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    .registers 6
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 145
    .local v0, classId:I
    if-ne v0, v4, :cond_c

    .line 146
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v1

    .line 150
    :goto_b
    return-object v1

    .line 148
    :cond_c
    sget-object v1, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->logger:Ljava/util/logging/Logger;

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

    .line 149
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 150
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    .registers 11
    .parameter "lmFile"

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 123
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 124
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 125
    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v9

    .line 126
    .local v9, res:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 137
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    :goto_2a
    return-object v9

    .line 129
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v6       #buf:Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    .local v8, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    .line 131
    .restart local v9       #res:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_2a

    .line 135
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    :catch_42
    move-exception v7

    .line 136
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/4 v9, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public lmOrder()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder:I

    return v0
.end method

.method public maxNumCachedNgrams()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->maxNumCachedNgrams:I

    return v0
.end method

.method public abstract ngramCost(Ljava/util/List;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation
.end method

.method public noBackoff()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->noBackoff:Z

    return v0
.end method

.method public oovCost()D
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->oovCost:D

    return-wide v0
.end method

.method public sentenceCost(Ljava/util/List;I)D
    .registers 13
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .local p1, sentence:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 161
    if-nez p1, :cond_5

    .line 183
    :cond_4
    return-wide v0

    .line 164
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 165
    .local v4, sentLen:I
    if-lez v4, :cond_4

    .line 169
    const-wide/16 v0, 0x0

    .line 171
    .local v0, cost:D
    move v3, p2

    .local v3, j:I
    :goto_e
    iget v7, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder:I

    if-ge v3, v7, :cond_43

    if-gt v3, v4, :cond_43

    .line 172
    const/4 v7, 0x0

    invoke-interface {p1, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->ngramCost(Ljava/util/List;)D

    move-result-wide v5

    .line 173
    .local v5, t:D
    add-double/2addr v0, v5

    .line 174
    sget-object v7, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "partial ngram at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 178
    .end local v5           #t:D
    :cond_43
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    iget v7, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder:I

    sub-int v7, v4, v7

    if-gt v2, v7, :cond_4

    .line 179
    iget v7, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder:I

    add-int/2addr v7, v2

    invoke-interface {p1, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->ngramCost(Ljava/util/List;)D

    move-result-wide v5

    .line 180
    .restart local v5       #t:D
    add-double/2addr v0, v5

    .line 181
    sget-object v7, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reguar ngram at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_44
.end method

.method public setLmOrder(I)V
    .registers 2
    .parameter "lmOrder"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder:I

    .line 48
    return-void
.end method

.method public setMaxNumCachedNgrams(I)V
    .registers 2
    .parameter "maxNumCachedNgrams"

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->maxNumCachedNgrams:I

    .line 56
    return-void
.end method

.method public setNoBackoff(Z)V
    .registers 2
    .parameter "noBackoff"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->noBackoff:Z

    .line 89
    return-void
.end method

.method public setOovCost(D)V
    .registers 3
    .parameter "oovCost"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->oovCost:D

    .line 81
    return-void
.end method

.method public setSimulateProdlm(Z)V
    .registers 2
    .parameter "simulateProdlm"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->simulateProdlm:Z

    .line 72
    return-void
.end method

.method public setUnkId(I)V
    .registers 2
    .parameter "unkId"

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->unkId:I

    .line 64
    return-void
.end method

.method public simulateProdlm()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->simulateProdlm:Z

    return v0
.end method

.method public unkId()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->unkId:I

    return v0
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 3
    .parameter "lmFile"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToFile(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public writeToFile(Ljava/lang/String;Z)V
    .registers 13
    .parameter "lmFile"
    .parameter "mmapFormat"

    .prologue
    .line 101
    if-eqz p2, :cond_4a

    .line 102
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v8, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v8, fout:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 104
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1dcd6500

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 105
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 107
    sget-object v1, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->logger:Ljava/util/logging/Logger;

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

    .line 108
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 109
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 118
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #fout:Ljava/io/RandomAccessFile;
    :goto_49
    return-void

    .line 111
    :cond_4a
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_49

    .line 115
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    :catch_5b
    move-exception v7

    .line 116
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method
