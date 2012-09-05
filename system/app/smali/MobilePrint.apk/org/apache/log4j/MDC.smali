.class public Lorg/apache/log4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final HT_SIZE:I = 0x7

.field static final mdc:Lorg/apache/log4j/MDC;


# instance fields
.field java1:Z

.field tlm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;-><init>()V

    sput-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->isJava1()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    .line 55
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_14

    .line 56
    new-instance v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .line 58
    :cond_14
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .parameter "key"

    .prologue
    .line 83
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->get0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private get0(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-eqz v1, :cond_7

    move-object v1, v2

    .line 130
    :goto_6
    return-object v1

    .line 126
    :cond_7
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 127
    .local v0, ht:Ljava/util/Hashtable;
    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_1a
    move-object v1, v2

    .line 130
    goto :goto_6
.end method

.method public static getContext()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->getContext0()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method private getContext0()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-eqz v0, :cond_6

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_5
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "key"
    .parameter "o"

    .prologue
    .line 72
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/MDC;->put0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private put0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "o"

    .prologue
    .line 109
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-eqz v1, :cond_5

    .line 119
    :goto_4
    return-void

    .line 112
    :cond_5
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 113
    .local v0, ht:Ljava/util/Hashtable;
    if-nez v0, :cond_1e

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #ht:Ljava/util/Hashtable;
    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 115
    .restart local v0       #ht:Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 117
    :cond_1e
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static remove(Ljava/lang/String;)V
    .registers 2
    .parameter "key"

    .prologue
    .line 94
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->remove0(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private remove0(Ljava/lang/String;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 137
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_13

    .line 138
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 139
    .local v0, ht:Ljava/util/Hashtable;
    if-eqz v0, :cond_13

    .line 140
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .end local v0           #ht:Ljava/util/Hashtable;
    :cond_13
    return-void
.end method
