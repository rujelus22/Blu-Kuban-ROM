.class public Lorg/apache/xml/dtm/DTMException;
.super Ljava/lang/RuntimeException;
.source "DTMException.java"


# static fields
.field static final serialVersionUID:J = -0xac366a4e17910ceL


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 140
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 168
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_c
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .registers 4
    .parameter "message"
    .parameter "locator"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 191
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "locator"
    .parameter "e"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    iput-object p3, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 208
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 154
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    goto :goto_5
.end method

.method public getException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 256
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3e

    .line 257
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v2, sbuffer:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, systemID:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 260
    .local v1, line:I
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 262
    .local v0, column:I
    if-eqz v3, :cond_25

    .line 263
    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_25
    if-eqz v1, :cond_2f

    .line 268
    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 272
    :cond_2f
    if-eqz v0, :cond_39

    .line 273
    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 277
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .end local v0           #column:I
    .end local v1           #line:I
    .end local v2           #sbuffer:Ljava/lang/StringBuffer;
    .end local v3           #systemID:Ljava/lang/String;
    :goto_3d
    return-object v4

    :cond_3e
    const/4 v4, 0x0

    goto :goto_3d
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .registers 7

    .prologue
    .line 217
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v3, sbuffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, message:Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_e
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v5, :cond_42

    .line 225
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, systemID:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    .line 227
    .local v1, line:I
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    .line 229
    .local v0, column:I
    if-eqz v4, :cond_2e

    .line 230
    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_2e
    if-eqz v1, :cond_38

    .line 235
    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    :cond_38
    if-eqz v0, :cond_42

    .line 240
    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    .end local v0           #column:I
    .end local v1           #line:I
    .end local v4           #systemID:Ljava/lang/String;
    :cond_42
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5
    .parameter "cause"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    if-eqz p1, :cond_17

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ER_CANNOT_OVERWRITE_CAUSE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 116
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_17
    if-ne p1, p0, :cond_26

    .line 121
    :try_start_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_SELF_CAUSATION_NOT_PERMITTED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_26
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_14

    .line 127
    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .registers 4

    .prologue
    .line 289
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 290
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 299
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 300
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 18
    .parameter "s"

    .prologue
    .line 310
    if-nez p1, :cond_c

    .line 311
    new-instance p1, Ljava/io/PrintWriter;

    .end local p1
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 315
    .restart local p1
    :cond_c
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, locInfo:Ljava/lang/String;
    if-eqz v7, :cond_17

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_17
    invoke-super/range {p0 .. p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1a} :catch_98

    .line 324
    .end local v7           #locInfo:Ljava/lang/String;
    :goto_1a
    const/4 v5, 0x0

    .line 326
    .local v5, isJdk14OrHigher:Z
    :try_start_1b
    const-class v12, Ljava/lang/Throwable;

    const-string v13, "getCause"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_2b} :catch_96

    .line 327
    const/4 v5, 0x1

    .line 335
    :goto_2c
    if-nez v5, :cond_7f

    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    .line 338
    .local v2, exception:Ljava/lang/Throwable;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    const/16 v11, 0xa

    if-ge v3, v11, :cond_7f

    if-eqz v2, :cond_7f

    .line 339
    const-string v11, "---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :try_start_40
    instance-of v11, v2, Lorg/apache/xml/dtm/DTMException;

    if-eqz v11, :cond_53

    .line 343
    move-object v0, v2

    check-cast v0, Lorg/apache/xml/dtm/DTMException;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    .line 347
    .restart local v7       #locInfo:Ljava/lang/String;
    if-eqz v7, :cond_53

    .line 348
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    .end local v7           #locInfo:Ljava/lang/String;
    :cond_53
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_58} :catch_80

    .line 358
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getException"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 362
    .local v8, meth:Ljava/lang/reflect/Method;
    if-eqz v8, :cond_89

    .line 363
    move-object v10, v2

    .line 365
    .local v10, prev:Ljava/lang/Throwable;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v12, v13

    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #exception:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;
    :try_end_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_58 .. :try_end_7d} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_7d} :catch_90
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_7d} :catch_93

    .line 367
    .restart local v2       #exception:Ljava/lang/Throwable;
    if-ne v10, v2, :cond_8a

    .line 382
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v3           #i:I
    .end local v8           #meth:Ljava/lang/reflect/Method;
    .end local v10           #prev:Ljava/lang/Throwable;
    :cond_7f
    return-void

    .line 353
    .restart local v2       #exception:Ljava/lang/Throwable;
    .restart local v3       #i:I
    :catch_80
    move-exception v1

    .line 354
    .local v1, e:Ljava/lang/Throwable;
    const-string v11, "Could not print stack trace..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 371
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v8       #meth:Ljava/lang/reflect/Method;
    :cond_89
    const/4 v2, 0x0

    .line 338
    .end local v8           #meth:Ljava/lang/reflect/Method;
    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 373
    .end local v2           #exception:Ljava/lang/Throwable;
    :catch_8d
    move-exception v6

    .line 374
    .local v6, ite:Ljava/lang/reflect/InvocationTargetException;
    const/4 v2, 0x0

    .line 379
    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_8a

    .line 375
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v6           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_90
    move-exception v4

    .line 376
    .local v4, iae:Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    .line 379
    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_8a

    .line 377
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v4           #iae:Ljava/lang/IllegalAccessException;
    :catch_93
    move-exception v9

    .line 378
    .local v9, nsme:Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    .restart local v2       #exception:Ljava/lang/Throwable;
    goto :goto_8a

    .line 328
    .end local v2           #exception:Ljava/lang/Throwable;
    .end local v3           #i:I
    .end local v9           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_96
    move-exception v11

    goto :goto_2c

    .line 322
    .end local v5           #isJdk14OrHigher:Z
    :catch_98
    move-exception v11

    goto :goto_1a
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 62
    return-void
.end method
