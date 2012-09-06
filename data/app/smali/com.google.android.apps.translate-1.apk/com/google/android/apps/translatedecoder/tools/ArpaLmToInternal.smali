.class public Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;
.super Ljava/lang/Object;
.source "ArpaLmToInternal.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;ILjava/lang/String;)V
    .registers 23
    .parameter "arpaFile"
    .parameter "maxOrder"
    .parameter "outFile"

    .prologue
    .line 31
    :try_start_0
    new-instance v10, Ljava/io/DataInputStream;

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/translatedecoder/util/Utils;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    .local v10, in:Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v2, br:Ljava/io/BufferedReader;
    new-instance v14, Ljava/io/DataOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .local v14, out:Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v17, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    .local v3, bw:Ljava/io/BufferedWriter;
    const/4 v11, 0x0

    .line 38
    .local v11, line:Ljava/lang/String;
    const/4 v15, 0x0

    .line 39
    .local v15, start:Z
    const/4 v13, 0x0

    .line 40
    .local v13, order:I
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_142

    .line 41
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 43
    const-string v17, "^\\s*$"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3a

    const-string v17, "^\\\\\\s*end\\\\\\s*$"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3a

    .line 46
    const-string v17, "^\\\\\\d-grams:\\s*$"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a3

    .line 47
    const/4 v15, 0x1

    .line 48
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 49
    sget-object v17, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "line="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; order="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_13c

    goto :goto_3a

    .line 80
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v10           #in:Ljava/io/DataInputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v13           #order:I
    .end local v14           #out:Ljava/io/DataOutputStream;
    .end local v15           #start:Z
    :catch_9e
    move-exception v6

    .line 81
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 85
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :goto_a2
    return-void

    .line 52
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #in:Ljava/io/DataInputStream;
    .restart local v11       #line:Ljava/lang/String;
    .restart local v13       #order:I
    .restart local v14       #out:Ljava/io/DataOutputStream;
    .restart local v15       #start:Z
    :cond_a3
    if-eqz v15, :cond_3a

    .line 54
    :try_start_a5
    const-string v17, "\\s+"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, fds:[Ljava/lang/String;
    move/from16 v0, p1

    if-ge v13, v0, :cond_fd

    add-int/lit8 v7, v13, 0x2

    .line 56
    .local v7, expectedNumFds:I
    :goto_b3
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_d9

    .line 57
    sget-object v17, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wrong line "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 58
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 60
    :cond_d9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v16, words:Ljava/lang/StringBuilder;
    move/from16 v0, p1

    if-ge v13, v0, :cond_100

    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v12, v17, -0x1

    .line 62
    .local v12, max:I
    :goto_e7
    const/4 v9, 0x1

    .local v9, i:I
    :goto_e8
    if-ge v9, v12, :cond_102

    .line 63
    aget-object v17, v8, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v17, v12, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_fa

    .line 65
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_e8

    .line 55
    .end local v7           #expectedNumFds:I
    .end local v9           #i:I
    .end local v12           #max:I
    .end local v16           #words:Ljava/lang/StringBuilder;
    :cond_fd
    add-int/lit8 v7, v13, 0x1

    goto :goto_b3

    .line 61
    .restart local v7       #expectedNumFds:I
    .restart local v16       #words:Ljava/lang/StringBuilder;
    :cond_100
    array-length v12, v8

    goto :goto_e7

    .line 69
    .restart local v9       #i:I
    .restart local v12       #max:I
    :cond_102
    new-instance v17, Ljava/lang/Double;

    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v0, v17

    neg-double v4, v0

    .line 73
    .local v4, cost:D
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ||| "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_13a} :catch_9e
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_13a} :catch_13c

    goto/16 :goto_3a

    .line 82
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v3           #bw:Ljava/io/BufferedWriter;
    .end local v4           #cost:D
    .end local v7           #expectedNumFds:I
    .end local v8           #fds:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #in:Ljava/io/DataInputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v12           #max:I
    .end local v13           #order:I
    .end local v14           #out:Ljava/io/DataOutputStream;
    .end local v15           #start:Z
    .end local v16           #words:Ljava/lang/StringBuilder;
    :catch_13c
    move-exception v6

    .line 83
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a2

    .line 76
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v3       #bw:Ljava/io/BufferedWriter;
    .restart local v10       #in:Ljava/io/DataInputStream;
    .restart local v11       #line:Ljava/lang/String;
    .restart local v13       #order:I
    .restart local v14       #out:Ljava/io/DataOutputStream;
    .restart local v15       #start:Z
    :cond_142
    :try_start_142
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 77
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 78
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 79
    sget-object v17, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->logger:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finish reading file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", and wrote to file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/io/FileNotFoundException; {:try_start_142 .. :try_end_175} :catch_9e
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_175} :catch_13c

    goto/16 :goto_a2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 88
    array-length v2, p0

    if-gtz v2, :cond_e

    .line 89
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Usage: java ArpaLmToInternal --arpaFile=file --order=order --outFile=file"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 94
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 96
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "arpaFile"

    aput-object v3, v1, v2

    const-string v2, "order"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "outFile"

    aput-object v3, v1, v2

    .line 97
    .local v1, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->printProperties()V

    .line 100
    const-string v2, "arpaFile"

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "order"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "outFile"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/translatedecoder/tools/ArpaLmToInternal;->convert(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    return-void
.end method
