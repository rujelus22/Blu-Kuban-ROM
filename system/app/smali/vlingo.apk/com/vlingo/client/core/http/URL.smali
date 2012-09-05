.class public Lcom/vlingo/client/core/http/URL;
.super Ljava/lang/Object;
.source "URL.java"


# static fields
.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field public host:Ljava/lang/String;

.field private index:I

.field public path:Ljava/lang/String;

.field public port:I

.field public url:Ljava/lang/String;

.field public useSSL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/vlingo/client/core/http/URL;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/URL;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    .line 21
    const/16 v0, 0x50

    iput v0, p0, Lcom/vlingo/client/core/http/URL;->port:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    .line 26
    iput-object p1, p0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/http/URL;->parseFromURL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "path"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    .line 21
    const/16 v0, 0x50

    iput v0, p0, Lcom/vlingo/client/core/http/URL;->port:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    .line 31
    iput-object p1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/vlingo/client/core/http/URL;->port:I

    .line 33
    iput-object p3, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private parseFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "url"

    .prologue
    .line 136
    const-string v3, ""

    .line 137
    .local v3, token:Ljava/lang/String;
    iget v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, buf:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_10

    move-object v4, v3

    .line 150
    .end local v3           #token:Ljava/lang/String;
    .local v4, token:Ljava/lang/String;
    :goto_f
    return-object v4

    .line 139
    .end local v4           #token:Ljava/lang/String;
    .restart local v3       #token:Ljava/lang/String;
    :cond_10
    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 140
    .local v2, n:I
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 141
    .local v1, m:I
    if-gez v2, :cond_30

    if-gez v1, :cond_30

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 148
    :cond_24
    :goto_24
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    iget v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    move-object v4, v3

    .line 150
    .end local v3           #token:Ljava/lang/String;
    .restart local v4       #token:Ljava/lang/String;
    goto :goto_f

    .line 143
    .end local v4           #token:Ljava/lang/String;
    .restart local v3       #token:Ljava/lang/String;
    :cond_30
    if-ltz v2, :cond_36

    if-lez v1, :cond_24

    if-ge v1, v2, :cond_24

    .line 144
    :cond_36
    move v2, v1

    goto :goto_24
.end method

.method private parseHostname(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    .line 99
    iget v3, p0, Lcom/vlingo/client/core/http/URL;->index:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, buf:Ljava/lang/String;
    const-string v3, "//"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 101
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget v3, p0, Lcom/vlingo/client/core/http/URL;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/vlingo/client/core/http/URL;->index:I

    .line 104
    :cond_19
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 105
    .local v1, n:I
    if-gez v1, :cond_27

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    :cond_27
    if-gez v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, token:Ljava/lang/String;
    iget v3, p0, Lcom/vlingo/client/core/http/URL;->index:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/vlingo/client/core/http/URL;->index:I

    .line 109
    return-object v2
.end method

.method private parsePort(Ljava/lang/String;)I
    .registers 9
    .parameter "url"

    .prologue
    .line 114
    iget-boolean v5, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    if-eqz v5, :cond_16

    const/16 v3, 0x1bb

    .line 116
    .local v3, p:I
    :goto_6
    iget v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, buf:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    move v4, v3

    .line 132
    .end local v3           #p:I
    .local v4, p:I
    :goto_15
    return v4

    .line 115
    .end local v0           #buf:Ljava/lang/String;
    .end local v4           #p:I
    :cond_16
    const/16 v3, 0x50

    .restart local v3       #p:I
    goto :goto_6

    .line 118
    .restart local v0       #buf:Ljava/lang/String;
    :cond_19
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    .line 120
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 121
    .local v1, n:I
    if-gez v1, :cond_32

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 122
    :cond_32
    if-gez v1, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 124
    :cond_38
    const/4 v5, 0x0

    :try_start_39
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 125
    if-gtz v3, :cond_52

    .line 126
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    throw v5
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_49} :catch_49

    .line 128
    :catch_49
    move-exception v2

    .line 129
    .local v2, nfe:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid port"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_52
    iget v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/vlingo/client/core/http/URL;->index:I

    move v4, v3

    .line 132
    .end local v3           #p:I
    .restart local v4       #p:I
    goto :goto_15
.end method

.method private parseUseSSL(Ljava/lang/String;)Z
    .registers 5
    .parameter "url"

    .prologue
    .line 92
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 93
    .local v0, n:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, token:Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/vlingo/client/core/http/URL;->index:I

    .line 95
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "ob"

    .prologue
    .line 63
    instance-of v1, p1, Lcom/vlingo/client/core/http/URL;

    if-eqz v1, :cond_35

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/vlingo/client/core/http/URL;

    .line 65
    .local v0, obURL:Lcom/vlingo/client/core/http/URL;
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    iget-object v2, v0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/core/util/StringUtils;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/vlingo/client/core/http/URL;->port:I

    iget v2, v0, Lcom/vlingo/client/core/http/URL;->port:I

    if-ne v1, v2, :cond_33

    iget-boolean v1, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    iget-boolean v2, v0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    if-ne v1, v2, :cond_33

    const/4 v1, 0x1

    .line 71
    .end local v0           #obURL:Lcom/vlingo/client/core/http/URL;
    :goto_32
    return v1

    .line 65
    .restart local v0       #obURL:Lcom/vlingo/client/core/http/URL;
    :cond_33
    const/4 v1, 0x0

    goto :goto_32

    .line 71
    .end local v0           #obURL:Lcom/vlingo/client/core/http/URL;
    :cond_35
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_32
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/vlingo/client/core/http/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    if-eqz v0, :cond_7

    .line 179
    const-string v0, "https"

    .line 181
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "http"

    goto :goto_6
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 52
    iget v1, p0, Lcom/vlingo/client/core/http/URL;->port:I

    mul-int/lit8 v2, v1, 0x3

    iget-boolean v1, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x7

    :goto_9
    mul-int v0, v2, v1

    .line 53
    .local v0, hash:I
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 54
    mul-int/lit8 v1, v0, 0x59

    iget-object v2, p0, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 55
    :cond_19
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 56
    mul-int/lit8 v1, v0, 0x59

    iget-object v2, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 57
    :cond_27
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 58
    mul-int/lit8 v1, v0, 0x59

    iget-object v2, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 59
    :cond_35
    return v0

    .line 52
    .end local v0           #hash:I
    :cond_36
    const/16 v1, 0xb

    goto :goto_9
.end method

.method public parseFromURL(Ljava/lang/String;)V
    .registers 7
    .parameter "url"

    .prologue
    .line 38
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_24

    .line 40
    const/4 v1, 0x0

    :try_start_a
    iput v1, p0, Lcom/vlingo/client/core/http/URL;->index:I

    .line 41
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/URL;->parseUseSSL(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/URL;->parseHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/URL;->parsePort(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/http/URL;->port:I

    .line 44
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/URL;->parseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    .line 49
    :cond_24
    :goto_24
    return-void

    .line 45
    :catch_25
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/vlingo/client/core/http/URL;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v2, "URL1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 174
    iput p1, p0, Lcom/vlingo/client/core/http/URL;->port:I

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lcom/vlingo/client/core/http/URL;->useSSL:Z

    if-eqz v1, :cond_27

    .line 77
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :goto_e
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget v1, p0, Lcom/vlingo/client/core/http/URL;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    iget-object v1, p0, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_27
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e
.end method
