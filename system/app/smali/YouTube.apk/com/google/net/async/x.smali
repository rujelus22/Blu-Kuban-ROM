.class public final Lcom/google/net/async/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Ljava/lang/Long;

.field private static final c:Lcom/google/net/async/ab;

.field private static final d:Lcom/google/net/async/ab;

.field private static final e:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    const-class v0, Lcom/google/net/async/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/net/async/x;->a:Ljava/util/logging/Logger;

    .line 27
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/google/net/async/x;->b:Ljava/lang/Long;

    .line 63
    new-instance v0, Lcom/google/net/async/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/net/async/ac;-><init>(C)V

    sput-object v0, Lcom/google/net/async/x;->c:Lcom/google/net/async/ab;

    .line 69
    new-instance v0, Lcom/google/net/async/y;

    invoke-direct {v0}, Lcom/google/net/async/y;-><init>()V

    .line 68
    sput-object v0, Lcom/google/net/async/x;->d:Lcom/google/net/async/ab;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/google/net/async/x;->e:Ljava/util/Collection;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/net/async/p;
    .registers 8

    .prologue
    .line 163
    sget-object v2, Lcom/google/net/async/x;->c:Lcom/google/net/async/ab;

    if-nez v2, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "LoopRunner cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "EventDispatcher"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_19
    if-lt v1, v4, :cond_29

    :goto_1b
    new-instance v1, Lcom/google/net/async/z;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/google/net/async/z;-><init>(ZLcom/google/net/async/ab;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/net/async/z;->start()V

    invoke-virtual {v1}, Lcom/google/net/async/z;->a()Lcom/google/net/async/p;

    move-result-object v0

    return-object v0

    :cond_29
    aget-object v5, v3, v1

    const-class v6, Lcom/google/net/async/x;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4d

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EventDispatcher created by "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/net/async/x;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/net/async/x;->e:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Long;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/net/async/x;->b:Ljava/lang/Long;

    return-object v0
.end method
