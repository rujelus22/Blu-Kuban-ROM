.class public Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x2fb7c5ecfa704443L


# instance fields
.field private final charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

.field private final handleSpecialPuncts:Z

.field private final preprocAbbrData:Lcom/google/android/apps/translatedecoder/util/StringSet;

.field private final preprocMapData:Lcom/google/android/apps/translatedecoder/util/StringMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/StringSet;Lcom/google/android/apps/translatedecoder/util/StringMap;Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;)V
    .registers 5
    .parameter "preprocAbbrData"
    .parameter "preprocMapData"
    .parameter "charNormalizer"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->handleSpecialPuncts:Z

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocAbbrData:Lcom/google/android/apps/translatedecoder/util/StringSet;

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocMapData:Lcom/google/android/apps/translatedecoder/util/StringMap;

    .line 66
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    .line 67
    return-void
.end method

.method public static getAbbrSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "lang"
    .parameter "abbr"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "lang"
    .parameter "orignal"

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCJKT(Ljava/lang/String;)Z
    .registers 2
    .parameter "fullLangName"

    .prologue
    .line 335
    const-string v0, "chinese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "zh-cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "japanese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "korean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "ko"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "thai"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public static main([Ljava/lang/String;)V
    .registers 14
    .parameter "args"

    .prologue
    const/4 v12, 0x1

    .line 342
    array-length v10, p0

    if-gtz v10, :cond_e

    .line 343
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Usage: java Tokenizer --inputFile=file --outputFile=file --language=language --preprocDataFile=file"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    .line 349
    :cond_e
    new-instance v2, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 351
    .local v2, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v10, 0x4

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "inputFile"

    aput-object v11, v8, v10

    const-string v10, "outputFile"

    aput-object v10, v8, v12

    const/4 v10, 0x2

    const-string v11, "language"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "preprocDataFile"

    aput-object v11, v8, v10

    .line 353
    .local v8, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v2, v8}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 355
    const-string v10, "preprocDataFile"

    invoke-virtual {v2, v10}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    move-result-object v9

    .line 358
    .local v9, tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    :try_start_36
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "inputFile"

    invoke-virtual {v2, v11}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 360
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 361
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    const-string v11, "outputFile"

    invoke-virtual {v2, v11}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 363
    .local v6, out:Ljava/io/DataOutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 366
    .local v1, bw:Ljava/io/BufferedWriter;
    :goto_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_b2

    .line 367
    sget-object v10, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->logger:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 368
    const-string v10, "language"

    invoke-virtual {v2, v10}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->tokenizeWithJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, outLine:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_ac} :catch_ad
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_ac} :catch_bc

    goto :goto_6a

    .line 374
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #out:Ljava/io/DataOutputStream;
    .end local v7           #outLine:Ljava/lang/String;
    :catch_ad
    move-exception v3

    .line 375
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 379
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_b1
    return-void

    .line 371
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/DataOutputStream;
    :cond_b2
    :try_start_b2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 372
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 373
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_b2 .. :try_end_bb} :catch_ad
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_bb} :catch_bc

    goto :goto_b1

    .line 376
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #out:Ljava/io/DataOutputStream;
    :catch_bc
    move-exception v3

    .line 377
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    .registers 5
    .parameter "buf"

    .prologue
    .line 328
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/StringSet;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringSet;

    move-result-object v1

    .line 329
    .local v1, preprocAbbrData:Lcom/google/android/apps/translatedecoder/util/StringSet;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/StringMap;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringMap;

    move-result-object v2

    .line 330
    .local v2, preprocMapData:Lcom/google/android/apps/translatedecoder/util/StringMap;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    move-result-object v0

    .line 331
    .local v0, charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    new-instance v3, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;-><init>(Lcom/google/android/apps/translatedecoder/util/StringSet;Lcom/google/android/apps/translatedecoder/util/StringMap;Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;)V

    return-object v3
.end method

.method public static readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    .registers 11
    .parameter "file"

    .prologue
    .line 302
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 303
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 304
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 305
    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    move-result-object v9

    .line 306
    .local v9, res:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 317
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    :goto_2a
    return-object v9

    .line 309
    .restart local v0       #channel:Ljava/nio/channels/FileChannel;
    .restart local v6       #buf:Ljava/nio/ByteBuffer;
    :cond_2b
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 310
    .local v8, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    .line 311
    .restart local v9       #res:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_2a

    .line 315
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #in:Ljava/io/ObjectInputStream;
    .end local v9           #res:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    :catch_42
    move-exception v7

    .line 316
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    const/4 v9, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public deTokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "lang"
    .parameter "sentence"

    .prologue
    .line 217
    invoke-static {p1}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isCJKT(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 218
    const-string v5, "\\s+"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    :goto_e
    return-object v5

    .line 221
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v4, res:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 223
    .local v3, previousIsSpace:Z
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4c

    .line 224
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 225
    .local v1, codepoint:I
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 228
    .local v0, c:Ljava/lang/String;
    if-eqz v3, :cond_38

    const-string v5, "^\\p{Punct}$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 229
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_38
    const-string v5, "^\\p{Space}$"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 234
    const/4 v3, 0x1

    .line 239
    :goto_41
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 240
    goto :goto_16

    .line 236
    :cond_47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const/4 v3, 0x0

    goto :goto_41

    .line 241
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #codepoint:I
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_e
.end method

.method public getWordMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .parameter "lang"
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p3, tokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocMapData:Lcom/google/android/apps/translatedecoder/util/StringMap;

    invoke-static {p1, p2}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->getMapSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/translatedecoder/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, res:Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 256
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 258
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, words:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    const/4 v2, 0x1

    .line 262
    .end local v1           #words:[Ljava/lang/String;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public isAbbrev(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "lang"
    .parameter "token"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocAbbrData:Lcom/google/android/apps/translatedecoder/util/StringSet;

    invoke-static {p1, p2}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->getAbbrSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/StringSet;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "token"

    .prologue
    .line 209
    const-string v0, "-*[\\d]+\\.[\\d]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSpecialPunct(Ljava/lang/String;)Z
    .registers 3
    .parameter "token"

    .prologue
    .line 205
    const-string v0, "&apos;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "&quot;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public replaceSpecialPuncts(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "in"

    .prologue
    .line 200
    const-string v1, "&apos;"

    const-string v2, " &apos; "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, in2:Ljava/lang/String;
    const-string v1, "&quot;"

    const-string v2, " &quot; "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public tokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .parameter "lang"
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isCJKT(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->tokenizeForCJK(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 151
    :cond_a
    return-object v6

    .line 110
    :cond_b
    iget-object v11, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    invoke-virtual {v11, p2}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalizeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, words1:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v6, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v8, tem:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v10

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_24
    if-ge v3, v4, :cond_a

    aget-object v9, v0, v3

    .line 116
    .local v9, word:Ljava/lang/String;
    invoke-virtual {p0, p1, v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isAbbrev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3a

    invoke-virtual {p0, v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3a

    invoke-virtual {p0, v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isSpecialPunct(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_40

    .line 118
    :cond_3a
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 119
    :cond_40
    invoke-virtual {p0, p1, v9, v8}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->getWordMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 121
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3d

    .line 124
    :cond_4a
    const/4 v7, 0x0

    .line 127
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, offset:I
    :goto_4c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_85

    .line 128
    invoke-virtual {v9, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 129
    .local v2, codepoint:I
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([C)V

    .line 130
    .local v1, c:Ljava/lang/String;
    const-string v11, "^\\p{Punct}$"

    invoke-virtual {v1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7a

    .line 131
    if-eqz v7, :cond_70

    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_70
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v7, 0x0

    .line 144
    :goto_74
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v5, v11

    .line 145
    goto :goto_4c

    .line 139
    :cond_7a
    if-nez v7, :cond_81

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_81
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 146
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #codepoint:I
    :cond_85
    if-eqz v7, :cond_3d

    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method public tokenizeForCJK(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .parameter "lang"
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v10, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    invoke-virtual {v10, p2}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalizeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, words:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v7, tokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_5a

    aget-object v8, v0, v3

    .line 165
    .local v8, word:Ljava/lang/String;
    const/4 v6, 0x0

    .line 168
    .local v6, token:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, offset:I
    :goto_1a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_4e

    .line 169
    invoke-virtual {v8, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 170
    .local v2, codepoint:I
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, c:Ljava/lang/String;
    const/16 v10, 0x7f

    if-le v2, v10, :cond_43

    .line 172
    if-eqz v6, :cond_39

    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_39
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v6, 0x0

    .line 185
    :goto_3d
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v5, v10

    .line 186
    goto :goto_1a

    .line 180
    :cond_43
    if-nez v6, :cond_4a

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #token:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .restart local v6       #token:Ljava/lang/StringBuilder;
    :cond_4a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 187
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #codepoint:I
    :cond_4e
    if-eqz v6, :cond_57

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 191
    .end local v5           #offset:I
    .end local v6           #token:Ljava/lang/StringBuilder;
    .end local v8           #word:Ljava/lang/String;
    :cond_5a
    return-object v7
.end method

.method public tokenizeWithJoin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "lang"
    .parameter "in"

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->replaceSpecialPuncts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->tokenize(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2b

    .line 89
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 92
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocAbbrData:Lcom/google/android/apps/translatedecoder/util/StringSet;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/StringSet;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->preprocMapData:Lcom/google/android/apps/translatedecoder/util/StringMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/StringMap;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 325
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->writeToFile(Ljava/lang/String;Z)V

    .line 276
    return-void
.end method

.method public writeToFile(Ljava/lang/String;Z)V
    .registers 13
    .parameter "file"
    .parameter "mmapFormat"

    .prologue
    .line 280
    if-eqz p2, :cond_4a

    .line 281
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v8, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v8, fout:Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 283
    .local v0, channel:Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x5f5e100

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 285
    .local v6, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->mmapFileSignature()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {p0, v6}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 287
    sget-object v1, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->logger:Ljava/util/logging/Logger;

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

    .line 288
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 289
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 298
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    .end local v8           #fout:Ljava/io/RandomAccessFile;
    :goto_49
    return-void

    .line 291
    :cond_4a
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 292
    .local v9, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v9, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_49

    .line 295
    .end local v9           #out:Ljava/io/ObjectOutputStream;
    :catch_5b
    move-exception v7

    .line 296
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49
.end method
