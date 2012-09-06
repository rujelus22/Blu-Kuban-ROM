.class public Lcom/google/commerce/wireless/topiary/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/Closeable;

.field private b:J

.field private c:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/K;->c:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/K;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method a()V
    .registers 3

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/commerce/wireless/topiary/K;->b:J

    .line 27
    return-void
.end method

.method a(Ljava/io/Closeable;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/K;->a:Ljava/io/Closeable;

    .line 35
    return-void
.end method

.method a(Ljava/util/Map;)V
    .registers 6
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/K;->c:Ljava/util/Map;

    .line 50
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    if-eqz v1, :cond_2b

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_2b
    iget-object v3, p0, Lcom/google/commerce/wireless/topiary/K;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 58
    :cond_35
    return-void
.end method

.method b()I
    .registers 5

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/commerce/wireless/topiary/K;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method c()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/K;->a:Ljava/io/Closeable;

    if-eqz v0, :cond_9

    .line 40
    :try_start_4
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/K;->a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 43
    :cond_9
    :goto_9
    return-void

    .line 41
    :catch_a
    move-exception v0

    goto :goto_9
.end method
