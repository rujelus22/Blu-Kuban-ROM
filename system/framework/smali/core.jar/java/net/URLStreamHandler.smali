.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "base"
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 199
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 200
    invoke-static {p1, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 205
    .end local p1
    :cond_d
    :goto_d
    return-object p1

    .line 201
    .restart local p1
    :cond_e
    if-eqz p0, :cond_d

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, combined:Ljava/lang/String;
    invoke-static {v0, v4}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_d
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 315
    const/4 v0, -0x1

    return v0
.end method

.method protected getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 323
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 329
    .end local v1           #host:Ljava/lang/String;
    :cond_d
    :goto_d
    return-object v2

    .line 327
    .restart local v1       #host:Ljava/lang/String;
    :cond_e
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_d

    .line 328
    .end local v1           #host:Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 329
    .local v0, e:Ljava/net/UnknownHostException;
    goto :goto_d
.end method

.method protected hashCode(Ljava/net/URL;)I
    .registers 3
    .parameter "url"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, aHost:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, bHost:Ljava/lang/String;
    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .parameter "u"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 28
    .parameter "url"
    .parameter "spec"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 86
    move-object/from16 v0, p1

    iget-object v3, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    move-object/from16 v0, p0

    if-eq v0, v3, :cond_10

    .line 87
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only a URL\'s stream handler is permitted to mutate it"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_10
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    .line 90
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v4, p4, p3

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v3

    .line 97
    :cond_22
    const/4 v7, -0x1

    .line 101
    .local v7, port:I
    const-string v3, "//"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 103
    add-int/lit8 v13, p3, 0x2

    .line 104
    .local v13, authorityStart:I
    const-string v3, "/?#"

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v3, v13, v1}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v15

    .line 105
    .local v15, fileStart:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, authority:Ljava/lang/String;
    const-string v3, "@"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v22

    .line 108
    .local v22, userInfoEnd:I
    move/from16 v0, v22

    if-eq v0, v15, :cond_9c

    .line 109
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, userInfo:Ljava/lang/String;
    add-int/lit8 v17, v22, 0x1

    .line 121
    .local v17, hostStart:I
    :goto_59
    move/from16 v14, v17

    .line 122
    .local v14, colonSearchFrom:I
    const-string v3, "]"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v3, v1, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v18

    .line 123
    .local v18, ipv6End:I
    move/from16 v0, v18

    if-eq v0, v15, :cond_a2

    .line 124
    const-string v3, ":"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    move/from16 v0, v18

    if-ne v3, v0, :cond_a0

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected an IPv6 address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    .end local v9           #userInfo:Ljava/lang/String;
    .end local v14           #colonSearchFrom:I
    .end local v17           #hostStart:I
    .end local v18           #ipv6End:I
    :cond_9c
    const/4 v9, 0x0

    .line 113
    .restart local v9       #userInfo:Ljava/lang/String;
    move/from16 v17, v13

    .restart local v17       #hostStart:I
    goto :goto_59

    .line 128
    .restart local v14       #colonSearchFrom:I
    .restart local v18       #ipv6End:I
    :cond_a0
    move/from16 v14, v18

    .line 130
    :cond_a2
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-static {v0, v3, v14, v15}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v16

    .line 131
    .local v16, hostEnd:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, host:Ljava/lang/String;
    add-int/lit8 v20, v16, 0x1

    .line 133
    .local v20, portStart:I
    move/from16 v0, v20

    if-ge v0, v15, :cond_e1

    .line 134
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 135
    if-gez v7, :cond_e1

    .line 136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_e1
    const/4 v10, 0x0

    .line 140
    .local v10, path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 141
    .local v11, query:Ljava/lang/String;
    const/4 v12, 0x0

    .line 163
    .end local v13           #authorityStart:I
    .end local v14           #colonSearchFrom:I
    .end local v16           #hostEnd:I
    .end local v17           #hostStart:I
    .end local v18           #ipv6End:I
    .end local v20           #portStart:I
    .end local v22           #userInfoEnd:I
    .local v12, ref:Ljava/lang/String;
    :goto_e4
    move/from16 v21, v15

    .line 164
    .local v21, pos:I
    :goto_e6
    move/from16 v0, v21

    move/from16 v1, p4

    if-ge v0, v1, :cond_15e

    .line 166
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_172

    .line 177
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    .line 178
    .local v19, nextPos:I
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Ljava/net/URLStreamHandler;->relativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    const/4 v11, 0x0

    .line 180
    const/4 v12, 0x0

    .line 183
    :goto_113
    move/from16 v21, v19

    .line 184
    goto :goto_e6

    .line 144
    .end local v6           #host:Ljava/lang/String;
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #userInfo:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #query:Ljava/lang/String;
    .end local v12           #ref:Ljava/lang/String;
    .end local v15           #fileStart:I
    .end local v19           #nextPos:I
    .end local v21           #pos:I
    :cond_116
    move/from16 v15, p3

    .line 145
    .restart local v15       #fileStart:I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 146
    .restart local v8       #authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9       #userInfo:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 148
    .restart local v6       #host:Ljava/lang/String;
    if-nez v6, :cond_128

    .line 149
    const-string v6, ""

    .line 151
    :cond_128
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v7

    .line 152
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 153
    .restart local v10       #path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v11

    .line 154
    .restart local v11       #query:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #ref:Ljava/lang/String;
    goto :goto_e4

    .line 168
    .restart local v21       #pos:I
    :sswitch_139
    move/from16 v19, p4

    .line 169
    .restart local v19       #nextPos:I
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 170
    goto :goto_113

    .line 172
    .end local v19           #nextPos:I
    :sswitch_146
    const-string v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v3, v1, v2}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    .line 173
    .restart local v19       #nextPos:I
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 174
    const/4 v12, 0x0

    .line 175
    goto :goto_113

    .line 186
    .end local v19           #nextPos:I
    :cond_15e
    if-nez v10, :cond_162

    .line 187
    const-string v10, ""

    .line 190
    :cond_162
    invoke-static {v8, v10}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 192
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 166
    :sswitch_data_172
    .sparse-switch
        0x23 -> :sswitch_139
        0x3f -> :sswitch_146
    .end sparse-switch
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 355
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getEffectivePort()I

    move-result v0

    invoke-virtual {p2}, Ljava/net/URL;->getEffectivePort()I

    move-result v1

    if-ne v0, v1, :cond_2e

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 232
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 234
    :cond_a
    invoke-virtual/range {p1 .. p6}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "u"
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "path"
    .parameter "query"
    .parameter "ref"

    .prologue
    .line 244
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_a

    .line 245
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 247
    :cond_a
    invoke-virtual/range {p1 .. p9}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;
    .registers 8
    .parameter "url"
    .parameter "escapeIllegalCharacters"

    .prologue
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v3, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 270
    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    if-eqz p2, :cond_47

    .line 272
    sget-object v4, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v0}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 278
    :cond_23
    :goto_23
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, fileAndQuery:Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 280
    if-eqz p2, :cond_4b

    .line 281
    sget-object v4, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v1}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 287
    :cond_30
    :goto_30
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, ref:Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 289
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    if-eqz p2, :cond_4f

    .line 291
    sget-object v4, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v4, v3, v2}, Llibcore/net/UriCodec;->appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 297
    :cond_42
    :goto_42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 274
    .end local v1           #fileAndQuery:Ljava/lang/String;
    .end local v2           #ref:Ljava/lang/String;
    :cond_47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 283
    .restart local v1       #fileAndQuery:Ljava/lang/String;
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 293
    .restart local v2       #ref:Ljava/lang/String;
    :cond_4f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42
.end method
