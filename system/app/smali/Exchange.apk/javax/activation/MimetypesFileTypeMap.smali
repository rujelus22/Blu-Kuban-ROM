.class public Ljavax/activation/MimetypesFileTypeMap;
.super Ljavax/activation/FileTypeMap;
.source "MimetypesFileTypeMap.java"


# static fields
.field private static debug:Z


# instance fields
.field private mimetypes:[Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    .line 75
    :try_start_3
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_14

    .line 81
    :goto_13
    return-void

    .line 78
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljavax/activation/FileTypeMap;-><init>()V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->init(Ljava/io/Reader;)V

    .line 91
    return-void
.end method

.method private getSystemResources(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :try_start_5
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 415
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 416
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_9

    .line 418
    :catch_17
    move-exception v1

    .line 421
    :cond_18
    return-object v0
.end method

.method private init(Ljava/io/Reader;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    move v0, v1

    .line 128
    :goto_8
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 130
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 132
    :cond_19
    if-eqz p1, :cond_2e

    .line 134
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_26

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load PROG"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    :cond_26
    :try_start_26
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_112

    .line 147
    :cond_2e
    :goto_2e
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_39

    .line 149
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load HOME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_39
    :try_start_39
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_5e

    .line 156
    iget-object v2, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ".mime.types"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljavax/activation/MimetypesFileTypeMap;->parseFile(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_5e} :catch_10f

    .line 166
    :cond_5e
    :goto_5e
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_69

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load SYS"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :cond_69
    :try_start_69
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "mime.types"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljavax/activation/MimetypesFileTypeMap;->parseFile(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_98} :catch_10d

    .line 182
    :goto_98
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_a3

    .line 184
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MimetypesFileTypeMap: load JAR"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    :cond_a3
    const-string v0, "META-INF/mime.types"

    invoke-direct {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getSystemResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 188
    if-lez v5, :cond_e5

    move v3, v1

    .line 190
    :goto_b0
    if-ge v3, v5, :cond_ee

    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 196
    :try_start_b9
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_dd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_d3

    .line 197
    :try_start_c2
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_108
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_10a

    .line 204
    if-eqz v1, :cond_cf

    .line 208
    :try_start_cc
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_104

    .line 190
    :cond_cf
    :goto_cf
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_b0

    .line 199
    :catch_d3
    move-exception v0

    move-object v0, v2

    .line 204
    :goto_d5
    if-eqz v0, :cond_cf

    .line 208
    :try_start_d7
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_cf

    .line 210
    :catch_db
    move-exception v0

    goto :goto_cf

    .line 204
    :catchall_dd
    move-exception v0

    move-object v1, v2

    :goto_df
    if-eqz v1, :cond_e4

    .line 208
    :try_start_e1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_106

    .line 212
    :cond_e4
    :goto_e4
    throw v0

    .line 219
    :cond_e5
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    aget-object v0, v0, v6

    const-string v1, "/META-INF/mime.types"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parseResource(Ljava/util/Map;Ljava/lang/String;)V

    .line 222
    :cond_ee
    sget-boolean v0, Ljavax/activation/MimetypesFileTypeMap;->debug:Z

    if-eqz v0, :cond_f9

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MimetypesFileTypeMap: load DEF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    :cond_f9
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "/META-INF/mimetypes.default"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MimetypesFileTypeMap;->parseResource(Ljava/util/Map;Ljava/lang/String;)V

    .line 227
    return-void

    .line 210
    :catch_104
    move-exception v0

    goto :goto_cf

    :catch_106
    move-exception v1

    goto :goto_e4

    .line 204
    :catchall_108
    move-exception v0

    goto :goto_df

    .line 199
    :catch_10a
    move-exception v0

    move-object v0, v1

    goto :goto_d5

    .line 179
    :catch_10d
    move-exception v0

    goto :goto_98

    .line 162
    :catch_10f
    move-exception v0

    goto/16 :goto_5e

    .line 142
    :catch_112
    move-exception v0

    goto/16 :goto_2e
.end method

.method private parse(Ljava/util/Map;Ljava/io/Reader;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 345
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 347
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_d
    if-eqz v2, :cond_53

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 351
    if-eqz v4, :cond_21

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_26

    .line 347
    :cond_21
    :goto_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 355
    :cond_26
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_41

    .line 357
    if-nez v0, :cond_37

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    :cond_37
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21

    .line 363
    :cond_41
    if-eqz v0, :cond_4f

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parseEntry(Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v1

    .line 367
    goto :goto_21

    .line 371
    :cond_4f
    invoke-direct {p0, p1, v2}, Ljavax/activation/MimetypesFileTypeMap;->parseEntry(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_21

    .line 374
    :cond_53
    return-void
.end method

.method private parseEntry(Ljava/util/Map;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 379
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 381
    array-length v4, v3

    .line 382
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 383
    :goto_d
    if-ge v1, v4, :cond_35

    .line 385
    aget-char v6, v3, v1

    .line 386
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 388
    if-nez v0, :cond_23

    .line 390
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_1d
    :goto_1d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 383
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 392
    :cond_23
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_1d

    .line 394
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 399
    :cond_31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 401
    :cond_35
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_42

    .line 403
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_42
    return-void
.end method

.method private parseFile(Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 291
    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_f

    .line 292
    :try_start_6
    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_24
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_29

    .line 299
    if-eqz v0, :cond_e

    .line 303
    :try_start_b
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_20

    .line 310
    :cond_e
    :goto_e
    return-void

    .line 294
    :catch_f
    move-exception v0

    move-object v0, v1

    .line 299
    :goto_11
    if-eqz v0, :cond_e

    .line 303
    :try_start_13
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_e

    .line 305
    :catch_17
    move-exception v0

    goto :goto_e

    .line 299
    :catchall_19
    move-exception v0

    :goto_1a
    if-eqz v1, :cond_1f

    .line 303
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_22

    .line 307
    :cond_1f
    :goto_1f
    throw v0

    .line 305
    :catch_20
    move-exception v0

    goto :goto_e

    :catch_22
    move-exception v1

    goto :goto_1f

    .line 299
    :catchall_24
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_1a

    .line 294
    :catch_29
    move-exception v1

    goto :goto_11
.end method

.method private parseResource(Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 317
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 318
    if-eqz v2, :cond_35

    .line 320
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_19

    .line 321
    :try_start_10
    invoke-direct {p0, p1, v0}, Ljavax/activation/MimetypesFileTypeMap;->parse(Ljava/util/Map;Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_33

    .line 329
    :goto_13
    if-eqz v0, :cond_18

    .line 333
    :try_start_15
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_2a

    .line 340
    :cond_18
    :goto_18
    return-void

    .line 324
    :catch_19
    move-exception v0

    move-object v0, v1

    .line 329
    :goto_1b
    if-eqz v0, :cond_18

    .line 333
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_18

    .line 335
    :catch_21
    move-exception v0

    goto :goto_18

    .line 329
    :catchall_23
    move-exception v0

    :goto_24
    if-eqz v1, :cond_29

    .line 333
    :try_start_26
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2c

    .line 337
    :cond_29
    :goto_29
    throw v0

    .line 335
    :catch_2a
    move-exception v0

    goto :goto_18

    :catch_2c
    move-exception v1

    goto :goto_29

    .line 329
    :catchall_2e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_24

    .line 324
    :catch_33
    move-exception v1

    goto :goto_1b

    :cond_35
    move-object v0, v1

    goto :goto_13
.end method


# virtual methods
.method public getContentType(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 255
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/activation/MimetypesFileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 265
    monitor-enter p0

    const/16 v0, 0x2e

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 266
    if-gez v0, :cond_d

    .line 268
    const-string v0, "application/octet-stream"
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_37

    .line 283
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v0

    .line 270
    :cond_d
    add-int/lit8 v0, v0, 0x1

    :try_start_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1d

    .line 273
    const-string v0, "application/octet-stream"

    goto :goto_b

    .line 275
    :cond_1d
    const/4 v0, 0x0

    move v1, v0

    :goto_1f
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    array-length v0, v0

    if-ge v1, v0, :cond_34

    .line 277
    iget-object v0, p0, Ljavax/activation/MimetypesFileTypeMap;->mimetypes:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    if-nez v0, :cond_b

    .line 275
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 283
    :cond_34
    const-string v0, "application/octet-stream"
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    goto :goto_b

    .line 265
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method
