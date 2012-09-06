.class public Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
.super Ljava/lang/Object;
.source "CharNormalizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX_MMAP_SIZE:I = 0x2faf080

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x490727f74037fb4cL


# instance fields
.field private final charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;

.field private removeDiacritics:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ZLcom/google/android/apps/translatedecoder/util/StringMap;)V
    .registers 3
    .parameter "removeDiacritics"
    .parameter "charMap"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacritics:Z

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;

    .line 46
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "in"

    .prologue
    .line 96
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    .registers 4
    .parameter "buf"

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-ne v2, v1, :cond_11

    .line 149
    .local v1, removeDiacritics:Z
    :goto_7
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/StringMap;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringMap;

    move-result-object v0

    .line 150
    .local v0, charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;
    new-instance v2, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;-><init>(ZLcom/google/android/apps/translatedecoder/util/StringMap;)V

    return-object v2

    .line 148
    .end local v0           #charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;
    .end local v1           #removeDiacritics:Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    .registers 11
    .parameter "file"

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 127
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 128
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v2

    if-ne v1, v2, :cond_28

    .line 129
    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    move-result-object v9

    .line 138
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    :goto_27
    return-object v9

    .line 131
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v6       #buf:Ljava/nio/ByteBuffer;
    :cond_28
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    .local v8, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    .line 133
    .local v9, res:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_27

    .line 136
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    :catch_3c
    move-exception v7

    .line 137
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v9, 0x0

    goto :goto_27
.end method

.method public static removeDiacriticalMarks(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 87
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, nfdNormalizedString:Ljava/lang/String;
    const-string v2, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 89
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public mapChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "in"

    .prologue
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, offset:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2e

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 66
    .local v1, codepoint:I
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 67
    .local v0, c:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;

    invoke-virtual {v5, v0}, Lcom/google/android/apps/translatedecoder/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, equiv:Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_24
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 74
    goto :goto_6

    .line 71
    :cond_2a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 75
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #codepoint:I
    .end local v2           #equiv:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public normalizeChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "in"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacritics:Z

    if-eqz v0, :cond_11

    .line 50
    invoke-static {p1}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->mapChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacriticalMarks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_10
    return-object v0

    :cond_11
    invoke-static {p1}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->mapChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public removeDiacritics()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacritics:Z

    return v0
.end method

.method public setRemoveDiacritics(Z)V
    .registers 2
    .parameter "removeDiacritics"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacritics:Z

    .line 84
    return-void
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->removeDiacritics:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->charMap:Lcom/google/android/apps/translatedecoder/util/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/StringMap;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 145
    return-void

    .line 143
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->writeToFile(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public writeToFile(Ljava/lang/String;Z)V
    .registers 13
    .parameter "file"
    .parameter "mmapFormat"

    .prologue
    .line 105
    if-eqz p2, :cond_4a

    .line 106
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v8, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v8, fout:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 108
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x2faf080

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 109
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 111
    sget-object v1, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->logger:Ljava/util/logging/Logger;

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

    .line 112
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 113
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 122
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #fout:Ljava/io/RandomAccessFile;
    :goto_49
    return-void

    .line 115
    :cond_4a
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_49

    .line 119
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    :catch_5b
    move-exception v7

    .line 120
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method
