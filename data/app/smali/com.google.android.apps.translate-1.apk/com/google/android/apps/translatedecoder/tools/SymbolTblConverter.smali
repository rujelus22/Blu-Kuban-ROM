.class public Lcom/google/android/apps/translatedecoder/tools/SymbolTblConverter;
.super Ljava/lang/Object;
.source "SymbolTblConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 13
    .parameter "args"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 25
    array-length v8, p0

    if-gtz v8, :cond_f

    .line 26
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Usage: java SymbolTblConverter --inFile=file --outFile=file"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 31
    :cond_f
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 33
    .local v1, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, "inFile"

    aput-object v8, v6, v10

    const-string v8, "outFile"

    aput-object v8, v6, v11

    .line 34
    .local v6, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 37
    :try_start_22
    new-instance v7, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-direct {v7}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>()V

    .line 38
    .local v7, symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "inFile"

    invoke-virtual {v1, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    .local v0, br:Ljava/io/BufferedReader;
    :goto_41
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_5d

    .line 44
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, fds:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->addWord(Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_57} :catch_58
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_57} :catch_6a

    goto :goto_41

    .line 49
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fds:[Ljava/lang/String;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :catch_58
    move-exception v2

    .line 50
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 54
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_5c
    return-void

    .line 47
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :cond_5d
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 48
    const-string v8, "outFile"

    invoke-virtual {v1, v8}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;->writeToFile(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_69} :catch_58
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_69} :catch_6a

    goto :goto_5c

    .line 51
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #symbol:Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    :catch_6a
    move-exception v2

    .line 52
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c
.end method
