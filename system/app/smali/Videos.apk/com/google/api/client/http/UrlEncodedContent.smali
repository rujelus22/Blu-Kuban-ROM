.class public final Lcom/google/api/client/http/UrlEncodedContent;
.super Ljava/lang/Object;
.source "UrlEncodedContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private content:[B

.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    return-void
.end method

.method private static appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter "first"
    .parameter "buf"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 98
    if-eqz p3, :cond_8

    invoke-static {p3}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 113
    .end local p3
    :cond_8
    :goto_8
    return p0

    .line 102
    .restart local p3
    :cond_9
    if-eqz p0, :cond_31

    .line 103
    const/4 p0, 0x0

    .line 107
    :goto_c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    instance-of v1, p3, Ljava/lang/Enum;

    if-eqz v1, :cond_37

    check-cast p3, Ljava/lang/Enum;

    .end local p3
    invoke-static {p3}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 111
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 105
    .end local v0           #stringValue:Ljava/lang/String;
    .restart local p3
    :cond_31
    const/16 v1, 0x26

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 108
    :cond_37
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method private computeContent()[B
    .registers 11

    .prologue
    .line 74
    iget-object v9, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    if-nez v9, :cond_68

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 77
    .local v1, first:Z
    iget-object v9, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    invoke-static {v9}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 78
    .local v5, nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 79
    .local v7, value:Ljava/lang/Object;
    if-eqz v7, :cond_18

    .line 80
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 82
    .local v8, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v9, v7, Ljava/lang/Iterable;

    if-nez v9, :cond_42

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 83
    :cond_42
    invoke-static {v7}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 84
    .local v6, repeatedValue:Ljava/lang/Object;
    invoke-static {v1, v0, v4, v6}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4a

    .line 87
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #repeatedValue:Ljava/lang/Object;
    :cond_59
    invoke-static {v1, v0, v4, v7}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_18

    .line 91
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #value:Ljava/lang/Object;
    .end local v8           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/api/client/util/Strings;->toBytesUtf8(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    .line 93
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #first:Z
    :cond_68
    iget-object v9, p0, Lcom/google/api/client/http/UrlEncodedContent;->content:[B

    return-object v9
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/api/client/http/UrlEncodedContent;->computeContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/api/client/http/UrlEncodedContent;->computeContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 71
    return-void
.end method
