.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static final streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient streamHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 127
    move-object v0, v1

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 218
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 11
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v3, p0, Ljava/net/URL;->port:I

    .line 235
    if-ge p3, v3, :cond_22

    .line 236
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port < -1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_22
    if-nez p1, :cond_2c

    .line 239
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_2c
    if-eqz p2, :cond_57

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_57

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 247
    :cond_57
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 249
    iput p3, p0, Ljava/net/URL;->port:I

    .line 251
    invoke-static {p2, p4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 255
    const-string v1, "#"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, hash:I
    if-eq v0, v3, :cond_9c

    .line 257
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 258
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 262
    :goto_77
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    .line 267
    if-nez p5, :cond_9f

    .line 268
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 269
    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v1, :cond_a1

    .line 270
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_9c
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_77

    .line 273
    :cond_9f
    iput-object p5, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 275
    :cond_a1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "protocol"
    .parameter "host"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 15
    .parameter "context"
    .parameter "spec"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->port:I

    .line 153
    if-nez p2, :cond_e

    .line 154
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    throw v0

    .line 156
    :cond_e
    if-eqz p3, :cond_12

    .line 157
    iput-object p3, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 159
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-static {p2}, Llibcore/net/url/UrlUtils;->getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 165
    .local v10, schemeSpecificPartStart:I
    :goto_28
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 166
    const/4 p1, 0x0

    .line 170
    :cond_39
    if-eqz p1, :cond_8d

    .line 171
    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_65

    .line 175
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    iput-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 181
    :cond_65
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_aa

    .line 182
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 183
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_aa

    .line 184
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    .end local v10           #schemeSpecificPartStart:I
    :cond_8b
    const/4 v10, 0x0

    goto :goto_28

    .line 177
    .restart local v10       #schemeSpecificPartStart:I
    :cond_8d
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_65

    .line 178
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Protocol not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_aa
    :try_start_aa
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p2, v10, v1}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_b4

    .line 194
    return-void

    .line 191
    :catch_b4
    move-exception v9

    .line 192
    .local v9, e:Ljava/lang/Exception;
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 535
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 536
    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v2, :cond_39

    .line 537
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    .line 550
    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 551
    iget-object v2, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_77

    .line 552
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_32} :catch_32

    .line 555
    :catch_32
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 538
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_39
    :try_start_39
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 540
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, index:I
    if-le v1, v4, :cond_50

    .line 541
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 543
    :cond_50
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v2, :cond_72

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_72

    .line 544
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 545
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_10

    .line 547
    :cond_72
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_10

    .line 554
    .end local v1           #index:I
    :cond_77
    const/4 v2, 0x0

    iput v2, p0, Ljava/net/URL;->hashCode:I
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_7a} :catch_32

    .line 558
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 4
    .parameter "factory"

    .prologue
    .line 113
    const-class v1, Ljava/net/URL;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v0, :cond_12

    .line 114
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 113
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :cond_12
    :try_start_12
    sget-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 117
    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 118
    monitor-exit v1

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 562
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 348
    if-nez p1, :cond_4

    .line 357
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 351
    .restart local p1
    :cond_4
    if-ne p0, p1, :cond_8

    .line 352
    const/4 v0, 0x1

    goto :goto_3

    .line 354
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 357
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    check-cast p1, Ljava/net/URL;

    .end local p1
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    goto :goto_3
.end method

.method fixURL(Z)V
    .registers 8
    .parameter "fixHost"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 279
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 280
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 281
    iget v1, p0, Ljava/net/URL;->port:I

    if-eq v1, v3, :cond_34

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URL;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 285
    :cond_34
    if-eqz p1, :cond_56

    .line 286
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, index:I
    if-le v0, v3, :cond_77

    .line 287
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 293
    .end local v0           #index:I
    :cond_56
    :goto_56
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #index:I
    if-le v0, v3, :cond_7a

    .line 294
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 300
    .end local v0           #index:I
    :goto_76
    return-void

    .line 290
    :cond_77
    iput-object v5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_56

    .line 297
    :cond_7a
    iput-object v5, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 298
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_76
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getEffectivePort()I
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget v1, p0, Ljava/net/URL;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 607
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Ljava/net/URL;->hashCode:I

    if-nez v0, :cond_c

    .line 370
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 372
    :cond_c
    iget v0, p0, Ljava/net/URL;->hashCode:I

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    if-nez p1, :cond_a

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_a
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .registers 3
    .parameter "otherURL"

    .prologue
    .line 365
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"

    .prologue
    .line 308
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 309
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 311
    :cond_6
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 312
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 313
    iput p3, p0, Ljava/net/URL;->port:I

    .line 314
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    .line 317
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "path"
    .parameter "query"
    .parameter "ref"

    .prologue
    .line 657
    move-object v4, p6

    .line 658
    .local v4, file:Ljava/lang/String;
    if-eqz p7, :cond_20

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p8

    .line 661
    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 662
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 663
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 664
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 665
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 666
    return-void
.end method

.method setupStreamHandler()V
    .registers 12

    .prologue
    .line 388
    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 389
    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_11

    .line 439
    :cond_10
    :goto_10
    return-void

    .line 395
    :cond_11
    sget-object v8, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v8, :cond_2d

    .line 396
    sget-object v8, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v8

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 397
    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_2d

    .line 398
    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 405
    :cond_2d
    const-string v8, "java.protocol.handler.pkgs"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, packageList:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 407
    .local v3, contextClassLoader:Ljava/lang/ClassLoader;
    if-eqz v6, :cond_88

    if-eqz v3, :cond_88

    .line 408
    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_47
    if-ge v4, v5, :cond_88

    aget-object v7, v0, v4

    .line 409
    .local v7, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Handler"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, className:Ljava/lang/String;
    :try_start_6a
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 412
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 413
    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_10

    .line 414
    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_6a .. :try_end_83} :catch_84
    .catch Ljava/lang/InstantiationException; {:try_start_6a .. :try_end_83} :catch_f2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_83} :catch_f0

    goto :goto_10

    .line 417
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_84
    move-exception v8

    .line 408
    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 425
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #packageName:Ljava/lang/String;
    :cond_88
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 426
    new-instance v8, Llibcore/net/url/FileHandler;

    invoke-direct {v8}, Llibcore/net/url/FileHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    .line 436
    :cond_99
    :goto_99
    iget-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-eqz v8, :cond_10

    .line 437
    sget-object v8, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v9, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v10, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 427
    :cond_a8
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "ftp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ba

    .line 428
    new-instance v8, Llibcore/net/url/FtpHandler;

    invoke-direct {v8}, Llibcore/net/url/FtpHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_99

    .line 429
    :cond_ba
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 430
    new-instance v8, Llibcore/net/http/HttpHandler;

    invoke-direct {v8}, Llibcore/net/http/HttpHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_99

    .line 431
    :cond_cc
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 432
    new-instance v8, Llibcore/net/http/HttpsHandler;

    invoke-direct {v8}, Llibcore/net/http/HttpsHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_99

    .line 433
    :cond_de
    iget-object v8, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    const-string v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 434
    new-instance v8, Llibcore/net/url/JarHandler;

    invoke-direct {v8}, Llibcore/net/url/JarHandler;-><init>()V

    iput-object v8, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    goto :goto_99

    .line 419
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_f0
    move-exception v8

    goto :goto_85

    .line 418
    :catch_f2
    move-exception v8

    goto :goto_85
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 527
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_2c

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toURILenient()Ljava/net/URI;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_c

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_c
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
