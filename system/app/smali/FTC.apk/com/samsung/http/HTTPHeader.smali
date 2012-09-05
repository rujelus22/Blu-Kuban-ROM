.class public Lcom/samsung/http/HTTPHeader;
.super Ljava/lang/Object;
.source "HTTPHeader.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "lineStr"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 47
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_10

    .line 73
    :cond_f
    :goto_f
    return-void

    .line 58
    :cond_10
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, st:Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 60
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    .line 61
    :cond_23
    iget-object v1, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 64
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 65
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    .line 67
    :cond_33
    :goto_33
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 71
    iget-object v1, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    goto :goto_f

    .line 68
    :cond_4c
    iget-object v1, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    goto :goto_33
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/samsung/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static final getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "reader"
    .parameter "name"

    .prologue
    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, bigName:Ljava/lang/String;
    :try_start_4
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, lineStr:Ljava/lang/String;
    :goto_8
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_3b

    move-result v5

    if-gtz v5, :cond_13

    .line 134
    :cond_10
    const-string v5, ""

    .end local v4           #lineStr:Ljava/lang/String;
    :goto_12
    return-object v5

    .line 116
    .restart local v4       #lineStr:Ljava/lang/String;
    :cond_13
    :try_start_13
    new-instance v3, Lcom/samsung/http/HTTPHeader;

    invoke-direct {v3, v4}, Lcom/samsung/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, header:Lcom/samsung/http/HTTPHeader;
    invoke-virtual {v3}, Lcom/samsung/http/HTTPHeader;->hasName()Z

    move-result v5

    if-nez v5, :cond_23

    .line 118
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 119
    goto :goto_8

    .line 121
    :cond_23
    invoke-virtual {v3}, Lcom/samsung/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, bigLineHeaderName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 124
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 125
    goto :goto_8

    .line 127
    :cond_36
    invoke-virtual {v3}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_39} :catch_3b

    move-result-object v5

    goto :goto_12

    .line 130
    .end local v0           #bigLineHeaderName:Ljava/lang/String;
    .end local v3           #header:Lcom/samsung/http/HTTPHeader;
    .end local v4           #lineStr:Ljava/lang/String;
    :catch_3b
    move-exception v2

    .line 131
    .local v2, e:Ljava/io/IOException;
    invoke-static {v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 132
    const-string v5, ""

    goto :goto_12
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "data"
    .parameter "name"

    .prologue
    .line 139
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, strReader:Ljava/io/StringReader;
    new-instance v0, Ljava/io/LineNumberReader;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;I)V

    .line 141
    .local v0, lineReader:Ljava/io/LineNumberReader;
    invoke-static {v0, p1}, Lcom/samsung/http/HTTPHeader;->getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getValue([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "data"
    .parameter "name"

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, p1}, Lcom/samsung/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 149
    :goto_9
    return-object v1

    .line 148
    :catch_a
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, ""

    goto :goto_9
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 102
    :cond_c
    const/4 v0, 0x0

    .line 103
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/http/HTTPHeader;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/http/HTTPHeader;->value:Ljava/lang/String;

    .line 87
    return-void
.end method
