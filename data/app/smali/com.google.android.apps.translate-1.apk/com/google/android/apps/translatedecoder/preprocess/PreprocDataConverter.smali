.class public Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;
.super Ljava/lang/Object;
.source "PreprocDataConverter.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field preprocAbbrData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field preprocMapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "in"

    .prologue
    .line 118
    const-string v0, "^\\s+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    const-string v0, " "

    .line 121
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 126
    array-length v6, p0

    if-gtz v6, :cond_e

    .line 127
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Usage: java PreprocDataConverter --charMapFile=file --charMapOutFile=file--preprocDataFile=file --preprocDataOutFile=file --mmapFormat=flag--removeDiacritics=flag"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 133
    :cond_e
    new-instance v2, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;-><init>([Ljava/lang/String;)V

    .line 134
    .local v2, config:Lcom/google/android/apps/translatedecoder/util/ConfigParser;
    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "charMapFile"

    aput-object v7, v4, v6

    const-string v6, "charMapOutFile"

    aput-object v6, v4, v8

    const/4 v6, 0x2

    const-string v7, "preprocDataFile"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "preprocDataOutFile"

    aput-object v7, v4, v6

    .line 136
    .local v4, requiredProperties:[Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->checkRequiredProperties([Ljava/lang/String;)V

    .line 139
    const-string v6, "charMapFile"

    invoke-virtual {v2, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->readCharMapTbl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 141
    .local v0, charMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;

    new-instance v6, Ljava/lang/Boolean;

    const-string v7, "removeDiacritics"

    const-string v8, "false"

    invoke-virtual {v2, v7, v8}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;

    invoke-direct {v7, v0}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v6, v7}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;-><init>(ZLcom/google/android/apps/translatedecoder/util/StringMap;)V

    .line 144
    .local v1, charNormalizer:Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;
    const-string v6, "charMapOutFile"

    invoke-virtual {v2, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Boolean;

    const-string v8, "mmapFormat"

    const-string v9, "true"

    invoke-virtual {v2, v8, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->writeToFile(Ljava/lang/String;Z)V

    .line 148
    new-instance v3, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;

    invoke-direct {v3}, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;-><init>()V

    .line 149
    .local v3, converter:Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;
    const-string v6, "preprocDataFile"

    invoke-virtual {v2, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->readPreprocData(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;)V

    .line 150
    new-instance v5, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;

    new-instance v6, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;

    iget-object v7, v3, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocAbbrData:Ljava/util/Set;

    invoke-direct {v6, v7}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;-><init>(Ljava/util/Set;)V

    new-instance v7, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;

    iget-object v8, v3, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocMapData:Ljava/util/Map;

    invoke-direct {v7, v8}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v5, v6, v7, v1}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;-><init>(Lcom/google/android/apps/translatedecoder/util/StringSet;Lcom/google/android/apps/translatedecoder/util/StringMap;Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;)V

    .line 152
    .local v5, token:Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;
    const-string v6, "preprocDataOutFile"

    invoke-virtual {v2, v6}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Boolean;

    const-string v8, "mmapFormat"

    const-string v9, "true"

    invoke-virtual {v2, v8, v9}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->writeToFile(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public static readCharMapTbl(Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    .line 79
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v1, charMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v3, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, br:Ljava/io/BufferedReader;
    const-string v9, "\\|\\s+(.{1,4})\\s+\\|\\s+(.{1,8})\\s+\\|\\s+(.{1,4})\\s+\\|\\s+(.{1,8})\\s+\\|\\s+\\|"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 86
    .local v7, pattern:Ljava/util/regex/Pattern;
    :cond_23
    :goto_23
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_b2

    .line 87
    invoke-static {v4}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 89
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    if-ne v9, v13, :cond_84

    .line 90
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->handleSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, original:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->handleSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, replace:Ljava/lang/String;
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v13, :cond_5e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_23

    .line 95
    :cond_5e
    sget-object v9, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "A human-perceivable char has more than four machine chars (utf16)! Theline is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 97
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7a} :catch_7b

    goto :goto_23

    .line 107
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #charMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #original:Ljava/lang/String;
    .end local v7           #pattern:Ljava/util/regex/Pattern;
    .end local v8           #replace:Ljava/lang/String;
    :catch_7b
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    .line 110
    const/4 v1, 0x0

    .end local v2           #e:Ljava/lang/Exception;
    :goto_83
    return-object v1

    .line 100
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #charMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    .restart local v7       #pattern:Ljava/util/regex/Pattern;
    :cond_84
    :try_start_84
    sget-object v9, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No match with the regular expression! The line is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". The file"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 102
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_23

    .line 105
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    :cond_b2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b5} :catch_7b

    goto :goto_83
.end method


# virtual methods
.method public readPreprocData(Ljava/lang/String;Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;)V
    .registers 15
    .parameter "fileName"
    .parameter "charNormalizer"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 41
    :try_start_2
    sget-object v7, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read preproc data from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 42
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocAbbrData:Ljava/util/Set;

    .line 43
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocMapData:Ljava/util/Map;

    .line 44
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v3, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v1, br:Ljava/io/BufferedReader;
    const-string v7, "^([a-zA-Z]+)\\s+[aA][bB][bB][rR][eE][vV]\\s+(.+)$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 47
    .local v0, abbrPattern:Ljava/util/regex/Pattern;
    const-string v7, "^([a-zA-Z]+)\\s+word_map\\s+([^\\s]+)\\s+(.+)$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 50
    .local v5, mapPattern:Ljava/util/regex/Pattern;
    :cond_48
    :goto_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_a9

    .line 51
    invoke-virtual {p2, v4}, Lcom/google/android/apps/translatedecoder/preprocess/CharNormalizer;->normalizeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 53
    .local v6, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-ne v7, v10, :cond_7b

    .line 54
    iget-object v7, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocAbbrData:Ljava/util/Set;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->getAbbrSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_75} :catch_76
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_75} :catch_a4

    goto :goto_48

    .line 69
    .end local v0           #abbrPattern:Ljava/util/regex/Pattern;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #mapPattern:Ljava/util/regex/Pattern;
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :catch_76
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 74
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :goto_7a
    return-void

    .line 56
    .restart local v0       #abbrPattern:Ljava/util/regex/Pattern;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #mapPattern:Ljava/util/regex/Pattern;
    .restart local v6       #matcher:Ljava/util/regex/Matcher;
    :cond_7b
    :try_start_7b
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-ne v7, v11, :cond_48

    .line 58
    iget-object v7, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocMapData:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/translatedecoder/preprocess/Tokenizer;->getMapSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_a3} :catch_76
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a3} :catch_a4

    goto :goto_48

    .line 71
    .end local v0           #abbrPattern:Ljava/util/regex/Pattern;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #mapPattern:Ljava/util/regex/Pattern;
    .end local v6           #matcher:Ljava/util/regex/Matcher;
    :catch_a4
    move-exception v2

    .line 72
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 66
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #abbrPattern:Ljava/util/regex/Pattern;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #mapPattern:Ljava/util/regex/Pattern;
    :cond_a9
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 67
    sget-object v7, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "abbrSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocAbbrData:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    sget-object v7, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mapSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/translatedecoder/preprocess/PreprocDataConverter;->preprocMapData:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_e8} :catch_76
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_e8} :catch_a4

    goto :goto_7a
.end method
