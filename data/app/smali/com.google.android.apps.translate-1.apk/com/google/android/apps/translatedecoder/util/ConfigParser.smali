.class public Lcom/google/android/apps/translatedecoder/util/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field properties:Ljava/util/Map;
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
    .line 21
    const-class v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    .line 25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_85

    .line 28
    aget-object v2, p1, v1

    const-string v3, "--\\w+=[^\\s=]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 29
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, fds:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_47

    .line 31
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config option does not have two fields! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 32
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 34
    :cond_47
    aget-object v2, v0, v5

    const-string v3, "--"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 35
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .end local v0           #fds:[Ljava/lang/String;
    :goto_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 37
    :cond_67
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong config option!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 38
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_64

    .line 41
    :cond_85
    return-void
.end method


# virtual methods
.method public checkRequiredProperties([Ljava/lang/String;)V
    .registers 9
    .parameter "requiredProperties"

    .prologue
    .line 60
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_5d

    aget-object v3, v0, v1

    .line 61
    .local v3, prop:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 62
    sget-object v4, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Miss the required property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; try to add --"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=somevalue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 64
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 60
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    :cond_3c
    sget-object v4, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_39

    .line 69
    .end local v3           #prop:Ljava/lang/String;
    :cond_5d
    return-void
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaultVal"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    :goto_e
    return-object v0

    :cond_f
    move-object v0, p2

    goto :goto_e
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public printProperties()V
    .registers 6

    .prologue
    .line 72
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "======== List of Configuration Properties ========"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ConfigParser;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 76
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4c
    return-void
.end method
