.class public Lorg/apache/log4j/NDC;
.super Ljava/lang/Object;
.source "NDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/NDC$DiagnosticContext;
    }
.end annotation


# static fields
.field static final REAP_THRESHOLD:I = 0x5

.field static ht:Ljava/util/Hashtable;

.field static pushCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    .line 115
    const/4 v0, 0x0

    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 113
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 2

    .prologue
    .line 152
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 153
    .local v0, stack:Ljava/util/Stack;
    if-eqz v0, :cond_a

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 155
    :cond_a
    return-void
.end method

.method public static cloneStack()Ljava/util/Stack;
    .registers 2

    .prologue
    .line 175
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 176
    .local v0, stack:Ljava/util/Stack;
    if-nez v0, :cond_8

    .line 177
    const/4 v1, 0x0

    .line 179
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    goto :goto_7
.end method

.method public static get()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 220
    .local v0, s:Ljava/util/Stack;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 221
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->fullMessage:Ljava/lang/String;

    .line 223
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private static getCurrentStack()Ljava/util/Stack;
    .registers 2

    .prologue
    .line 133
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_11

    .line 134
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 136
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getDepth()I
    .registers 2

    .prologue
    .line 235
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 236
    .local v0, stack:Ljava/util/Stack;
    if-nez v0, :cond_8

    .line 237
    const/4 v1, 0x0

    .line 239
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_7
.end method

.method public static inherit(Ljava/util/Stack;)V
    .registers 3
    .parameter "stack"

    .prologue
    .line 207
    if-eqz p0, :cond_b

    .line 208
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_b
    return-void
.end method

.method private static lazyRemove()V
    .registers 9

    .prologue
    .line 245
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-nez v6, :cond_5

    .line 285
    .local v0, enumeration:Ljava/util/Enumeration;
    .local v1, i:I
    .local v2, misses:I
    .local v3, size:I
    .local v5, v:Ljava/util/Vector;
    :cond_4
    :goto_4
    return-void

    .line 252
    .end local v0           #enumeration:Ljava/util/Enumeration;
    .end local v1           #i:I
    .end local v2           #misses:I
    .end local v3           #size:I
    .end local v5           #v:Ljava/util/Vector;
    :cond_5
    sget-object v7, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    monitor-enter v7

    .line 254
    :try_start_8
    sget v6, Lorg/apache/log4j/NDC;->pushCounter:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lorg/apache/log4j/NDC;->pushCounter:I

    const/4 v8, 0x5

    if-gt v6, v8, :cond_16

    .line 255
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_4

    .line 276
    .restart local v2       #misses:I
    :catchall_13
    move-exception v6

    monitor-exit v7

    throw v6

    .line 257
    .end local v2           #misses:I
    :cond_16
    const/4 v6, 0x0

    :try_start_17
    sput v6, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 260
    const/4 v2, 0x0

    .line 261
    .restart local v2       #misses:I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 262
    .restart local v5       #v:Ljava/util/Vector;
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 267
    .restart local v0       #enumeration:Ljava/util/Enumeration;
    :goto_25
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v6, 0x4

    if-le v2, v6, :cond_74

    .line 276
    :cond_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_13

    .line 278
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 279
    .restart local v3       #size:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_34
    if-ge v1, v3, :cond_4

    .line 280
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 281
    .local v4, t:Ljava/lang/Thread;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Lazy NDC removal for thread ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 283
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 268
    .end local v1           #i:I
    .end local v3           #size:I
    .end local v4           #t:Ljava/lang/Thread;
    :cond_74
    :try_start_74
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 269
    .restart local v4       #t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 272
    :cond_83
    const/4 v2, 0x0

    .line 273
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_13

    goto :goto_25
.end method

.method public static peek()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 321
    .local v0, stack:Ljava/util/Stack;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 322
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    .line 324
    :goto_14
    return-object v1

    :cond_15
    const-string v1, ""

    goto :goto_14
.end method

.method public static pop()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 301
    .local v0, stack:Ljava/util/Stack;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 302
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    .line 304
    :goto_14
    return-object v1

    :cond_15
    const-string v1, ""

    goto :goto_14
.end method

.method public static push(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 337
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v3

    .line 339
    .local v3, stack:Ljava/util/Stack;
    if-nez v3, :cond_1e

    .line 340
    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v5}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 341
    .local v0, dc:Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v3, Ljava/util/Stack;

    .end local v3           #stack:Ljava/util/Stack;
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 342
    .restart local v3       #stack:Ljava/util/Stack;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 343
    .local v1, key:Ljava/lang/Thread;
    sget-object v4, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v0           #dc:Lorg/apache/log4j/NDC$DiagnosticContext;
    .end local v1           #key:Ljava/lang/Thread;
    :goto_1d
    return-void

    .line 345
    :cond_1e
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 346
    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v5}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 347
    .restart local v0       #dc:Lorg/apache/log4j/NDC$DiagnosticContext;
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 349
    .end local v0           #dc:Lorg/apache/log4j/NDC$DiagnosticContext;
    :cond_2d
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    .line 350
    .local v2, parent:Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v4, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v4, p0, v2}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d
.end method

.method public static remove()V
    .registers 2

    .prologue
    .line 376
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lorg/apache/log4j/NDC;->lazyRemove()V

    .line 380
    return-void
.end method

.method public static setMaxDepth(I)V
    .registers 3
    .parameter "maxDepth"

    .prologue
    .line 412
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 413
    .local v0, stack:Ljava/util/Stack;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_f

    .line 414
    invoke-virtual {v0, p0}, Ljava/util/Vector;->setSize(I)V

    .line 415
    :cond_f
    return-void
.end method
