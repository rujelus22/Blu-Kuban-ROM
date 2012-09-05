.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private volatile stackState:Ljava/lang/Object;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "detailMessage"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 95
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 109
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 111
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 5
    .parameter "detailMessage"
    .parameter "throwable"
    .parameter "enableSuppression"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    if-nez p3, :cond_8

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 140
    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "throwable"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 122
    if-nez p1, :cond_b

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 124
    return-void

    .line 122
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .registers 7
    .parameter "currentStack"
    .parameter "parentStack"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, duplicates:I
    array-length v3, p1

    .line 251
    .local v3, parentIndex:I
    array-length v1, p0

    .local v1, i:I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_18

    .line 252
    aget-object v2, p1, v3

    .line 253
    .local v2, parentFrame:Ljava/lang/StackTraceElement;
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 258
    goto :goto_3

    .line 259
    .end local v2           #parentFrame:Ljava/lang/StackTraceElement;
    :cond_18
    return v0
.end method

.method private getInternalStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_f

    .line 270
    iget-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 273
    :cond_f
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
.end method

.method private printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .registers 12
    .parameter "err"
    .parameter "indent"
    .parameter "parentStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 321
    const-string v6, "\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 323
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 324
    .local v4, stack:[Ljava/lang/StackTraceElement;
    if-eqz v4, :cond_4e

    .line 325
    if-eqz p3, :cond_36

    invoke-static {v4, p3}, Ljava/lang/Throwable;->countDuplicates([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v1

    .line 326
    .local v1, duplicates:I
    :goto_18
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    array-length v6, v4

    sub-int/2addr v6, v1

    if-ge v2, v6, :cond_38

    .line 327
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 328
    const-string v6, "\tat "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 329
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 330
    const-string v6, "\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 325
    .end local v1           #duplicates:I
    .end local v2           #i:I
    :cond_36
    const/4 v1, 0x0

    goto :goto_18

    .line 333
    .restart local v1       #duplicates:I
    .restart local v2       #i:I
    :cond_38
    if-lez v1, :cond_4e

    .line 334
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 335
    const-string v6, "\t... "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 337
    const-string v6, " more\n"

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 342
    .end local v1           #duplicates:I
    .end local v2           #i:I
    :cond_4e
    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v6, :cond_83

    .line 343
    iget-object v6, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 344
    .local v5, throwable:Ljava/lang/Throwable;
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 345
    const-string v6, "\tSuppressed: "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    goto :goto_58

    .line 350
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #throwable:Ljava/lang/Throwable;
    :cond_83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 351
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_94

    .line 352
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 353
    const-string v6, "Caused by: "

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 354
    invoke-direct {v0, p1, p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 356
    :cond_94
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 446
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 450
    :cond_10
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 441
    return-void
.end method


# virtual methods
.method public final addSuppressed(Ljava/lang/Throwable;)V
    .registers 4
    .parameter "throwable"

    .prologue
    .line 414
    if-ne p1, p0, :cond_a

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "suppressed == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_a
    if-nez p1, :cond_14

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "suppressed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_14
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 421
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_1d
    return-void
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackState:Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 163
    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    goto :goto_5
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Throwable;->getInternalStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final getSuppressed()[Ljava/lang/Throwable;
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    iget-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;

    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Llibcore/util/EmptyArray;->THROWABLE:[Ljava/lang/Throwable;

    goto :goto_14
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .parameter "throwable"

    .prologue
    .line 381
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-eq v0, p0, :cond_c

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cause already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_c
    if-ne p1, p0, :cond_16

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "throwable == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_16
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 388
    return-object p0
.end method

.method public printStackTrace()V
    .registers 2

    .prologue
    .line 235
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 236
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 5
    .parameter "err"

    .prologue
    .line 287
    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    .line 292
    return-void

    .line 288
    :catch_7
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "err"

    .prologue
    .line 305
    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    .line 310
    return-void

    .line 306
    :catch_7
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 8
    .parameter "trace"

    .prologue
    .line 220
    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 221
    .local v4, newTrace:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 222
    .local v1, element:Ljava/lang/StackTraceElement;
    if-nez v1, :cond_15

    .line 223
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 221
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 226
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_18
    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 360
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, name:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 365
    .end local v1           #name:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v1       #name:Ljava/lang/String;
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method
