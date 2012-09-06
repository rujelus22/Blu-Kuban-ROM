.class public Lcom/google/android/apps/translatedecoder/tools/ModelLoader;
.super Ljava/lang/Object;
.source "ModelLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 16
    .parameter "args"

    .prologue
    .line 25
    array-length v9, p0

    if-gtz v9, :cond_e

    .line 26
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Usage: java ModelLoader --ptFile=file --lmFile=file --symbolFile=file --preprocDataFile=file"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 30
    :cond_e
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 31
    .local v0, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 34
    .local v5, start0:J
    const/4 v2, 0x0

    .line 35
    .local v2, pt:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    const/4 v1, 0x0

    .line 36
    .local v1, lm:Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    const/4 v7, 0x0

    .line 37
    .local v7, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    const/4 v8, 0x0

    .line 39
    .local v8, tokenizer:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    const-string v9, "ptFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 41
    .local v3, start:J
    const-string v9, "ptFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    move-result-object v2

    .line 42
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Finish reading pt file"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# of seconds taken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    .end local v3           #start:J
    :cond_58
    const-string v9, "lmFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 48
    .restart local v3       #start:J
    const-string v9, "lmFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;

    move-result-object v1

    .line 49
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Finish reading lm file"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# of seconds taken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    .end local v3           #start:J
    :cond_95
    const-string v9, "symbolFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 55
    .restart local v3       #start:J
    const-string v9, "symbolFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;

    move-result-object v7

    .line 56
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Finish reading symbol table."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# of seconds taken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    .end local v3           #start:J
    :cond_d2
    const-string v9, "charMapFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_117

    const-string v9, "preprocDataFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 62
    .restart local v3       #start:J
    const-string v9, "preprocDataFile"

    invoke-virtual {v0, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->readFromFile(Ljava/lang/String;)Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    move-result-object v8

    .line 63
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Finish reading tokenizer files"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# of seconds taken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    .end local v3           #start:J
    :cond_117
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total # of seconds taken: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    if-eqz v2, :cond_155

    .line 72
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pt maxPhraseLen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->maxPhraseLen()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_155
    if-eqz v1, :cond_173

    .line 75
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lm order maxPhraseLen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;->lmOrder()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_173
    if-eqz v7, :cond_192

    .line 78
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Word for id 1 is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->getWord(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_192
    if-eqz v8, :cond_1b4

    .line 81
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is U.K an abbreviation?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ENGLISH"

    const-string v12, "U.K"

    invoke-virtual {v8, v11, v12}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->isAbbrev(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    :cond_1b4
    return-void
.end method
